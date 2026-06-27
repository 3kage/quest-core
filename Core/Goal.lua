-- QuestCore: Goal prototype + GOALTYPES action registry.

local addonName, QuestCore = ...
local QC = QuestCore

local GoalProto = {}
local GoalProto_mt = { __index = GoalProto }
QC.GoalProto = GoalProto
QC.GoalProto_mt = GoalProto_mt

-- Action registry. Each entry may define:
--   parse(goal, params) - fill goal fields from the chunk parameters
--   iscomplete(goal)     - return true when the goal is satisfied
--   gettext(goal)        - custom display string
QC.GOALTYPES = {}
local GOALTYPES = QC.GOALTYPES

----------------------------------------------------------------------
-- Helpers
----------------------------------------------------------------------

-- "Quest Name##1234" or "10 Item Name##1234" -> name, id [, count]
local function ParseNameID(params)
	if not params then return nil, nil end
	local count, rest = params:match("^(%d+)%s+(.+)$")
	if count then
		local name, id = ParseNameID(rest)
		return name, id, tonumber(count)
	end
	local name, id = params:match("^(.-)##(%d+)$")
	if id then return name, tonumber(id) end
	local onlyid = params:match("^(%d+)$")
	if onlyid then return nil, tonumber(onlyid) end
	return params, nil
end
QC.ParseNameID = ParseNameID

local function ParseItemLine(params)
	local name, id, count = ParseNameID(params)
	if count then return name, id, count end
	return name, id, 1
end

-- World distance (yards) from the player to a goal's coordinate, or nil.
local function GetDistanceToGoal(goal)
	local map = goal:GetMapId()
	if not (map and goal.x and goal.y) then return nil end
	local px, py, pInst = QC.HBD:GetPlayerWorldPosition()
	if not px then return nil end
	local gx, gy, gInst = QC.HBD:GetWorldCoordinatesFromZone(goal.x, goal.y, map)
	if not gx then return nil end
	if pInst ~= gInst then return nil end
	return QC.HBD:GetWorldDistance(pInst, px, py, gx, gy)
end
QC.GetDistanceToGoal = GetDistanceToGoal

local function ResolveGoalQuestID(goal)
	if QC.QuestDB and QC.QuestDB.ResolveGoalQuestID then
		return QC.QuestDB:ResolveGoalQuestID(goal)
	end
	return goal and tonumber(goal.questid or goal.questID) or nil
end

local function IsQuestAcceptedForGoal(goal)
	local id = ResolveGoalQuestID(goal)
	if not id then return false end
	if QC.QuestDB and QC.QuestDB.IsQuestAccepted then
		return QC.QuestDB:IsQuestAccepted(id)
	end
	return false
end

local function IsQuestTurnedInForGoal(goal)
	local id = ResolveGoalQuestID(goal)
	if not id then return false end
	if QC.QuestDB and QC.QuestDB.IsQuestComplete then
		return QC.QuestDB:IsQuestComplete(id)
	end
	return false
end

local function HasScenarioAPI()
	return QC.Compat and QC.Compat.HasScenarioAPI and QC.Compat.HasScenarioAPI()
end

----------------------------------------------------------------------
-- Goal methods
----------------------------------------------------------------------

function GoalProto:GetMapId()
	if self.map then
		local map = self.map
		if QC.GetModernMapID then
			map = QC.GetModernMapID(map, self.mapname)
			if map ~= self.map then self.map = map end
		end
		if QC.EnsureMapData then QC.EnsureMapData(map) end
		return map
	end
	if self.mapname then
		self.map = QC.ResolveMapToken(self.mapname, self.mapfloor)
		if self.map and QC.EnsureMapData then QC.EnsureMapData(self.map) end
	end
	return self.map
end

GOALTYPES["accept"] = {
	parse = function(goal, params)
		goal.questname, goal.questid = ParseNameID(params)
	end,
	iscomplete = function(goal)
		local id = ResolveGoalQuestID(goal)
		if not id then return false end
		return IsQuestAcceptedForGoal(goal) or IsQuestTurnedInForGoal(goal)
	end,
	gettext = function(goal)
		return "Accept " .. (goal.questname or goal.text or "quest")
	end,
}

