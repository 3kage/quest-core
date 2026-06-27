-- QuestCore: cross-flavor travel engine (taxi, hearth, multi-hop routing via TravelGraph).
-- Coordinates and distances use HereBeDragons-2.0; API calls route through QC.Compat.

local addonName, QuestCore = ...
local QC = QuestCore

local Travel = {}
QC.Travel = Travel

local HBD = QC.HBD
local Compat = QC.Compat
local Client = Compat and Compat.Client

----------------------------------------------------------------------
-- Flavor helpers
----------------------------------------------------------------------

function Travel:IsRetail()
	return Client and Client.isRetail
end

function Travel:UsePortals()
	if not Client then return true end
	return Client.AllowsCapitalPortals()
end

function Travel:PrefersTaxi()
	if not Client then return false end
	return Client.PrefersFlightMasters() or Client.isClassic
end

function Travel:AllowsHearth()
	return GetBindLocation ~= nil
end

----------------------------------------------------------------------
-- Player / goal positions (HereBeDragons)
----------------------------------------------------------------------

function Travel:GetPlayerPosition()
	if HBD and HBD.GetPlayerZonePosition then
		local x, y, map = HBD:GetPlayerZonePosition(true)
		if x and y and map then return map, x, y end
	end
	local mapAPI = Compat and Compat.Map
	if mapAPI and mapAPI.GetBestMapForUnit then
		local map = mapAPI.GetBestMapForUnit("player")
		if map then
			local x, y = mapAPI.GetPlayerMapPosition(map, "player")
			if x and y then return map, x, y end
		end
	end
	return nil
end

local function GoalWorldPos()
	local goal = QC.Waypoint and QC.Waypoint.manual
	if not goal then
		local step = QC.CurrentStep
		goal = step and step:GetWaypointGoal()
	end
	if not goal then return nil end
	local map = goal.GetMapId and goal:GetMapId() or goal.map
	if not (map and goal.x and goal.y) then return nil end
	if not HBD then return map, goal.x, goal.y end
	local wx, wy, inst = HBD:GetWorldCoordinatesFromZone(goal.x, goal.y, map)
	return wx, wy, inst, map, goal.x, goal.y
end

----------------------------------------------------------------------
-- Route calculation (delegates to TravelGraph)
----------------------------------------------------------------------

function Travel:GetRouteToGoal(goal)
	local TG = QC.TravelGraph
	if not TG or not goal then return nil end
	if goal.notravel or goal.noway then return nil end
	local step = QC.CurrentStep
	if step and step.notravel then return nil end

	local map = goal.GetMapId and goal:GetMapId() or goal.map
	if not (map and goal.x and goal.y) then return nil end
	if QC.EnsureMapData then QC.EnsureMapData(map) end

	TG.allowPortals = self:UsePortals()
	TG.preferTaxi = self:PrefersTaxi()
	return TG:GetRoute(map, goal.x, goal.y)
end

-- Simulated start position (stress tests, editor previews). Skips hearth by default.
function Travel:GetRouteBetween(fromMap, fx, fy, toMap, tx, ty, opts)
	local TG = QC.TravelGraph
	if not TG or not TG.GetRouteFrom then return nil end
	opts = opts or {}
	if opts.noHearth == nil then opts.noHearth = true end
	if QC.EnsureMapData then
		QC.EnsureMapData(fromMap)
		QC.EnsureMapData(toMap)
	end
	TG.allowPortals = self:UsePortals()
	TG.preferTaxi = self:PrefersTaxi()
	return TG:GetRouteFrom(fromMap, fx, fy, toMap, tx, ty, opts)
end

function Travel:ClearCache()
	local TG = QC.TravelGraph
	if not TG then return end
	if TG.CancelRouteSearch then TG:CancelRouteSearch() end
	if TG.ClearRouteCache then TG:ClearRouteCache() end
	if TG.ClearRoute then TG:ClearRoute() end
end

function Travel:RouteToCurrentGoal(silent)
	local step = QC.CurrentStep
	if not step then return false end
	local goal = step:GetWaypointGoal()
	if not goal then return false end
	local TG = QC.TravelGraph
	if TG and TG.ApplyRoute then
		TG.allowPortals = self:UsePortals()
		return TG:ApplyRoute(goal, silent) and true or false
	end
	return false
end

