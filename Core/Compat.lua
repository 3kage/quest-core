-- QuestCore: cross-flavor compatibility layer (Classic Era / Progression / Retail).
-- Route all version-sensitive Blizzard API through QC.Compat.* wrappers.

local addonName, QuestCore = ...
local QC = QuestCore

local Client -- assigned after flavor detection; used by guide API stubs.

----------------------------------------------------------------------
-- Guide API on QuestCore (bundled guides use QC.* in conditions and scripts).
----------------------------------------------------------------------

local function SafeFalse() return false end

local function SafeReputationTable()
	return setmetatable({ friendRep = 0, standing = 0, reacted = 0, rep = 0 }, {
		__index = function() return 0 end,
	})
end

-- Only auto-stub keys used in bundled guide conditions — never addon state/data fields.
local GUIDE_STUB_KEYS = {
	InPhase = true,
	GetReputation = true,
	guidesets = true,
	IsLegionOn = true,
	IsRetailOn = true,
	IsClassicOn = true,
}

local function IsGuideStubKey(k)
	if type(k) ~= "string" then return false end
	if GUIDE_STUB_KEYS[k] then return true end
	if #k > 2 and k:sub(1, 2) == "Is" then return true end
	if #k > 3 and k:sub(1, 3) == "Has" then return true end
	return false
end

local function HealQCPoisonedFields()
	local v = rawget(QC, "LibRoverData")
	if type(v) ~= "table" then rawset(QC, "LibRoverData", {}) end

	for _, key in ipairs({
		"CurrentStep", "CurrentGuide", "CurrentStepNum", "CurrentGuideName", "Test",
	}) do
		if type(rawget(QC, key)) == "function" then rawset(QC, key, nil) end
	end
	if type(rawget(QC, "Test")) ~= "table" then rawset(QC, "Test", {}) end
end

local function GuideAPIIndex(t, k)
	local v = rawget(t, k)
	if v ~= nil then return v end

	local impl = QC._guideImpl
	if impl and impl[k] ~= nil then return impl[k] end
	if k == "Parser" then return QC.EnsureGuideParser() end
	if k == "Poi" then
		if type(rawget(t, "Poi")) ~= "table" then
			rawset(t, "Poi", { Sets = {} })
		elseif not rawget(t.Poi, "Sets") then
			t.Poi.Sets = {}
		end
		return rawget(t, "Poi")
	end

	if IsGuideStubKey(k) then
		local stub = SafeFalse
		rawset(t, k, stub)
		if impl then impl[k] = stub end
		return stub
	end

	return nil
end

local function WrapGuideAPIIndex()
	if QC._guideApiReady then
		HealQCPoisonedFields()
		return QC
	end

	if type(rawget(QC, "LibRoverData")) ~= "table" then
		rawset(QC, "LibRoverData", {})
	end
	HealQCPoisonedFields()

	local impl = QC._guideImpl or {}
	QC._guideImpl = impl

	impl.GetReputation = impl.GetReputation or function() return SafeReputationTable() end
	impl.guidesets = impl.guidesets or setmetatable({}, { __index = function() return false end })
	impl.IsLegionOn = impl.IsLegionOn or SafeFalse
	impl.IsRetailOn = impl.IsRetailOn or function()
		return Client and Client.isRetail and true or false
	end
	impl.IsClassicOn = impl.IsClassicOn or function()
		return Client and Client.isClassic and true or false
	end

	if type(rawget(QC, "Poi")) ~= "table" then
		rawset(QC, "Poi", { Sets = {} })
	elseif not rawget(QC.Poi, "Sets") then
		QC.Poi.Sets = {}
	end

	local mt = getmetatable(QC)
	if mt and mt.__index and not QC._guideApiWrapped then
		local orig = mt.__index
		mt.__index = function(t, k)
			local v = GuideAPIIndex(t, k)
			if v ~= nil then return v end
			if type(orig) == "function" then return orig(t, k) end
			if orig then return orig[k] end
		end
		QC._guideApiWrapped = true
	elseif not mt or not QC._guideApiWrapped then
		setmetatable(QC, { __index = GuideAPIIndex })
		QC._guideApiWrapped = true
	end

	QC._guideApiReady = true
	return QC
end

function QC.InitGuideAPI()
	return WrapGuideAPIIndex()
end