GOALTYPES["turnin"] = {
	parse = function(goal, params)
		goal.questname, goal.questid = ParseNameID(params)
	end,
	iscomplete = function(goal)
		return IsQuestTurnedInForGoal(goal)
	end,
	gettext = function(goal)
		return "Turn in " .. (goal.questname or goal.text or "quest")
	end,
}

GOALTYPES["talk"] = {
	parse = function(goal, params)
		goal.npcname, goal.npcid = ParseNameID(params)
	end,
	gettext = function(goal)
		return "Talk to " .. (goal.npcname or goal.text or "NPC")
	end,
}

GOALTYPES["kill"] = {
	parse = function(goal, params)
		goal.mobname, goal.mobid = ParseNameID(params)
	end,
	iscomplete = function(goal)
		if goal.questid then return GOALTYPES["q"].iscomplete(goal) end
		return false
	end,
	gettext = function(goal)
		return "Kill " .. (goal.mobname or goal.text or "target")
	end,
}

GOALTYPES["collect"] = {
	parse = function(goal, params)
		local rest, count = params:match("^(.-)%s*x(%d+)$")
		if rest then params = rest end
		local name, id, n = ParseNameID(params)
		goal.itemname, goal.itemid = name, id
		goal.count = n or tonumber(count) or goal.count or 1
	end,
	iscomplete = function(goal)
		if goal.questid then return GOALTYPES["q"].iscomplete(goal) end
		if not goal.itemid then return false end
		local have = QC.GetItemCount(goal.itemid) or 0
		return have >= (goal.count or 1)
	end,
	gettext = function(goal)
		local s = "Collect " .. (goal.itemname or goal.text or "item")
		if (goal.count or 1) > 1 then s = s .. " (x" .. goal.count .. ")" end
		return s
	end,
}

-- Alias: get = collect (legacy compatibility).
GOALTYPES["get"] = GOALTYPES["collect"]

local function ItemDisplayLink(id, name)
	name = name or (id and QC.GetItemInfo and QC.GetItemInfo(id))
	if id and C_Item and C_Item.GetItemLinkByID then
		return C_Item.GetItemLinkByID(id) or name or ("item:" .. tostring(id))
	end
	return name or "?"
end

local function FormatUnderscoreText(text)
	if not text or text == "" then return text end
	text = text:gsub("%%UNDER%%", "_")
	return text:gsub("_(.-)_", "|cffffee88%1|r")
end

-- Destroy/vendor trash: complete when the item is gone from bags.
GOALTYPES["trash"] = {
	parse = GOALTYPES["collect"].parse,
	iscomplete = function(goal)
		if not goal.itemid then return false end
		return (QC.GetItemCount(goal.itemid) or 0) == 0
	end,
	gettext = function(goal)
		local name = goal.itemname
		if goal.itemid and QC.GetItemInfo then
			name = QC.GetItemInfo(goal.itemid) or name
		end
		local link = ItemDisplayLink(goal.itemid, name)
		local got = goal.itemid and (QC.GetItemCount(goal.itemid) or 0) or 0
		if got > 0 then
			return "Destroy " .. link .. " (" .. got .. ")"
		end
		return link
	end,
}

-- Generic quest objective line (usually paired with |q).
GOALTYPES["goal"] = {
	parse = function(goal, params)
		if params and params ~= "" then goal.text = params end
	end,
	iscomplete = function(goal)
		if goal.questid then return GOALTYPES["q"].iscomplete(goal) end
		return false
	end,
	gettext = function(goal) return goal.text or "Complete objective" end,
}

GOALTYPES["loadguide"] = {
	parse = function(goal, params)
		goal.loadguide = params and params:gsub('^"', ''):gsub('"$', '') or goal.text
	end,
	iscomplete = function(goal)
		if goal.confirmed == true then return true end
		if goal.loadguide and QC.HasGuide and not QC:HasGuide(goal.loadguide) then
			return true
		end
		return false
	end,
	gettext = function(goal) return goal.text or ("Load guide: " .. (goal.loadguide or "?")) end,
}

