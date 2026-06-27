-- QuestCore: guide text parser (extended DSL).
-- Supports stickystart/stickystop, confirm, click,
-- |only Race Class, |only if expr, standalone "only" lines, labels, and map names.

local addonName, QuestCore = ...
local QC = QuestCore

local Parser = {}
QC.Parser = Parser

-- TEMPORARY parse diagnostics (set both false after the crash is fixed).
Parser.PARSE_DEBUG = false  -- print each non-empty guide line to chat while parsing
Parser.PARSE_STRICT = false -- skip pcall swallow in Guide:Parse; show native Lua error UI

local function ParseDebugEnabled()
	return Parser.PARSE_DEBUG or Parser.PARSE_STRICT
end

function Parser:ParseDebugLog(guide, lineNum, step, line)
	if not Parser.PARSE_DEBUG then return end
	local stepNum = step and step.num or 0
	local title = guide and guide.title_short or guide and guide.title or "?"
	local preview = line:gsub("|", "||")
	if #preview > 120 then preview = preview:sub(1, 117) .. "..." end
	local msg = ("[QC Parse] %s L%d step=%d: %s"):format(title, lineNum, stepNum, preview)
	if DEFAULT_CHAT_FRAME and DEFAULT_CHAT_FRAME.AddMessage then
		DEFAULT_CHAT_FRAME:AddMessage(msg, 1.0, 0.82, 0.45)
	elseif QC.Print then
		QC:Print(msg)
	end
end

function Parser:RaiseParseError(guide, lineNum, line, err)
	local title = guide and guide.title or "?"
	local preview = line or ""
	if #preview > 200 then preview = preview:sub(1, 197) .. "..." end
	local msg = ("QuestCore parse error in '%s' at raw line %d:\n%s\n>>> %s")
		:format(title, lineNum, tostring(err), preview)
	if QC.Print then QC:Print("|cffff4444" .. msg .. "|r") end
	error(msg, 2)
end

local KNOWN_ACTIONS = {
	accept = true, turnin = true, talk = true,
	kill = true, collect = true, get = true, goal = true,
	goto = true, mapmarker = true, text = true,
	click = true, confirm = true,
	complete = true,
	loadguide = true, fpath = true, fly = true,
	skill = true, skillmax = true,
	scenariogoal = true, level = true, ding = true,
	home = true, hearth = true,
	outvehicle = true, offtaxi = true,
	buy = true, create = true, multiq = true,
	cast = true, use = true, havebuff = true, buff = true,
	invehicle = true, petbattle = true,
	achieve = true, earn = true,
	learnmount = true, learnpet = true, learnspell = true, learn = true,
	clicknpc = true, discover = true, scenariostage = true, scenariobonus = true,
	at = true, trash = true, bank = true,
}

local RACE_MAP = {
	HUMAN = "Human", DWARF = "Dwarf", NIGHTELF = "NightElf", GNOME = "Gnome",
	DRAENEI = "Draenei", WORGEN = "Worgen", ORC = "Orc", SCOURGE = "Scourge",
	UNDEAD = "Scourge", TAUREN = "Tauren", TROLL = "Troll", BLOODELF = "BloodElf",
	GOBLIN = "Goblin", PANDAREN = "Pandaren", NIGHTBORNE = "Nightborne",
	HIGHMOUNTAINTAUREN = "HighmountainTauren", VOIDELF = "VoidElf",
	LIGHTFORGEDDRAENEI = "LightforgedDraenei", ZANDALARITROLL = "ZandalariTroll",
	KULTIRAN = "KulTiran", DARKIRONDWARF = "DarkIronDwarf", VULPERA = "Vulpera",
	MECHAGNOME = "Mechagnome", MAGHARORC = "MagharOrc",
}

local CLASS_MAP = {
	WARRIOR = "WARRIOR", PALADIN = "PALADIN", HUNTER = "HUNTER", ROGUE = "ROGUE",
	PRIEST = "PRIEST", DEATHKNIGHT = "DEATHKNIGHT", SHAMAN = "SHAMAN", MAGE = "MAGE",
	WARLOCK = "WARLOCK", MONK = "MONK", DRUID = "DRUID", DEMONHUNTER = "DEMONHUNTER",
	EVOKER = "EVOKER",
}

----------------------------------------------------------------------
-- Line preprocessing and pipe-chunk splitting
----------------------------------------------------------------------

-- Strip // and -- comments, then trim whitespace. Empty string when comment-only.
local function PreprocessLine(rawline)
	if not rawline then return "" end
	local line = rawline:gsub("//.*$", ""):gsub("%-%-.*$", "")
	-- Escaped pipes in guide text (\|) must not split tag chunks.
	line = line:gsub("\\|", "%%PIPE%%")
	line = line:gsub("^%s+", ""):gsub("%s+$", "")
	return line
end

