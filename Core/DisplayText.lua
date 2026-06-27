-- QuestCore: strip legacy DSL / Lua condition text before UI display.

local addonName, QuestCore = ...
local QC = QuestCore

local TECHNICAL_MARKERS = {
	"QC%.", "QC:", "LibRover", "Parser%.ConditionEnv",
	"ConditionEnv%.", "GetReputation%(", "InPhase%(",
	"guidesets%[", "IsLegionOn", "IsRetailOn",
}

function QC.IsTechnicalDisplayText(text)
	if not text or text == "" then return true end
	local head = text:match("^%s*([^|]+)") or text
	head = head:gsub("^%s+", ""):gsub("%s+$", "")
	if head == "" then return true end
	for _, pat in ipairs(TECHNICAL_MARKERS) do
		if head:find(pat) then return true end
	end
	-- Bare Lua-ish expressions (no normal sentence words).
	if head:find(">=") or head:find("<=") or head:find("==") or head:find(" and ") or head:find(" or ") then
		if head:find("QC") or head:find("function") or head:find("%(%s*%)") then
			return true
		end
	end
	return false
end

function QC.SanitizeDisplayText(text, fallback)
	if not text or text == "" then
		return fallback or ""
	end
	local clean = text:match("^%s*([^|]+)") or text
	clean = clean:gsub("^%s+", ""):gsub("%s+$", "")
	if clean == "" then return fallback or "" end
	if QC.IsTechnicalDisplayText(clean) then
		return fallback or ""
	end
	return clean
end

-- Strip entity suffixes (##id) from display strings; IDs stay on goal fields.
function QC.StripNameIDs(text)
	if not text or text == "" then return text end
	return text:gsub("##%d+", "")
end

local GUIDE_COLOUR_FLAGS = {
	o = "|cffff7d40", orange = "|cffff7d40",
	g = "|cff00ff00", green = "|cff00ff00",
	r = "|cffff0000", red = "|cffff0000",
	b = "|cff3dbffb", blue = "|cff3dbffb",
	y = "|cffffcc00", yellow = "|cffffcc00",
	p = "|cffcf3dbf", purple = "|cffcf3dbf",
	w = "|cffffffff", white = "|cffffffff",
}

-- Expand inline colour tags: {o|text|}, {o}text{}, {#aabbcc}, _emphasis_.
function QC.ApplyGuideColours(text)
	if not text or text == "" then return text end
	text = text:gsub("_(.-)_", "|cffffee88%1|r")
	text = text:gsub("{([^}|]+)%|([^|]*)%|}", function(flag, inner)
		local col = GUIDE_COLOUR_FLAGS[flag]
		if col then return col .. inner .. "|r" end
		return inner
	end)
	text = text:gsub("{}", "|r")
	for flag, col in pairs(GUIDE_COLOUR_FLAGS) do
		text = text:gsub("{" .. flag .. "}", col)
	end
	text = text:gsub("{#(%x+)}", "|cff%1")
	return text
end

function QC.FormatGuideText(text)
	if not text or text == "" then return text end
	text = QC.StripNameIDs(text)
	text = QC.ApplyGuideColours(text)
	return text
end
