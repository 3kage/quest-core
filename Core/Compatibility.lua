-- QuestCore: universal runtime bridge (Retail / Classic Era / Progression).
-- Loads before all other Core modules; exposes QC.API and client flavor flags.

local addonName, QC = ...

QC.API = QC.API or {}

----------------------------------------------------------------------
-- 1. Runtime client detection
----------------------------------------------------------------------

local version, build, date, tocversion = GetBuildInfo()
QC.gameVersion = version
QC.gameBuild = build
QC.tocversion = tonumber(tocversion) or 0

local WOW_PROJECT_MAINLINE = _G.WOW_PROJECT_MAINLINE or 1
local WOW_PROJECT_CLASSIC = _G.WOW_PROJECT_CLASSIC or 2
local WOW_PROJECT_BURNING_CRUSADE_CLASSIC = _G.WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5
local WOW_PROJECT_WRATH_CLASSIC = _G.WOW_PROJECT_WRATH_CLASSIC or 11
local WOW_PROJECT_CATACLYSM_CLASSIC = _G.WOW_PROJECT_CATACLYSM_CLASSIC or 14
local WOW_PROJECT_MISTS_CLASSIC = _G.WOW_PROJECT_MISTS_CLASSIC or 19

local projectID = _G.WOW_PROJECT_ID or WOW_PROJECT_MAINLINE

local Client = {
	projectID = projectID,
	isRetail = projectID == WOW_PROJECT_MAINLINE,
	isClassicEra = projectID == WOW_PROJECT_CLASSIC,
	isTBC = projectID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC,
	isWrath = projectID == WOW_PROJECT_WRATH_CLASSIC,
	isCata = projectID == WOW_PROJECT_CATACLYSM_CLASSIC,
	isMists = projectID == WOW_PROJECT_MISTS_CLASSIC,
	isProgression = projectID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
		or projectID == WOW_PROJECT_WRATH_CLASSIC
		or projectID == WOW_PROJECT_CATACLYSM_CLASSIC
		or projectID == WOW_PROJECT_MISTS_CLASSIC,
	isClassic = projectID ~= WOW_PROJECT_MAINLINE,
}

function Client.AllowsCapitalPortals()
	return Client.isRetail
end

function Client.PrefersFlightMasters()
	return Client.isClassicEra or Client.isTBC or Client.isWrath
end

function Client.HasModernQuestLog()
	return Client.isRetail or Client.isCata or Client.isMists
end

QC.Client = Client
QC.IsRetail = Client.isRetail
QC.IsClassic = Client.isClassic
QC.IsClassicEra = Client.isClassicEra
QC.IsTBC = Client.isTBC
QC.IsWrath = Client.isWrath
QC.IsCata = Client.isCata
QC.IsMists = Client.isMists
QC.IsProgression = Client.isProgression
QC.IsCataPlus = QC.tocversion >= 40000

if DEFAULT_CHAT_FRAME then
	DEFAULT_CHAT_FRAME:AddMessage(
		string.format("|cff33d6ffQuestCore|r: %s (TOC %d, project %d)",
			tostring(version or "?"), QC.tocversion, projectID))
end

----------------------------------------------------------------------
-- 2. QC.API — gossip, quest log, routing policy
----------------------------------------------------------------------

local API = QC.API
local C_GossipInfo = _G.C_GossipInfo
local C_QuestLog = _G.C_QuestLog

function API.HasModernGossipAPI()
	return C_GossipInfo
		and C_GossipInfo.GetAvailableQuests
		and C_GossipInfo.SelectAvailableQuest
		and C_GossipInfo.GetActiveQuests
		and C_GossipInfo.SelectActiveQuest
end

function API.GetAvailableQuests()
	if API.HasModernGossipAPI() then
		local ok, list = pcall(C_GossipInfo.GetAvailableQuests)
		if ok and list then return list end
	end
	return {}
end

function API.GetActiveQuests()
	if API.HasModernGossipAPI() then
		local ok, list = pcall(C_GossipInfo.GetActiveQuests)
		if ok and list then return list end
	end
	return {}
end

function API.GetNumGossipAvailableQuests()
	if API.HasModernGossipAPI() then
		return #API.GetAvailableQuests()
	end
	if GetNumGossipAvailableQuests then
		local ok, n = pcall(GetNumGossipAvailableQuests)
		return (ok and n) or 0
	end
	return 0
end

function API.GetNumGossipActiveQuests()
	if API.HasModernGossipAPI() then
		return #API.GetActiveQuests()
	end
	if GetNumGossipActiveQuests then
		local ok, n = pcall(GetNumGossipActiveQuests)
		return (ok and n) or 0
	end
	return 0
end

function API.GetGossipAvailableQuestID(index)
	if GetGossipAvailableQuestID then
		local ok, id = pcall(GetGossipAvailableQuestID, index)
		if ok then return id end
	end
	return nil
end

function API.GetGossipActiveQuestID(index)
	if GetGossipActiveQuestID then
		local ok, id = pcall(GetGossipActiveQuestID, index)
		if ok then return id end
	end
	return nil
end

function API.IsGossipActiveQuestComplete(index)
	if GetGossipActiveQuests then
		local ok, _, _, _, isComplete = pcall(GetGossipActiveQuests, index)
		if ok and isComplete then return true end
	end
	return false
end

