-- QuestCore: optional auto-accept / turn-in / gossip for active guide quests.

-- Safe: all Blizzard calls wrapped in pcall; Shift bypasses automation.

-- Gossip quest selection is gated by autoAccept / autoTurnIn / automation.autoQuest.

-- Gossip option selection (trainer/vendor/|gossip) uses general.autoGossip or automation.autoQuest.

-- Gossip flow: goal order + questID select + retry (QuestAutoAccept pattern).



local addonName, QuestCore = ...

local QC = QuestCore



local QuestAutomation = {}

QC.QuestAutomation = QuestAutomation



----------------------------------------------------------------------

-- Gating

----------------------------------------------------------------------



function QuestAutomation:IsEnabled(kind)

	local general = QC.db and QC.db.profile and QC.db.profile.general

	local automation = QC.db and QC.db.profile and QC.db.profile.automation

	if automation and automation.autoQuest then return true end

	if kind == "accept" and general and general.autoAccept then return true end

	if kind == "turnin" and general and general.autoTurnIn then return true end

	if not kind and automation and automation.autoQuest then return true end

	if not kind and general and (general.autoAccept or general.autoTurnIn) then return true end

	return false

end



function QuestAutomation:ShiftBypass()

	return IsShiftKeyDown and IsShiftKeyDown()

end



function QuestAutomation:ModifierBypass()

	local mod = QC.db.profile.general and QC.db.profile.general.autoQuestModifier or "none"

	if mod == "shift" and IsShiftKeyDown and IsShiftKeyDown() then return true end

	if mod == "ctrl" and IsControlKeyDown and IsControlKeyDown() then return true end

	if mod == "alt" and IsAltKeyDown and IsAltKeyDown() then return true end

	return false

end



function QuestAutomation:ShouldRun(kind)

	if self:ShiftBypass() or self:ModifierBypass() then return false end

	if kind then

		return self:IsEnabled(kind)

	end

	return self:IsEnabled("accept") or self:IsEnabled("turnin")

end



function QuestAutomation:ShouldRunGossipOption()

	if self:ShiftBypass() or self:ModifierBypass() then return false end

	local general = QC.db and QC.db.profile and QC.db.profile.general

	local automation = QC.db and QC.db.profile and QC.db.profile.automation

	if general and general.autoGossip then return true end

	if automation and automation.autoQuest then return true end

	return false

end



local function StepBlocks(questid, kind)

	return QC.StepBlocksAutoQuest and QC:StepBlocksAutoQuest(questid, kind)

end



local function GoalQuestID(goal)

	if not goal then return nil end

	if QC.QuestDB and QC.QuestDB.ResolveGoalQuestID then

		return QC.QuestDB:ResolveGoalQuestID(goal)

	end

	return tonumber(goal.questid or goal.questID)

end



-- Current step goals then sticky goals (guide tracker order).

