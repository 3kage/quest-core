-- QuestCore: Guide manager — registration, flavor filtering, lazy parse, menu tree.

local addonName, QuestCore = ...
local QC = QuestCore

local GuideProto = {}
local GuideProto_mt = { __index = GuideProto }
QC.GuideProto = GuideProto
QC.GuideProto_mt = GuideProto_mt

local Guide = {}
QC.Guide = Guide

-- Expansion taxonomy (flavor-scoped; quest/map IDs are not portable across clients).
local CLASSIC_ERA_EXPANSIONS = {
	classic_era = true, classic = true, vanilla = true, era = true,
}

local PROGRESSION_EXPANSIONS = {
	tbc = true, wrath = true, cata = true, mists = true, mop = true,
}

local RETAIL_MODERN_EXPANSIONS = {
	midnight = true, mid = true, tww = true,
	dragon = true, dragonflight = true, df = true,
	shadow = true, shadowlands = true, sl = true,
	bfa = true, legion = true, wod = true,
}

local RETAIL_CHROMIE_EXPANSIONS = {
	chromie = true, retail = true,
}

-- Legacy alias bucket: chromie-time cata/mop on Retail.
local RETAIL_CHROMIE_LEGACY = {
	cata = true, mop = true,
}

local function NormalizeProgressionExpansion(exp)
	if not exp then return nil end
	exp = exp:lower()
	if exp == "mop" then return "mists" end
	return exp
end

local function ProgressionExpansionMatchesClient(guideExp)
	local clientExp = NormalizeProgressionExpansion(Guide:GetClientProgressionExpansion())
	guideExp = NormalizeProgressionExpansion(guideExp)
	if not clientExp or not guideExp then return false end
	-- Each progression client loads only its own migrated package (tbc OR mists, …).
	return guideExp == clientExp
end

local function NormalizeExpansion(meta)
	if not meta then return nil end
	local exp = meta.expansion or meta.exp or meta.flavor
	if type(exp) == "string" and exp ~= "" then return exp:lower() end
	return nil
end

function Guide:GetClientProgressionExpansion()
	local client = QC.Compat and QC.Compat.Client
	if not client then return "cata" end
	if client.isMists then return "mists" end
	if client.isCata then return "cata" end
	if client.isWrath then return "wrath" end
	if client.isTBC then return "tbc" end
	return "cata"
end

function Guide:InferExpansionFromTitle(title)
	if not title then return nil end
	local t = title:lower()
	local manifest = QC._guideManifestFlavor

	if t:find("midnight") then return "midnight" end
	if t:find("war within") then return "tww" end
	if t:find("dragonflight") or t:find("dragon isles") then return "dragon" end
	if t:find("shadowlands") then return "shadow" end
	if t:find("battle for azeroth") then return "bfa" end
	if t:find("legion") then return "legion" end
	if t:find("warlords") or t:find("draenor") then return "wod" end

	if t:find("mists of pandaria") or (t:find("pandaria") and not t:find("classic %(1%-")) then
		return manifest == "progression" and "mists" or "mop"
	end
	if t:find("cataclysm") then
		return "cata"
	end
	if t:find("classic %(1%-70%)") or t:find("chromie time") then
		return manifest == "progression" and "cata" or "chromie"
	end

	return nil
end

function Guide:ResolveExpansion(meta, title)
	local explicit = NormalizeExpansion(meta)
	if explicit then return explicit end

	local inferred = self:InferExpansionFromTitle(title)
	if inferred then return inferred end

	local manifest = QC._guideManifestFlavor
	if manifest == "classic" then return "classic_era" end
	if manifest == "progression" then return self:GetClientProgressionExpansion() end
	return "retail"
end

local function ExpansionAllowedOnClient(exp)
	local client = QC.Compat and QC.Compat.Client
	if not client then return true end

	if client.isClassicEra then
		return CLASSIC_ERA_EXPANSIONS[exp] == true
	end

	if client.isProgression then
		if RETAIL_MODERN_EXPANSIONS[exp] then return false end
		if RETAIL_CHROMIE_EXPANSIONS[exp] or exp == "chromie" then return false end
		if CLASSIC_ERA_EXPANSIONS[exp] then return false end

		if PROGRESSION_EXPANSIONS[exp] then
			return ProgressionExpansionMatchesClient(exp)
		end

		return QC._guideManifestFlavor == "progression"
	end

	if client.isRetail then
		if CLASSIC_ERA_EXPANSIONS[exp] then return false end
		if exp == "tbc" or exp == "wrath" then return false end
		if PROGRESSION_EXPANSIONS[exp] and not RETAIL_CHROMIE_LEGACY[exp] then return false end
		return true
	end

	return true
end

local function NormalizeFaction(meta)
	local f = meta and (meta.faction or meta.side)
	if not f or f == "" or f == "Both" or f == "NEUTRAL" then return nil end
	return f:upper()
end

local function PlayerFaction()
	local pf = UnitFactionGroup and UnitFactionGroup("player")
	return pf and pf:upper() or nil
end

function Guide:ShouldLoad(meta)
	local client = QC.Compat and QC.Compat.Client
	if not client then return true end

	local exp = NormalizeExpansion(meta) or (meta and meta._resolvedExpansion)
	if not exp then return true end

	if not ExpansionAllowedOnClient(exp) then return false end

	local needFaction = NormalizeFaction(meta)
	if needFaction and needFaction ~= "BOTH" then
		local pf = PlayerFaction()
		if pf and pf ~= needFaction then return false end
	end

	return true
end

