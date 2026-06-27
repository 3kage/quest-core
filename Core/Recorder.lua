-- QuestCore: guide recorder. Captures quest accept/turn-in actions (with
-- coordinates) into QuestCore DSL, then opens the editor with the result.

local addonName, QuestCore = ...
local QC = QuestCore

local Recorder = {}
QC.Recorder = Recorder

local function PlayerSpot()
	if not (QC.HBD and C_Map) then return nil end
	local map = C_Map.GetBestMapForUnit("player")
	if not map then return nil end
	local x, y = QC.HBD:GetPlayerZonePosition()
	if not x then return nil end
	local info = C_Map.GetMapInfo(map)
	local zone = (info and info.name) or map
	return ("%s %.1f,%.1f"):format(zone, x * 100, y * 100)
end

local function QuestName(id)
	if C_QuestLog and C_QuestLog.GetTitleForQuestID then
		return C_QuestLog.GetTitleForQuestID(id)
	end
	return nil
end

function Recorder:Start()
	self.lines = { "step" }
	self.recording = true
	self._lastSpot = nil
	QC:Print("|cff33d6ffQuestCore|r recorder |cff66cc66ON|r — actions are being captured. /qc record stop")
	QC:Notify(QC.L["Recording guide..."] or "Recording guide...", { 1.0, 0.5, 0.4 })
end

function Recorder:AddLine(text, withGoto)
	if not self.recording then return end
	local line = text
	if withGoto then
		local spot = PlayerSpot()
		if spot then line = line .. " |goto " .. spot end
	end
	self.lines[#self.lines + 1] = line
end

function Recorder:Stop()
	if not self.recording then
		QC:Print("Recorder is not running.")
		return
	end
	self.recording = false
	local dsl = table.concat(self.lines, "\n")
	QC:Print("|cff33d6ffQuestCore|r recorder |cffff5555OFF|r — opening editor.")
	if QC.GuideEditor then
		QC.GuideEditor:Show("Recorded " .. date("%H%M%S"), dsl)
	end
end

function Recorder:Toggle()
	if self.recording then self:Stop() else self:Start() end
end

----------------------------------------------------------------------
-- Capture hooks
----------------------------------------------------------------------

function Recorder:QUEST_ACCEPTED(_, a, b)
	if not self.recording then return end
	local qid = tonumber(b) or tonumber(a)
	if not qid then return end
	local name = QuestName(qid) or "Quest"
	self.lines[#self.lines + 1] = "step"
	self:AddLine(("accept %s##%d |q %d"):format(name, qid, qid), true)
end

function Recorder:QUEST_TURNED_IN(_, qid)
	if not self.recording or not qid then return end
	local name = QuestName(qid) or "Quest"
	self.lines[#self.lines + 1] = "step"
	self:AddLine(("turnin %s##%d |q %d"):format(name, qid, qid), true)
end

function Recorder:Enable()
	if self._enabled then return end
	self._enabled = true
	-- Private frame: these events are already owned by QuestDB via AceEvent,
	-- so we listen independently to avoid clobbering its handler.
	local f = CreateFrame("Frame")
	f:RegisterEvent("QUEST_ACCEPTED")
	f:RegisterEvent("QUEST_TURNED_IN")
	f:SetScript("OnEvent", function(_, event, ...)
		if event == "QUEST_ACCEPTED" then Recorder:QUEST_ACCEPTED(nil, ...)
		elseif event == "QUEST_TURNED_IN" then Recorder:QUEST_TURNED_IN(nil, ...) end
	end)
	self.frame = f
end
