-- QuestCore: extended guide-compatible ConditionEnv functions.

local addonName, QuestCore = ...
local QC = QuestCore
local Parser = QC.Parser

local WORLD_EVENT_IDS = {
	[141] = "MIDSUMMER FIRE FESTIVAL",
	[283] = "CHILDREN'S WEEK",
	[301] = "FEAST OF WINTER VEIL",
	[324] = "HALLOW'S END",
	[335] = "LOVE IS IN THE AIR",
	[372] = "BREWFEST",
	[398] = "DARKMOON FAIRE",
	[62]  = "FIREWORKS SPECTACULAR",
}

local function FindEvent(eventName)
	if not (eventName and C_Calendar and C_Calendar.GetNumDayEvents) then return false end
	local want = eventName:upper()
	local dateobject = C_DateAndTime and C_DateAndTime.GetCurrentCalendarTime and C_DateAndTime.GetCurrentCalendarTime()
	if not dateobject then return false end
	local day = dateobject.monthDay
	local numEvents = C_Calendar.GetNumDayEvents(0, day)
	for i = 1, numEvents do
		local eventdata = C_Calendar.GetDayEvent(0, day, i)
		if eventdata and eventdata.calendarType == "HOLIDAY" then
			local title = eventdata.title and eventdata.title:upper() or ""
			local wid = WORLD_EVENT_IDS[eventdata.eventID]
			if want == title or (wid and want == wid) or title:find(want, 1, true) or want:find(title, 1, true) then
				if eventdata.startTime and eventdata.endTime then
					local now = time()
					local function toTime(t)
						if not t then return 0 end
						return time({ year = t.year, month = t.month, day = t.monthDay, hour = t.hour or 0, min = t.minute or 0 })
					end
					local st, en = toTime(eventdata.startTime), toTime(eventdata.endTime)
					if now >= st and now <= en then return true end
				else
					return true
				end
			end
		end
	end
	return false
end
QC.FindEvent = FindEvent

local function ItemEquipped(item)
	if not item then return false end
	if type(item) == "number" then
		for i = 1, 18 do
			if GetInventoryItemID("player", i) == item then return true end
		end
		return false
	end
	return C_Item and C_Item.IsEquippedItem and C_Item.IsEquippedItem(item) and true or false
end

