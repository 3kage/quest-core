-- QuestCore UI fonts: locale-aware bundled Noto Sans (OFL) with client-font fallback.
-- Bundled fonts cover scripts missing on non-matching WoW clients (Cyrillic, CJK, etc.).

local addonName, QuestCore = ...
local QC = QuestCore

local Font = {}
QC.Font = Font

local MEDIA = "Interface\\AddOns\\QuestCore\\Media\\Fonts\\"
local BUNDLED = {
	default  = MEDIA .. "QuestCoreUI.ttf",
	cyrillic = MEDIA .. "QuestCoreUI.ttf",
	koKR     = MEDIA .. "QuestCoreKR.ttf",
	zhCN     = MEDIA .. "QuestCoreSC.ttf",
	zhTW     = MEDIA .. "QuestCoreTC.ttf",
}
local ARIALN = "Fonts\\ARIALN.TTF"

local LOCALE_GROUP = {
	ukUA = "cyrillic",
	ruRU = "cyrillic",
	koKR = "koKR",
	zhCN = "zhCN",
	zhTW = "zhTW",
}

local PROBE = {
	cyrillic = "АбвґіїЇЄ",
	koKR     = "한글퀘스트",
	zhCN     = "简体中文任务",
	zhTW     = "繁體中文任務",
	default  = "QuestCore",
}

local CLIENT_FONTS = {
	default = {
		"Fonts\\FRIZQT__.TTF",
		ARIALN,
	},
	cyrillic = {
		"Fonts\\FRIZQT___CYR.TTF",
		"Fonts\\MORPHEUS_CYR.TTF",
		ARIALN,
		"Fonts\\FRIZQT__.TTF",
	},
	koKR = {
		"Fonts\\2002.TTF",
		"Fonts\\2002B.TTF",
		"Fonts\\K_Pagetext.TTF",
		"Fonts\\K_Damage.TTF",
		"Fonts\\FRIZQT__.TTF",
		ARIALN,
	},
	zhCN = {
		"Fonts\\ARKai_T.TTF",
		"Fonts\\ARHei.TTF",
		"Fonts\\ARKai_C.TTF",
		ARIALN,
	},
	zhTW = {
		"Fonts\\bLEI00D.TTF",
		"Fonts\\bHEI01B.TTF",
		"Fonts\\bHEI00M.TTF",
		"Fonts\\bKAI00M.TTF",
		"Fonts\\arheiuhk_bd.TTF",
		"Fonts\\FRIZQT__.TTF",
		ARIALN,
	},
}

local DEFAULT_SIZE = 12
local cachedByGroup = {}
local probeFS

local function ProbeFS()
	if not probeFS then
		probeFS = UIParent:CreateFontString(nil, "ARTWORK")
		probeFS:Hide()
	end
	return probeFS
end

local function GetLocaleGroup()
	local loc = QC.activeLocale
	if not loc or loc == "auto" then
		loc = (GetLocale and GetLocale()) or "enUS"
	end
	return LOCALE_GROUP[loc] or "default"
end

local function FontRenders(path, sample)
	local fs = ProbeFS()
	local ok = pcall(function()
		fs:SetFont(path, 12, "")
	end)
	if not ok then return false end
	fs:SetText(sample)
	local w = fs:GetStringWidth()
	if not w or w < 8 then return false end
	fs:SetText("")
	local empty = fs:GetStringWidth() or 0
	return w > empty + 4
end

local function BuildCandidates(group)
	local list = {}
	local seen = {}
	local function add(path)
		if path and not seen[path] then
			seen[path] = true
			list[#list + 1] = path
		end
	end

	for _, path in ipairs(CLIENT_FONTS[group] or CLIENT_FONTS.default) do
		add(path)
	end
	add(BUNDLED[group])
	if group ~= "default" then
		add(BUNDLED.default)
	end
	add(ARIALN)
	return list
end

function Font.InvalidateCache()
	wipe(cachedByGroup)
end

function Font.OnLocaleChanged()
	Font.InvalidateCache()
	Font.GetPath()
end

function Font.GetPath()
	local group = GetLocaleGroup()
	if cachedByGroup[group] then return cachedByGroup[group] end

	local sample = PROBE[group] or PROBE.default
	for _, path in ipairs(BuildCandidates(group)) do
		if FontRenders(path, sample) then
			cachedByGroup[group] = path
			return path
		end
	end

	local fs = ProbeFS()
	if fs.SetFontObject then
		fs:SetFontObject(GameFontNormalSmall)
	end
	local blizzard = fs:GetFont()
	if blizzard and FontRenders(blizzard, sample) then
		cachedByGroup[group] = blizzard
		return blizzard
	end

	cachedByGroup[group] = ARIALN
	return ARIALN
end

function Font.Get()
	local path = Font.GetPath()
	return path, DEFAULT_SIZE, ""
end

local function NormalizeFlags(flags, outline)
	flags = flags or ""
	if outline then
		if not flags:find("OUTLINE", 1, true) and not flags:find("THICKOUTLINE", 1, true) then
			flags = flags .. (flags ~= "" and " " or "") .. "OUTLINE"
		end
	end
	return flags
end

function Font.Apply(fontString, size, outline)
	if not (fontString and fontString.SetFont) then return end
	fontString:SetFont(Font.GetPath(), size or DEFAULT_SIZE, NormalizeFlags("", outline))
	if fontString.SetTextScale then
		fontString:SetTextScale(1)
	end
end

function Font.ApplyArrow(fontString, size, outline)
	Font.Apply(fontString, size, outline)
end

function Font.ApplyTemplate(fontString)
	Font.Apply(fontString, DEFAULT_SIZE, false)
end

function Font.Init()
	Font.GetPath()
end