GOALTYPES["fpath"] = {
	parse = function(goal, params)
		if params and params ~= "" then goal.text = params end
	end,
	iscomplete = function(goal)
		if UnitOnTaxi and UnitOnTaxi("player") then
			goal._fpWasOnTaxi = true
			return false
		end
		return goal._fpWasOnTaxi and true or false
	end,
	gettext = function(goal) return goal.text or "Take a flight path" end,
}

GOALTYPES["skill"] = {
	parse = function(goal, params) ParseSkillTag(goal, params) end,
	iscomplete = function(goal)
		if not (goal.skillname and goal.skilllevel) then return false end
		return (QC.ConditionEnv and QC.ConditionEnv.skill(goal.skillname) or 0) >= goal.skilllevel
	end,
	gettext = function(goal)
		return goal.text or ("Reach " .. (goal.skillname or "skill") .. " " .. (goal.skilllevel or "?"))
	end,
}

GOALTYPES["skillmax"] = {
	parse = function(goal, params) ParseSkillTag(goal, params); goal.skillmax = true end,
	iscomplete = function(goal)
		if not (goal.skillname and goal.skilllevel) then return false end
		return (QC.ConditionEnv and QC.ConditionEnv.skill(goal.skillname) or 0) >= goal.skilllevel
	end,
	gettext = function(goal)
		return goal.text or ("Train " .. (goal.skillname or "skill") .. " to " .. (goal.skilllevel or "?"))
	end,
}

GOALTYPES["level"] = {
	parse = function(goal, params)
		goal.targetlevel = tonumber(params) or tonumber(params:match("(%d+)"))
	end,
	iscomplete = function(goal)
		return UnitLevel("player") >= (goal.targetlevel or 999)
	end,
	gettext = function(goal)
		return goal.text or ("Reach level " .. (goal.targetlevel or "?"))
	end,
}

GOALTYPES["scenariogoal"] = {
	parse = function(goal, params)
		goal.scenariocriteria = tonumber(params:match("^(%d+)"))
		local cnt = params:match("/(%d+)")
		if cnt then goal.scenariocount = tonumber(cnt) end
	end,
	iscomplete = function(goal)
		if not HasScenarioAPI() then return true end
		if not (goal.scenariocriteria and C_ScenarioInfo and C_ScenarioInfo.GetCriteriaInfo) then
			return false
		end
		local _, _, numCriteria = C_Scenario.GetStepInfo()
		for ci = 1, (numCriteria or 0) do
			local info = C_ScenarioInfo.GetCriteriaInfo(ci)
			if info and info.criteriaID == goal.scenariocriteria then
				if goal.scenariocount then
					return (info.quantity or 0) >= goal.scenariocount
				end
				return info.completed == true
			end
		end
		return false
	end,
	gettext = function(goal) return goal.text or "Complete scenario objective" end,
}

GOALTYPES["hearth"] = {
	parse = function(goal, params)
		if params and params ~= "" then goal.text = params end
	end,
	iscomplete = function(goal)
		if not GetBindLocation then return false end
		local bind = GetBindLocation()
		if not bind or bind == "" then return false end
		if goal.mapname or goal.map then
			local target = goal.mapname
			if not target and goal.map and C_Map and C_Map.GetMapInfo then
				local info = C_Map.GetMapInfo(goal.map)
				target = info and info.name
			end
			if target then
				local bl, tl = bind:lower(), target:lower()
				if bl:find(tl, 1, true) or tl:find(bl, 1, true) then return true end
				return false
			end
		end
		return true
	end,
	gettext = function(goal) return goal.text or "Set your hearthstone" end,
}
GOALTYPES["home"] = GOALTYPES["hearth"]

GOALTYPES["outvehicle"] = {
	parse = function(goal, params)
		if params and params ~= "" then goal.text = params end
	end,
	iscomplete = function(goal)
		return not (UnitInVehicle and UnitInVehicle("player"))
	end,
	gettext = function(goal) return goal.text or "Leave vehicle" end,
}

GOALTYPES["offtaxi"] = {
	parse = function(goal, params)
		if params and params ~= "" then goal.text = params end
	end,
	iscomplete = function(goal)
		return not (UnitOnTaxi and UnitOnTaxi("player"))
	end,
	gettext = function(goal) return goal.text or "Leave taxi" end,
}