if not _G.LibRover then
	_G.LibRover = setmetatable({
		ValidDHSMap = SafeFalse,
	}, {
		__index = function(t, k)
			local stub = SafeFalse
			rawset(t, k, stub)
			return stub
		end,
	})
end

function QC.EnsureGuideParser()
	local p = rawget(QC, "Parser")
	if type(p) ~= "table" then
		p = {}
		rawset(QC, "Parser", p)
	end
	return p
end

-- Bundled dungeon gear tables and gold guide data attach here.
QC.ItemScore = QC.ItemScore or { Items = {} }

local function WireGoldModules()
	if QC.Gold and not QC.Gold.Auctions then
		QC.Gold.Auctions = {}
	end
end

----------------------------------------------------------------------
-- Client flavor (from Core/Compatibility.lua when loaded first)
----------------------------------------------------------------------

Client = QC.Client
if not Client then
	-- Fallback if Compatibility.lua was not included in the .toc.
	local WOW_PROJECT_MAINLINE = _G.WOW_PROJECT_MAINLINE or 1
	local projectID = _G.WOW_PROJECT_ID or WOW_PROJECT_MAINLINE
	Client = {
		projectID = projectID,
		isRetail = projectID == WOW_PROJECT_MAINLINE,
		isClassicEra = projectID == (_G.WOW_PROJECT_CLASSIC or 2),
		isTBC = false,
		isWrath = false,
		isCata = false,
		isMists = false,
		isProgression = false,
		isClassic = projectID ~= WOW_PROJECT_MAINLINE,
	}
	function Client.AllowsCapitalPortals()
		return Client.isRetail
	end
	function Client.PrefersFlightMasters()
		return Client.isClassicEra or Client.isTBC or Client.isWrath
	end
	QC.Client = Client
	QC.IsRetail = Client.isRetail
	QC.IsClassic = Client.isClassic
end

----------------------------------------------------------------------
-- Namespaced Compat API
----------------------------------------------------------------------

local Compat = {
	Client = Client,
	WireGoldModules = WireGoldModules,
}

QC.Compat = Compat

local C_Item = _G.C_Item
local C_Spell = _G.C_Spell
local C_Container = _G.C_Container
local C_QuestLog = _G.C_QuestLog
local C_Map = _G.C_Map

Compat.Item = {}

function Compat.Item.GetCount(item, includeBank, includeCharges, includeReagentBank)
	if C_Item and C_Item.GetItemCount then
		return C_Item.GetItemCount(item, includeBank, includeCharges, includeReagentBank) or 0
	end
	if _G.GetItemCount then
		return _G.GetItemCount(item, includeBank, includeCharges, includeReagentBank) or 0
	end
	return 0
end

function Compat.Item.GetInfo(item)
	if C_Item and C_Item.GetItemInfo then return C_Item.GetItemInfo(item) end
	if _G.GetItemInfo then return _G.GetItemInfo(item) end
	return nil
end

function Compat.Item.GetInfoInstant(item)
	if C_Item and C_Item.GetItemInfoInstant then return C_Item.GetItemInfoInstant(item) end
	if _G.GetItemInfoInstant then return _G.GetItemInfoInstant(item) end
	return nil
end

function Compat.Item.GetIcon(item)
	if C_Item and C_Item.GetItemIconByID then return C_Item.GetItemIconByID(item) end
	if _G.GetItemIcon then return _G.GetItemIcon(item) end
	return nil
end

function Compat.Item.IsUsable(item)
	if C_Item and C_Item.IsUsableItem then return C_Item.IsUsableItem(item) end
	if _G.IsUsableItem then return _G.IsUsableItem(item) end
	return false
end

function Compat.Item.IsEquipped(item)
	if C_Item and C_Item.IsEquippedItem then return C_Item.IsEquippedItem(item) end
	if _G.IsEquippedItem then return _G.IsEquippedItem(item) end
	return false
end

function Compat.Item.GetCooldown(item)
	if C_Item and C_Item.GetItemCooldown then
		return C_Item.GetItemCooldown(item)
	end
	if _G.GetItemCooldown then
		return _G.GetItemCooldown(item)
	end
	return 0, 0, 1
end

function Compat.Item.IsCooldownReady(item)
	local start, duration, enable = Compat.Item.GetCooldown(item)
	if enable == 0 then return false end
	if not duration or duration <= 0 then return true end
	if not start or start <= 0 then return true end
	return (GetTime() - start) >= duration
end

Compat.Spell = {}

