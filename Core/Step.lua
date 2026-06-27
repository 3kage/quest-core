-- QuestCore: Step prototype (completion, stickies, routes).

local addonName, QuestCore = ...
local QC = QuestCore

local StepProto = {}
local StepProto_mt = { __index = StepProto }
QC.StepProto = StepProto
QC.StepProto_mt = StepProto_mt

function StepProto:IsVisible()
	if self.condition_visible then
		local ok, res = pcall(self.condition_visible)
		if ok and not res then return false end
	end
	return true
end

function StepProto:IsComplete()
	if not self:IsVisible() then return true end
	if self.manualdone == true then return true end
	if not self.goals then return false end
	-- If there are no visible goals on the step, it is completely hidden and should be skipped.
	local anyvisible = false
	for _, goal in ipairs(self.goals) do
		if goal:IsVisible() then
			anyvisible = true
			break
		end
	end
	if not anyvisible then return true end

	-- confirm goal clicked -> instant step complete
	for _, goal in ipairs(self.goals) do
		if goal.action == "confirm" and goal:IsVisible() and goal.confirmed then
			return true
		end
	end

	-- |override: any completed override goal completes the step
	for _, goal in ipairs(self.goals) do
		if goal.override and goal:IsVisible() and goal:IsComplete() then
			return true
		end
	end

	-- |or N: need N completed OR-goals (guide-compatible)
	local orneeded, orcount = 0, 0
	for _, goal in ipairs(self.goals) do
		if goal:IsVisible() and goal.orlogic then
			orneeded = goal.orlogic
			if goal:IsComplete() then orcount = orcount + 1 end
		end
	end
	local orcomplete = orneeded > 0 and orcount >= orneeded

	local anycompleteable = false
	for _, goal in ipairs(self.goals) do
		if not goal:IsVisible() or goal.optional then
		elseif goal.orlogic then
			anycompleteable = true
			if not orcomplete then return false end
		elseif goal:IsCompleteable() then
			anycompleteable = true
			if not goal:IsComplete() then return false end
		end
	end

	if not anycompleteable then return self.manualdone == true end
	return true
end

function StepProto:GetNextStepNum()
	local nxt = self.next
	for _, goal in ipairs(self.goals) do
		if goal.next and goal:IsVisible() then nxt = goal.next break end
	end
	if not nxt then return self.num + 1 end
	-- Cross-guide jump: title contains backslash.
	if type(nxt) == "string" and nxt:find("\\") then
		return "guide:" .. nxt
	end
	return self.parentGuide:ResolveJump(nxt, self.num)
end

function StepProto:CheckVisitedGotos()
	for _, goal in ipairs(self.goals) do
		if goal.action == "goto" and goal:IsVisible() and not goal.notravel then
			goal:IsComplete()
		end
	end
end

function StepProto:OnEnter()
	self.manualdone = false
end

function StepProto:OnLeave() end

local function GoalFromCoord(pt, extra)
	local g = {
		map = pt.map, x = pt.x, y = pt.y,
		mapname = pt.mapname, mapfloor = pt.mapfloor,
		action = "goto",
	}
	if extra then for k, v in pairs(extra) do g[k] = v end end
	return setmetatable(g, QC.GoalProto_mt)
end

local NAV_COORD_ACTIONS = {
	vendor = true, trainer = true, goto = true, accept = true, turnin = true,
}

local INTERACT_ACTIONS = {
	talk = true, accept = true, turnin = true,
}

-- Goals that carry coords for the arrow (includes hidden vendor/trainer lines on same step).
local function GoalHasNavCoords(goal)
	if goal.notravel or goal.noway then return false end
	if not (goal.x and goal.y) then return false end
	if not goal:GetMapId() then return false end
	if goal:IsVisible() or goal.action == "mapmarker" then return true end
	return NAV_COORD_ACTIONS[goal.action] == true
end

local function FindNavCoordOnStep(step, refGoal)
	if not step or not step.goals then return nil end
	local refId = refGoal and (refGoal.npcid or refGoal.npcID)
	local fallback
	for _, goal in ipairs(step.goals) do
		if GoalHasNavCoords(goal) then
			if refId and (goal.npcid == refId or goal.npcID == refId) then
				return goal
			end
			if NAV_COORD_ACTIONS[goal.action] and not fallback then
				fallback = goal
			end
		end
	end
	return fallback
end