-- Split guide pipe modifiers: "talk NPC |q 123 |or" -> { "talk NPC", "q 123", "or" }.
local function SplitPipeChunks(line)
	local chunks = {}
	if not line or line == "" then return chunks end
	for chunk in (line .. "|"):gmatch("%s*(.-)%s*|") do
		chunk = chunk:gsub("^%s+", ""):gsub("%s+$", "")
		chunk = chunk:gsub("%%PIPE%%", "|")
		if chunk ~= "" then chunks[#chunks + 1] = chunk end
	end
	return chunks
end

-- Pipe-chunk commands that modify the current/previous goal (not standalone goal lines).
local MODIFIER_TAGS = {
	tip = true, only = true, complete = true, notinsticky = true, onlyinsticky = true,
	future = true, ["or"] = true, override = true, confirm = true, walk = true, notravel = true,
	optional = true, opt = true, sticky = true, q = true, dist = true, count = true,
	daily = true, weekly = true, use = true, cast = true, buff = true, havebuff = true,
	nobreak = true, petbattle = true, invehicle = true, gossip = true, polish = true,
	warning = true, noautocomplete = true, noqueststatus = true, noarrow = true, nodisplay = true,
	noway = true, c = true, noautoaccept = true, noautogossip = true, instant = true, from = true,
	model = true, modelnpc = true, modelid = true, achieveid = true, achieve = true,
	loadguide = true, autoscript = true, script = true, updatescript = true, macro = true,
	next = true, skill = true, skillmax = true, scenariogoal = true, quest = true,
}

local ApplyTag  -- forward declaration; defined after condition helpers
local ResolveGoalMap  -- forward declaration; used by AddHiddenMapmarker / ParseGoalLine

local function IsTagOnlyLine(line)
	local chunks = SplitPipeChunks(line)
	if #chunks == 0 then return false end
	for _, chunk in ipairs(chunks) do
		local cmd = chunk:match("^(%S+)")
		if not cmd then return false end
		if cmd:sub(1, 1) == "'" then return false end
		if MODIFIER_TAGS[cmd] then
		elseif KNOWN_ACTIONS[cmd] or KNOWN_ACTIONS[Parser:ResolveAction(cmd)] then
			return false
		else
			return false
		end
	end
	return true
end

local function ApplyTagsToLastGoal(line, step, prev)
	if not step or #step.goals == 0 then return false end
	local goal = step.goals[#step.goals]
	for _, chunk in ipairs(SplitPipeChunks(line)) do
		local tcmd, tparams = chunk:match("^(%S+)%s*(.-)$")
		if tcmd then ApplyTag(goal, tcmd, tparams or "", prev) end
	end
	return true
end

-- Link "_Destroy This Item:_" headers to the next trash/collect goal in the step.
local function FinalizeStepGoals(step)
	if not step or not step.goals then return end
	for i = 1, #step.goals do
		local g = step.goals[i]
		if g.text and g.text:find("Destroy This Item", 1, true) then
			for j = i + 1, #step.goals do
				local ng = step.goals[j]
				if ng.itemid and (ng.action == "trash" or ng.action == "collect") then
					g.destroy_itemid = ng.itemid
					g.destroy_itemname = ng.itemname
					break
				end
			end
		end
	end
	if step.condition_visible then
		for _, g in ipairs(step.goals) do
			if not g.condition_visible then
				g.condition_visible = step.condition_visible
			end
		end
	end
end

-- Canonical goal fields for GoalTypesExtended / UI (aliases over legacy snake_case).
local PASSIVE_ACTIONS = {
	text = true, info = true, confirm = true,
}

local function NormalizeGoalFields(goal)
	if not goal then return end
	goal.type = goal.action
	goal.questID = goal.questid
	goal.itemID = goal.itemid or goal.useitem
	goal.npcID = goal.npcid
	goal.mobID = goal.mobid
	goal.achieveID = goal.achieveid
	if goal.count == nil then goal.count = 1 end
	local gt = QC.GOALTYPES and QC.GOALTYPES[goal.action]
	goal.passive = goal.passive
		or PASSIVE_ACTIONS[goal.action]
		or (gt and gt.passive)
		or false
end

----------------------------------------------------------------------
-- Conditions
----------------------------------------------------------------------

-- Reputation standing constants (Blizzard's 1..8 scale).
local STANDING = {
	Hated = 1, Hostile = 2, Unfriendly = 3, Neutral = 4,
	Friendly = 5, Honored = 6, Revered = 7, Exalted = 8,
}

local function completedAny(...)
	local QL = QC.Compat and QC.Compat.QuestLog
	if not QL or not QL.IsComplete then return false end
	local n = select("#", ...)
	if n == 0 then return false end
	for i = 1, n do
		local id = tonumber(select(i, ...))
		if id and QL.IsComplete(id) then return true end
	end
	return false
end

local function completedAll(...)
	local QL = QC.Compat and QC.Compat.QuestLog
	if not QL or not QL.IsComplete then return false end
	local n = select("#", ...)
	if n == 0 then return false end
	for i = 1, n do
		local id = tonumber(select(i, ...))
		if id and not QL.IsComplete(id) then return false end
	end
	return true
end

-- Current reputation standing (1..8) for a faction looked up by name.
local function repByName(name)
	if not (name and GetNumFactions) then return STANDING.Neutral end
	for i = 1, GetNumFactions() do
		local fname, _, standingID = GetFactionInfo(i)
		if fname == name then return standingID or STANDING.Neutral end
	end
	return STANDING.Neutral
end

-- Current profession skill level by name (substring match).
local function skillByName(skillName)
	if not skillName or not GetProfessionInfo then return 0 end
	local prof1, prof2 = GetProfessions and GetProfessions()
	for _, prof in ipairs({ prof1, prof2 }) do
		if prof then
			local name, _, rank = GetProfessionInfo(prof)
			if name and name:lower():find(skillName:lower(), 1, true) then
				return rank or 0
			end
		end
	end
	return 0
end

-- Functions available inside guide/header conditions. Safe stubs: they must
-- never error, and should default toward "show the guide".
local COND_FUNCS = {
	haveq = function(...)
		local QD = QC.QuestDB
		if not QD then return false end
		local n = select("#", ...)
		for i = 1, n do
			local id = tonumber(select(i, ...))
			if id and QD.IsQuestAccepted and QD:IsQuestAccepted(id) then return true end
			if id and QD.IsQuestInLog and QD:IsQuestInLog(id) then return true end
		end
		return false
	end,
	completedq = completedAny,
	completedallq = completedAll,
	haveallq = function(...)
		local QD = QC.QuestDB
		if not QD then return false end
		local n = select("#", ...)
		if n == 0 then return false end
		for i = 1, n do
			local id = tonumber(select(i, ...))
			if not id then return false end
			if QD.IsQuestAccepted and not QD:IsQuestAccepted(id) then return false end
			if not QD.IsQuestAccepted and not QD:IsQuestInLog(id) then return false end
		end
		return true
	end,
	readyq = function(...)
		local QD = QC.QuestDB
		if not QD then return false end
		local n = select("#", ...)
		for i = 1, n do
			local id = tonumber(select(i, ...))
			if id and QD:IsQuestInLog(id) and QD:IsQuestReadyForTurnIn(id) then
				return true
			end
		end
		return false
	end,
	rep = repByName,
	factionrenown = function(factionID)
		factionID = tonumber(factionID)
		if not factionID then return 0 end
		if C_MajorFactions and C_MajorFactions.GetMajorFactionData then
			local data = C_MajorFactions.GetMajorFactionData(factionID)
			return data and data.renownLevel or 0
		end
		return 0
	end,
	hasmount = function(mountident)
		mountident = tonumber(mountident)
		if not mountident then return false end
		if C_MountJournal and C_MountJournal.GetMountFromSpell then
			local mountID = C_MountJournal.GetMountFromSpell(mountident)
			if mountID then
				local _, _, _, _, _, _, _, _, _, _, isCollected = C_MountJournal.GetMountInfoByID(mountID)
				return isCollected and true or false
			end
		end
		return IsSpellKnown and IsSpellKnown(mountident) and true or false
	end,
	haspet = function(speciesID)
		speciesID = tonumber(speciesID)
		if not (speciesID and C_PetJournal and C_PetJournal.GetNumCollectedInfo) then return false end
		local numCollected = C_PetJournal.GetNumCollectedInfo(speciesID)
		return (numCollected or 0) > 0
	end,
	areapoi = function(map, id)
		if C_AreaPoiInfo and C_AreaPoiInfo.GetAreaPOIInfo then
			return C_AreaPoiInfo.GetAreaPOIInfo(tonumber(map) or map, tonumber(id)) ~= nil
		end
		return false
	end,
	areapoitime = function(id)
		if C_AreaPoiInfo and C_AreaPoiInfo.GetAreaPOISecondsLeft then
			return C_AreaPoiInfo.GetAreaPOISecondsLeft(tonumber(id)) or 0
		end
		return 0
	end,
	achieved = function(achieveid, subid, current)
		achieveid = tonumber(achieveid)
		subid = tonumber(subid)
		if not achieveid then return false end
		if subid and GetAchievementCriteriaInfo then
			local ok, _, done, _, _, _, _, _, charName = pcall(GetAchievementCriteriaInfo, achieveid, subid)
			if ok and done then
				if current and charName and charName ~= UnitName("player") then return false end
				return true
			end
			return false
		end
		if not GetAchievementInfo then return false end
		local idx = current and 13 or 4
		return select(idx, GetAchievementInfo(achieveid)) and true or false
	end,
	iswalking = function()
		return not (IsFlying and IsFlying())
	end,
	flying = function()
		return (IsFlying and IsFlying()) and true or false
	end,
	knowstaxi = function(name)
		if not name then return false end
		local key = name:lower():gsub(", .*", "")
		local TG = QC.TravelGraph
		if TG and TG.knownTaxiByName and TG.knownTaxiByName[key] then return true end
		if TG and TG.knownTaxiByName then
			for known in pairs(TG.knownTaxiByName) do
				if known:find(key, 1, true) or key:find(known, 1, true) then return true end
			end
		end
		local data = QC.LibTaxiData and QC.LibTaxiData.taxipoints
		if not data then return false end
		local pf = UnitFactionGroup("player") == "Horde" and "H" or "A"
		for _, zones in pairs(data) do
			for _, list in pairs(zones) do
				for _, node in ipairs(list) do
					local n = node.name and node.name:lower() or ""
					if n:find(key, 1, true) or key:find(n, 1, true) then
						if node.faction and node.faction ~= "B" and node.faction ~= pf then
							-- wrong faction
						elseif node.questKnown and QC.Compat and QC.Compat.QuestLog
							and QC.Compat.QuestLog.IsComplete(node.questKnown) then
							return true
						end
					end
				end
			end
		end
		return false
	end,
	knowspell = function(spellid)
		return QC.IsSpellKnown and QC.IsSpellKnown(tonumber(spellid)) and true or false
	end,
	hasbuilding = function() return false end,
	garrisonlvl = function() return 0 end,
	chromietime = function(expId)
		if C_ChromieTime and C_ChromieTime.GetChromieTimeExpansionInfo then
			local info = C_ChromieTime.GetChromieTimeExpansionInfo()
			if expId then return info and info.id == tonumber(expId) end
			return info ~= nil
		end
		return false
	end,
	subzone = function(name)
		if not name then return false end
		local sub = GetSubZoneText and GetSubZoneText()
		return sub and sub:lower():find(name:lower(), 1, true) and true or false
	end,
	zone = function(name)
		if not name or not C_Map then return false end
		local map = C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
		if not map then return false end
		local want = name:lower()
		local function matchMap(id)
			if not id then return false end
			local info = C_Map.GetMapInfo(id)
			if not info or not info.name then return false end
			local n = info.name:lower()
			return n == want or n:find(want, 1, true) or want:find(n, 1, true)
		end
		if matchMap(map) then return true end
		local info = C_Map.GetMapInfo(map)
		return matchMap(info and info.parentMapID)
	end,
	itemcount = function(id)
		return QC.GetItemCount and QC.GetItemCount(tonumber(id)) or 0
	end,
	skill = skillByName,
	hasbuff = function(spellId)
		if not (spellId and C_UnitAuras and C_UnitAuras.GetPlayerAuraBySpellID) then return false end
		return C_UnitAuras.GetPlayerAuraBySpellID(tonumber(spellId)) ~= nil
	end,
	inscenario = function()
		if QC.Compat and QC.Compat.HasScenarioAPI and not QC.Compat.HasScenarioAPI() then
			return false
		end
		return C_Scenario and C_Scenario.IsInScenario and C_Scenario.IsInScenario()
	end,
	scenariogoal = function(...)
		if QC.Compat and QC.Compat.HasScenarioAPI and not QC.Compat.HasScenarioAPI() then
			return true
		end
		if not (C_Scenario and C_Scenario.IsInScenario and C_Scenario.IsInScenario()) then return false end
		local n = select("#", ...)
		local _, _, numCriteria = C_Scenario.GetStepInfo()
		for ci = 1, (numCriteria or 0) do
			local info = C_ScenarioInfo and C_ScenarioInfo.GetCriteriaInfo(ci)
			if info then
				for i = 1, n do
					if info.criteriaID == tonumber(select(i, ...)) then return true end
				end
			end
		end
		return false
	end,
	scenariostage = function(stage)
		if QC.Compat and QC.Compat.HasScenarioAPI and not QC.Compat.HasScenarioAPI() then
			return true
		end
		if not (C_Scenario and C_Scenario.IsInScenario and C_Scenario.IsInScenario()) then return false end
		local _, s = C_Scenario.GetInfo()
		return s == tonumber(stage)
	end,
	raceclass = function(token)
		if not token then return false end
		local u = token:upper():gsub(" ", "")
		local race = select(2, UnitRace("player")) or ""
		local class = select(2, UnitClass("player")) or ""
		return race:upper():find(u, 1, true) or class:upper():find(u, 1, true)
	end,
	indoors = function()
		return IsIndoors and IsIndoors() or false
	end,
	intutorial = function()
		if C_PlayerInfo and C_PlayerInfo.IsPlayerInTutorial then
			return C_PlayerInfo.IsPlayerInTutorial()
		end
		return UnitLevel("player") < 10
	end,
	-- Group role: grouprole("TANK"|"HEALER"|"DAMAGER"); no-arg returns role string.
	grouprole = function(role)
		local r = UnitGroupRolesAssigned and UnitGroupRolesAssigned("player") or "NONE"
		if role == nil or role == "" then return r end
		local want = tostring(role):upper()
		if want == "DPS" or want == "DAMAGE" then want = "DAMAGER" end
		return r == want
	end,
	invehicle = function()
		return (UnitInVehicle and UnitInVehicle("player")) and true or false
	end,
	outvehicle = function()
		return not (UnitInVehicle and UnitInVehicle("player"))
	end,
	hasvehicleui = function()
		return (UnitHasVehicleUI and UnitHasVehicleUI("player")) and true or false
	end,
	mounted = function()
		return (IsMounted and IsMounted()) and true or false
	end,
	ontaxi = function()
		return (UnitOnTaxi and UnitOnTaxi("player")) and true or false
	end,
	itemequipped = function(item)
		if C_Item and C_Item.IsEquippedItem then return C_Item.IsEquippedItem(item) and true or false end
		return IsEquippedItem and IsEquippedItem(item) and true or false
	end,
	spellknown = function(id)
		return QC.IsSpellKnown and QC.IsSpellKnown(tonumber(id)) and true or false
	end,
	worldquest = function(id)
		if C_TaskQuest and C_TaskQuest.IsActive then return C_TaskQuest.IsActive(tonumber(id)) and true or false end
		return false
	end,
	-- Active group difficulty helpers used by dungeon guides.
	heroic_dung = function()
		local _, _, diff = GetInstanceInfo and GetInstanceInfo()
		return diff == 2 or diff == 23
	end,
	mythic_dung = function()
		local _, _, diff = GetInstanceInfo and GetInstanceInfo()
		return diff == 23 or diff == 8
	end,
}
COND_FUNCS.haveqid = COND_FUNCS.haveq
COND_FUNCS.completedquest = COND_FUNCS.completedq

local RACE_ALIASES = {
	undead = "scourge",
	lfdraenei = "lightforgeddraenei",
	hmtauren = "highmountaintauren",
	ztroll = "zandalaritroll",
	didwarf = "darkirondwarf",
	mhorc = "magharorc",
	kthuman = "kultiran",
	mgnome = "mechagnome",
	earthen = "earthendwarf",
}

local condEnv = setmetatable({}, {
	__index = function(t, k)
		if not k then return nil end
		if k == "level" then return UnitLevel("player") end
		if k == "class" then return select(2, UnitClass("player")) end
		if k == "race" then return select(2, UnitRace("player")) end
		if k == "faction" then return UnitFactionGroup("player") end

		local lower = k:lower()
		if lower == "default" then return true end
		if lower == "walking" then return COND_FUNCS.iswalking() end

		-- Faction literals
		if lower == "alliance" or lower == "horde" or lower == "neutral" then
			local pfa = UnitFactionGroup("player")
			return pfa and pfa:lower() == lower
		end

		-- Class literals
		local _, playerClass = UnitClass("player")
		if playerClass and lower == playerClass:lower() then
			return true
		end

		-- Race literals
		local _, playerRace = UnitRace("player")
		if playerRace then
			local pr_lower = playerRace:lower()
			if lower == pr_lower then return true end
			if RACE_ALIASES[lower] == pr_lower then return true end
			for alias, orig in pairs(RACE_ALIASES) do
				if orig == pr_lower and lower == alias then return true end
			end
		end

		if STANDING[k] then return STANDING[k] end

		-- Case-insensitive STANDING lookup
		for sk, sv in pairs(STANDING) do
			if sk:lower() == lower then return sv end
		end

		if COND_FUNCS[k] then return COND_FUNCS[k] end
		if COND_FUNCS[lower] then return COND_FUNCS[lower] end

		return _G[k]
	end,
})
QC.ConditionEnv = condEnv

function QC:WireConditionEnv()
	local parser = QC.EnsureGuideParser and QC.EnsureGuideParser()
	if parser then parser.ConditionEnv = condEnv end
	condEnv.QC = QC
	condEnv.LibTaxi = _G.LibTaxi
end
QC:WireConditionEnv()

-- Shadowlands covenant flags (Kyrian, Venthyr, NightFae, Necrolord).
function Parser:UpdateCovenant()
	if not (C_Covenants and C_Covenants.GetCovenantIDs and C_Covenants.GetActiveCovenantID) then return end
	local active = C_Covenants.GetActiveCovenantID()
	for _, covenantID in ipairs(C_Covenants.GetCovenantIDs()) do
		if C_Covenants.GetCovenantData then
			local info = C_Covenants.GetCovenantData(covenantID)
			if info and info.textureKit then
				condEnv[info.textureKit] = active == covenantID
			end
		end
	end
end
Parser:UpdateCovenant()

function Parser:SetConditionContext(guide, step, goal)
	condEnv.guide = guide
	condEnv.step = step
	condEnv.goal = goal
	condEnv.sticky = goal and goal.sticky or nil
end
QC.SetConditionContext = function(_, guide, step, goal)
	Parser:SetConditionContext(guide, step, goal)
end

-- Evaluate a guide header condition function in the safe condition env.
-- Returns nil on error so callers can treat it as "unknown".
function QC:EvalHeaderCondition(fn)
	if type(fn) ~= "function" then return nil end
	pcall(setfenv, fn, condEnv)
	local ok, res = pcall(fn)
	if not ok then return nil end
	return res and true or false
end

-- Build a condition closure from a Lua expression string.
-- defaultOnError: value returned when the expression errors at runtime
-- (true for visibility filters, false for completion checks).
-- silent: when true, do not print compile errors (used by MakeOnlyCondition fallback).
local function MakeCondition(expr, defaultOnError, silent)
	if not expr or expr == "" then return nil end
	if defaultOnError == nil then defaultOnError = true end
	local chunk, err = loadstring("return " .. expr)
	if not chunk then
		if QC.DebugLog then
			QC:DebugLog("Condition compile: " .. tostring(err))
		elseif not silent and QC.Print then
			QC:Print("Condition error: " .. tostring(err))
		end
		return nil
	end
	setfenv(chunk, condEnv)
	return function()
		local ok, res = pcall(chunk)
		if not ok then return defaultOnError end
		return res and true or false
	end
end
QC.MakeCondition = MakeCondition

function Parser:CompileAutoscriptComplete(goal, code)
	if not code or code == "" or not goal then return nil end
	local chunk, err = loadstring(code)
	if not chunk then
		if QC.DebugLog then
			local ctx = QC.ScriptRunner and QC.ScriptRunner:GoalContext(goal)
			QC:DebugLog("Autoscript compile: " .. tostring(err), ctx)
		end
		return nil
	end
	local env = setmetatable({ goal = goal, self = goal }, { __index = condEnv })
	setfenv(chunk, env)
	local ok, runErr = pcall(chunk)
	if not ok then
		if QC.DebugLog then
			local ctx = QC.ScriptRunner and QC.ScriptRunner:GoalContext(goal)
			QC:DebugLog("Autoscript runtime: " .. tostring(runErr), ctx)
		end
		return nil
	end
	if type(goal.IsComplete) == "function" then
		return function()
			local ok2, res = pcall(goal.IsComplete, goal)
			return ok2 and res and true or false
		end
	end
	return nil
end

local function MakeOnlyFilterClause(seg)
	if not seg or seg == "" then return function() return true end end
	seg = seg:match("^%s*(.-)%s*$") or ""
	local needRace, needClass, needFaction

	local raceTok, classTok = seg:match("^(%S+)%s+(.+)$")
	if raceTok and classTok then
		local ru = raceTok:upper():gsub(" ", "")
		local cu = classTok:upper():gsub(" ", "")
		needRace = RACE_MAP[ru]
		needClass = CLASS_MAP[cu]
	else
		for token in seg:gmatch("%S+") do
			local u = token:upper():gsub(" ", "")
			if RACE_MAP[u] then needRace = RACE_MAP[u] end
			if CLASS_MAP[u] then needClass = CLASS_MAP[u] end
			if u == "ALLIANCE" or u == "HORDE" or u == "NEUTRAL" then
				needFaction = u
			end
		end
	end

	return function()
		local race = select(2, UnitRace("player"))
		local class = select(2, UnitClass("player"))
		local faction = UnitFactionGroup("player")
		if needRace and race ~= needRace then return false end
		if needClass and class ~= needClass then return false end
		if needFaction and faction and faction:upper() ~= needFaction then return false end
		return true
	end
end

local function MakeOnlyFilter(params)
	if not params or params == "" then return nil end
	if params:find(",", 1, true) then
		local clauses = {}
		for seg in params:gmatch("[^,]+") do
			clauses[#clauses + 1] = MakeOnlyFilterClause(seg)
		end
		if #clauses == 0 then return nil end
		if #clauses == 1 then return clauses[1] end
		return function()
			for i = 1, #clauses do
				if clauses[i]() then return true end
			end
			return false
		end
	end
	return MakeOnlyFilterClause(params)
end
QC.MakeOnlyFilter = MakeOnlyFilter

-- Race/class pairs or comma lists without Lua operators (e.g. "NightElf Warrior").
local function LooksLikeRaceClassShorthand(expr)
	if not expr or expr == "" then return false end
	if expr:find("[%(%[=<>]", 1, false) then return false end
	if expr:find("function", 1, true) then return false end
	if expr:find("not%s", 1, false) or expr:find("^not%s", 1, false) then return false end
	if expr:find("%sand%s", 1, false) or expr:find("^and%s", 1, false) then return false end
	if expr:find("%sor%s", 1, false) or expr:find("^or%s", 1, false) then return false end
	return expr:find("%s") ~= nil or expr:find(",", 1, true) ~= nil
end

-- |only / only: Lua expression after "if", or race/class shorthand (e.g. "NightElf Warrior").
local function MakeOnlyCondition(params)
	if not params or params == "" then return nil end
	local expr = params:match("^if%s+(.+)$")
	if expr then
		if LooksLikeRaceClassShorthand(expr) then
			return MakeOnlyFilter(expr)
		end
		local chunk = loadstring("return " .. expr)
		if chunk then
			return MakeCondition(expr)
		end
		return MakeOnlyFilter(expr)
	end
	return MakeOnlyFilter(params)
end
QC.MakeOnlyCondition = MakeOnlyCondition

local function ChainVisibleCondition(prev, cond)
	if not cond then return prev end
	if not prev then return cond end
	return function()
		local ok, res = pcall(prev)
		if ok and not res then return false end
		ok, res = pcall(cond)
		return ok and res and true or false
	end
end

-- Step-wide |only / only: applies to the step and every goal on it.
local function ApplyStepOnlyCondition(step, params)
	if not step then return end
	local cond = MakeOnlyCondition(params)
	if not cond then return end
	step.condition_visible = ChainVisibleCondition(step.condition_visible, cond)
	for _, g in ipairs(step.goals) do
		g.condition_visible = ChainVisibleCondition(g.condition_visible, cond)
	end
end

local function ApplyStepTag(step, cmd, params)
	if not step then return end
	if cmd == "only" then
		ApplyStepOnlyCondition(step, params)
	elseif cmd == "complete" then
		if params and params ~= "" then
			step.condition_complete = MakeCondition(params, false)
		end
	elseif cmd == "notravel" then
		step.notravel = true
	elseif cmd == "walk" then
		step.force_walk = true
	elseif cmd == "label" then
		local label = params and params:gsub('^"', ''):gsub('"$', ''):match("^(%S+)")
		if label and label ~= "" then step.label = label end
	end
end

----------------------------------------------------------------------
-- Coordinates
----------------------------------------------------------------------

local mapTokenCache = {}
local mapExactIndex   -- [lowercase exact name] = id (built lazily, once)

local function GetRoverMapByNameFloor(name, floor)
	if not name or name == "" then return nil end
	local roverMaps = QC.LibRoverData and QC.LibRoverData.MapIDsByName
	if not roverMaps then return nil end

	local zonedata = roverMaps[name]
	if not zonedata then
		local lower = name:lower()
		for k, v in pairs(roverMaps) do
			if k:lower() == lower then zonedata = v; break end
		end
	end
	if not zonedata then return nil end

	if type(zonedata) == "number" then return zonedata end
	floor = tonumber(floor)
	if floor == nil then
		floor = zonedata.default or 0
	end
	return zonedata[floor] or zonedata[0] or zonedata[1]
end

local function BuildMapIndex()
	mapExactIndex = {}
	local client = QC.Compat and QC.Compat.Client
	local preferNewest = client and client.isClassicEra
	local mapData = QC.HBD and QC.HBD.mapData
	if mapData then
		for id, data in pairs(mapData) do
			if data.name then
				local name = data.name:lower()
				-- Classic Era 1.15+: prefer newest uiMapID when zone names collide (57 vs 1438).
				if preferNewest then
					if not mapExactIndex[name] or id > mapExactIndex[name] then
						mapExactIndex[name] = id
					end
					local aliases = QC.ClassicEraMapNameAliases and QC.ClassicEraMapNameAliases[name]
					if aliases then
						for _, alias in ipairs(aliases) do
							if not mapExactIndex[alias] or id > mapExactIndex[alias] then
								mapExactIndex[alias] = id
							end
						end
					end
				elseif not mapExactIndex[name] or id < mapExactIndex[name] then
					mapExactIndex[name] = id
				end
			end
		end
	end

	-- Bundled LibRover map names (Midnight zones, intro phases, etc.)
	local roverMaps = QC.LibRoverData and QC.LibRoverData.MapIDsByName
	if roverMaps then
		for name, val in pairs(roverMaps) do
			local lowerName = name:lower()
			local mapID
			if type(val) == "table" then
				mapID = val[0] or val[1] or val[2]
			else
				mapID = tonumber(val)
			end
			if mapID and not mapExactIndex[lowerName] then
				mapExactIndex[lowerName] = mapID
			end
		end
	end
end

local function ApplyMapCanonical(mapId)
	if not mapId then return nil end
	local client = QC.Compat and QC.Compat.Client
	if client and client.isClassic then return mapId end
	if QC.CanonicalMapID then return QC.CanonicalMapID(mapId) end
	return mapId
end

local function ResolveMapToken(token, floor)
	if not token then return nil end
	local n = tonumber(token)
	if n then return n end

	local name = token:match("^%s*(.-)%s*$")
	local embeddedFloor
	if name:find("/") then
		name, embeddedFloor = name:match("^(.-)%s*/%s*(%d+)")
		name = name and name:match("^%s*(.-)%s*$") or name
	end
	if embeddedFloor and floor == nil then floor = tonumber(embeddedFloor) end

	local cacheKey = (name:lower()) .. ":" .. tostring(floor or 0)
	local cached = mapTokenCache[cacheKey]
	if cached ~= nil then return cached or nil end

	local client = QC.Compat and QC.Compat.Client
	local preferHBD = client and client.isRetail
	local preferClientMaps = client and client.isClassicEra
	local result

	-- Classic Era 1.15.x: client uiMapIDs (e.g. 1438) before legacy LibRover ids (57).
	if preferClientMaps then
		if not mapExactIndex then BuildMapIndex() end
		result = mapExactIndex and mapExactIndex[name:lower()]
	end

	-- Bundled travel data uses Zone/floor tokens (Dalaran/1 = Northrend, Orgrimmar/1, etc.).
	if not result and floor ~= nil then
		local roverFloor = GetRoverMapByNameFloor(name, floor)
		if roverFloor then
			roverFloor = ApplyMapCanonical(roverFloor)
			if QC.GetModernMapID then
				roverFloor = QC.GetModernMapID(roverFloor, name)
			end
			mapTokenCache[cacheKey] = roverFloor
			return roverFloor
		end
	end

	-- Retail: HBD/C_Map IDs first (LibRover table uses legacy IDs).
	if preferHBD then
		if not mapExactIndex then BuildMapIndex() end
		result = mapExactIndex and mapExactIndex[name:lower()]
	end

	if not result then
		result = GetRoverMapByNameFloor(name, floor)
	end

	-- HBD exact name match (Classic / fallback).
	if not result then
		if not mapExactIndex then BuildMapIndex() end
		result = mapExactIndex and mapExactIndex[name:lower()]
	end
	if not result then
		local clean = name:lower()
		local mapData = QC.HBD and QC.HBD.mapData
		local bestId, bestScore
		if mapData then
			for id, data in pairs(mapData) do
				local mname = data.name and data.name:lower()
				if mname and mname:find(clean, 1, true) then
					local score = 0
					if mname:find("^" .. clean) then score = score + 5 end
					if mname:find("%f[%a]" .. clean .. "%f[%A]") then score = score + 3 end
					local mt = data.mapType or 0
					if mt == 3 then score = score + 4
					elseif mt == 4 then score = score + 2 end
					score = score - (#mname - #clean) * 0.01
					if not bestScore or score > bestScore then bestScore, bestId = score, id end
				end
			end
		end
		result = bestId
	end

	if result then
		result = ApplyMapCanonical(result)
		if QC.GetModernMapID then
			result = QC.GetModernMapID(result, name)
		end
	end

	mapTokenCache[cacheKey] = result or false
	return result
end
QC.ResolveMapToken = ResolveMapToken
QC.GetRoverMapByNameFloor = GetRoverMapByNameFloor

-- Remove stale ResolveMapToken entries after map-ID policy changes.
function QC.ClearMapTokenCache()
	wipe(mapTokenCache)
	if mapExactIndex then wipe(mapExactIndex) end
	mapExactIndex = nil
	if QC.ClearClassicEraMapCache then QC.ClearClassicEraMapCache() end
end

local function ParseMapXY(params)
	if not params then return nil end
	local maptext, x, y = params:match("^%s*(.-)%s+([%d%.]+)%s*,%s*([%d%.]+)%s*$")
	if not x then
		x, y = params:match("([%d%.]+)%s*,%s*([%d%.]+)")
		if x then return nil, 0, tonumber(x) / 100, tonumber(y) / 100, nil end
		return nil
	end

	local mapname, floor, mapid
	mapid = maptext:match("##(%d+)")
	if not mapid then
		mapname, floor = maptext:match("^%s*(.-)%s*/%s*(%d+)%s*$")
	end
	if not mapid and not mapname and maptext ~= "" then
		mapname = maptext:match("^%s*(.-)%s*$")
	end
	if mapname == "" then mapname = nil end
	floor = tonumber(floor) or 0

	if not mapid and mapname then
		mapid = ResolveMapToken(mapname, floor)
	end
	mapid = tonumber(mapid)

	return mapid, floor, tonumber(x) / 100, tonumber(y) / 100, mapname
end

local function ApplyCoords(goal, params, prev)
	local m, floor, x, y, mapname = ParseMapXY(params)
	goal.x, goal.y = x, y
	if m then
		goal.map = m
	elseif mapname then
		goal.mapname = mapname
		goal.mapfloor = floor
		goal.map = ResolveMapToken(mapname, floor) or prev.map
		if not goal.map then goal.mapfloor = goal.mapfloor or prev.mapfloor end
	else
		goal.map = prev.map
		goal.mapfloor = prev.mapfloor
	end
end

local STRIP_TAGS = {
	noautocomplete = true,
	noqueststatus = true, noarrow = true, nodisplay = true,
}

local function ParseSkillTag(goal, params)
	local name, lvl = params:match("^%s*(.-)%s*,%s*(%d+)%s*$")
	if name and lvl then
		goal.skillname = name:gsub("^%s+", ""):gsub("%s+$", "")
		goal.skilllevel = tonumber(lvl)
	end
end

local function AddHiddenMapmarker(step, params, prev)
	if not (step and params and params ~= "") then return end
	local goal = { parentStep = step, action = "mapmarker", hidden = true }
	setmetatable(goal, QC.GoalProto_mt)
	ApplyCoords(goal, params, prev)
	goal.num = #step.goals + 1
	step.goals[#step.goals + 1] = goal
	ResolveGoalMap(goal, prev)
end

local function LooksLikeCoordLine(text)
	if not text or text == "" then return false end
	text = text:gsub("^%s+", ""):gsub("%s+$", "")
	if text:match("^[%w%s'.%-]+/%d+%s+[%d%.]+,%s*[%d%.]+%s*$") then return true end
	if text:match("^[%d%.]+%s*,%s*[%d%.]+%s*$") then return true end
	return false
end

local function ApplyPathToStep(step, params, prev)
	if not (step and params and params ~= "") then return end
	step.waypath = step.waypath or { coords = {} }
	local path = params:gsub("^%+%s*", ""):gsub("%s*[;\t]+%s*", ";")
	for coord in (path .. ";"):gmatch("(.-);") do
		coord = coord:match("^%s*(.-)%s*$")
		if coord ~= "" then
			local map, floor, x, y, mapname = ParseMapXY(coord)
			if x and y then
				step.waypath.coords[#step.waypath.coords + 1] = {
					map = map or prev.map, x = x, y = y,
					mapname = mapname, mapfloor = floor,
				}
				if map then prev.map = map; prev.mapfloor = floor end
			end
		end
	end
end

function ApplyTag(goal, cmd, params, prev)
	if cmd == "goto" then ApplyCoords(goal, params, prev)
	elseif cmd == "mapmarker" then
		AddHiddenMapmarker(goal.parentStep, params, prev)
	elseif cmd == "q" then
		local id, obj = params:match("^(%d+)/(%d+)")
		if id then goal.questid, goal.objnum = tonumber(id), tonumber(obj)
		else goal.questid = tonumber(params:match("^(%d+)")) end
	elseif cmd == "next" then goal.next = params and params:gsub('^"', ''):gsub('"$', '')
	elseif cmd == "dist" then goal.dist = tonumber(params)
	elseif cmd == "count" then goal.count = tonumber(params)
	elseif cmd == "optional" or cmd == "opt" then goal.optional = true
	elseif cmd == "sticky" then
		goal.sticky = true
		if params and params:find("saved", 1, true) then goal.sticky_saved = true end
	elseif cmd == "walk" then
		goal.walk_only = true
		local prev = goal.condition_visible
		goal.condition_visible = function()
			if prev then
				local ok, res = pcall(prev)
				if ok and not res then return false end
			end
			return COND_FUNCS.iswalking()
		end
	elseif cmd == "confirm" then goal.action = "confirm"
	elseif cmd == "vendor" or cmd == "trainer" then
		goal.action = cmd
		local gt = QC.GOALTYPES[cmd]
		if gt and gt.parse then gt.parse(goal, params) end
	elseif cmd == "or" then goal.orlogic = tonumber(params) or 1
	elseif cmd == "override" then goal.override = true
	elseif cmd == "only" then
		goal.condition_visible = MakeOnlyCondition(params)
	elseif cmd == "complete" then
		if params and params ~= "" then goal.condition_complete = MakeCondition(params, false) end
	elseif cmd == "future" then
		goal.future = true
	elseif cmd == "tip" then
		if params and params ~= "" then
			if QC.FormatGuideText then params = QC.FormatGuideText(params) end
			goal.tip = goal.tip and (goal.tip .. " " .. params) or params
		end
	elseif cmd == "use" then
		local name, id = params:match("^(.-)##(%d+)")
		goal.useitem = tonumber(id) or tonumber(params:match("^(%d+)"))
		if name and name ~= "" then goal.useitemname = name end
	elseif cmd == "cast" then
		local name, id = params:match("^(.-)##(%d+)")
		goal.castspell = tonumber(id) or (name ~= "" and name) or params
		if name and name ~= "" then goal.castspellname = name end
	elseif cmd == "havebuff" or cmd == "buff" then
		local name, id = params:match("^(.-)##(%d+)")
		goal.buffid = tonumber(id) or tonumber(params:match("^(%d+)"))
		if name and name ~= "" then goal.buffname = name end
	elseif cmd == "from" then
		-- Restrict a kill/collect goal to specific source mobs (display hint).
		goal.fromtext = params
	elseif cmd == "daily" then
		goal.daily = true
	elseif cmd == "weekly" then
		goal.weekly = true
	elseif cmd == "model" or cmd == "modelnpc" or cmd == "modelid" then
		goal.modelnpc = tonumber(params:match("(%d+)"))
	elseif cmd == "warning" then
		if params and params ~= "" then
			goal.warning = params
			goal.tip = goal.tip and (goal.tip .. " " .. params) or params
		end
	elseif cmd == "nobreak" then
		goal.nobreak = true
	elseif cmd == "petbattle" then
		goal.petbattle = true
	elseif cmd == "invehicle" then
		goal.needvehicle = true
	elseif cmd == "gossip" then
		local idx = tonumber(params:match("^(%d+)%s*$"))
		if idx then goal.gossipoption = idx
		elseif params and params ~= "" then goal.gossiptext = params:lower() end
	elseif cmd == "notinsticky" then goal.notinsticky = true
	elseif cmd == "onlyinsticky" then goal.onlyinsticky = true
	elseif cmd == "polish" then goal.polish = true
	elseif cmd == "quest" then
		local id, obj = params:match("^(%d+)/(%d+)")
		if id then goal.questid, goal.objnum = tonumber(id), tonumber(obj)
		else goal.questid = tonumber(params:match("^(%d+)")) end
	elseif cmd == "achieveid" or cmd == "achieve" then
		goal.achieveid = tonumber(params:match("^(%d+)"))
		local crit = params:match("/(%d+)")
		if crit then goal.achievecriteria = tonumber(crit) end
	elseif cmd == "loadguide" then
		goal.loadguide = params and params:gsub('^"', ''):gsub('"$', '') or nil
	elseif cmd == "notravel" then goal.notravel = true
	elseif cmd == "noway" or cmd == "c" then goal.noway = true
	elseif cmd == "noautoaccept" then goal.noautoaccept = true
	elseif cmd == "noautogossip" then goal.noautogossip = true
	elseif cmd == "instant" then goal.instant = true
	elseif cmd == "skill" or cmd == "skillmax" then
		ParseSkillTag(goal, params)
		if cmd == "skillmax" then goal.skillmax = true end
	elseif cmd == "scenariogoal" then
		goal.scenariocriteria = tonumber(params:match("^(%d+)"))
		local cnt = params:match("/(%d+)")
		if cnt then goal.scenariocount = tonumber(cnt) end
	elseif cmd == "autoscript" then
		goal.autoscript_raw = params
		if params and params:match("^function%s") then
			goal.autoscript_complete = params
		elseif params and params:match("^scan%s*$") then
			goal.autoscript_ah = { cmd = "scan" }
		elseif params and params:match("^buy%s+") then
			local itemID = params:match("^buy%s+(%d+)")
			local itemName = params:match("^buy%s+(.+)")
			goal.autoscript_ah = {
				cmd = "buy",
				itemID = tonumber(itemID),
				itemName = (not itemID and itemName) and itemName:gsub("^%s+", ""):gsub("%s+$", "") or nil,
			}
		elseif params and params ~= "" then
			goal.autoscript_lua = params
		end
	elseif cmd == "script" then
		goal.script = params
	elseif cmd == "updatescript" then
		goal.updatescript = params
	elseif cmd == "macro" then
		goal.macrosrc = params
	elseif cmd == "path" then
		ApplyPathToStep(goal.parentStep, params, prev)
	elseif STRIP_TAGS[cmd] then
		-- silently ignore
	end
end

function ResolveGoalMap(goal, prev)
	local resolved = goal.map
	if not resolved and goal.mapname then
		resolved = ResolveMapToken(goal.mapname, goal.mapfloor)
		if resolved then goal.map = resolved end
	end
	if resolved then
		prev.map = resolved
		prev.mapfloor = goal.mapfloor
	elseif goal.mapname then
		prev.mapfloor = goal.mapfloor or prev.mapfloor
	end
	return resolved
end

local function ParseGoalLine(line, step, prev, open_stickies)
	local goal = { parentStep = step }
	setmetatable(goal, QC.GoalProto_mt)

	if open_stickies and next(open_stickies) then goal.sticky = true end

	local chunks = SplitPipeChunks(line)
	local primary = chunks[1] or ""
	-- Display-only lines start with '
	if primary:sub(1, 1) == "'" then
		goal.action = "text"
		goal.text = primary:sub(2)
	else
		local cmd, params = primary:match("^(%S+)%s*(.-)$")
		cmd = cmd or ""
		if cmd == "condition" or cmd == "complete" then
			goal.action = "text"
			if params and params ~= "" then
				goal.condition_complete = MakeCondition(params, false)
				if QC.IsTechnicalDisplayText and QC.IsTechnicalDisplayText(params) then
					goal.text = (QC.L and QC.L["Continue"]) or "Continue"
				else
					goal.text = params
				end
			else
				goal.text = cmd
			end
		elseif KNOWN_ACTIONS[cmd] or KNOWN_ACTIONS[Parser:ResolveAction(cmd)] then
			goal.action = Parser:ResolveAction(cmd)
			if cmd == "clicknpc" then goal.action = "clicknpc" end
			local gt = QC.GOALTYPES[goal.action]
			if gt and gt.parse then gt.parse(goal, params) end
			if cmd == "goto" or goal.action == "goto" then
				ApplyCoords(goal, params, prev)
			elseif cmd == "mapmarker" or goal.action == "mapmarker" then
				goal.hidden = true
				goal.text = nil
				ApplyCoords(goal, params, prev)
			end
			if cmd == "click" and params ~= "" and not goal.text then goal.text = params end
		else
			goal.action = "text"
			goal.text = primary
			if LooksLikeCoordLine(primary) then
				goal.action = "mapmarker"
				goal.hidden = true
				goal.text = nil
				ApplyCoords(goal, primary, prev)
			end
		end
	end

	for i = 2, #chunks do
		local tcmd, tparams = chunks[i]:match("^(%S+)%s*(.-)$")
		if tcmd then ApplyTag(goal, tcmd, tparams or "", prev) end
	end

	if goal.autoscript_complete then
		goal.condition_complete = Parser:CompileAutoscriptComplete(goal, goal.autoscript_complete)
			or goal.condition_complete
		goal.autoscript_complete = nil
	end

	ResolveGoalMap(goal, prev)
	if goal.action == "text" and goal.x and goal.y then goal.action = "goto" end
	NormalizeGoalFields(goal)
	return goal
end

-- Action aliases and registration (extended types load via GoalTypesExtended.lua).
local ACTION_ALIASES = {
	get = "collect", ding = "level", fly = "fpath", at = "goto",
	quest = "q", learn = "learnspell", reachskill = "skill",
	equip = "equipped", unequip = "unequipped", buff = "havebuff",
	farm = "collect", talknpcs = "talk",
}

function Parser:RegisterActions(list)
	if not list then return end
	for _, a in ipairs(list) do KNOWN_ACTIONS[a] = true end
end

function Parser:RegisterConds(tbl)
	if not tbl then return end
	for k, v in pairs(tbl) do COND_FUNCS[k] = v end
end

function Parser:ResolveAction(cmd)
	return ACTION_ALIASES[cmd] or cmd
end

Parser.ACTION_ALIASES = ACTION_ALIASES
Parser.PreprocessLine = PreprocessLine
Parser.SplitPipeChunks = SplitPipeChunks
Parser.NormalizeGoalFields = NormalizeGoalFields

function Parser:ExpandIncludes(text)
	if not text or text == "" then return text end
	local safety = 0
	while text:find("#include") and safety < 25 do
		safety = safety + 1
		text = text:gsub("#include%s+(%S+)[^\n]*", function(name)
			local incl = QC.RegisteredIncludesByName and QC.RegisteredIncludesByName[name]
			if incl then return incl end
			return "-- QuestCore: missing include '" .. name .. "'"
		end)
	end
	return text
end

----------------------------------------------------------------------
-- Main parse
----------------------------------------------------------------------

function Parser:ParseGuide(guide)
	guide.steps = {}
	guide.sticky_blocks = {}

	local steps = guide.steps
	local raw = self:ExpandIncludes(guide.rawdata or "")
	local step = nil
	local prev = { map = nil }
	local open_stickies = {}
	local open_stickies_ord = {}
	local autolabel_num = 0

	local function next_autolabel()
		autolabel_num = autolabel_num + 1
		return "autosticky" .. autolabel_num
	end

	local lineNum = 0
	local traceLines = ParseDebugEnabled()

	local function ProcessGuideLine(line)
		local firstword, after = line:match("^(%S+)%s*(.-)$")

		if firstword == "stickystart" then
				local label = after:gsub('^"', ''):gsub('"$', ''):match("^(%S+)")
				if not label or label == "" then label = next_autolabel() end
				open_stickies[label] = true
				open_stickies_ord[#open_stickies_ord + 1] = label
				guide.sticky_blocks[label] = guide.sticky_blocks[label] or { label = label }

			elseif firstword == "stickystop" or firstword == "stickyend" then
				local label = after:gsub('^"', ''):gsub('"$', ''):match("^(%S+)")
				if not label then label = open_stickies_ord[#open_stickies_ord] end
				if label and open_stickies[label] then
					open_stickies[label] = nil
					for i = #open_stickies_ord, 1, -1 do
						if open_stickies_ord[i] == label then table.remove(open_stickies_ord, i) end
					end
				end

			elseif firstword == "step" then
				if step then FinalizeStepGoals(step) end
				step = {
					goals = {},
					num = #steps + 1,
					parentGuide = guide,
					map = prev.map,
					sticky_labels = {},
				}
				setmetatable(step, QC.StepProto_mt)
				steps[#steps + 1] = step
				local stepChunks = SplitPipeChunks(after:gsub("^%s*|%s*", ""))
				for i, chunk in ipairs(stepChunks) do
					local scmd, sparams = chunk:match("^(%S+)%s*(.-)$")
					if scmd == "only" or scmd == "complete" or scmd == "notravel" or scmd == "walk" or scmd == "label" then
						ApplyStepTag(step, scmd, sparams or "")
					elseif i == 1 and not step.label then
						local label = chunk:gsub('^"', ''):gsub('"$', ''):match("^(%S+)")
						if label and label ~= "" then step.label = label end
					end
				end
				for _, sl in ipairs(open_stickies_ord) do
					if sl ~= step.label then step.sticky_labels[#step.sticky_labels + 1] = sl end
				end

			elseif firstword == "label" then
				if step then
					local label = after:gsub('^"', ''):gsub('"$', ''):match("^(%S+)")
					if label then step.label = label end
				end

			elseif firstword == "path" then
				if step then ApplyPathToStep(step, after, prev) end

			elseif firstword == "only" then
				if step then ApplyStepOnlyCondition(step, after) end

			elseif step then
				local mm = line:match("^%s*|?%s*mapmarker%s+(.+)$")
				if mm then
					AddHiddenMapmarker(step, mm, prev)
				elseif line:match("^%s*|%s*only%s") then
					local params = line:match("^%s*|%s*only%s+(.+)$")
					if params and params ~= "" then
						ApplyStepOnlyCondition(step, params)
					end
				elseif IsTagOnlyLine(line) then
					ApplyTagsToLastGoal(line, step, prev)
				else
					local goal = ParseGoalLine(line, step, prev, open_stickies)
					if goal then
						ResolveGoalMap(goal, prev)
						step.map = step.map or goal.map
						goal.num = #step.goals + 1
						step.goals[#step.goals + 1] = goal
					end
				end
			end
	end

	for rawline in (raw .. "\n"):gmatch("(.-)\n") do
		lineNum = lineNum + 1
		local line = PreprocessLine(rawline)
		if line == "" then
		elseif traceLines then
			self:ParseDebugLog(guide, lineNum, step, line)
			local ok, err = pcall(ProcessGuideLine, line)
			if not ok then
				self:RaiseParseError(guide, lineNum, line, err)
			end
		else
			ProcessGuideLine(line)
		end
	end

	if Parser.PARSE_DEBUG then
		local title = guide.title_short or guide.title or "?"
		local msg = ("[QC Parse] %s DONE — %d steps, %d raw lines scanned"):format(title, #steps, lineNum)
		if DEFAULT_CHAT_FRAME and DEFAULT_CHAT_FRAME.AddMessage then
			DEFAULT_CHAT_FRAME:AddMessage(msg, 0.45, 1.0, 0.55)
		elseif QC.Print then
			QC:Print(msg)
		end
	end

	if step then FinalizeStepGoals(step) end

	return steps
end
