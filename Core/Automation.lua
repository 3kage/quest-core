-- QuestCore: auto-advance steps, auto-accept/turn-in, and |autoscript AH helpers.

local addonName, QuestCore = ...
local QC = QuestCore

local Automation = {}
QC.Automation = Automation

local COMPLETE_SOUND = 879
if SOUNDKIT and SOUNDKIT.IG_QUEST_LIST_COMPLETE then
	COMPLETE_SOUND = SOUNDKIT.IG_QUEST_LIST_COMPLETE
end

local AH_THROTTLE = 1.05

----------------------------------------------------------------------
-- Quest step automation (existing)
----------------------------------------------------------------------

local function StepComplete()
	local step = QC.CurrentStep
	if not step then return false end
	if QC.GoalTypes and QC.GoalTypes.IsStepComplete then
		return QC.GoalTypes.IsStepComplete(step)
	end
	return step:IsComplete()
end

local function AutoAdvanceEnabled()
	return QC.db and QC.db.profile.general.autoAdvance ~= false
end

function Automation:PlayStepSound()
	if not (QC.db and QC.db.profile.general.sound) then return end
	if PlaySound then
		pcall(PlaySound, COMPLETE_SOUND)
	end
end

function Automation:RefreshViews()
	if QC.RefreshQuestUI then
		QC:RefreshQuestUI()
	else
		if QC.UpdateUI then QC:UpdateUI() end
		if QC.GuideFrame and QC.GuideFrame.Refresh then QC.GuideFrame:Refresh() end
		if QC.Waypoint and QC.Waypoint.Update then QC.Waypoint:Update() end
	end
end

function Automation:AdvanceStep(fromAuto)
	if not QC.CurrentGuide or not QC.CurrentStep then return end
	if fromAuto then
		self:PlayStepSound()
	end
	if QC.SkipStep then
		QC:SkipStep()
	else
		QC:NextStep()
	end
	self:RefreshViews()
end

function Automation:TryAutoAdvance()
	if not AutoAdvanceEnabled() then return end
	if not StepComplete() then return end
	self:AdvanceStep(true)
end

function Automation:QUEST_LOG_UPDATE()
	self:TryAutoAdvance()
	self:RefreshViews()
end

function Automation:BAG_UPDATE_DELAYED()
	self:TryAutoAdvance()
	self:RefreshViews()
end

----------------------------------------------------------------------
-- |autoscript — Auction House automation (search / buy prep only)
----------------------------------------------------------------------

local function GoalText(goal)
	return (goal.text or goal.npc or ""):lower()
end

