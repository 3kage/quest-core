-- QuestCore: extended guide-compatible GOALTYPES, |or groups, kill/talk/click tracking.

local addonName, QuestCore = ...
local QC = QuestCore

local GOALTYPES = QC.GOALTYPES
local ParseNameID = QC.ParseNameID
local Parser = QC.Parser
local GoalProto = QC.GoalProto
local QL = QC.Compat and QC.Compat.QuestLog

local GoalTypes = {}
QC.GoalTypes = GoalTypes

local function L(k) return (QC.L and QC.L[k]) or k end

local function QComplete(goal)
	local q = GOALTYPES["q"]
	return q and q.iscomplete(goal) or false
end

local function CollectComplete(goal)
	local c = GOALTYPES["collect"]
	return c and c.iscomplete(goal) or false
end

local function HaveBuffComplete(goal)
	local h = GOALTYPES["havebuff"]
	return h and h.iscomplete(goal) or false
end

local function QuestObjectiveComplete(goal)
	if not goal.questid then return false end
	if QL and QL.IsComplete and QL.IsComplete(goal.questid) then return true end
	if QC.QuestDB and QC.QuestDB.IsQuestComplete(goal.questid) then return true end
	if goal.objnum and QL and QL.IsObjectiveComplete then
		return QL.IsObjectiveComplete(goal.questid, goal.objnum)
	end
	if QC.QuestDB and QC.QuestDB.AreAllObjectivesComplete then
		return QC.QuestDB:AreAllObjectivesComplete(goal.questid)
	end
	return QComplete(goal)
end

local function NpcIdFromGUID(guid)
	if not guid or guid == "" then return nil end
	if not guid:find("Creature", 1, true) and not guid:find("Vehicle", 1, true) then
		return nil
	end
	local id = guid:match("%-(%d+)$")
	return id and tonumber(id) or nil
end

local function GetNPCId(unit)
	if not UnitGUID then return nil end
	return NpcIdFromGUID(UnitGUID(unit))
end

local function GetInteractionNpcId()
	for _, unit in ipairs({ "npc", "NPC", "target" }) do
		if UnitGUID and UnitGUID(unit) then
			local id = GetNPCId(unit)
			if id and id > 0 then return id end
		end
	end
	return nil
end

local INV_SLOTS = {
	"HeadSlot", "NeckSlot", "ShoulderSlot", "BackSlot", "ChestSlot",
	"WristSlot", "HandsSlot", "WaistSlot", "LegsSlot", "FeetSlot",
	"Finger0Slot", "Finger1Slot", "Trinket0Slot", "Trinket1Slot",
	"MainHandSlot", "SecondaryHandSlot",
}

local function ItemEquipped(itemid)
	if not itemid then return false end
	for _, slot in ipairs(INV_SLOTS) do
		local slotid = GetInventorySlotInfo(slot)
		if slotid and GetInventoryItemID("player", slotid) == itemid then return true end
	end
	return false
end

local STANDING = {
	Hated = 1, Hostile = 2, Unfriendly = 3, Neutral = 4,
	Friendly = 5, Honored = 6, Revered = 7, Exalted = 8,
}

local function RepStanding(name)
	if not (name and GetNumFactions) then return STANDING.Neutral end
	for i = 1, GetNumFactions() do
		local fname, _, standingID = GetFactionInfo(i)
		if fname == name then return standingID or STANDING.Neutral end
	end
	return STANDING.Neutral
end

local function Passive(name, parseFn)
	return {
		passive = true,
		parse = parseFn or function(g, p) if p and p ~= "" then g.text = p end end,
		iscomplete = function(g)
			if g.questid then return QComplete(g) end
			if g.condition_complete then
				local ok, res = pcall(g.condition_complete)
				if ok and res then return true end
			end
			return g._passiveDone == true
		end,
		gettext = function(g) return g.text or name or "" end,
	}
end

----------------------------------------------------------------------
-- |or group evaluation
----------------------------------------------------------------------