function Travel:GetActiveHops()
	local TG = QC.TravelGraph
	if TG and TG.activeRoute and TG.activeRoute.hops then
		return TG.activeRoute.hops, TG.activeRoute.hopIdx or 1
	end
	return nil
end

function Travel:DistanceToGoal(goal)
	if not (HBD and goal) then return nil end
	local map = goal.GetMapId and goal:GetMapId() or goal.map
	if not (map and goal.x and goal.y) then return nil end
	local pmx, pmy, playerMap = HBD:GetPlayerZonePosition(true)
	if not (pmx and playerMap) then return nil end
	return HBD:GetZoneDistance(playerMap, pmx, pmy, map, goal.x, goal.y)
end

----------------------------------------------------------------------
-- Flight master assist (Classic: primary long-range travel)
----------------------------------------------------------------------

function Travel:FindBestNode()
	local gx, gy, gInst = GoalWorldPos()
	if not gx then return nil end

	if not (NumTaxiNodes and TaxiNodeGetType and TaxiNodePosition and GetTaxiMapID) then
		return nil
	end

	local best, bestScore
	local n = NumTaxiNodes() or 0
	local mapID = GetTaxiMapID()
	local maxCost = 1
	for i = 1, n do
		local c = TaxiNodeCost and TaxiNodeCost(i) or 0
		if c and c > maxCost then maxCost = c end
	end

	for i = 1, n do
		local ttype = TaxiNodeGetType(i)
		if ttype == "REACHABLE" and mapID then
			local px, py = TaxiNodePosition(i)
			if px and HBD then
				local wx, wy, wInst = HBD:GetWorldCoordinatesFromZone(px, py, mapID)
				if wx and wInst == gInst then
					local dist = ((wx - gx) ^ 2 + (wy - gy) ^ 2) ^ 0.5
					local cost = TaxiNodeCost and TaxiNodeCost(i) or 0
					local score = dist + (cost / maxCost) * (dist * 0.05)
					if self:PrefersTaxi() then score = score * 0.85 end
					if not bestScore or score < bestScore then
						bestScore, best = score, i
					end
				end
			end
		end
	end
	return best
end

function Travel:OnTaxiOpen()
	if QC.TravelGraph then QC.TravelGraph:Scan() end
	if not QC.db.profile.general.autoZoneGuide and not QC.CurrentGuide then return end
	local node = self:FindBestNode()
	if not node then return end
	self._suggested = node

	if QC.db.profile.general.autoTakeTaxi and TakeTaxiNode then
		if QC.ScheduleTimer then
			QC:ScheduleTimer(function()
				if TaxiNodeGetType and TaxiNodeGetType(node) == "REACHABLE" then
					pcall(TakeTaxiNode, node)
				end
			end, 0.05)
		else
			pcall(TakeTaxiNode, node)
		end
		return
	end

	QC:Notify((QC.L and QC.L["Nearest flight point highlighted"]) or "Nearest flight point highlighted",
		{ 0.4, 0.85, 1.0 })
end

function Travel:TakeSuggested()
	if self._suggested and TakeTaxiNode then
		pcall(TakeTaxiNode, self._suggested)
	end
end

----------------------------------------------------------------------
-- Hearthstone hint (Classic + Retail)
----------------------------------------------------------------------

function Travel:GetHearthDestination()
	if not self:AllowsHearth() then return nil end
	local bind = GetBindLocation()
	if not bind then return nil end
	local TS = QC.TravelSeed
	if TS and TS.ResolveInn then
		local map, x, y, name = TS:ResolveInn(bind)
		if map then return { map = map, x = x, y = y, name = name or bind } end
	end
	if QC.ResolveMapToken then
		local map = QC.ResolveMapToken(bind)
		if map then return { map = map, x = 0.5, y = 0.5, name = bind } end
	end
	return nil
end

----------------------------------------------------------------------
-- Lifecycle
----------------------------------------------------------------------

function Travel:Enable()
	if self._enabled then return end
	self._enabled = true
	QC:RegisterEvent("TAXIMAP_OPENED", function() Travel:OnTaxiOpen() end)
	if QC.TravelGraph and QC.TravelGraph.Enable then
		QC.TravelGraph:Enable()
	end
end

function Travel:Disable()
	if not self._enabled then return end
	self._enabled = false
	QC:UnregisterEvent("TAXIMAP_OPENED")
end
