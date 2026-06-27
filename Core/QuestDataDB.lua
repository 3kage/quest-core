-- QuestCore: public API for bundled quest objective map pins.

local addonName, QC = ...

local QuestDataDB = {}
QC.QuestDataDB = QuestDataDB

local DB = QC.QuestDBData
local Spawns = QC.QuestDBSpawns
local ZoneMaps = QC.QuestDBZoneMaps

QuestDataDB._ready = false
QuestDataDB._loading = false
QuestDataDB._pinCache = {}

local function IterateQuestLog(callback)
	if not callback then return end
	local C_QuestLog = C_QuestLog

	if C_QuestLog and C_QuestLog.GetNumQuestLogEntries then
		local ok, num = pcall(C_QuestLog.GetNumQuestLogEntries)
		num = (ok and num) or 0
		for i = 1, num do
			local qid
			if C_QuestLog.GetInfo then
				local okInfo, info = pcall(C_QuestLog.GetInfo, i)
				qid = okInfo and info and info.questID
			end
			if qid then callback(qid) end
		end
		return
	end

	if GetNumQuestLogEntries and GetQuestLogTitle then
		local n = GetNumQuestLogEntries()
		for i = 1, n do
			local _, _, _, _, _, _, _, qid = GetQuestLogTitle(i)
			if qid then callback(qid) end
		end
	end
end

function QuestDataDB:IsReady()
	return self._ready == true
end

function QuestDataDB:ClearCache()
	wipe(self._pinCache)
end

function QuestDataDB:GetPinsForQuest(questId)
	questId = tonumber(questId)
	if not questId or not self._ready then return {} end

	if self._pinCache[questId] then
		return self._pinCache[questId]
	end

	local QuestDB = QC.QuestDB
	if QuestDB then
		if QuestDB.IsQuestComplete and QuestDB:IsQuestComplete(questId) then
			self._pinCache[questId] = {}
			return self._pinCache[questId]
		end
		if not (QuestDB.IsQuestAccepted and QuestDB:IsQuestAccepted(questId)) then
			self._pinCache[questId] = {}
			return self._pinCache[questId]
		end
	end

	local pins = Spawns:GetObjectivePinsForQuest(questId)
	self._pinCache[questId] = pins
	return pins
end

function QuestDataDB:GetPinsForLog()
	if not self._ready then return {} end

	local out = {}
	local seen = {}
	IterateQuestLog(function(qid)
		for _, pin in ipairs(self:GetPinsForQuest(qid)) do
			local key = string.format("%s:%.4f:%.4f", tostring(pin.map), pin.x, pin.y)
			if not seen[key] then
				seen[key] = true
				out[#out + 1] = pin
			end
		end
	end)
	return out
end

function QuestDataDB:Init()
	if self._ready or self._loading then return end
	self._loading = true

	local function Finish(ok, err)
		self._loading = false
		if not ok then
			if QC.Print then
				QC:Print("|cffff5555QuestCore|r: Quest objective database failed to load: " .. tostring(err))
			end
			return
		end
		self._ready = true
		if QC.Print then
			QC:Print("|cff33d6ffQuestCore|r: Quest objective database ready.")
		end
		if QC.QuestMapPins and QC.QuestMapPins.Refresh then
			QC.QuestMapPins:Refresh()
		end
	end

	local function Load()
		local parsed, err = DB.LoadTables()
		if not parsed then
			Finish(false, err)
			return
		end

		local ok, zerr = ZoneMaps:Init()
		if not ok then
			Finish(false, zerr)
			return
		end

		Spawns:SetData({
			quests = parsed.questData,
			npcs = parsed.npcData,
			objects = parsed.objectData,
			items = parsed.itemData,
		})

		self:ClearCache()
		Finish(true)
	end

	if C_Timer and C_Timer.After then
		C_Timer.After(0, Load)
	else
		Load()
	end
end

function QuestDataDB:OnQuestLogUpdate()
	if not self._ready then return end
	self:ClearCache()
	if QC.QuestMapPins and QC.QuestMapPins.Refresh then
		QC.QuestMapPins:Refresh()
	end
end

function QuestDataDB:Enable()
	if self._enabled then return end
	self._enabled = true
	QC:RegisterEvent("QUEST_LOG_UPDATE", function()
		QuestDataDB:OnQuestLogUpdate()
	end)
end