function GuideProto:New(title, header, data)
	local guide = {
		title = title,
		category = title:match("^([^\\]+)\\") or "Guides",
		title_short = title:match("([^\\]+)$") or title,
		headerdata = header or {},
		rawdata = data,
		steps = nil,
		parsed = false,
		steplabels = {},
		meta = header or {},
	}
	setmetatable(guide, GuideProto_mt)
	return guide
end

function GuideProto:Parse()
	if self.parsed then return self end

	local parser = QC.Parser
	local strict = parser and parser.PARSE_STRICT

	local function runParse()
		if parser and parser.ParseGuide then
			parser:ParseGuide(self)
		end
	end

	if strict then
		runParse()
	else
		local ok, err = pcall(runParse)
		if not ok then
			QC:Print("Error parsing guide '" .. tostring(self.title) .. "': " .. tostring(err))
			self.steps = self.steps or {}
		end
	end

	self.steplabels = {}
	if self.steps then
		for i, step in ipairs(self.steps) do
			if step.label then
				self.steplabels[step.label] = i
			end
		end
	end

	self.parsed = true
	return self
end

function GuideProto:ResolveJump(dest, fromnum)
	if type(dest) == "number" then return dest end
	if type(dest) ~= "string" then return (fromnum or 0) + 1 end

	local sign, num = dest:match("^([%+%-])(%d+)$")
	if sign then
		num = tonumber(num)
		return (fromnum or 0) + (sign == "+" and num or -num)
	end

	local abs = tonumber(dest)
	if abs then return abs end

	local label = dest:gsub('^"', ''):gsub('"$', '')
	if self.steplabels[label] then return self.steplabels[label] end

	return (fromnum or 0) + 1
end

function Guide:Register(metaOrTitle, rawTextOrHeader, rawTextMaybe)
	local title, meta, rawdata

	if type(metaOrTitle) == "string" then
		title = QC:SanitizeGuideTitle(metaOrTitle)
		if type(rawTextOrHeader) == "table" then
			meta = rawTextOrHeader
			rawdata = rawTextMaybe
		else
			meta = {}
			rawdata = rawTextOrHeader
		end
	else
		meta = metaOrTitle or {}
		rawdata = rawTextOrHeader
		title = QC:SanitizeGuideTitle(meta.title or meta.name or "")
	end

	if not title or title == "" then
		QC:Print("Guide:Register — missing title.")
		return nil
	end

	meta.title = meta.title or title
	meta._resolvedExpansion = self:ResolveExpansion(meta, title)
	meta.expansion = meta.expansion or meta.exp or meta._resolvedExpansion
	meta.faction = meta.faction or meta.side

	if not self:ShouldLoad(meta) then
		return nil
	end

	local existing = QC.RegisteredGuidesByTitle[title]
	if existing then
		existing.headerdata = meta
		existing.meta = meta
		existing.rawdata = rawdata or existing.rawdata
		existing.parsed = false
		existing.steps = nil
		existing.steplabels = {}
		return existing
	end

	local guide = GuideProto:New(title, meta, rawdata)
	QC.registeredguides[#QC.registeredguides + 1] = guide
	QC.RegisteredGuidesByTitle[title] = guide
	return guide
end

function Guide:Get(title)
	if not title then return nil end
	return QC.RegisteredGuidesByTitle[QC:SanitizeGuideTitle(title)]
end

function Guide:HasGuide(title)
	return self:Get(title) ~= nil
end

function Guide:GetAll()
	return QC.registeredguides
end

function Guide:EnsureParsed(guide)
	if type(guide) == "string" then guide = self:Get(guide) end
	if guide and not guide.parsed then guide:Parse() end
	return guide
end

local function InsertTreeNode(root, guide)
	local segments = {}
	for seg in guide.title:gmatch("[^\\]+") do
		segments[#segments + 1] = seg
	end
	if #segments == 0 then return end

	local node = root
	local acc = ""
	for i = 1, #segments - 1 do
		local seg = segments[i]
		acc = (acc == "") and seg or (acc .. "\\" .. seg)
		node.children = node.children or {}
		node.childidx = node.childidx or {}
		local child = node.childidx[seg]
		if not child then
			child = {
				name = seg,
				path = acc,
				children = {},
				childidx = {},
				guides = {},
			}
			node.childidx[seg] = child
			node.children[#node.children + 1] = child
		end
		node = child
	end
	node.guides = node.guides or {}
	node.guides[#node.guides + 1] = guide
end

function Guide:GetAvailableGuides(opts)
	opts = opts or {}
	local root = {
		name = "",
		path = "",
		children = {},
		childidx = {},
		guides = {},
	}

	local pf = PlayerFaction()
	for _, guide in ipairs(QC.registeredguides) do
		if self:ShouldLoad(guide.headerdata or guide.meta) then
			local mf = NormalizeFaction(guide.headerdata or guide.meta)
			if not mf or mf == "BOTH" or not pf or mf == pf then
				if not opts.levelFilter or (QC.IsGuideForMyLevel and QC:IsGuideForMyLevel(guide)) then
					InsertTreeNode(root, guide)
				end
			end
		end
	end

	return root
end

function Guide:GetByCategory()
	local cats = {}
	for _, guide in ipairs(QC.registeredguides) do
		if self:ShouldLoad(guide.headerdata or guide.meta) then
			local cat = guide.category or "Guides"
			if not cats[cat] then cats[cat] = {} end
			cats[cat][#cats[cat] + 1] = guide
		end
	end
	return cats
end

function Guide:NextStep()
	if QC.NextStep then QC:NextStep() end
end

function Guide:PrevStep()
	if QC.PrevStep then QC:PrevStep() end
end

-- Legacy alias used across the codebase.
QC.GetGuideTree = function()
	return Guide:GetAvailableGuides()
end
