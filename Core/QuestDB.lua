-- QuestCore: quest state cache.
-- Mirrors quest log / completion state and nudges the engine on changes.

local addonName, QuestCore = ...
local QC = QuestCore

local QuestDB = {}
QC.QuestDB = QuestDB

-- Public caches (rebuilt on quest events).
QC.questsbyid = {}        -- [questid] = { inlog, complete, objectives = {...} }
QC.completedQuests = {}   -- [questid] = true when flagged completed (turned in)

local C_QuestLog = C_QuestLog
local QL = QC.Compat and QC.Compat.QuestLog

local function NormalizeQuestName(name)
	if not name then return "" end
	return name:lower():gsub("^the ", ""):gsub("%s+", " "):match("^%s*(.-)%s*$") or ""
end

----------------------------------------------------------------------
-- Query helpers (authoritative: read the live API, also refresh cache)
----------------------------------------------------------------------

function QuestDB:GetLogIndex(questid)
	questid = tonumber(questid)
	if not questid then return nil end
	if QL and QL.GetLogIndex then return QL.GetLogIndex(questid) end
	if C_QuestLog and C_QuestLog.GetLogIndexForQuestID then
		local ok, idx = pcall(C_QuestLog.GetLogIndexForQuestID, questid)
		if ok and idx then return idx end
	end
	return nil
end

function QuestDB:IsQuestAccepted(questid)
	questid = tonumber(questid)
	if not questid then return false end
	if self:GetLogIndex(questid) then return true end
	if QC.API and QC.API.IsOnQuest then return QC.API.IsOnQuest(questid) end
	if QL and QL.IsOnQuest then return QL.IsOnQuest(questid) end
	if C_QuestLog and C_QuestLog.IsOnQuest then
		local ok, on = pcall(C_QuestLog.IsOnQuest, questid)
		if ok and on then return true end
	end
	local q = QC.questsbyid[questid]
	return q and q.inlog or false
end

function QuestDB:IsQuestComplete(questid)
	questid = tonumber(questid)
	if not questid then return false end
	if QL and QL.IsComplete then return QL.IsComplete(questid) end
	if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
		local ok, done = pcall(C_QuestLog.IsQuestFlaggedCompleted, questid)
		if ok and done then return true end
	end
	return QC.completedQuests[questid] == true
end

function QuestDB:IsQuestInLog(questid)
	return self:IsQuestAccepted(questid)
end

-- Resolve a goal's quest id from ##id or English name (never compare names when id is set).
function QuestDB:ResolveGoalQuestID(goal)
	if not goal then return nil end
	local id = tonumber(goal.questid or goal.questID)
	if id then return id end
	local name = goal.questname
	if not name or name == "" then return nil end
	return self:FindQuestIDByName(name)
end

function QuestDB:FindQuestIDByName(name)
	if not name then return nil end
	local low = NormalizeQuestName(name)
	if low == "" then return nil end

	if C_QuestLog and C_QuestLog.GetNumQuestLogEntries and C_QuestLog.GetInfo then
		local ok, n = pcall(C_QuestLog.GetNumQuestLogEntries)
		n = (ok and n) or 0
		for i = 1, n do
			local okInfo, info = pcall(C_QuestLog.GetInfo, i)
			if okInfo and info and info.questID then
				local title = info.title
				if (not title or title == "") and C_QuestLog.GetTitleForQuestID then
					local okT, t = pcall(C_QuestLog.GetTitleForQuestID, info.questID)
					if okT then title = t end
				end
				if title then
					local tlow = NormalizeQuestName(title)
					if tlow == low or tlow:find(low, 1, true) or low:find(tlow, 1, true) then
						return info.questID
					end
				end
			end
		end
	end

	if QC.ResolveGuideQuest then
		return QC:ResolveGuideQuest(name)
	end
	return nil
end

-- Ready to hand in (all objectives done, not yet turned in).
function QuestDB:IsQuestReadyForTurnIn(questid)
	if not questid then return false end
	if C_QuestLog and C_QuestLog.ReadyForTurnIn then
		return C_QuestLog.ReadyForTurnIn(questid) and true or false
	end
	if C_QuestLog and C_QuestLog.IsComplete then
		return C_QuestLog.IsComplete(questid) and true or false
	end
	return false
end