local function GetAutoQuestGoals()

	local goals = {}

	local step = QC.CurrentStep

	if step and step.goals then

		for _, goal in ipairs(step.goals) do

			goals[#goals + 1] = goal

		end

	end

	if QC.GetActiveStickyGoals then

		for _, goal in ipairs(QC:GetActiveStickyGoals()) do

			goals[#goals + 1] = goal

		end

	end

	return goals

end



local function GetVisibleIncompleteGoals()

	local goals = {}

	local step = QC.CurrentStep

	if step and step.goals then

		for _, goal in ipairs(step.goals) do

			if goal:IsVisible() and not goal:IsComplete() then

				goals[#goals + 1] = goal

			end

		end

	end

	return goals

end



local function GetCurrentNPCId()
	if QC.GetInteractionNpcId then return QC.GetInteractionNpcId() end
	if QC.GetNPCUnitId then return QC.GetNPCUnitId("npc") end
	if not UnitGUID then return nil end
	local guid = UnitGUID("npc")
	if not guid then return nil end
	local id = guid:match("%-(%d+)$")
	return id and tonumber(id) or nil
end



local function GoalAllowsAutoGossip(goal)

	return goal and not goal.noautogossip

end



local function AfterGossipOptionAction()

	if QC.TryToCompleteStep then QC:TryToCompleteStep() end

	if QC.UpdateWaypoints then QC:UpdateWaypoints() end

	if QC.UpdateUI then QC:UpdateUI() end

end



local function MarkGossipGoalDone(goal)

	goal._gossipDone = true

	goal._passiveDone = true

	AfterGossipOptionAction()

end



-- goalValidAccept: incomplete accept goal on the step, respect noautoaccept.

local function GoalValidAccept(goal)

	if not goal or goal.action ~= "accept" then return false end

	if goal.noautoaccept and not (goal.noautoacceptparty and IsInGroup and not IsInGroup()) then

		return false

	end

	if not goal:IsVisible() or goal:IsComplete() then return false end

	local qid = GoalQuestID(goal)

	if not qid or StepBlocks(qid, "accept") then return false end

	return true

end



local function GoalValidTurnin(goal)

	if not goal or goal.action ~= "turnin" then return false end

	if goal.noautoaccept and not (goal.noautoacceptparty and IsInGroup and not IsInGroup()) then

		return false

	end

	if not goal:IsVisible() or goal:IsComplete() then return false end

	local qid = GoalQuestID(goal)

	if not qid or StepBlocks(qid, "turnin") then return false end

	return true

end



local function CanAccept(questid)

	if not questid then return false end

	if StepBlocks(questid, "accept") then return false end

	if QC.StepReferencesQuest and QC:StepReferencesQuest(questid, "accept") then return true end

	if QC.GetActiveStickyGoals then

		for _, goal in ipairs(QC:GetActiveStickyGoals()) do

			if GoalQuestID(goal) == questid and goal:IsVisible() and goal.action == "accept" then

				return true

			end

		end

	end

	return false

end



local function CanTurnIn(questid)

	if not questid then return false end

	if StepBlocks(questid, "turnin") then return false end

	if QC.StepReferencesQuest and QC:StepReferencesQuest(questid, "turnin") then return true end

	if QC.GetActiveStickyGoals then

		for _, goal in ipairs(QC:GetActiveStickyGoals()) do

			if GoalQuestID(goal) == questid and goal:IsVisible() and goal.action == "turnin" then

				return true

			end

		end

	end

	return false

end



local function GossipDebugLog(msg)

	if QC.DebugLog and QC.db and QC.db.profile and QC.db.profile.debug then

		QC:DebugLog(msg)

	end

end



local function AfterQuestFrameAction()

	if QC.RefreshQuestUI then

		QC:RefreshQuestUI()

	elseif C_Timer and C_Timer.After then

		C_Timer.After(0.05, function()

			if QC.TryToCompleteStep then QC:TryToCompleteStep() end

			if QC.UpdateUI then QC:UpdateUI() end

		end)

	end

end



local function ScheduleGossipRetry(delay)

	if not (C_Timer and C_Timer.After) then return end

	C_Timer.After(delay or 0.2, function()

		if QuestAutomation:ShouldRun() and QuestAutomation:IsGossipUIVisible() then

			QuestAutomation:GossipSelect()

		end

	end)

end



----------------------------------------------------------------------

-- Gossip — goal order, questID via QC.API

----------------------------------------------------------------------



local API = QC.API



function QuestAutomation:IsGossipUIVisible()

	if GossipFrame and GossipFrame.IsVisible and GossipFrame:IsVisible() then return true end

	if GossipFrame and GossipFrame.GreetingPanel and GossipFrame.GreetingPanel.IsVisible

		and GossipFrame.GreetingPanel:IsVisible() then

		return true

	end

	if QuestFrame and QuestFrame.GreetingPanel and QuestFrame.GreetingPanel.IsVisible

		and QuestFrame.GreetingPanel:IsVisible() then

		return true

	end

	return API and API.IsGossipOpen and API.IsGossipOpen()

end



function QuestAutomation:GossipSelect()

	if not self:ShouldRun() or not QC.CurrentStep then return false end

	if not API then return false end



	local goals = GetAutoQuestGoals()

	if #goals == 0 then return false end



	-- Modern path: C_GossipInfo lists (Classic Era 1.15+, Retail, Progression).

	if API.HasModernGossipAPI() then

		local available, active

		if self:IsEnabled("accept") then

			available = API.GetAvailableQuests() or {}

		end

		if self:IsEnabled("turnin") then

			active = API.GetActiveQuests() or {}

		end



		for _, goal in ipairs(goals) do

			if self:IsEnabled("accept") and GoalValidAccept(goal) and available then

				local gqid = GoalQuestID(goal)

				for idx, info in ipairs(available) do

					local qid = tonumber(info.questID or info.questId)

					if gqid and qid == gqid then

						if API.SelectAvailableQuest(nil, idx, qid) then

							GossipDebugLog("Gossip accept quest " .. tostring(qid))

							AfterQuestFrameAction()

							return true

						end

					end

				end

			end



			if self:IsEnabled("turnin") and GoalValidTurnin(goal) and active then

				local gqid = GoalQuestID(goal)

				for idx, info in ipairs(active) do

					local qid = tonumber(info.questID or info.questId)

					if gqid and qid == gqid then

						if API.SelectActiveQuest(nil, idx, qid) then

							GossipDebugLog("Gossip turnin quest " .. tostring(qid))

							AfterQuestFrameAction()

							return true

						end

					end

				end

			end

		end

	end



	-- Legacy gossip index APIs (pre-C_GossipInfo quest lists).

	local numActive = self:IsEnabled("turnin") and API.GetNumGossipActiveQuests() or 0

	local numAvailable = self:IsEnabled("accept") and API.GetNumGossipAvailableQuests() or 0



	for _, goal in ipairs(goals) do

		if self:IsEnabled("turnin") and GoalValidTurnin(goal) and numActive > 0 then

			local gqid = GoalQuestID(goal)

			for i = 1, numActive do

				local qid = API.GetGossipActiveQuestID(i)

				if gqid and gqid == gqid then

					if API.SelectActiveQuest(nil, i, qid) then

						GossipDebugLog("Legacy gossip turnin quest " .. tostring(qid))

						AfterQuestFrameAction()

						return true

					end

				end

			end

		end



		if self:IsEnabled("accept") and GoalValidAccept(goal) and numAvailable > 0 then

			local gqid = GoalQuestID(goal)

			for i = 1, numAvailable do

				local qid = API.GetGossipAvailableQuestID(i)

				if qid and qid == gqid then

					if API.SelectAvailableQuest(nil, i, qid) then

						GossipDebugLog("Legacy gossip accept quest " .. tostring(qid))

						AfterQuestFrameAction()

						return true

					end

				end

			end

		end

	end



	return false

end



function QuestAutomation:GossipOptionSelect()

	if not self:ShouldRunGossipOption() or not QC.CurrentStep then return false end

	if not API then return false end



	local npcId = GetCurrentNPCId()

	local goals = GetVisibleIncompleteGoals()

	if #goals == 0 then return false end



	local gossips = API.GetGossipOptions()

	if not gossips or #gossips == 0 then return false end



	local function selectOption(opt, index)

		local id = opt.gossipOptionID or opt.optionID or index

		if id and API.SelectGossipOption(id) then return true end

		if index and API.SelectGossipOption(index) then return true end

		return false

	end



	local function optName(opt)

		return (opt.name or opt.text or ""):lower()

	end



	local function matchesTrainer(opt)

		local icon = opt.icon

		if icon == API.GOSSIP_ICON_TRAINER_CLASSIC or icon == API.GOSSIP_ICON_TRAINER_RETAIL then

			return true

		end

		if opt.type == "trainer" then return true end

		local name = optName(opt)

		if name:find("training", 1, true) or name:find("train", 1, true)

			or name:find("seek", 1, true) or name:find("teach", 1, true) then

			return true

		end

		return false

	end



	local function matchesVendor(opt)

		if opt.icon == API.GOSSIP_ICON_VENDOR then return true end

		if opt.type == "vendor" then return true end

		return false

	end



	local function matchesBind(opt)

		if opt.icon == API.GOSSIP_ICON_BIND then return true end

		if opt.type == "binder" then return true end

		return false

	end



	local function matchesGossipGoal(goal, opt)

		local optId = opt.gossipOptionID or opt.optionID

		if goal.gossipoption and optId and goal.gossipoption == optId then return true end

		if goal.gossipids and optId and goal.gossipids[optId] then return true end

		if goal.gossiptext then

			local name = optName(opt)

			if name:find(goal.gossiptext, 1, true) then return true end

		end

		return false

	end



	local function stepHasTalkToNPC(id)

		for _, g in ipairs(goals) do

			if g.action == "talk" and g.npcid == id then return true end

		end

		return false

	end



	for _, goal in ipairs(goals) do

		if not GoalAllowsAutoGossip(goal) or goal._gossipDone then

		elseif goal.gossipoption or goal.gossiptext or goal.gossipids then

			for i, opt in ipairs(gossips) do

				if matchesGossipGoal(goal, opt) and selectOption(opt, i) then

					GossipDebugLog("Gossip option select goal " .. tostring(goal.gossipoption or goal.gossiptext))

					MarkGossipGoalDone(goal)

					return true

				end

			end

		elseif goal.action == "gossip" then

			for i, opt in ipairs(gossips) do

				if matchesGossipGoal(goal, opt) and selectOption(opt, i) then

					GossipDebugLog("Gossip action select")

					MarkGossipGoalDone(goal)

					return true

				end

			end

		elseif goal.action == "trainer" and goal.npcid and npcId == goal.npcid
			and QC.IsAutoTrainer and QC:IsAutoTrainer() then

			for i, opt in ipairs(gossips) do

				if matchesTrainer(opt) and selectOption(opt, i) then

					GossipDebugLog("Gossip trainer select npc " .. tostring(goal.npcid))

					return true

				end

			end

		elseif goal.action == "vendor" and goal.npcid and npcId == goal.npcid then

			for i, opt in ipairs(gossips) do

				if matchesVendor(opt) and selectOption(opt, i) then

					GossipDebugLog("Gossip vendor select npc " .. tostring(goal.npcid))

					return true

				end

			end

		elseif goal.action == "buy" and npcId and stepHasTalkToNPC(npcId) then

			for i, opt in ipairs(gossips) do

				if matchesVendor(opt) and selectOption(opt, i) then

					GossipDebugLog("Gossip buy/vendor select")

					return true

				end

			end

		elseif goal.action == "home" and npcId and stepHasTalkToNPC(npcId) then

			for i, opt in ipairs(gossips) do

				if matchesBind(opt) and selectOption(opt, i) then

					GossipDebugLog("Gossip home/bind select")

					return true

				end

			end

		end

	end



	return false

end



function QuestAutomation:HandleGossip()

	self:GossipSelect()

	self:GossipOptionSelect()

end



----------------------------------------------------------------------

-- Quest greeting (multi-quest NPCs — run Gossip() here too)

----------------------------------------------------------------------



function QuestAutomation:HandleQuestGreeting()

	self:GossipSelect()

end



----------------------------------------------------------------------

-- Quest frame progression

----------------------------------------------------------------------



function QuestAutomation:QUEST_DETAIL()

	if not self:ShouldRun("accept") then return end

	local qid = GetQuestID and GetQuestID() or nil

	if not qid or not CanAccept(qid) then return end

	if AcceptQuest then

		pcall(AcceptQuest)

		AfterQuestFrameAction()

		ScheduleGossipRetry(0.3)

	end

end



function QuestAutomation:QUEST_PROGRESS()

	if not self:ShouldRun("turnin") then return end

	local qid = GetQuestID and GetQuestID() or nil

	if not qid or not CanTurnIn(qid) then return end

	if IsQuestCompletable and IsQuestCompletable() and CompleteQuest then

		pcall(CompleteQuest)

		AfterQuestFrameAction()

	end

end



function QuestAutomation:QUEST_COMPLETE()

	if not self:ShouldRun("turnin") then return end

	local qid = GetQuestID and GetQuestID() or nil

	if not qid or not CanTurnIn(qid) then return end

	if not GetQuestReward then return end



	local choices = GetNumQuestChoices and GetNumQuestChoices() or 0

	if choices <= 1 then

		pcall(GetQuestReward, choices == 1 and 1 or nil)

		AfterQuestFrameAction()

		ScheduleGossipRetry(0.3)

	end

end



function QuestAutomation:QUEST_ACCEPTED()

	ScheduleGossipRetry(0.25)

end



function QuestAutomation:QUEST_FINISHED()

	ScheduleGossipRetry(0.25)

end



----------------------------------------------------------------------

-- Retry timer (QuestAuto:Retry every 2s)

----------------------------------------------------------------------



function QuestAutomation:Retry()

	if not self:ShouldRun() then return end



	if QuestFrameAcceptButton and QuestFrameAcceptButton.IsVisible and QuestFrameAcceptButton:IsVisible() then

		self:QUEST_DETAIL()

		return

	end



	if QuestFrameCompleteButton and QuestFrameCompleteButton.IsVisible and QuestFrameCompleteButton:IsEnabled()

		and QuestFrameCompleteButton:IsVisible() then

		self:QUEST_PROGRESS()

		return

	end



	if QuestFrameCompleteQuestButton and QuestFrameCompleteQuestButton.IsVisible

		and QuestFrameCompleteQuestButton:IsEnabled() and QuestFrameCompleteQuestButton:IsVisible() then

		self:QUEST_COMPLETE()

		return

	end



	if self:IsGossipUIVisible() then

		self:GossipSelect()

		if self:ShouldRunGossipOption() then

			self:GossipOptionSelect()

		end

	end

end



----------------------------------------------------------------------

-- Events

----------------------------------------------------------------------



function QuestAutomation:GOSSIP_SHOW()

	if self:ShouldRun() then

		local delays = { 0, 0.05, 0.15, 0.35 }

		for _, delay in ipairs(delays) do

			if C_Timer and C_Timer.After then

				C_Timer.After(delay, function()

					if not QuestAutomation:ShouldRun() then return end

					if not QuestAutomation:IsGossipUIVisible() then return end

					QuestAutomation:GossipSelect()

				end)

			elseif delay == 0 then

				self:GossipSelect()

			end

		end

	end



	if self:ShouldRunGossipOption() then

		local optDelays = { 0, 0.05, 0.15, 0.35 }

		for _, delay in ipairs(optDelays) do

			if C_Timer and C_Timer.After then

				C_Timer.After(delay, function()

					if not QuestAutomation:ShouldRunGossipOption() then return end

					if not QuestAutomation:IsGossipUIVisible() then return end

					QuestAutomation:GossipOptionSelect()

				end)

			elseif delay == 0 then

				self:GossipOptionSelect()

			end

		end

	end

end



function QuestAutomation:QUEST_GREETING()

	if not self:ShouldRun() then return end

	local delays = { 0, 0.05, 0.15 }

	for _, delay in ipairs(delays) do

		if C_Timer and C_Timer.After then

			C_Timer.After(delay, function()

				if QuestAutomation:ShouldRun() then

					QuestAutomation:GossipSelect()

				end

			end)

		elseif delay == 0 then

			self:GossipSelect()

		end

	end

end



function QuestAutomation:Enable()

	if self._enabled then return end

	self._enabled = true

	local function reg(ev, fn)

		QC:RegisterEvent(ev, function(...) fn(self, ...) end)

	end

	reg("GOSSIP_SHOW", QuestAutomation.GOSSIP_SHOW)

	reg("QUEST_GREETING", QuestAutomation.QUEST_GREETING)

	reg("QUEST_DETAIL", QuestAutomation.QUEST_DETAIL)

	reg("QUEST_PROGRESS", QuestAutomation.QUEST_PROGRESS)

	reg("QUEST_COMPLETE", QuestAutomation.QUEST_COMPLETE)

	reg("QUEST_ACCEPTED", QuestAutomation.QUEST_ACCEPTED)

	reg("QUEST_FINISHED", QuestAutomation.QUEST_FINISHED)



	if QC.ScheduleRepeatingTimer and not self._retryTimer then

		self._retryTimer = QC:ScheduleRepeatingTimer(function()

			QuestAutomation:Retry()

		end, 2)

	end

end



function QuestAutomation:Disable()

	self._enabled = false

	if self._retryTimer and QC.CancelTimer then

		QC:CancelTimer(self._retryTimer)

		self._retryTimer = nil

	end

end

