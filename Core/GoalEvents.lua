-- QuestCore: frame events for goal types that need runtime signals.

local addonName, QuestCore = ...
local QC = QuestCore

local GoalEvents = {}
QC.GoalEvents = GoalEvents

local function ForVisibleGoals(fn)
	local step = QC.CurrentStep
	if not step or not step.goals then return end
	for _, goal in ipairs(step.goals) do
		if goal:IsVisible() and not goal:IsComplete() then
			fn(goal)
		end
	end
end

local function GetNPCId(unit)
	if QC.GetNPCUnitId then return QC.GetNPCUnitId(unit) end
	if not UnitGUID then return nil end
	local guid = UnitGUID(unit)
	if not guid then return nil end
	local id = guid:match("%-(%d+)$")
	return id and tonumber(id) or nil
end

local function GetInteractionNpcId()
	if QC.GetInteractionNpcId then return QC.GetInteractionNpcId() end
	for _, unit in ipairs({ "npc", "NPC", "target" }) do
		if UnitGUID and UnitGUID(unit) then
			local id = GetNPCId(unit)
			if id and id > 0 then return id end
		end
	end
	return nil
end

local function ShouldAutoTrainerFlow()
	if not (QC.IsAutoTrainer and QC:IsAutoTrainer()) then return false end
	local profile = QC.db and QC.db.profile
	if not profile or not profile.general then return false end
	local general = profile.general
	local automation = profile.automation
	if not (general.autoGossip or (automation and automation.autoQuest)) then return false end
	local QA = QC.QuestAutomation
	if QA and (QA.ShiftBypass(QA) or QA.ModifierBypass(QA)) then return false end
	return true
end

local function AfterTrainerFlow()
	if QC.TryToCompleteStep then QC:TryToCompleteStep() end
	if QC.UpdateWaypoints then QC:UpdateWaypoints() end
	if QC.UpdateUI then QC:UpdateUI() end
end

function GoalEvents:AutoTrainAtTrainer()
	if self._autoTraining then return false end
	if not (GetNumTrainerServices and BuyTrainerService) then return false end
	local ok, num = pcall(GetNumTrainerServices)
	if not ok or not num or num == 0 then return false end
	self._autoTraining = true
	local trained = false
	for i = 1, num do
		local ok2, _, _, category = pcall(GetTrainerServiceInfo, i)
		if ok2 and category == "available" then
			if pcall(BuyTrainerService, i) then trained = true end
		end
	end
	QC:ScheduleTimer(function()
		if CloseTrainer then
			pcall(CloseTrainer)
		elseif ClassTrainerFrame and ClassTrainerFrame:IsShown() and HideUIPanel then
			pcall(HideUIPanel, ClassTrainerFrame)
		end
		self._autoTraining = nil
		AfterTrainerFlow()
	end, trained and 0.15 or 0.05)
	return true
end

function GoalEvents:TryAutoTrainAtTrainer(delays)
	delays = delays or { 0, 0.05, 0.15, 0.35 }
	for _, delay in ipairs(delays) do
		QC:ScheduleTimer(function()
			if not ShouldAutoTrainerFlow() then return end
			if not (ClassTrainerFrame and ClassTrainerFrame:IsShown()) then return end
			GoalEvents:AutoTrainAtTrainer()
		end, delay)
	end
end

function GoalEvents:UI_INFO_MESSAGE(_, msgType, message)
	if msgType ~= 396 or not message then return end
	ForVisibleGoals(function(goal)
		if goal.action ~= "discover" or not goal.pattern then return end
		local zonename = message:match(goal.pattern)
		if not zonename then return end
		local target = (goal.zone or ""):lower()
		local seen = zonename:lower()
		if target == "" or seen:find(target, 1, true) or target:find(seen, 1, true) then
			goal._discovered = true
			if QC.TryToCompleteStep then QC:TryToCompleteStep() end
		end
	end)
end

function GoalEvents:MERCHANT_SHOW()
	ForVisibleGoals(function(goal)
		if goal.action ~= "vendor" or not goal.npcid then return end
		QC:ScheduleTimer(function()
			if MerchantFrame and MerchantFrame:IsShown() then
				local npcId = GetInteractionNpcId()
				if npcId == goal.npcid then goal._vendorNpc = true end
			end
		end, 0)
	end)
end

function GoalEvents:MERCHANT_CLOSED()
	ForVisibleGoals(function(goal)
		if goal.action == "vendor" and goal._vendorNpc then
			goal._vendorDone = true
			goal._vendorNpc = nil
			if QC.TryToCompleteStep then QC:TryToCompleteStep() end
		end
	end)
end

function GoalEvents:TRAINER_SHOW()
	local autoTrain = ShouldAutoTrainerFlow()
	local nid = GetInteractionNpcId()
	ForVisibleGoals(function(goal)
		if goal.action ~= "trainer" or not goal.npcid then return end
		QC:ScheduleTimer(function()
			if not (ClassTrainerFrame and ClassTrainerFrame:IsShown()) then return end
			local npcId = GetInteractionNpcId() or nid
			if npcId ~= goal.npcid then return end
			goal._trainerNpc = true
			if autoTrain then
				GoalEvents:TryAutoTrainAtTrainer()
			end
		end, 0)
	end)
