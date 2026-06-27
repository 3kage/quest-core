-- QuestCore: persisted guide progress and character state (AceDB char/profile).

local addonName, QuestCore = ...
local QC = QuestCore

local State = {}
QC.State = State

local function EnsureChar(db)
	local c = db.char
	c.completedQuests = c.completedQuests or {}
	c.activeGuideID = c.activeGuideID or c.guidename
	c.currentStep = c.currentStep or c.step or 1
	c.step = c.currentStep
	c.guidename = c.activeGuideID or c.guidename
	c.skippedSteps = c.skippedSteps or {}
	return c
end

local function EnsureProfile(db)
	local p = db.profile
	p.framePosition = p.framePosition or {
		point = "CENTER",
		relpoint = "CENTER",
		x = 0,
		y = 0,
		width = 300,
		height = 380,
	}
	if p.window and not p.framePosition._migrated then
		local w = p.window
		p.framePosition.point = w.point or p.framePosition.point
		p.framePosition.relpoint = w.relpoint or p.framePosition.relpoint
		p.framePosition.x = w.x or p.framePosition.x
		p.framePosition.y = w.y or p.framePosition.y
		p.framePosition.width = w.width or p.framePosition.width
		p.framePosition.height = w.height or p.framePosition.height
		p.framePosition._migrated = true
	end
	return p
end

function State:Init(db)
	self.db = db
	EnsureChar(db)
	EnsureProfile(db)
end

function State:GetActiveGuide()
	if not self.db then return nil end
	local id = self.db.char.activeGuideID or self.db.char.guidename
	return id
end

function State:SetActiveGuide(guideID)
	if not self.db then return end
	guideID = guideID and QC:SanitizeGuideTitle(tostring(guideID)) or nil
	self.db.char.activeGuideID = guideID
	self.db.char.guidename = guideID
end

function State:GetCurrentStep()
	if not self.db then return 1 end
	return tonumber(self.db.char.currentStep or self.db.char.step) or 1
end

function State:SetCurrentStep(stepNum)
	if not self.db then return end
	stepNum = tonumber(stepNum) or 1
	if stepNum < 1 then stepNum = 1 end
	self.db.char.currentStep = stepNum
	self.db.char.step = stepNum
end

function State:IsQuestCompleted(questID)
	questID = tonumber(questID)
	if not questID or not self.db then return false end
	local c = self.db.char.completedQuests
	if c[questID] then return true end
	local QL = QC.Compat and QC.Compat.QuestLog
	if QL and QL.IsComplete and QL.IsComplete(questID) then
		c[questID] = true
		return true
	end
	if QC.QuestDB and QC.QuestDB.IsQuestComplete and QC.QuestDB:IsQuestComplete(questID) then
		c[questID] = true
		return true
	end
	return false
end

function State:MarkQuestCompleted(questID)
	questID = tonumber(questID)
	if not questID or not self.db then return end
	self.db.char.completedQuests[questID] = true
end

local function GuideKey(guideID)
	if not guideID then return nil end
	if QC.SanitizeGuideTitle then return QC:SanitizeGuideTitle(tostring(guideID)) end
	return tostring(guideID)
end

function State:IsStepSkipped(guideID, stepNum)
	stepNum = tonumber(stepNum)
	if not stepNum or not self.db then return false end
	local key = GuideKey(guideID)
	local guide = key and self.db.char.skippedSteps[key]
	return guide and guide[stepNum] == true or false
end

function State:MarkStepSkipped(guideID, stepNum)
	stepNum = tonumber(stepNum)
	local key = GuideKey(guideID)
	if not key or not stepNum or not self.db then return end
	local c = EnsureChar(self.db)
	c.skippedSteps[key] = c.skippedSteps[key] or {}
	c.skippedSteps[key][stepNum] = true
end

function State:ClearStepSkipped(guideID, stepNum)
	stepNum = tonumber(stepNum)
	local key = GuideKey(guideID)
	if not key or not stepNum or not self.db then return end
	local guide = self.db.char.skippedSteps[key]
	if guide then guide[stepNum] = nil end
end

function State:SyncCompletedQuestsFromLog()
	if not self.db then return end
	local c = self.db.char.completedQuests
	local QL = QC.Compat and QC.Compat.QuestLog
	local guide = QC.CurrentGuide
	if guide and guide.steps and not guide.parsed and guide.Parse then
		guide:Parse()
	end
	if guide and guide.steps then
		for _, step in ipairs(guide.steps) do
			if step.goals then
				for _, goal in ipairs(step.goals) do
					local qid = goal.questid or goal.questID
					if qid then
						if QL and QL.IsComplete and QL.IsComplete(qid) then
							c[qid] = true
						elseif QC.QuestDB and QC.QuestDB.IsQuestComplete(qid) then
							c[qid] = true
						end
					end
				end
			end
		end
	end
	if C_QuestLog and C_QuestLog.GetNumQuestLogEntries then
		local num = C_QuestLog.GetNumQuestLogEntries()
		for i = 1, num do
			local info = C_QuestLog.GetInfo and C_QuestLog.GetInfo(i)
			local qid = info and info.questID
			if qid and QL and QL.IsComplete and QL.IsComplete(qid) then
				c[qid] = true
			end
		end
	end
end

function State:OnPlayerEnteringWorld()
	self:SyncCompletedQuestsFromLog()
	local guideID = self:GetActiveGuide()
	if guideID and QC.GetGuide and QC:GetGuide(guideID) and not QC.CurrentGuide then
		QC:SetGuide(guideID, self:GetCurrentStep())
	end
end

function State:Enable()
	if self._enabled then return end
	self._enabled = true
	QC:RegisterEvent("PLAYER_ENTERING_WORLD", function()
		State:OnPlayerEnteringWorld()
	end)
	QC:RegisterEvent("QUEST_TURNED_IN", function(_, questID)
		if questID then State:MarkQuestCompleted(questID) end
	end)
end