local _origIsComplete

local function RawIsComplete(goal)
	if not goal then return false end
	if _origIsComplete then
		return _origIsComplete(goal)
	end
	local gt = GOALTYPES[goal.action]
	if gt and gt.iscomplete then return gt.iscomplete(goal) and true or false end
	if goal.questid and GOALTYPES["q"] then
		return GOALTYPES["q"].iscomplete(goal) and true or false
	end
	return false
end

local function OrGroupSatisfied(goal)
	if not (goal and goal.orlogic and goal.parentStep and goal.parentStep.goals) then
		return false
	end
	for _, g in ipairs(goal.parentStep.goals) do
		if g.orlogic and g:IsVisible() and RawIsComplete(g) then
			return true
		end
	end
	return false
end

function GoalTypes.IsGoalComplete(goal)
	if not goal then return false end
	if goal.orlogic and goal.parentStep and goal.parentStep.goals then
		for _, g in ipairs(goal.parentStep.goals) do
			if g.orlogic and g:IsVisible() and RawIsComplete(g) then
				return true
			end
		end
	end
	return RawIsComplete(goal)
end

function GoalTypes.IsStepComplete(step)
	if not step then return false end
	if step.condition_complete then
		local ok, res = pcall(step.condition_complete)
		if ok and not res then return false end
	end
	if not step.goals or #step.goals == 0 then
		return step.manualdone == true
	end
	local anyvisible = false
	for _, goal in ipairs(step.goals) do
		if goal:IsVisible() then
			anyvisible = true
			break
		end
	end
	if not anyvisible then return true end
	if step.IsComplete then return step:IsComplete() end
	return false
end

if GoalProto and GoalProto.IsComplete then
	_origIsComplete = GoalProto.IsComplete
	function GoalProto:IsComplete()
		if self.orlogic and OrGroupSatisfied(self) then return true end
		return _origIsComplete(self)
	end
end

----------------------------------------------------------------------
-- Secure quest item helper (taint-safe; used by MainFrame item button)
----------------------------------------------------------------------

function GoalTypes.ApplySecureItemButton(btn, goal)
	if not btn then return false end
	if InCombatLockdown() then return false end
	if not goal or not goal.useitem then
		btn:Hide()
		return false
	end
	local itemid = goal.useitem
	btn:SetAttribute("type", "item")
	btn:SetAttribute("item", itemid and ("item:" .. itemid) or goal.useitemname)
	btn:SetAttribute("macrotext", nil)
	btn:SetAttribute("spell", nil)
	return true
end

function GoalTypes.FindUseGoal(step)
	if not step or not step.goals then return nil end
	for _, goal in ipairs(step.goals) do
		if goal:IsVisible() and not goal:IsComplete() and goal.useitem then
			return goal
		end
	end
	return nil
end

----------------------------------------------------------------------
-- kill / talk / click (quest-log aware)
----------------------------------------------------------------------