function Automation:IterActiveGoals()
	local list = {}
	if QC.CurrentStep and QC.CurrentStep.goals then
		for _, goal in ipairs(QC.CurrentStep.goals) do
			list[#list + 1] = goal
		end
	end
	if QC.GetActiveStickyGoals then
		for _, goal in ipairs(QC:GetActiveStickyGoals()) do
			list[#list + 1] = goal
		end
	end
	return list
end

function Automation:SetAHStatus(text)
	if QC.UI and QC.UI.SetAutomationStatus then
		QC.UI:SetAutomationStatus(text)
	end
end

function Automation:ClearAHStatus()
	self:SetAHStatus(nil)
	self._ahActiveGoal = nil
end

function Automation:RunAutoscriptLua(goal)
	if not goal or not goal.autoscript_lua or goal._autoscriptRan then return end
	local code = goal.autoscript_lua
	local env = setmetatable({
		QC = QC,
		goal = goal,
		self = goal,
	}, { __index = _G })
	local fn, err = loadstring(code)
	if not fn then
		if QC.db and QC.db.profile and QC.db.profile.debug then
			QC:Print("Autoscript: " .. tostring(err))
		end
		return false
	end
	setfenv(fn, env)
	local ok, ret = pcall(fn)
	if ok and type(ret) == "function" then
		ok, ret = pcall(ret)
	end
	if not ok and QC.db and QC.db.profile and QC.db.profile.debug then
		QC:Print("Autoscript error: " .. tostring(ret))
	end
	goal._autoscriptRan = true
	if QC.TryToCompleteStep then QC:TryToCompleteStep() end
	return ok
end

function Automation:RunContextAutoscriptLua(context)
	for _, goal in ipairs(self:IterActiveGoals()) do
		if goal.autoscript_lua and goal:IsVisible() and not goal:IsComplete() then
			local text = GoalText(goal)
			if context == "auction" and text:find("auctioneer", 1, true) then
				self:RunAutoscriptLua(goal)
			elseif context == "merchant" and not text:find("auctioneer", 1, true) then
				self:RunAutoscriptLua(goal)
			end
		end
	end
end

local function ResolveItemName(spec)
	if spec.itemName and spec.itemName ~= "" then return spec.itemName end
	if spec.itemID and GetItemInfo then
		local name = GetItemInfo(spec.itemID)
		if name then return name end
	end
	return nil
end

function Automation:RetailSearch(spec)
	if not (C_AuctionHouse and C_AuctionHouse.SendSearchQuery and C_AuctionHouse.MakeItemKey) then
		return false
	end
	local itemID = spec.itemID
	if not itemID then return false end
	local key = C_AuctionHouse.MakeItemKey(itemID)
	if not key then return false end
	local sorts = {}
	if C_AuctionHouse.CreateAuctionSort then
		local sort = C_AuctionHouse.CreateAuctionSort(0, false)
		if sort then sorts[1] = sort end
	end
	pcall(C_AuctionHouse.SendSearchQuery, key, sorts, true)
	return true
end

function Automation:ClassicSearch(name)
	if not (name and QueryAuctionItems) then return false end
	local now = GetTime()
	if self._lastAHQuery and (now - self._lastAHQuery) < AH_THROTTLE then
		local delay = AH_THROTTLE - (now - self._lastAHQuery)
		if C_Timer and C_Timer.After then
			C_Timer.After(delay, function()
				Automation:ClassicSearch(name)
			end)
		end
		return true
	end
	self._lastAHQuery = now
	pcall(QueryAuctionItems, name, nil, nil, 0, nil, nil, false, nil)
	return true
end

function Automation:RunAHAutoscript(goal)
	local spec = goal and goal.autoscript_ah
	if not spec then return end
	self._ahActiveGoal = goal

	local L = QC.L or {}
	if spec.cmd == "scan" then
		self:SetAHStatus(L["AH autoscript scan"] or "Автовзаємодія з аукціоном: сканування")
		if QC.GoldScanner and QC.GoldScanner.RecordScan then
			QC.GoldScanner:RecordScan()
		end
		return
	end

	if spec.cmd == "buy" then
		local name = ResolveItemName(spec)
		local label = name or (spec.itemID and ("#%d"):format(spec.itemID)) or "?"
		local fmt = L["AH autoscript buy"] or "Автовзаємодія з аукціоном: Пошук [%s]"
		self:SetAHStatus(fmt:format(label))

		if C_AuctionHouse and C_AuctionHouse.SendSearchQuery then
			if self:RetailSearch(spec) then return end
		end
		if name then
			self:ClassicSearch(name)
		elseif spec.itemID and C_Item and C_Item.RequestLoadItemDataByID then
			pcall(C_Item.RequestLoadItemDataByID, spec.itemID)
			if C_Timer and C_Timer.After then
				C_Timer.After(0.5, function()
					local n = ResolveItemName(spec)
					if n then Automation:ClassicSearch(n) end
				end)
			end
		end
	end
end

function Automation:ProcessAHAutoscripts()
	local ran = false
	for _, goal in ipairs(self:IterActiveGoals()) do
		if goal.autoscript_ah and goal:IsVisible() and not goal:IsComplete() then
			self:RunAHAutoscript(goal)
			ran = true
			break
		end
	end
	if not ran then
		self:ClearAHStatus()
	end
	return ran
end

function Automation:ResetAutoscriptFlagsIfNeeded()
	local stepNum = QC.CurrentStepNum
	if self._autoscriptStep == stepNum then return end
	self._autoscriptStep = stepNum
	for _, goal in ipairs(self:IterActiveGoals()) do
		goal._autoscriptRan = nil
	end
end

function Automation:OnAuctionHouseOpen()
	self:ResetAutoscriptFlagsIfNeeded()
	self:RunContextAutoscriptLua("auction")
	self:ProcessAHAutoscripts()
end

function Automation:OnAuctionHouseClose()
	if QC.ATWereEnabled ~= nil and QC.db and QC.db.profile then
		QC.db.profile.auction_enable = QC.ATWereEnabled
		QC.ATWereEnabled = nil
	end
	self:ClearAHStatus()
end

function Automation:MERCHANT_SHOW()
	self:ResetAutoscriptFlagsIfNeeded()
	self:RunContextAutoscriptLua("merchant")
end

function Automation:Enable()
	if self._enabled then return end
	self._enabled = true
	local function reg(ev, fn)
		if QC.SafeRegisterEvent then
			QC.SafeRegisterEvent(ev, function(...) fn(self, ...) end)
		else
			QC:RegisterEvent(ev, function(...) fn(self, ...) end)
		end
	end
	reg("QUEST_LOG_UPDATE", Automation.QUEST_LOG_UPDATE)
	reg("BAG_UPDATE_DELAYED", Automation.BAG_UPDATE_DELAYED)
	reg("MERCHANT_SHOW", Automation.MERCHANT_SHOW)

	if C_AuctionHouse and C_AuctionHouse.SendSearchQuery then
		reg("AUCTION_HOUSE_SHOW", Automation.OnAuctionHouseOpen)
		reg("AUCTION_HOUSE_CLOSED", Automation.OnAuctionHouseClose)
	else
		reg("AUCTION_FRAME_SHOW", Automation.OnAuctionHouseOpen)
		reg("AUCTION_FRAME_CLOSED", Automation.OnAuctionHouseClose)
	end
end

function Automation:Disable()
	if not self._enabled then return end
	self._enabled = false
end