local EXT = {
	completedallq = function(...)
		if not (C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted) then return false end
		local n = select("#", ...)
		for i = 1, n do
			local id = tonumber(select(i, ...))
			if id and not C_QuestLog.IsQuestFlaggedCompleted(id) then return false end
		end
		return n > 0
	end,
	countcompletedq = function(...)
		local n, c = select("#", ...), 0
		for i = 1, n do
			local id = tonumber(select(i, ...))
			if id and C_QuestLog.IsQuestFlaggedCompleted(id) then c = c + 1 end
		end
		return c
	end,
	counthaveq = function(...)
		local QD = QC.QuestDB
		if not QD then return 0 end
		local n, c = select("#", ...), 0
		for i = 1, n do
			local id = tonumber(select(i, ...))
			if id and QD:IsQuestInLog(id) then c = c + 1 end
		end
		return c
	end,
	readyallq = function(...)
		local QD = QC.QuestDB
		if not QD then return false end
		local n = select("#", ...)
		for i = 1, n do
			local id = tonumber(select(i, ...))
			if not id or not QD:IsQuestReadyForTurnIn(id) then return false end
		end
		return n > 0
	end,
	haveallq = function(...)
		local QD = QC.QuestDB
		if not QD then return false end
		local n = select("#", ...)
		for i = 1, n do
			local id = tonumber(select(i, ...))
			if not id or not QD:IsQuestInLog(id) then return false end
		end
		return n > 0
	end,
	havebuff = function(spellId)
		if not spellId then return false end
		spellId = tonumber(spellId) or spellId
		if type(spellId) == "number" and C_UnitAuras and C_UnitAuras.GetPlayerAuraBySpellID then
			return C_UnitAuras.GetPlayerAuraBySpellID(spellId) ~= nil
		end
		if AuraUtil and AuraUtil.FindAuraByName then
			return AuraUtil.FindAuraByName(tostring(spellId), "player") ~= nil
		end
		return false
	end,
	equipped = ItemEquipped,
	itemequipped = ItemEquipped,
	knowspell = function(id) return QC.IsSpellKnown and QC.IsSpellKnown(tonumber(id)) and true or false end,
	spellknown = function(id) return QC.IsSpellKnown and QC.IsSpellKnown(tonumber(id)) and true or false end,
	hastoy = function(id) return id and PlayerHasToy and PlayerHasToy(tonumber(id)) and true or false end,
	petlevel = function(speciesID)
		speciesID = tonumber(speciesID)
		if not (speciesID and C_PetJournal) then return 0 end
		local _, level = C_PetJournal.GetPetInfoBySpeciesID(speciesID)
		return level or 0
	end,
	activepet = function(speciesID)
		speciesID = tonumber(speciesID)
		if not (speciesID and C_PetJournal) then return false end
		for i = 1, C_PetJournal.GetNumPets() do
			local info = C_PetJournal.GetPetInfoByIndex(i)
			if info and info.speciesID == speciesID and info.isSummoned then return true end
		end
		return false
	end,
	isevent = FindEvent,
	incombat = function() return UnitAffectingCombat and UnitAffectingCombat("player") and true or false end,
	isdead = function() return UnitIsDeadOrGhost and UnitIsDeadOrGhost("player") and true or false end,
	offtaxi = function() return not (UnitOnTaxi and UnitOnTaxi("player")) end,
	ontaxi = function() return UnitOnTaxi and UnitOnTaxi("player") and true or false end,
	friend = function(faction)
		if not faction then return 0 end
		for i = 1, GetNumFactions() do
			local fname, _, standing, _, _, bar = GetFactionInfo(i)
			if fname == faction then return bar or 0 end
		end
		return 0
	end,
	repval = function(faction)
		for i = 1, GetNumFactions() do
			local fname, _, _, _, _, bar = GetFactionInfo(i)
			if fname == faction then return bar or 0 end
		end
		return 0
	end,
	skillmax = function(skillName)
		if not skillName or not GetProfessionInfo then return 0 end
		local p1, p2 = GetProfessions and GetProfessions()
		for _, p in ipairs({ p1, p2 }) do
			if p then
				local name, _, _, _, _, _, skillMax = GetProfessionInfo(p)
				if name and name:lower():find(skillName:lower(), 1, true) then return skillMax or 0 end
			end
		end
		return 0
	end,
	hasprof = function(name, minLevel)
		if not name then return false end
		local p1, p2 = GetProfessions and GetProfessions()
		for _, p in ipairs({ p1, p2 }) do
			if p then
				local pname, _, rank = GetProfessionInfo(p)
				if pname and pname:lower():find(name:lower(), 1, true) then
					return (rank or 0) >= (tonumber(minLevel) or 1)
				end
			end
		end
		return false
	end,
	hasprofunscanned = function(name)
		if not name then return false end
		if QC.GoldScanner and QC.GoldScanner.GetProvider and QC.GoldScanner:GetProvider() ~= "vendor" then
			return true
		end
		return QC.ConditionEnv and QC.ConditionEnv.hasprof and QC.ConditionEnv.hasprof(name, 1) or false
	end,
	normal_dung = function()
		local _, _, diff = GetInstanceInfo and GetInstanceInfo()
		return diff == 1 or diff == 23
	end,
	heroic_dung = function()
		local _, _, diff = GetInstanceInfo and GetInstanceInfo()
		return diff == 2 or diff == 23
	end,
	mythic_dung = function()
		local _, _, diff = GetInstanceInfo and GetInstanceInfo()
		return diff == 23 or diff == 8
	end,
	dungeon_diff = function(name)
		if not name then return false end
		local _, _, diff = GetInstanceInfo and GetInstanceInfo()
		name = name:lower()
		if name:find("normal") then return diff == 1 end
		if name:find("heroic") then return diff == 2 end
		if name:find("mythic") then return diff == 8 or diff == 23 end
		return false
	end,
	curcount = function(curid)
		curid = tonumber(curid)
		if not (curid and C_CurrencyInfo) then return 0 end
		local info = C_CurrencyInfo.GetCurrencyInfo(curid)
		return info and info.quantity or 0
	end,
	curmax = function(curid)
		curid = tonumber(curid)
		if not (curid and C_CurrencyInfo) then return 0 end
		local info = C_CurrencyInfo.GetCurrencyInfo(curid)
		return info and info.maxQuantity or 0
	end,
	talentknown = function(id)
		id = tonumber(id)
		if not id then return false end
		if C_ClassTalents and C_ClassTalents.IsTalentSpell then
			return C_ClassTalents.IsTalentSpell(id)
		end
		return IsSpellKnown and IsSpellKnown(id) and true or false
	end,
	covenantfeature = function() return false end,
	covenantnetwork = function() return 0 end,
	covenantrenown = function(id)
		if C_MajorFactions and C_MajorFactions.GetMajorFactionData then
			local data = C_MajorFactions.GetMajorFactionData(tonumber(id))
			return data and data.renownLevel or 0
		end
		return 0
	end,
	hasbuilding = function() return false end,
	garrisonlvl = function() return 0 end,
	garrisonability = function() return false end,
	hasfollower = function() return false end,
	hasblueprint = function() return false end,
	boosted = function() return false end,
	thunderstage = function() return 0 end,
	thunderprogress = function() return 0 end,
	exists = function() return true end,
	goalexists = function() return true end,
	goaltype = function() return false end,
	guideflag = function() return false end,
	questpossible = function(qid)
		qid = tonumber(qid)
		if not qid then return false end
		local QD = QC.QuestDB
		return QD and (QD:IsQuestInLog(qid) or (GetQuestID and GetQuestID() == qid)) and true or false
	end,
	questactive = function(qid)
		qid = tonumber(qid)
		return qid and QC.QuestDB and QC.QuestDB:IsQuestInLog(qid) and true or false
	end,
	selected = function() return false end,
	dist = function() return 9999 end,
	countremains = function() return 0 end,
	poiactive = function() return false end,
	hastitle = function(id)
		return id and IsTitleKnown and IsTitleKnown(tonumber(id)) and true or false
	end,
	widgetactive = function() return false end,
	vignette = function() return false end,
	warlockpet = function() return false end,
	specialtalent = function() return false end,
	specialtalentactive = function() return false end,
	spellactive = function(id)
		id = tonumber(id)
		if not id then return false end
		local known = IsSpellKnown and IsSpellKnown(id)
		local usable = IsUsableSpell and select(1, IsUsableSpell(id))
		return known and not usable and true or false
	end,
	Male = function() return UnitSex and UnitSex("player") == 2 end,
	Female = function() return UnitSex and UnitSex("player") == 3 end,
}

if Parser and Parser.RegisterConds then
	Parser:RegisterConds(EXT)
	Parser:RegisterConds({
		completedquest = EXT.completedallq,
		haveqid = function(...)
			local h = QC.ConditionEnv and QC.ConditionEnv.haveq
			return h and h(...) or false
		end,
	})
end