GOALTYPES["buy"] = {
	parse = function(goal, params)
		local name, id, count = ParseItemLine(params)
		goal.itemname, goal.itemid, goal.count = name, id, count or 1
	end,
	iscomplete = GOALTYPES["collect"].iscomplete,
	gettext = function(goal)
		local s = "Buy " .. (goal.itemname or goal.text or "item")
		if (goal.count or 1) > 1 then s = s .. " (x" .. goal.count .. ")" end
		return s
	end,
}

GOALTYPES["create"] = {
	parse = function(goal, params)
		local n, name, id, skill, lvl = params:match("^(%d+)%s+(.-)##(%d+),%s*(.-),%s*(%d+)$")
		if n then
			goal.count = tonumber(n)
			goal.itemname = name
			goal.itemid = tonumber(id)
			goal.skillname = skill
			goal.skilllevel = tonumber(lvl)
		else
			name, id, skill, lvl = params:match("^(.-)##(%d+),%s*(.-),%s*(%d+)$")
			if name then
				goal.spellname = name
				goal.spellid = tonumber(id)
				goal.skillname = skill
				goal.skilllevel = tonumber(lvl)
			else
				n, name = params:match("^(%d+)%s+(.+)$")
				if n then
					goal.count = tonumber(n)
					goal.itemname, goal.itemid = select(1, ParseNameID(name)), select(2, ParseNameID(name))
				end
			end
		end
	end,
	iscomplete = function(goal)
		if goal.skillname and goal.skilllevel then
			local rank = QC.ConditionEnv and QC.ConditionEnv.skill(goal.skillname) or 0
			if rank >= goal.skilllevel then return true end
		end
		if goal.itemid and goal.count then
			return (QC.GetItemCount(goal.itemid) or 0) >= goal.count
		end
		return false
	end,
	gettext = function(goal)
		if goal.spellname then
			return "Create " .. goal.spellname .. " (" .. (goal.skillname or "") .. " " .. (goal.skilllevel or "") .. ")"
		end
		return "Create " .. (goal.itemname or goal.text or "items")
	end,
}