function Compat.Spell.GetInfo(spell)
	if C_Spell and C_Spell.GetSpellInfo then
		local info = C_Spell.GetSpellInfo(spell)
		if info then
			return info.name, nil, info.iconID, info.castTime, info.minRange, info.maxRange, info.spellID
		end
		return nil
	end
	if _G.GetSpellInfo then return _G.GetSpellInfo(spell) end
	return nil
end

function Compat.Spell.IsKnown(spellID)
	if _G.IsSpellKnown and spellID then
		local ok, known = pcall(_G.IsSpellKnown, spellID)
		if ok then return known end
	end
	if C_Spell and C_Spell.IsSpellKnownOrInSpellBook and spellID then
		local ok, known = pcall(C_Spell.IsSpellKnownOrInSpellBook, spellID)
		if ok then return known end
	end
	return false
end

function Compat.Spell.IsCooldownReady(spellID)
	if not spellID then return false end
	local start, duration
	if C_Spell and C_Spell.GetSpellCooldown then
		local info = C_Spell.GetSpellCooldown(spellID)
		if info then
			start = info.startTime
			duration = info.duration
		end
	elseif _G.GetSpellCooldown then
		start, duration = _G.GetSpellCooldown(spellID)
	end
	if not duration or duration <= 0 then return true end
	if not start or start <= 0 then return true end
	return (GetTime() - start) >= duration
end

Compat.Container = {}

function Compat.Container.GetNumSlots(bagID)
	if C_Container and C_Container.GetContainerNumSlots then
		return C_Container.GetContainerNumSlots(bagID) or 0
	end
	if _G.GetContainerNumSlots then return _G.GetContainerNumSlots(bagID) or 0 end
	return 0
end

function Compat.Container.GetContainerItemID(bagID, slot)
	if C_Container and C_Container.GetContainerItemID then
		return C_Container.GetContainerItemID(bagID, slot)
	end
	if _G.GetContainerItemID then return _G.GetContainerItemID(bagID, slot) end
	return nil
end

function Compat.Container.GetContainerItemInfo(bagID, slot)
	if C_Container and C_Container.GetContainerItemInfo then
		return C_Container.GetContainerItemInfo(bagID, slot)
	end
	if _G.GetContainerItemInfo then return _G.GetContainerItemInfo(bagID, slot) end
	return nil
end

Compat.QuestLog = {}

function Compat.HasScenarioAPI()
	return C_Scenario ~= nil
		and C_ScenarioInfo ~= nil
		and C_ScenarioInfo.GetCriteriaInfo ~= nil
		and C_Scenario.GetStepInfo ~= nil
end

function Compat.QuestLog.GetLogIndex(questID)
	questID = tonumber(questID)
	if not questID then return nil end
	if C_QuestLog and C_QuestLog.GetLogIndexForQuestID then
		local ok, idx = pcall(C_QuestLog.GetLogIndexForQuestID, questID)
		if ok and idx then return idx end
	end
	return nil
end

function Compat.QuestLog.IsComplete(questID)
	questID = tonumber(questID)
	if not questID then return false end
	if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
		return C_QuestLog.IsQuestFlaggedCompleted(questID) and true or false
	end
	if _G.IsQuestFlaggedCompleted then return _G.IsQuestFlaggedCompleted(questID) end
	return false
end

function Compat.QuestLog.IsOnQuest(questID)
	if QC.API and QC.API.IsOnQuest then
		return QC.API.IsOnQuest(questID)
	end
	questID = tonumber(questID)
	if not questID then return false end
	if Compat.QuestLog.GetLogIndex(questID) then return true end
	if C_QuestLog and C_QuestLog.IsOnQuest then
		local ok, on = pcall(C_QuestLog.IsOnQuest, questID)
		if ok and on then return true end
	end
	if _G.IsQuestActive then
		local ok, on = pcall(_G.IsQuestActive, questID)
		if ok and on then return true end
	end
	return false
end

function Compat.QuestLog.GetObjectives(questID)
	questID = tonumber(questID)
	if not questID then return nil end
	if C_QuestLog and C_QuestLog.GetQuestObjectives then
		return C_QuestLog.GetQuestObjectives(questID)
	end
	if GetQuestLogLeaderBoard and GetNumQuestLeaderBoards then
		local out = {}
		local n = GetNumQuestLeaderBoards(questID) or 0
		for i = 1, n do
			local text, objType, finished = GetQuestLogLeaderBoard(i, questID)
			out[i] = {
				text = text,
				type = objType,
				finished = finished,
				fulfilled = finished and 1 or 0,
				required = 1,
			}
		end
		if #out > 0 then return out end
	end
	return nil