end

function GoalEvents:TRAINER_CLOSED()
	ForVisibleGoals(function(goal)
		if goal.action == "trainer" and goal._trainerNpc then
			goal._trainerDone = true
			goal._trainerNpc = nil
			if QC.TryToCompleteStep then QC:TryToCompleteStep() end
		end
	end)
end

function GoalEvents:PLAYER_CHOICE_UPDATE()
	if not (QC.db.profile.general.autoGossip and C_PlayerChoice) then return end
	ForVisibleGoals(function(goal)
		if goal.action ~= "playerchoice" and goal.action ~= "questchoice" then return end
		if not (PlayerChoiceFrame and PlayerChoiceFrame.choiceInfo) then return end
		local choices = PlayerChoiceFrame.choiceInfo
		for _, option in ipairs(choices.options or {}) do
			if goal.optionID and option.id == goal.optionID then
				local btn = option.buttons and option.buttons[1]
				if btn then
					C_PlayerChoice.SendPlayerChoiceResponse(btn.id)
					goal._choicePicked = true
					if QC.TryToCompleteStep then QC:TryToCompleteStep() end
					return
				end
			end
		end
		if goal.fallback then
			local idx = tonumber(goal.fallback)
			local option = idx and choices.options and choices.options[idx]
			if option and option.buttons and option.buttons[1] then
				C_PlayerChoice.SendPlayerChoiceResponse(option.buttons[1].id)
				goal._choicePicked = true
				if QC.TryToCompleteStep then QC:TryToCompleteStep() end
			end
		end
	end)
end

function GoalEvents:UNIT_INVENTORY_CHANGED(_, unit)
	if unit ~= "player" then return end
	if QC.TryToCompleteStep then QC:TryToCompleteStep() end
end

function GoalEvents:GOSSIP_SHOW()
	local nid = GetInteractionNpcId()
	if not nid then return end
	ForVisibleGoals(function(goal)
		if (goal.action == "talk" or goal.action == "clicknpc") and goal.npcid == nid then
			goal._talkedToNpc = true
			if QC.TryToCompleteStep then QC:TryToCompleteStep() end
		end
	end)
end

function GoalEvents:OnQuestChange()
	if QC.RefreshQuestUI then
		QC:RefreshQuestUI()
	else
		if QC.TryToCompleteStep then QC:TryToCompleteStep() end
		if QC.UpdateUI then QC:UpdateUI() end
		if QC.UpdateWaypoints then QC:UpdateWaypoints() end
	end
end

function GoalEvents:QUEST_LOG_UPDATE()
	self:OnQuestChange()
end

function GoalEvents:QUEST_WATCH_UPDATE()
	GoalEvents:QUEST_LOG_UPDATE()
end

function GoalEvents:PLAYER_TARGET_CHANGED()
	local tid = GetInteractionNpcId()
	if not tid then return end
	ForVisibleGoals(function(goal)
		if goal.action == "kill" and goal.mobid and goal.mobid == tid then
			goal._lastKillTarget = tid
		end
	end)
end

function GoalEvents:Enable()
	if self._enabled then return end
	self._enabled = true
	local function reg(ev, fn)
		if QC.SafeRegisterEvent then
			QC.SafeRegisterEvent(ev, fn)
		else
			QC:RegisterEvent(ev, fn)
		end
	end
	reg("UI_INFO_MESSAGE", function(...) GoalEvents:UI_INFO_MESSAGE(...) end)
	reg("MERCHANT_SHOW", function() GoalEvents:MERCHANT_SHOW() end)
	reg("MERCHANT_CLOSED", function() GoalEvents:MERCHANT_CLOSED() end)
	reg("TRAINER_SHOW", function() GoalEvents:TRAINER_SHOW() end)
	reg("TRAINER_CLOSED", function() GoalEvents:TRAINER_CLOSED() end)
	if C_PlayerChoice then
		reg("PLAYER_CHOICE_UPDATE", function() GoalEvents:PLAYER_CHOICE_UPDATE() end)
	end
	reg("UNIT_INVENTORY_CHANGED", function(...) GoalEvents:UNIT_INVENTORY_CHANGED(...) end)
	reg("QUEST_LOG_UPDATE", function() GoalEvents:OnQuestChange() end)
	reg("QUEST_ACCEPTED", function() GoalEvents:OnQuestChange() end)
	reg("QUEST_TURNED_IN", function() GoalEvents:OnQuestChange() end)
	reg("QUEST_WATCH_UPDATE", function() GoalEvents:QUEST_WATCH_UPDATE() end)
	reg("GOSSIP_SHOW", function() GoalEvents:GOSSIP_SHOW() end)
	reg("PLAYER_TARGET_CHANGED", function() GoalEvents:PLAYER_TARGET_CHANGED() end)
end