GOALTYPES["multiq"] = {
	parse = function(goal, params)
		goal.quests = {}
		for part in (params or ""):gmatch("[^,]+") do
			part = part:match("^%s*(.-)%s*$")
			local _, id = ParseNameID(part)
			id = id or tonumber(part:match("(%d+)"))
			if id then goal.quests[#goal.quests + 1] = id end
		end
	end,
	iscomplete = function(goal)
		local anydone, allclear = false, true
		for _, id in ipairs(goal.quests or {}) do
			local done = QC.QuestDB:IsQuestComplete(id)
			local active = QC.QuestDB:IsQuestInLog(id) and not done
			if done then anydone = true end
			if active then allclear = false end
		end
		return anydone and allclear
	end,
	gettext = function(goal) return goal.text or "Complete related quests" end,
}

-- |cast Spell Name##spellid  — completes via |q / |complete; offers a one-click button.
GOALTYPES["cast"] = {
	parse = function(goal, params)
		goal.spellname, goal.spellid = ParseNameID(params)
		goal.castspell = goal.spellid or goal.spellname
	end,
	iscomplete = function(goal)
		if goal.questid then return GOALTYPES["q"].iscomplete(goal) end
		return false
	end,
	gettext = function(goal) return goal.text or ("Cast " .. (goal.spellname or "spell")) end,
}

-- |use Item Name##itemid  — standalone use line; completes via |q / |complete.
GOALTYPES["use"] = {
	parse = function(goal, params)
		goal.itemname, goal.itemid = ParseNameID(params)
		goal.useitem = goal.itemid
		goal.useitemname = goal.itemname
	end,
	iscomplete = function(goal)
		if goal.questid then return GOALTYPES["q"].iscomplete(goal) end
		return false
	end,
	gettext = function(goal) return goal.text or ("Use " .. (goal.itemname or "item")) end,
}

-- |havebuff spellid  — completes when the player has the matching aura.
GOALTYPES["havebuff"] = {
	parse = function(goal, params)
		goal.buffname, goal.buffid = ParseNameID(params)
	end,
	iscomplete = function(goal)
		local id = goal.buffid
		if id and C_UnitAuras and C_UnitAuras.GetPlayerAuraBySpellID then
			return C_UnitAuras.GetPlayerAuraBySpellID(id) ~= nil
		end
		if goal.buffname and AuraUtil and AuraUtil.FindAuraByName then
			return AuraUtil.FindAuraByName(goal.buffname, "player") ~= nil
		end
		return false
	end,
	gettext = function(goal) return goal.text or ("Get buff: " .. (goal.buffname or goal.buffid or "?")) end,
}
GOALTYPES["buff"] = GOALTYPES["havebuff"]

-- |invehicle  — completes when the player enters a vehicle.
GOALTYPES["invehicle"] = {
	parse = function(goal, params) if params and params ~= "" then goal.text = params end end,
	iscomplete = function(goal)
		return (UnitInVehicle and UnitInVehicle("player")) and true or false
	end,
	gettext = function(goal) return goal.text or "Enter the vehicle" end,
}

-- |petbattle  — passive helper line; completes via |q / |complete.
GOALTYPES["petbattle"] = {
	parse = function(goal, params) if params and params ~= "" then goal.text = params end end,
	iscomplete = function(goal)
		if goal.questid then return GOALTYPES["q"].iscomplete(goal) end
		return false
	end,
	gettext = function(goal) return goal.text or "Win the pet battle" end,
}

-- Shared skill tag parser for goals (also used from Parser tags).
function ParseSkillTag(goal, params)
	if not params then return end
	local name, lvl = params:match("^%s*(.-)%s*,%s*(%d+)%s*$")
	if name and lvl then
		goal.skillname = name:gsub("^%s+", ""):gsub("%s+$", "")
		goal.skilllevel = tonumber(lvl)
	end
end
QC.ParseSkillTag = ParseSkillTag

GOALTYPES["goto"] = {
	iscomplete = function(goal)
		if goal._visited then return true end
		if goal.subzone then
			local sub = GetSubZoneText and GetSubZoneText() or ""
			local mini = GetMinimapZoneText and GetMinimapZoneText() or ""
			local ok = sub:lower():find(goal.subzone:lower(), 1, true)
				or mini:lower():find(goal.subzone:lower(), 1, true)
			if goal.subzonemode == "exit" then return not ok end
			return ok
		end
		if UnitOnTaxi and UnitOnTaxi("player") and not goal.goto_on_taxi then return false end
		if IsFlying and IsFlying() and not goal.goto_on_taxi then return false end
		local dist = GetDistanceToGoal(goal)
		if not dist then return false end
		local arrival = (QC.db and QC.db.profile.arrow.arrival) or 8
		if dist <= (goal.dist or arrival) then
			goal._visited = true
			return true
		end
		return false
	end,
	gettext = function(goal)
		return goal.text or "Go to the marked location"
	end,
}

GOALTYPES["text"] = {
	gettext = function(goal) return goal.text or "" end,
}

GOALTYPES["click"] = {
	parse = function(goal, params)
		goal.objectname, goal.objectid = ParseNameID(params)
	end,
	iscomplete = function(goal)
		if goal.questid then return GOALTYPES["q"].iscomplete(goal) end
		return false
	end,
	gettext = function(goal)
		return "Click " .. (goal.objectname or goal.text or "object")
	end,
}

GOALTYPES["clicknpc"] = {
	parse = function(goal, params)
		goal.npcname, goal.npcid = ParseNameID(params)
		goal.objectname, goal.objectid = goal.npcname, goal.npcid
	end,
	iscomplete = GOALTYPES["click"].iscomplete,
	gettext = function(goal)
		return "Talk to " .. (goal.npcname or goal.text or "NPC")
	end,
}

GOALTYPES["discover"] = {
	parse = function(goal, params)
		goal.zone = params or ""
		if goal.zone:sub(1, 4) == "the " then goal.zone = goal.zone:sub(5) end
		if ERR_ZONE_EXPLORED then
			goal.pattern = ERR_ZONE_EXPLORED:gsub("%%s", "(.*)")
		end
	end,
	iscomplete = function(goal) return goal._discovered == true end,
	gettext = function(goal)
		return goal.text or ("Discover " .. (goal.zone or "area"))
	end,
}

GOALTYPES["scenariostage"] = {
	parse = function(goal, params)
		goal.scenariostage = tonumber(params:match("^(%d+)"))
	end,
	iscomplete = function(goal)
		if not HasScenarioAPI() then return true end
		if not (goal.scenariostage and C_Scenario and C_Scenario.GetInfo) then return false end
		local _, stage = C_Scenario.GetInfo()
		return (stage or 0) >= goal.scenariostage
	end,
	gettext = function(goal)
		return goal.text or ("Reach scenario stage " .. (goal.scenariostage or "?"))
	end,
}

GOALTYPES["scenariobonus"] = {
	parse = function(goal, params)
		goal.scenariobonus = tonumber(params:match("^(%d+)"))
	end,
	iscomplete = function(goal)
		if not HasScenarioAPI() then return true end
		if not (goal.scenariobonus and C_Scenario and C_Scenario.GetBonusSteps) then return false end
		for _, stepID in ipairs(C_Scenario.GetBonusSteps()) do
			if stepID == goal.scenariobonus then return true end
		end
		return false
	end,
	gettext = function(goal)
		return goal.text or "Complete scenario bonus objective"
	end,
}

GOALTYPES["confirm"] = {
	iscomplete = function(goal) return goal.confirmed == true end,
	gettext = function(goal)
		return goal.text or "Click here to continue"
	end,
}

local function IsAchieveComplete(goal)
	if not goal.achieveid then return false end
	if goal.achievecriteria and GetAchievementCriteriaInfo then
		local ok, _, _, done = pcall(GetAchievementCriteriaInfo, goal.achieveid, goal.achievecriteria)
		if ok and done then return true end
	elseif GetAchievementInfo then
		if select(4, GetAchievementInfo(goal.achieveid)) then return true end
	end
	return false
end

GOALTYPES["achieve"] = {
	parse = function(goal, params)
		goal.achieveid = tonumber(params:match("^(%d+)"))
		local crit = params:match("/(%d+)")
		if crit then goal.achievecriteria = tonumber(crit) end
	end,
	iscomplete = IsAchieveComplete,
	gettext = function(goal)
		if goal.text then return goal.text end
		local name = goal.achieveid and GetAchievementInfo and select(2, GetAchievementInfo(goal.achieveid))
		return name and ("Achievement: " .. name) or ("Achievement " .. (goal.achieveid or "?"))
	end,
}

GOALTYPES["earn"] = {
	parse = function(goal, params)
		local count, rest = params:match("^(%d+)%s+(.+)$")
		goal.count = tonumber(count) or 1
		local _, id = ParseNameID(rest or params)
		goal.currencyid = id
	end,
	iscomplete = function(goal)
		if not (goal.currencyid and C_CurrencyInfo and C_CurrencyInfo.GetCurrencyInfo) then return false end
		local info = C_CurrencyInfo.GetCurrencyInfo(goal.currencyid)
		return info and (info.quantity or 0) >= (goal.count or 1)
	end,
	gettext = function(goal)
		local name = goal.text
		if not name and goal.currencyid and C_CurrencyInfo then
			local info = C_CurrencyInfo.GetCurrencyInfo(goal.currencyid)
			name = info and info.name
		end
		return ("Earn %d %s"):format(goal.count or 1, name or "currency")
	end,
}

GOALTYPES["learnmount"] = {
	parse = function(goal, params)
		local name, id = ParseNameID(params)
		goal.spellname, goal.spellid = name, id
	end,
	iscomplete = function(goal)
		if not goal.spellid then return false end
		if QC.ConditionEnv and QC.ConditionEnv.hasmount then
			return QC.ConditionEnv.hasmount(goal.spellid)
		end
		return IsSpellKnown and IsSpellKnown(goal.spellid) and true or false
	end,
	gettext = function(goal)
		local name = goal.spellname or goal.text
		if not name and goal.spellid and GetSpellInfo then name = GetSpellInfo(goal.spellid) end
		return "Learn mount: " .. (name or "?")
	end,
}

GOALTYPES["learnpet"] = {
	parse = function(goal, params)
		local name, id = ParseNameID(params)
		goal.petname, goal.petid = name, id
	end,
	iscomplete = function(goal)
		if not goal.petid then return false end
		if QC.ConditionEnv and QC.ConditionEnv.haspet then
			return QC.ConditionEnv.haspet(goal.petid)
		end
		if C_PetJournal and C_PetJournal.GetNumCollectedInfo then
			return (C_PetJournal.GetNumCollectedInfo(goal.petid) or 0) > 0
		end
		return false
	end,
	gettext = function(goal)
		return "Learn pet: " .. (goal.petname or goal.text or "?")
	end,
}

GOALTYPES["learnspell"] = {
	parse = function(goal, params)
		local name, id = ParseNameID(params)
		goal.spellname, goal.spellid = name, id
	end,
	iscomplete = function(goal)
		return goal.spellid and IsSpellKnown and IsSpellKnown(goal.spellid) and true or false
	end,
	gettext = function(goal)
		local name = goal.spellname or goal.text
		if not name and goal.spellid and GetSpellInfo then name = GetSpellInfo(goal.spellid) end
		return "Learn spell: " .. (name or "?")
	end,
}

-- Generic quest-objective completion (used when a goal carries |q id[/obj]).
GOALTYPES["q"] = {
	iscomplete = function(goal)
		local id = ResolveGoalQuestID(goal)
		if not id then return false end
		if QC.QuestDB:IsQuestComplete(id) then return true end
		if C_QuestLog and C_QuestLog.GetQuestProgressBarPercent then
			local ok, pct = pcall(C_QuestLog.GetQuestProgressBarPercent, id)
			if ok and pct and pct >= 100 then return true end
		end
		if goal.objnum then
			return QC.QuestDB:IsObjectiveComplete(id, goal.objnum)
		end
		return QC.QuestDB:AreAllObjectivesComplete(id)
	end,
}

----------------------------------------------------------------------
-- Goal methods
----------------------------------------------------------------------

local ALWAYS_COMPLETEABLE = {
	accept = true, turnin = true, goto = true, collect = true, trash = true, confirm = true,
	goal = true, loadguide = true, fpath = true, skill = true, skillmax = true,
	level = true, scenariogoal = true, outvehicle = true, offtaxi = true,
	buy = true, create = true, multiq = true,
	havebuff = true, buff = true, invehicle = true,
	achieve = true, earn = true, learnmount = true, learnpet = true, learnspell = true,
	discover = true, scenariostage = true, scenariobonus = true,
	quest = true, info = true, nobuff = true, equipped = true, unequipped = true,
	rep = true, vendor = true, trainer = true, gossip = true, playerchoice = true,
	scenariostart = true, scenarioend = true, ontaxi = true, subzone = true,
	toy = true, craft = true, firstcraft = true, extraaction = true,
	learnpetspell = true, petlevel = true, activepet = true, playertitle = true,
	condition = true, abandon = true,
}

function GoalProto:IsVisible()
	if self.hidden or self.action == "mapmarker" then return false end
	if self.onlyinsticky and not self.sticky then return false end
	if self.notinsticky and self.sticky then return false end
	if self.condition_visible then
		local ok, res = pcall(self.condition_visible)
		if ok then return res and true or false end
	end
	return true
end

-- Goal:IsInlineTravel — coord-only path hints (e.g. "Run up the ramp |goto ...").
function GoalProto:IsInlineTravel()
	if not (self.x and self.action == "goto") then return false end
	if self.questid or self.npcid or self.npcID then return false end
	return true
end

function GoalProto:IsCompleteable()
	if self.future then return false end
	if self.skillname and self.skilllevel then return true end
	if self.scenariocriteria then return true end
	if self.scenariostage then return true end
	if self.scenariobonus then return true end
	if self.scenario_id or self.scenario_name then return true end
	if self.faction and self.repstanding then return true end
	if self.itemid and (self.action == "equipped" or self.action == "unequipped") then return true end
	if self.toyid then return true end
	if self.optionID then return true end
	if self.gossipoption or self.gossiptext or self.gossipids then return true end
	if self.condition_complete then return true end
	if self.achieveid then return true end
	if ALWAYS_COMPLETEABLE[self.action] then return true end
	if self.questid then return true end
	return false
end

function GoalProto:IsComplete()
	if self.sticky_saved and QC.IsStickySaved and QC:IsStickySaved(self) then return true end
	if self._gossipDone then return true end
	if self.skillname and self.skilllevel then
		local sk = QC.ConditionEnv and QC.ConditionEnv.skill(self.skillname) or 0
		if sk >= self.skilllevel then return true end
	end
	if self.scenariocriteria and GOALTYPES["scenariogoal"].iscomplete then
		if GOALTYPES["scenariogoal"].iscomplete(self) then return true end
	end
	if self.scenariostage and GOALTYPES["scenariostage"].iscomplete then
		if GOALTYPES["scenariostage"].iscomplete(self) then return true end
	end
	if self.scenariobonus and GOALTYPES["scenariobonus"].iscomplete then
		if GOALTYPES["scenariobonus"].iscomplete(self) then return true end
	end
	-- Explicit |complete <expr> overrides the action's own logic.
	if self.condition_complete then
		local ok, res = pcall(self.condition_complete)
		if ok and res then return true end
	end
	if self.achieveid then
		-- Specific criterion (|achieve id/criteria) takes precedence.
		if self.achievecriteria and GetAchievementCriteriaInfo then
			local ok, _, _, done = pcall(GetAchievementCriteriaInfo, self.achieveid, self.achievecriteria)
			if ok and done then return true end
		elseif GetAchievementInfo then
			if select(4, GetAchievementInfo(self.achieveid)) then return true end
		end
	end
	local gt = GOALTYPES[self.action]
	if gt and gt.iscomplete then
		return gt.iscomplete(self) and true or false
	end
	if self.questid then
		return GOALTYPES["q"].iscomplete(self) and true or false
	end
	return false
end

-- Live "fulfilled/required" for kill/collect goals with a specific quest objective.
local PROGRESS_ACTIONS = { kill = true, collect = true, get = true }

local function ObjectiveProgress(goal)
	local qid = ResolveGoalQuestID(goal)
	if not qid or not goal.objnum then return nil end
	if not PROGRESS_ACTIONS[goal.action] then return nil end
	if not (C_QuestLog and C_QuestLog.GetQuestObjectives) then return nil end
	local ok, objs = pcall(C_QuestLog.GetQuestObjectives, qid)
	if not ok or not objs or #objs == 0 then return nil end

	local o = objs[goal.objnum]
	if o and o.numRequired and o.numRequired > 1 then
		return o.numFulfilled or 0, o.numRequired, o.finished
	end
	return nil
end

function GoalProto:GetText()
	local gt = GOALTYPES[self.action]
	local base
	if gt and gt.gettext then base = gt.gettext(self)
	else base = self.text or self.action or "" end

	if self.text and self.text:find("Destroy This Item", 1, true) then
		local link = ItemDisplayLink(self.destroy_itemid, self.destroy_itemname)
		if link then
			base = "|cffffee88Destroy This Item:|r " .. link
		else
			base = FormatUnderscoreText(base)
		end
	elseif base and base:find("_", 1, true) then
		base = FormatUnderscoreText(base)
	end

	if QC.SanitizeDisplayText then
		local fallback
		if gt and gt.gettext then
			fallback = gt.gettext(self)
		elseif self.action and self.action ~= "text" then
			fallback = self.action
		end
		base = QC.SanitizeDisplayText(base, fallback)
	end

	-- Append live objective progress for kill/collect goals only.
	local cur, req, done = ObjectiveProgress(self)
	if cur and req and not done then
		base = base .. (" |cffffcc00(%d/%d)|r"):format(cur, req)
	end
	if QC.FormatGuideText then
		base = QC.FormatGuideText(base)
	end
	return base
end

-- Status used by the UI: "complete" | "incomplete" | "passive".
function GoalProto:GetStatus()
	if not self:IsCompleteable() then return "passive" end
	return self:IsComplete() and "complete" or "incomplete"
end