end

function Compat.QuestLog.GetObjectiveProgress(questID, objnum)
	questID = tonumber(questID)
	objnum = tonumber(objnum)
	if not questID then return nil, nil end
	local objs = Compat.QuestLog.GetObjectives(questID)
	if not objs or #objs == 0 then return nil, nil end
	if objnum then
		local o = objs[objnum]
		if not o then return nil, nil end
		if o.numFulfilled ~= nil and o.numRequired ~= nil then
			return o.numFulfilled, o.numRequired
		end
		if o.fulfilled ~= nil and o.required ~= nil then
			return o.fulfilled, o.required
		end
		return o.finished and 1 or 0, 1
	end
	local done, total = 0, #objs
	for _, o in ipairs(objs) do
		if o.finished or (o.numFulfilled and o.numRequired and o.numFulfilled >= o.numRequired) then
			done = done + 1
		end
	end
	return done, total
end

function Compat.QuestLog.IsObjectiveComplete(questID, objnum)
	questID = tonumber(questID)
	objnum = tonumber(objnum)
	if not questID or not objnum then return false end
	if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted and C_QuestLog.IsQuestFlaggedCompleted(questID) then
		return true
	end
	local objs = Compat.QuestLog.GetObjectives(questID)
	local o = objs and objs[objnum]
	if not o then return false end
	if o.finished ~= nil then return o.finished and true or false end
	if o.numFulfilled and o.numRequired then
		return o.numFulfilled >= o.numRequired
	end
	return false
end

function Compat.QuestLog.IsReadyForTurnIn(questID)
	questID = tonumber(questID)
	if not questID then return false end
	if C_QuestLog and C_QuestLog.ReadyForTurnIn then
		return C_QuestLog.ReadyForTurnIn(questID) and true or false
	end
	if C_QuestLog and C_QuestLog.IsComplete then
		return C_QuestLog.IsComplete(questID) and true or false
	end
	return false
end

Compat.Map = {}

function Compat.Map.GetBestMapForUnit(unit)
	if C_Map and C_Map.GetBestMapForUnit then
		return C_Map.GetBestMapForUnit(unit)
	end
	return nil
end

function Compat.Map.GetMapInfo(mapID)
	if C_Map and C_Map.GetMapInfo then
		return C_Map.GetMapInfo(mapID)
	end
	return nil
end

function Compat.Map.GetPlayerMapPosition(mapID, unit)
	if C_Map and C_Map.GetPlayerMapPosition then
		local pos = C_Map.GetPlayerMapPosition(mapID, unit)
		if pos and pos.GetXY then return pos:GetXY() end
	end
	if _G.GetPlayerMapPosition then
		local x, y = _G.GetPlayerMapPosition(unit)
		return x, y
	end
	return nil
end

----------------------------------------------------------------------
-- Legacy flat wrappers (backward compatible with existing modules)
----------------------------------------------------------------------

function QC.GetItemCount(item, includeBank, includeCharges, includeReagentBank)
	return Compat.Item.GetCount(item, includeBank, includeCharges, includeReagentBank)
end

function QC.GetItemInfo(item)
	return Compat.Item.GetInfo(item)
end

function QC.GetItemInfoInstant(item)
	return Compat.Item.GetInfoInstant(item)
end

function QC.GetItemIcon(item)
	return Compat.Item.GetIcon(item)
end

function QC.IsUsableItem(item)
	return Compat.Item.IsUsable(item)
end

function QC.GetSpellInfo(spell)
	return Compat.Spell.GetInfo(spell)
end

function QC.IsSpellKnown(spellID)
	return Compat.Spell.IsKnown(spellID)
end

QC.atan2 = math.atan2 or math.atan

-- Legacy beta guide section markers (no-op for bundled guides).
QC.BETASTART = function() end
QC.BETAEND = function() end

local _eventProbe = CreateFrame("Frame")
function QC.SafeRegisterEvent(event, handler)
	if type(event) ~= "string" or type(handler) ~= "function" then
		return false
	end
	local ok = pcall(_eventProbe.RegisterEvent, _eventProbe, event)
	if not ok then return false end
	QC:RegisterEvent(event, handler)
	return true
end

QC.InitGuideAPI()
QC.EnsureGuideParser()