function QuestDB:IsObjectiveComplete(questid, objnum)
	if not questid or not objnum then return false end
	if C_QuestLog and C_QuestLog.GetQuestObjectives then
		local objs = C_QuestLog.GetQuestObjectives(questid)
		local o = objs and objs[objnum]
		if o then return o.finished and true or false end
	end
	return false
end

function QuestDB:AreAllObjectivesComplete(questid)
	if not questid then return false end
	if self:IsQuestReadyForTurnIn(questid) then return true end
	if C_QuestLog and C_QuestLog.GetQuestObjectives then
		local objs = C_QuestLog.GetQuestObjectives(questid)
		if not objs or #objs == 0 then return false end
		for _, o in ipairs(objs) do
			if not o.finished then return false end
		end
		return true
	end
	return false
end

----------------------------------------------------------------------
-- Cache refresh
----------------------------------------------------------------------

local function RefreshQuest(questid)
	if not questid then return end
	local entry = QC.questsbyid[questid] or {}
	entry.inlog = QuestDB:IsQuestAccepted(questid)
	entry.complete = QuestDB:IsQuestReadyForTurnIn(questid)
	if C_QuestLog and C_QuestLog.GetQuestObjectives then
		local ok, objs = pcall(C_QuestLog.GetQuestObjectives, questid)
		if ok then entry.objectives = objs end
	end
	QC.questsbyid[questid] = entry
	if QuestDB:IsQuestComplete(questid) then
		QC.completedQuests[questid] = true
	end
end
QuestDB.RefreshQuest = RefreshQuest

-- Refresh quests referenced by the current step (cheap, targeted).
local function RefreshCurrentStepQuests()
	local step = QC.CurrentStep
	if type(step) ~= "table" or not step.goals then return end
	for _, goal in ipairs(step.goals) do
		local id = QuestDB:ResolveGoalQuestID(goal)
		if id then RefreshQuest(id) end
	end
end

local function NudgeQuestUI()
	if QC.RefreshQuestUI then
		QC:RefreshQuestUI()
	elseif QC.TryToCompleteStep then
		QC:TryToCompleteStep()
		if QC.UpdateUI then QC:UpdateUI() end
		if QC.UpdateWaypoints then QC:UpdateWaypoints() end
	end
end

----------------------------------------------------------------------
-- Events
----------------------------------------------------------------------

local function OnQuestEvent(_, event, ...)
	local acceptedQuestID
	if event == "QUEST_ACCEPTED" then
		-- Signature differs across versions; second arg is usually questID.
		acceptedQuestID = tonumber(select(2, ...)) or tonumber(select(1, ...))
		RefreshQuest(acceptedQuestID)
	elseif event == "QUEST_TURNED_IN" then
		local questid = ...
		if questid then
			QC.completedQuests[questid] = true
			RefreshQuest(questid)
		end
	elseif event == "QUEST_REMOVED" then
		local questid = ...
		if questid and QC.questsbyid[questid] then
			QC.questsbyid[questid].inlog = false
		end
	end

	RefreshCurrentStepQuests()

	-- Conservative quest -> step jump: only when the current step is already
	-- complete (we would advance anyway), so we never yank the player mid-task.
	if acceptedQuestID and QC.db and QC.db.profile.general.questStepJump
		and type(QC.CurrentStep) == "table" and QC.FindStepForQuest then
		local wasComplete = QC.CurrentStep:IsComplete()
		local target = QC:FindStepForQuest(acceptedQuestID)
		if wasComplete and target and target ~= QC.CurrentStepNum then
			QC:JumpToQuestStep(acceptedQuestID, true)
			NudgeQuestUI()
			return
		end
	end

	NudgeQuestUI()
end

function QuestDB:Enable()
	if self._enabled then return end
	self._enabled = true

	QC:RegisterEvent("QUEST_LOG_UPDATE", OnQuestEvent)
	QC:RegisterEvent("QUEST_ACCEPTED", OnQuestEvent)
	QC:RegisterEvent("QUEST_TURNED_IN", OnQuestEvent)
	QC:RegisterEvent("QUEST_REMOVED", OnQuestEvent)
	QC:RegisterEvent("UNIT_QUEST_LOG_CHANGED", OnQuestEvent)
	QC:RegisterEvent("BAG_UPDATE_DELAYED", OnQuestEvent)
end