-- Build a step chain from inline gotos + final destination.
function StepProto:GetImprovisedWaypathGoals()
	local pts = {}
	for _, goal in ipairs(self.goals or {}) do
		if not goal:IsVisible() or goal.hidden or goal.action == "mapmarker" then
		elseif goal.x and goal.y and goal:GetMapId() then
			if goal:IsInlineTravel() then
				pts[#pts + 1] = goal
			else
				if GoalHasNavCoords(goal) then
					pts[#pts + 1] = goal
				else
					local nav = FindNavCoordOnStep(self, goal)
					if nav then pts[#pts + 1] = nav end
				end
				break
			end
		end
	end
	return pts
end

-- Full trail chain for minimap/world lines (keeps passed inline gotos until destination).
function StepProto:GetTrailRouteGoals()
	if self.waypath and self.waypath.coords and #self.waypath.coords > 0 then
		local destIdx = #self.waypath.coords
		for i, pt in ipairs(self.waypath.coords) do
			local g = GoalFromCoord(pt, { pathIdx = i })
			if not g:IsComplete() then
				destIdx = i
				break
			end
		end
		local pts = {}
		for i = 1, destIdx do
			pts[#pts + 1] = GoalFromCoord(self.waypath.coords[i], { pathIdx = i })
		end
		if #pts > 0 then return pts end
	end
	local improvised = self:GetImprovisedWaypathGoals()
	if #improvised > 0 then
		local destIdx = #improvised
		for i, g in ipairs(improvised) do
			if not g:IsInlineTravel() and not g:IsComplete() then
				destIdx = i
				break
			end
		end
		local pts = {}
		for i = 1, destIdx do
			pts[#pts + 1] = improvised[i]
		end
		return pts
	end
	return self:GetWaypointGoals()
end

-- Incomplete route goals for pins / arrow hops (respects |notravel).
function StepProto:GetRoutePoints()
	if self.waypath and self.waypath.coords and #self.waypath.coords > 0 then
		local pts = {}
		for i, pt in ipairs(self.waypath.coords) do
			local g = GoalFromCoord(pt, { pathIdx = i })
			if not g:IsComplete() then
				pts[#pts + 1] = g
			end
		end
		if #pts > 0 then return pts end
	end
	local improvised = self:GetImprovisedWaypathGoals()
	if #improvised > 0 then
		local pts = {}
		for _, g in ipairs(improvised) do
			if not g:IsComplete() then pts[#pts + 1] = g end
		end
		if #pts > 0 then return pts end
	end
	return self:GetWaypointGoals()
end

local function StepNeedsNpcWaypoint(step)
	for _, goal in ipairs(step.goals or {}) do
		if goal:IsVisible() and not goal:IsComplete() then
			if INTERACT_ACTIONS[goal.action] and not (goal.x and goal.y) then
				return true
			end
		end
	end
	return false
end

-- Incomplete coordinate goals on this step (route pins + trail).
function StepProto:GetWaypointGoals()
	local pts = {}
	for _, goal in ipairs(self.goals) do
		if GoalHasNavCoords(goal) and not goal:IsComplete() then
			pts[#pts + 1] = goal
		end
	end
	return pts
end

function StepProto:HasWaypointGoals()
	return #self:GetWaypointGoals() > 0
end

local function StepNeedsAreaWaypoint(step)
	for _, goal in ipairs(step.goals or {}) do
		if goal:IsVisible() and not goal:IsComplete() then
			local a = goal.action
			if (a == "kill" or a == "collect" or a == "get" or a == "grind") and not (goal.x and goal.y) then
				return true
			end
		end
	end
	return false
end

-- Active arrow target: first incomplete visible goal with coords.
function StepProto:GetWaypointGoal()
	if self.waypath and self.waypath.coords then
		for _, pt in ipairs(self.waypath.coords) do
			local g = GoalFromCoord(pt)
			if not g:IsComplete() then return g end
		end
	end

	for _, goal in ipairs(self.goals or {}) do
		if not goal:IsVisible() or goal:IsComplete() then
		elseif goal.notravel or goal.noway or goal.force_noway then
		elseif goal.action == "mapmarker" then
		elseif goal.x and goal.y and goal:GetMapId() then
			return goal
		elseif INTERACT_ACTIONS[goal.action] then
			local nav = FindNavCoordOnStep(self, goal)
			if nav then
				nav._waypointSourceGoal = goal
				return nav
			end
		end
	end

	if StepNeedsAreaWaypoint(self) then
		for _, goal in ipairs(self.goals or {}) do
			if goal:IsVisible() and not goal:IsComplete() and goal.action == "mapmarker" then
				return goal
			end
		end
	end

	for _, goal in ipairs(QC:GetActiveStickyGoals()) do
		if not goal.notravel and not goal.noway and goal:IsVisible() and not goal:IsComplete() then
			local map = goal:GetMapId()
			if map and goal.x and goal.y then
				return goal
			end
		end
	end
	return nil
end

function StepProto:GetFallbackWaypoint()
	if not (C_QuestLog and C_QuestLog.GetNextWaypoint) then return nil end
	for _, goal in ipairs(self.goals) do
		local qid = QC.QuestDB and QC.QuestDB.ResolveGoalQuestID and QC.QuestDB:ResolveGoalQuestID(goal) or goal.questid
		if qid and goal:IsVisible() and QC.QuestDB:IsQuestInLog(qid) then
			local map, x, y = C_QuestLog.GetNextWaypoint(qid)
			if map and x and y then
				return setmetatable({
					map = map, x = x, y = y,
					text = goal:GetText(),
					action = "goto",
					fallback = true,
				}, QC.GoalProto_mt)
			end
		end
	end
	return nil
end