-- Quest gossip: Blizzard expects questID (Classic Era 1.15+), not gossipOptionID.
function API.SelectAvailableQuest(_gossipOptionID, legacyIndex, questID)
	questID = tonumber(questID)
	if C_GossipInfo and C_GossipInfo.SelectAvailableQuest and questID then
		local ok = pcall(C_GossipInfo.SelectAvailableQuest, questID)
		if ok then return true end
	end
	if legacyIndex and SelectGossipAvailableQuest then
		return pcall(SelectGossipAvailableQuest, legacyIndex)
	end
	return false
end

function API.SelectActiveQuest(_gossipOptionID, legacyIndex, questID)
	questID = tonumber(questID)
	if C_GossipInfo and C_GossipInfo.SelectActiveQuest and questID then
		local ok = pcall(C_GossipInfo.SelectActiveQuest, questID)
		if ok then return true end
	end
	if legacyIndex and SelectGossipActiveQuest then
		return pcall(SelectGossipActiveQuest, legacyIndex)
	end
	return false
end

function API.SelectAvailableGossipElement(element, legacyIndex)
	if not element then
		return API.SelectAvailableQuest(nil, legacyIndex)
	end
	return API.SelectAvailableQuest(
		nil,
		legacyIndex,
		tonumber(element.questID or element.questId))
end

function API.SelectActiveGossipElement(element, legacyIndex)
	if not element then
		return API.SelectActiveQuest(nil, legacyIndex)
	end
	return API.SelectActiveQuest(
		nil,
		legacyIndex,
		tonumber(element.questID or element.questId))
end

function API.IsGossipOpen()
	if GossipFrame and GossipFrame.IsVisible and GossipFrame:IsVisible() then return true end
	if API.HasModernGossipAPI() then
		local active = API.GetActiveQuests()
		local available = API.GetAvailableQuests()
		if #active > 0 or #available > 0 then return true end
	end
	if API.GetNumGossipAvailableQuests() > 0 then return true end
	if API.GetNumGossipActiveQuests() > 0 then return true end
	return false
end

-- Gossip menu icons (vendor / trainer / inn bind).
API.GOSSIP_ICON_VENDOR = 132060
API.GOSSIP_ICON_TRAINER_CLASSIC = 132052
API.GOSSIP_ICON_TRAINER_RETAIL = 136458
API.GOSSIP_ICON_BIND = Client.isRetail and 136458 or 132052

local function GetLegacyGossipOptions()
	local opts = {}
	if not GetNumGossipOptions or not GetGossipOptions then return opts end
	local ok, n = pcall(GetNumGossipOptions)
	if not ok or not n or n == 0 then return opts end
	local ok2, results = pcall(function() return { GetGossipOptions() } end)
	if not ok2 or not results then return opts end
	local args = results
	for i = 1, n do
		local text = args[(i - 1) * 2 + 1]
		local typ = args[(i - 1) * 2 + 2]
		opts[i] = {
			name = text,
			text = text,
			type = typ,
			gossipOptionID = i,
			index = i,
		}
	end
	return opts
end

function API.GetGossipOptions()
	if C_GossipInfo and C_GossipInfo.GetOptions then
		local ok, opts = pcall(C_GossipInfo.GetOptions)
		if ok and type(opts) == "table" then return opts end
	end
	return GetLegacyGossipOptions()
end

function API.SelectGossipOption(idOrIndex)
	if idOrIndex == nil then return false end
	if C_GossipInfo and C_GossipInfo.SelectOption then
		local ok = pcall(C_GossipInfo.SelectOption, idOrIndex)
		if ok then return true end
	end
	if C_GossipInfo and C_GossipInfo.SelectOptionByIndex then
		local ok = pcall(C_GossipInfo.SelectOptionByIndex, idOrIndex)
		if ok then return true end
	end
	if SelectGossipOption then
		return pcall(SelectGossipOption, idOrIndex)
	end
	return false
end

function API.IsOnQuest(questID)
	questID = tonumber(questID)
	if not questID then return false end
	if C_QuestLog and C_QuestLog.GetLogIndexForQuestID then
		local ok, idx = pcall(C_QuestLog.GetLogIndexForQuestID, questID)
		if ok and idx then return true end
	end
	if C_QuestLog and C_QuestLog.IsOnQuest then
		local ok, on = pcall(C_QuestLog.IsOnQuest, questID)
		if ok and on then return true end
	end
	if IsQuestActive then
		local ok, on = pcall(IsQuestActive, questID)
		if ok and on then return true end
	end
	if GetNumQuestLogEntries and GetQuestLogTitle then
		local n = GetNumQuestLogEntries()
		for i = 1, n do
			local _, _, _, _, _, _, _, id = GetQuestLogTitle(i)
			if id == questID then return true end
		end
	end
	return false
end

function API.IsQuestFlaggedCompleted(questID)
	questID = tonumber(questID)
	if not questID then return false end
	if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
		local ok, done = pcall(C_QuestLog.IsQuestFlaggedCompleted, questID)
		if ok and done then return true end
	end
	if IsQuestFlaggedCompleted then
		return IsQuestFlaggedCompleted(questID) and true or false
	end
	return false
end

-- Route rendering policy: HBD breadcrumbs on Classic; native lines on Retail when stable.
function API.UseHBDBreadcrumbs()
	return not Client.isRetail
end

function API.PreferTextureRouteLines()
	if Client.isClassicEra or Client.isTBC or Client.isWrath then return true end
	return false
end