GOALTYPES["kill"] = {
	parse = function(goal, params)
		local count, rest = params:match("^(%d+)%s+(.+)$")
		if count then
			goal.count = tonumber(count)
			params = rest
		end
		if params:find(",", 1, true) then
			local names = {}
			goal.mobids = {}
			for part in params:gmatch("[^,]+") do
				part = part:match("^%s*(.-)%s*$")
				local name, id = ParseNameID(part)
				if name and name ~= "" then names[#names + 1] = name end
				if id then goal.mobids[#goal.mobids + 1] = id end
			end
			goal.mobname = table.concat(names, ", ")
			goal.mobid = goal.mobids[1]
		else
			goal.mobname, goal.mobid = ParseNameID(params)
		end
		goal.type = "kill"
		goal.mobID = goal.mobid
	end,
	iscomplete = function(goal)
		if goal._killDone then return true end
		if goal.questid then return QuestObjectiveComplete(goal) end
		return false
	end,
	gettext = function(goal)
		return "Kill " .. (goal.mobname or goal.text or "target")
	end,
}

GOALTYPES["talk"] = {
	parse = function(goal, params)
		goal.npcname, goal.npcid = ParseNameID(params)
		goal.type = "talk"
		goal.npcID = goal.npcid
	end,
	iscomplete = function(goal)
		if goal._talkedToNpc then return true end
		if goal.questid then return QuestObjectiveComplete(goal) end
		return false
	end,
	gettext = function(goal)
		return "Talk to " .. (goal.npcname or goal.text or "NPC")
	end,
}

GOALTYPES["click"] = {
	parse = function(goal, params)
		goal.objectname, goal.objectid = ParseNameID(params)
		goal.type = "click"
		goal.itemID = goal.objectid
	end,
	iscomplete = function(goal)
		if goal._clickedObject then return true end
		if goal.questid then return QuestObjectiveComplete(goal) end
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
		goal.type = "clicknpc"
		goal.npcID = goal.npcid
	end,
	iscomplete = GOALTYPES["click"].iscomplete,
	gettext = function(goal)
		return "Talk to " .. (goal.npcname or goal.text or "NPC")
	end,
}

----------------------------------------------------------------------
-- Extended passive / specialty types
----------------------------------------------------------------------

GOALTYPES["quest"] = GOALTYPES["q"]

GOALTYPES["info"] = {
	passive = true,
	parse = function(g, p) g.info = p; g.text = p end,
	gettext = function(g) return "|cffeeeecc" .. (g.info or g.text or "") .. "|r" end,
}

GOALTYPES["polish"] = Passive("")

GOALTYPES["walk"] = {
	parse = function(g, p)
		if g.parentStep then g.parentStep.force_walk = true end
		g.force_walk = true
	end,
	iscomplete = function() return true end,
	gettext = function(g) return g.text or "" end,
}

GOALTYPES["notinsticky"] = { parse = function(g) g.notinsticky = true end, gettext = function() return "" end }
GOALTYPES["onlyinsticky"] = { parse = function(g) g.onlyinsticky = true end, gettext = function() return "" end }

GOALTYPES["nobuff"] = {
	parse = GOALTYPES["havebuff"].parse,
	iscomplete = function(g) return not HaveBuffComplete(g) end,
	gettext = function(g)
		return "Remove buff: " .. (g.buffname or g.buffid or g.text or "?")
	end,
}

GOALTYPES["equipped"] = {
	parse = function(g, p)
		g.itemname, g.itemid = ParseNameID(p)
		g.itemID = g.itemid
	end,
	iscomplete = function(g)
		local id = g.itemid
		if not id then return false end
		if (QC.GetItemCount and QC.GetItemCount(id) or 0) == 0 then return false end
		return ItemEquipped(id)
	end,
	gettext = function(g)
		return "Equip " .. (g.itemname or g.text or "item")
	end,
}
GOALTYPES["equip"] = GOALTYPES["equipped"]

GOALTYPES["unequipped"] = {
	parse = GOALTYPES["equipped"].parse,
	iscomplete = function(g)
		local id = g.itemid
		if not id then return false end
		if (QC.GetItemCount and QC.GetItemCount(id) or 0) == 0 then return true end
		return not ItemEquipped(id)
	end,
	gettext = function(g)
		return "Unequip " .. (g.itemname or g.text or "item")
	end,
}
GOALTYPES["unequip"] = GOALTYPES["unequipped"]

GOALTYPES["rep"] = {
	parse = function(g, p)
		g.faction, g.repstanding = p:match("^(.-)%s*,%s*(.+)$")
		if g.repstanding then
			g.repstanding = STANDING[g.repstanding] or tonumber(g.repstanding)
		end
	end,
	iscomplete = function(g)
		if not (g.faction and g.repstanding) then return false end
		return RepStanding(g.faction) >= g.repstanding
	end,
	gettext = function(g)
		return "Reach " .. (g.repstanding or "?") .. " with " .. (g.faction or "faction")
	end,
}

GOALTYPES["vendor"] = {
	parse = function(g, p)
		local name, id = ParseNameID(p)
		g.npcname, g.npcid = name, id
		g.npcID = id
		if not g.npcname then g.npcname = p end
	end,
	iscomplete = function(g) return g._vendorDone == true end,
	gettext = function(g)
		return "Vendor: " .. (g.npcname or g.text or "NPC")
	end,
}

GOALTYPES["trainer"] = {
	parse = GOALTYPES["vendor"].parse,
	iscomplete = function(g) return g._trainerDone == true end,
	gettext = function(g)
		return "Trainer: " .. (g.npcname or g.text or "NPC")
	end,
}

GOALTYPES["gossip"] = {
	parse = function(g, p)
		if p and p ~= "" then g.text = p end
		local idx = p and tonumber(p:match("^(%d+)%s*$"))
		if idx then g.gossipoption = idx end
	end,
	iscomplete = function(g) return g._gossipDone == true end,
	gettext = function(g) return g.text or "Select gossip option" end,
}

GOALTYPES["playerchoice"] = {
	parse = function(g, p)
		local par, fb = p:match("^(.+)%s*@%s*(.+)$")
		if par then g.fallback = fb; p = par end
		g.optionname, g.optionID = ParseNameID(p)
	end,
	iscomplete = function(g) return g._choicePicked == true or QComplete(g) end,
	gettext = function(g) return g.optionname or g.text or "Make a choice" end,
}

GOALTYPES["scenariostart"] = {
	parse = function(g, p)
		g.scenario_name, g.scenario_id = ParseNameID(p)
	end,
	iscomplete = function(g)
		if not (C_Scenario and C_Scenario.IsInScenario) then return false end
		if not C_Scenario.IsInScenario() then return false end
		if g.scenario_id then
			local _, _, _, _, _, _, _, _, scenarioID = C_Scenario.GetInfo()
			return scenarioID == g.scenario_id
		end
		return true
	end,
	gettext = function(g)
		return "Start scenario: " .. (g.scenario_name or g.text or "?")
	end,
}

GOALTYPES["scenarioend"] = {
	parse = function() end,
	iscomplete = function(g)
		if not C_Scenario then return false end
		if not C_Scenario.IsInScenario() then return true end
		local _, _, _, _, _, _, completed = C_Scenario.GetInfo()
		return completed == true
	end,
	gettext = function(g) return g.text or "Complete the scenario" end,
}

GOALTYPES["ontaxi"] = {
	parse = function(g, p) if p ~= "" then g.text = p end end,
	iscomplete = function()
		return UnitOnTaxi and UnitOnTaxi("player") and true or false
	end,
	gettext = function(g) return g.text or "Take a taxi" end,
}

GOALTYPES["subzone"] = {
	parse = function(g, p) g.subzone = p end,
	iscomplete = function(g)
		if not g.subzone then return false end
		local sub = GetSubZoneText and GetSubZoneText() or ""
		return sub:lower():find(g.subzone:lower(), 1, true) and true or false
	end,
	gettext = function(g) return "Enter " .. (g.subzone or "subzone") end,
}

GOALTYPES["toy"] = {
	parse = function(g, p)
		g.toyname, g.toyid = ParseNameID(p)
	end,
	iscomplete = function(g)
		return g.toyid and PlayerHasToy and PlayerHasToy(g.toyid) and true or false
	end,
	gettext = function(g) return "Collect toy: " .. (g.toyname or "?") end,
}

GOALTYPES["craft"] = {
	parse = function(g, p)
		local item, skill = p:match("^(.-),%s*(.+)$")
		if item then
			g.itemname, g.itemid = ParseNameID(item)
			g.skillname = skill
		else
			g.itemname, g.itemid = ParseNameID(p)
		end
		g.itemID = g.itemid
	end,
	iscomplete = CollectComplete,
	gettext = function(g) return "Craft " .. (g.itemname or g.text or "item") end,
}

GOALTYPES["firstcraft"] = {
	parse = GOALTYPES["craft"].parse,
	iscomplete = CollectComplete,
	gettext = function(g) return "First craft: " .. (g.itemname or g.text or "item") end,
}

GOALTYPES["extraaction"] = {
	parse = function(g, p)
		g.spellname, g.spellid = ParseNameID(p)
	end,
	iscomplete = function(g) return QComplete(g) end,
	gettext = function(g) return "Use extra action: " .. (g.spellname or "?") end,
}

GOALTYPES["petaction"] = Passive("Pet battle action")

GOALTYPES["learnpetspell"] = {
	parse = function(g, p)
		g.spellname, g.spellid = ParseNameID(p)
	end,
	iscomplete = function(g)
		return g.spellid and IsSpellKnown and IsSpellKnown(g.spellid, true) and true or false
	end,
	gettext = function(g) return "Learn pet ability: " .. (g.spellname or "?") end,
}

GOALTYPES["petlevel"] = {
	parse = function(g, p)
		local lvl, rest = p:match("^(%d+)%s+(.+)$")
		if lvl then
			g.petlevel = tonumber(lvl)
			g.petname, g.petid = ParseNameID(rest)
		else
			g.petname, g.petid = ParseNameID(p)
		end
	end,
	iscomplete = function(g)
		if not (g.petid and C_PetJournal) then return false end
		local _, level = C_PetJournal.GetPetInfoBySpeciesID(g.petid)
		return (level or 0) >= (g.petlevel or 1)
	end,
	gettext = function(g)
		return ("Level %s to %d"):format(g.petname or "pet", g.petlevel or 1)
	end,
}

GOALTYPES["activepet"] = {
	parse = function(g, p)
		g.petname, g.petid = ParseNameID(p)
	end,
	iscomplete = function(g)
		if not (g.petid and C_PetJournal) then return false end
		for i = 1, C_PetJournal.GetNumPets() do
			local info = C_PetJournal.GetPetInfoByIndex(i)
			if info and info.speciesID == g.petid and info.isSummoned then return true end
		end
		return false
	end,
	gettext = function(g) return "Summon " .. (g.petname or "pet") end,
}

GOALTYPES["abandon"] = {
	parse = function(g, p)
		g.questname, g.questid = ParseNameID(p)
		g.questID = g.questid
	end,
	iscomplete = function(g)
		local id = g.questid
		if not id then return false end
		return not QC.QuestDB:IsQuestInLog(id) and not QC.QuestDB:IsQuestComplete(id)
	end,
	gettext = function(g) return "Abandon " .. (g.questname or "quest") end,
}

GOALTYPES["noquest"] = {
	parse = function(g, p)
		g.npcname, g.npcid = ParseNameID(p)
	end,
	iscomplete = function(g) return g.confirmed == true end,
	gettext = function(g)
		return "No quest from " .. (g.npcname or g.text or "NPC")
	end,
}

GOALTYPES["playertitle"] = {
	parse = function(g, p)
		g.titlename, g.titleid = ParseNameID(p)
	end,
	iscomplete = function(g)
		if g.titleid and IsTitleKnown then return IsTitleKnown(g.titleid) end
		return false
	end,
	gettext = function(g) return "Earn title: " .. (g.titlename or "?") end,
}

GOALTYPES["condition"] = {
	parse = function(g, p)
		g.text = p
		if p and p ~= "" and QC.MakeCondition then
			g.condition_complete = QC.MakeCondition(p, false)
		end
	end,
	iscomplete = function(g)
		if g.condition_complete then
			local ok, res = pcall(g.condition_complete)
			return ok and res and true or false
		end
		return false
	end,
	gettext = function(g) return g.text or "" end,
}

GOALTYPES["avoid"] = Passive("Avoid")
GOALTYPES["grind"] = Passive("Grind")
GOALTYPES["talknpcs"] = GOALTYPES["talk"]
GOALTYPES["learn"] = GOALTYPES["learnspell"]
GOALTYPES["reachskill"] = GOALTYPES["skill"]
GOALTYPES["ferry"] = GOALTYPES["fpath"]
GOALTYPES["mapmarker"] = {
	passive = true,
	parse = function() end,
	iscomplete = function() return true end,
	gettext = function() return "" end,
}
GOALTYPES["popuptext"] = Passive("")
GOALTYPES["devmsg"] = Passive("")
GOALTYPES["reload"] = Passive("Reload UI")
GOALTYPES["oncomplete"] = Passive("")
GOALTYPES["nexttab"] = Passive("")
GOALTYPES["guideflag"] = Passive("")
GOALTYPES["phase"] = Passive("")
GOALTYPES["image"] = Passive("")
GOALTYPES["achievetext"] = GOALTYPES["achieve"]
GOALTYPES["countremains"] = Passive("")
GOALTYPES["repcollect"] = GOALTYPES["rep"]
GOALTYPES["goldcollect"] = GOALTYPES["collect"]
GOALTYPES["goldtracker"] = Passive("")
GOALTYPES["bank"] = Passive("Bank")
GOALTYPES["openskill"] = Passive("")
GOALTYPES["findcity"] = Passive("")
GOALTYPES["follower"] = Passive("")
GOALTYPES["havebuilding"] = Passive("")
GOALTYPES["killboss"] = GOALTYPES["kill"]
GOALTYPES["bosshp"] = Passive("")
GOALTYPES["itemset"] = Passive("")
GOALTYPES["itemname"] = Passive("")
GOALTYPES["useany"] = GOALTYPES["use"]
GOALTYPES["questchoice"] = GOALTYPES["playerchoice"]
GOALTYPES["worldquestqueue"] = Passive("")
GOALTYPES["zombiewalk"] = Passive("")
GOALTYPES["appearance"] = Passive("")
GOALTYPES["specialtalent"] = Passive("")
GOALTYPES["specialtalentactive"] = Passive("")
GOALTYPES["getrune"] = Passive("")
GOALTYPES["userune"] = Passive("")
GOALTYPES["furniture"] = Passive("")
GOALTYPES["houselevel"] = Passive("")
GOALTYPES["petspecies"] = Passive("")
GOALTYPES["petding"] = GOALTYPES["level"]
GOALTYPES["count"] = {
	parse = function(g, p) g.count = tonumber(p) or g.count end,
	gettext = function(g) return g.text or "" end,
}

QC.GetNPCUnitId = GetNPCId
QC.GetInteractionNpcId = GetInteractionNpcId

if Parser and Parser.RegisterActions then
	Parser:RegisterActions({
		"quest", "info", "polish", "walk", "notinsticky", "onlyinsticky",
		"nobuff", "equipped", "equip", "unequipped", "unequip", "rep", "repcollect",
		"vendor", "trainer", "gossip", "playerchoice", "questchoice",
		"scenariostart", "scenarioend", "ontaxi", "subzone", "toy",
		"craft", "firstcraft", "extraaction", "petaction", "learnpetspell",
		"petlevel", "activepet", "abandon", "noquest", "playertitle", "condition",
		"avoid", "grind", "talknpcs", "ferry", "mapmarker", "popuptext", "devmsg",
		"reload", "oncomplete", "nexttab", "guideflag", "phase", "image",
		"achievetext", "countremains", "goldcollect", "goldtracker", "bank", "trash",
		"openskill", "findcity", "follower", "havebuilding", "killboss", "bosshp",
		"itemset", "itemname", "useany", "worldquestqueue", "zombiewalk",
		"appearance", "specialtalent", "specialtalentactive", "getrune", "userune",
		"furniture", "houselevel", "petspecies", "petding", "count",
	})
end
