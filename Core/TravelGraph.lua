-- QuestCore: self-learning multi-modal travel graph and router.
-- Combines flight points, portals/teleports and the hearthstone into one graph
-- and finds the cheapest path (Dijkstra) - the same idea as QuestCore LibRover,
-- but the node data is learned from play and stored in SavedVariables.

local addonName, QuestCore = ...
local QC = QuestCore

local TravelGraph = {}
QC.TravelGraph = TravelGraph

local HBD = QC.HBD

-- Movement cost weights (relative "time" units).
local WALK_PER_YARD = 1.0
local FLY_PER_YARD   = 0.30   -- flying is faster than walking
local FLY_BOARD      = 200    -- fixed cost to reach/board a flight master
local PORTAL_COST    = 60     -- portals/teleports are near-instant
local HEARTH_COST    = 120    -- hearthstone (instant, but limited)

local WHISTLE_COST   = 180    -- Flight Master's Whistle
local WHISTLE_ITEM   = 141605

local MAX_ROUTE_NODES = 400     -- cap Dijkstra frontier
local MAX_ROUTE_MS    = 40      -- sync abort (stress test uses STRESS_ROUTE_MS)
local STRESS_ROUTE_NODES = 2500
local STRESS_ROUTE_MS    = 200
local ROUTE_ITER_BATCH  = 48    -- A* iterations between yield / timeout checks
local ROUTE_FRAME_MS    = 10    -- max routing work per game frame (async)
local ASTAR_HEURISTIC_SCALE = 0.35  -- portals beat walk; keep h optimistic
local START_WALK_CAP  = 96      -- max walk targets from player start
local START_SNAP_YARDS = 600    -- snap START onto a graph node this close
local START_SAME_MAP_YARDS = 12000
local HUB_WALK_YARDS  = 2000    -- same-map hub links (portal room -> zeppelin)

-- Live route recalc when the player drifts off the planned path (arrow OnUpdate).
local ROUTE_RECALC_YARDS    = 45   -- yards farther from best approach to current hop
local ROUTE_RECALC_COOLDOWN = 4.0  -- seconds between automatic recomputes

local KIND_LABEL = {
	fly = "Fly from", place = "Travel via", portal = "Take portal",
	hearth = "Hearthstone to", goal = "Walk to", item = "Use teleport",
}

local function store()
	local g = QC.db.global
	g.nodes = g.nodes or {}   -- [id] = { map, x, y, name, kind="fly"|"place" }
	g.edges = g.edges or {}   -- [fromID] = { [toID] = cost }
	g._seq = g._seq or 0
	return g
end

-- Runtime seed graph parsed from the bundled manual database (Core/TravelSeed).
-- Kept out of SavedVariables so it can be edited/extended in the data file.
TravelGraph.seed = { nodes = {}, edges = {} }

-- Merge learned (saved) + seed (bundled) graphs into one node/edge view.
function TravelGraph:Merged()
	local g = store()
	local nodes, edges = {}, {}
	for id, n in pairs(g.nodes) do nodes[id] = n end
	for id, n in pairs(self.seed.nodes) do nodes[id] = n end
	for id, e in pairs(g.edges) do
		local t = {}
		for v, c in pairs(e) do t[v] = c end
		edges[id] = t
	end
	for id, e in pairs(self.seed.edges) do
		edges[id] = edges[id] or {}
		for v, c in pairs(e) do
			if not edges[id][v] or c < edges[id][v] then edges[id][v] = c end
		end
	end
	return nodes, edges
end

local function newID(prefix)
	local g = store()
	g._seq = g._seq + 1
	return prefix .. g._seq
end

----------------------------------------------------------------------
-- Geometry helpers
----------------------------------------------------------------------

-- Yards between two stored positions on the same continent, else nil.
local function NormMap(map)
	if not map then return map end
	local client = QC.Compat and QC.Compat.Client
	if client and client.isClassicEra and QC.NormalizeMapID then
		return QC.NormalizeMapID(map)
	end
	if client and client.isClassic then return map end
	if QC.CanonicalMapID then return QC.CanonicalMapID(map) end
	return map
end

local function Yards(aMap, ax, ay, bMap, bx, by)
	aMap, bMap = NormMap(aMap), NormMap(bMap)
	if not (aMap and bMap and HBD) then return nil end
	if QC.EnsureMapData then
		QC.EnsureMapData(aMap)
		QC.EnsureMapData(bMap)
	end
	if aMap == bMap then
		local md = HBD.mapData and HBD.mapData[aMap]
		local w = (md and md[1]) or 1000
		local h = (md and md[2]) or 1000
		local dx, dy = (bx - ax) * w, (by - ay) * h
		return (dx * dx + dy * dy) ^ 0.5
	end
	local dist = HBD:GetZoneDistance(aMap, ax, ay, bMap, bx, by)
	if dist then return dist end
	if QC.TranslateMapCoords then
		local tx, ty = QC.TranslateMapCoords(bx, by, bMap, aMap)
		if tx and ty then return Yards(aMap, ax, ay, aMap, tx, ty) end
		local sx, sy = QC.TranslateMapCoords(ax, ay, aMap, bMap)
		if sx and sy then return Yards(bMap, sx, sy, bMap, bx, by) end
	end
	return nil
end

-- Nodes that participate in routing (seed/learned graph + teleports, not raw taxi DB).
function TravelGraph:BuildRouteSet(nodes)
	local set, n = {}, 0
	local function add(id)
		if id and nodes[id] and not set[id] then
			set[id] = true
			n = n + 1
		end
	end
	for id in pairs(self.seed.edges or {}) do add(id) end
	for _, e in pairs(self.seed.edges or {}) do
		for to in pairs(e) do add(to) end
	end
	for id in pairs(store().edges or {}) do add(id) end
	for _, e in pairs(store().edges or {}) do
		for to in pairs(e) do add(to) end
	end
	for id, node in pairs(store().nodes or {}) do add(id) end
	for _, tp in ipairs(self.seed.teleports or {}) do add(tp.node) end
	local byMap = {}
	for id in pairs(set) do
		local n = nodes[id]
		if n and n.map then
			local m = NormMap(n.map)
			byMap[m] = byMap[m] or {}
			byMap[m][#byMap[m] + 1] = id
		end
	end
	self._routeSetByMap = byMap
	self._routeSet = set
	self._routeSetCount = n
	return set
end

-- Nearest routable nodes from a position (bounded, for START / HEARTH).
local function NearestNodes(set, nodes, map, x, y, limit, maxDist)
	map = NormMap(map)
	local list = {}
	for id in pairs(set) do
		local node = nodes[id]
		if node then
			local d = Yards(map, x, y, node.map, node.x, node.y)
			if d and (not maxDist or d <= maxDist) then
				list[#list + 1] = { id = id, d = d }
			end
		end
	end
	table.sort(list, function(a, b) return a.d < b.d end)
	if #list > limit then
		for i = limit + 1, #list do list[i] = nil end
	end
	return list
end

local function SameMapNodes(set, nodes, map, x, y, maxDist)
	map = NormMap(map)
	local list = {}
	for id in pairs(set) do
		local node = nodes[id]
		if node and NormMap(node.map) == map then
			local d = Yards(map, x, y, node.map, node.x, node.y)
			if d and d <= maxDist then
				list[#list + 1] = { id = id, d = d }
			end
		end
	end
	return list
end

local function PlayerFacLetter()
	return (UnitFactionGroup("player") == "Horde") and "H" or "A"
end

local function EdgeAllowed(seed, fromId, toId, opts)
	if opts and opts.ignoreFaction then return true end
	local ef = seed and seed.edgeFaction
	if not ef then return true end
	local f = ef[fromId .. ">" .. toId]
	if not f or f == "B" then return true end
	return f == PlayerFacLetter()
end

-- Existing node within `thresh` yards of a position, or nil (learned or seed).
local function NodeNear(map, x, y, thresh)
	map = NormMap(map)
	local bestId, bestD
	local function scan(tbl)
		for id, n in pairs(tbl) do
			local d = Yards(map, x, y, n.map, n.x, n.y)
			if d and d <= thresh and (not bestD or d < bestD) then
				bestD, bestId = d, id
			end
		end
	end
	scan(store().nodes)
	scan(TravelGraph.seed.nodes)
	return bestId
end

local function AddEdge(from, to, cost)
	local g = store()
	g.edges[from] = g.edges[from] or {}
	if not g.edges[from][to] or cost < g.edges[from][to] then
		g.edges[from][to] = cost
	end
end

----------------------------------------------------------------------
-- Learning: flight points
----------------------------------------------------------------------

function TravelGraph:Scan()
	if not (C_TaxiMap and C_TaxiMap.GetAllTaxiNodes) then return end
	local taxiMap = (GetTaxiMapID and GetTaxiMapID())
	if not taxiMap or taxiMap == 0 then taxiMap = C_Map and C_Map.GetBestMapForUnit("player") end
	if not taxiMap then return end

	local nodes = C_TaxiMap.GetAllTaxiNodes(taxiMap)
	if not nodes or #nodes == 0 then return end

	local g = store()
	local FPS = Enum and Enum.FlightPathState
	local current, reachable = nil, {}
	self.knownTaxiByName = self.knownTaxiByName or {}

	for _, n in ipairs(nodes) do
		if n.nodeID and n.position then
			local id = "fly:" .. n.nodeID
			g.nodes[id] = { map = taxiMap, x = n.position.x, y = n.position.y, name = n.name, kind = "fly" }
			if n.name then
				self.knownTaxiByName[n.name:lower()] = true
			end
			if FPS then
				if n.state == FPS.Current then current = id
				elseif n.state == FPS.Reachable then reachable[#reachable + 1] = id end
			end
		end
	end

	if current then
		local cn = g.nodes[current]
		for _, to in ipairs(reachable) do
			local tn = g.nodes[to]
			local d = Yards(cn.map, cn.x, cn.y, tn.map, tn.x, tn.y) or 3000
			local cost = FLY_BOARD + d * FLY_PER_YARD
			AddEdge(current, to, cost)
			AddEdge(to, current, cost)
		end
	end
end

----------------------------------------------------------------------
-- Learning: portals / teleports (detected on continent changes off-taxi)
----------------------------------------------------------------------

local function CurrentPos()
	local map = C_Map and C_Map.GetBestMapForUnit("player")
	if not map then return nil end
	local pos = C_Map.GetPlayerMapPosition(map, "player")
	if not pos then return nil end
	local x, y = pos:GetXY()
	if not x then return nil end
	local _, _, inst = HBD:GetWorldCoordinatesFromZone(x, y, map)
	local info = C_Map.GetMapInfo(map)
	return { map = map, x = x, y = y, inst = inst, name = info and info.name }
end

-- Ensure there is a node at the given position (reuse a nearby one), return id.
local function EnsureNode(pos, kind, name)
	local existing = NodeNear(pos.map, pos.x, pos.y, 80)
	if existing then return existing end
	local g = store()
	local id = newID("place:")
	g.nodes[id] = { map = pos.map, x = pos.x, y = pos.y, name = name or pos.name, kind = kind or "place" }
	return id
end

function TravelGraph:OnWorldChanged()
	local now = CurrentPos()
	local last = self._lastPos
	self._lastPos = now
	if not (now and last) then return end
	if UnitOnTaxi and UnitOnTaxi("player") then return end   -- flights handled elsewhere

	-- A change of continent (instance) without a taxi implies a portal,
	-- hearthstone or teleport. Record it as a directed travel edge.
	if last.inst and now.inst and last.inst ~= now.inst then
		local g = store()
		local fromID = EnsureNode(last, "place", last.name)
		local toID = EnsureNode(now, "place", now.name)
		local isNew = not (g.edges[fromID] and g.edges[fromID][toID])
		AddEdge(fromID, toID, PORTAL_COST)
		if isNew then
			QC:Print(("|cff33d6ffQuestCore|r learned a travel link: %s \226\134\146 %s"):format(
				last.name or "?", now.name or "?"))
		end
	end
end

----------------------------------------------------------------------
-- Hearthstone as a virtual edge from anywhere to your home
----------------------------------------------------------------------

local function HearthHome()
	if not GetBindLocation then return nil end
	local bind = GetBindLocation()
	if not bind then return nil end
	local TS = QC.TravelSeed
	if TS and TS.ResolveInn then
		local map, x, y, name = TS:ResolveInn(bind)
		if map then return { map = map, x = x, y = y, name = name or bind } end
	end
	local map = QC.ResolveMapToken and QC.ResolveMapToken(bind)
	if not map then return nil end
	return { map = map, x = 0.5, y = 0.5, name = bind }
end

----------------------------------------------------------------------
-- Routing (Dijkstra over flight + portal edges, with virtual start/goal)
----------------------------------------------------------------------

local START, GOAL, HEARTH = "__start", "__goal", "__hearth"

function TravelGraph:EnsureSeed()
	local TS = QC.TravelSeed
	if not (TS and TS.Load) then return end
	if TS._graphReady then return end
	if QC.ClearMapTokenCache then QC.ClearMapTokenCache() end
	TS:Load()
	self:ClearRouteCache()
end

function TravelGraph:GetRouteFrom(fromMap, fx, fy, goalMap, gx, gy, opts)
	self:EnsureSeed()
	fromMap = NormMap(fromMap)
	goalMap = NormMap(goalMap)
	opts = opts or {}
	local sp = { map = fromMap, x = fx, y = fy }
	if HBD and HBD.GetWorldCoordinatesFromZone then
		local _, _, inst = HBD:GetWorldCoordinatesFromZone(fx, fy, fromMap)
		sp.inst = inst
	end
	if C_Map and C_Map.GetMapInfo then
		local info = C_Map.GetMapInfo(fromMap)
		sp.name = info and info.name
	end
	opts.fromPos = sp
	return self:GetRoute(goalMap, gx, gy, opts)
end

function TravelGraph:ClearRouteCache()
	self._routeSet = nil
	self._routeSetCount = nil
	self._routeSetByMap = nil
end

-- Build routing context (graph snapshot + neighbour/heuristic closures).
function TravelGraph:_PrepareRouteContext(goalMap, gx, gy, opts)
	opts = opts or {}
	self:EnsureSeed()
	goalMap = NormMap(goalMap)
	local nodes, edges = self:Merged()
	local sp = opts.fromPos or CurrentPos()
	if not sp then return nil end
	if sp.map then sp.map = NormMap(sp.map) end

	local routeSet = self._routeSet or self:BuildRouteSet(nodes)
	local mapPeers = self._routeSetByMap or {}
	local hearth
	if not opts.noHearth then
		local TS = QC.TravelSeed
		local probe = TS and TS.ProbeHearth and TS:ProbeHearth()
		if probe and probe.ready then
			local home = HearthHome()
			if home then
				home.cost = probe.cost or HEARTH_COST
				hearth = home
			end
		end
	end
	local forceWalk = QC.CurrentStep and QC.CurrentStep.force_walk
	local maxMs = (opts.stressTest and STRESS_ROUTE_MS) or opts.routeMs or MAX_ROUTE_MS
	local maxNodes = (opts.stressTest and STRESS_ROUTE_NODES) or opts.routeNodes or MAX_ROUTE_NODES
	local asyncMode = opts.async and true or false
	local t0 = debugprofilestop and debugprofilestop() or 0
	local TG = self

	local allowedTeleports = {}
	local TS = QC.TravelSeed
	if TG.allowPortals ~= false and TS and TS.BuildTeleportSnapshot then
		allowedTeleports = TS:BuildTeleportSnapshot(TG.seed.teleports)
	end

	local function timedOut()
		if asyncMode then return false end
		if not debugprofilestop then return false end
		return (debugprofilestop() - t0) > maxMs
	end

	local function neighbours(u)
		local out = {}
		if u == START then
			local snap = NodeNear(sp.map, sp.x, sp.y, START_SNAP_YARDS)
			if snap then
				out[snap] = 0
			end
			for _, e in ipairs(SameMapNodes(routeSet, nodes, sp.map, sp.x, sp.y, START_SAME_MAP_YARDS)) do
				local w = e.d * WALK_PER_YARD
				if not out[e.id] or w < out[e.id] then out[e.id] = w end
			end
			local near = NearestNodes(routeSet, nodes, sp.map, sp.x, sp.y, START_WALK_CAP, 15000)
			for _, e in ipairs(near) do
				out[e.id] = e.d * WALK_PER_YARD
			end
			local dg = Yards(sp.map, sp.x, sp.y, goalMap, gx, gy)
			if dg then out[GOAL] = dg * WALK_PER_YARD end
			if hearth then out[HEARTH] = hearth.cost or HEARTH_COST end
			if TG.allowPortals ~= false then
				for _, tp in ipairs(TG.seed.teleports or {}) do
					if tp.node and allowedTeleports[tp.node] then
						local c = tp.cost or PORTAL_COST
						if not out[tp.node] or c < out[tp.node] then out[tp.node] = c end
					end
				end
			end
			local itemAPI = QC.Compat and QC.Compat.Item
			local whistleCount = itemAPI and itemAPI.GetCount(WHISTLE_ITEM) or 0
			if whistleCount > 0 and not forceWalk then
				local bestId, bestD
				for id in pairs(routeSet) do
					local n = nodes[id]
					if n and n.kind == "fly" then
						local d = Yards(sp.map, sp.x, sp.y, n.map, n.x, n.y)
						if d and (not bestD or d < bestD) then bestD, bestId = d, id end
					end
				end
				if bestId then out[bestId] = WHISTLE_COST end
			end
		elseif u == HEARTH and hearth then
			local near = NearestNodes(routeSet, nodes, hearth.map, hearth.x, hearth.y, START_WALK_CAP, 15000)
			for _, e in ipairs(near) do
				out[e.id] = e.d * WALK_PER_YARD
			end
			local dg = Yards(hearth.map, hearth.x, hearth.y, goalMap, gx, gy)
			if dg then out[GOAL] = dg * WALK_PER_YARD end
		elseif u ~= GOAL then
			local e = edges[u]
			if e then
				for v, c in pairs(e) do
					if EdgeAllowed(TG.seed, u, v, opts) then
						if not forceWalk or not (nodes[v] and nodes[v].kind == "fly") then
							out[v] = c
						end
					end
				end
			end
			local n = nodes[u]
			if n then
				local peers = mapPeers[NormMap(n.map)]
				if peers then
					for _, id2 in ipairs(peers) do
						if id2 ~= u then
							local n2 = nodes[id2]
							if n2 then
								local d = Yards(n.map, n.x, n.y, n2.map, n2.x, n2.y)
								if d and d <= HUB_WALK_YARDS then
									local w = d * WALK_PER_YARD
									if not out[id2] or w < out[id2] then out[id2] = w end
								end
							end
						end
					end
				end
				local dg = Yards(n.map, n.x, n.y, goalMap, gx, gy)
				if dg then out[GOAL] = dg * WALK_PER_YARD end
			end
		end
		return out
	end

	local function HeuristicFor(scale, u)
		if u == GOAL or scale == 0 then return 0 end
		if u == START then
			local d = Yards(sp.map, sp.x, sp.y, goalMap, gx, gy)
			return (d and d * WALK_PER_YARD * scale) or 0
		end
		if u == HEARTH and hearth then
			local d = Yards(hearth.map, hearth.x, hearth.y, goalMap, gx, gy)
			return (d and d * WALK_PER_YARD * scale) or 0
		end
		local n = nodes[u]
		if not n then return 0 end
		local d = Yards(n.map, n.x, n.y, goalMap, gx, gy)
		return (d and d * WALK_PER_YARD * scale) or 0
	end

	return {
		nodes = nodes,
		hearth = hearth,
		goalMap = goalMap,
		gx = gx,
		gy = gy,
		opts = opts,
		maxNodes = maxNodes,
		async = asyncMode,
		allowedTeleports = allowedTeleports,
		timedOut = timedOut,
		neighbours = neighbours,
		HeuristicFor = HeuristicFor,
	}
end

function TravelGraph:_BuildRouteFromSearch(ctx, dist, prev)
	if not (dist and dist[GOAL]) then return nil end

	local nodes = ctx.nodes
	local goalMap, gx, gy = ctx.goalMap, ctx.gx, ctx.gy
	local hearth = ctx.hearth

	local chain, cur = {}, GOAL
	while cur do table.insert(chain, 1, cur); cur = prev[cur] end

	local hops = {}
	local prevId
	for _, id in ipairs(chain) do
		if id == START then
			prevId = id
		elseif id == GOAL then
			hops[#hops + 1] = { kind = "goal", map = goalMap, x = gx, y = gy, name = QC.L["Destination"] or "Destination" }
		elseif id == HEARTH and hearth then
			hops[#hops + 1] = { kind = "hearth", map = hearth.map, x = hearth.x, y = hearth.y, name = hearth.name }
		else
			local n = nodes[id]
			if n then
				local hopName = (n.kind == "item" and n.label) or n.name
				if prevId and TravelGraph.seed.edgeLabels then
					local edgeTitle = TravelGraph.seed.edgeLabels[prevId .. ">" .. id]
					if edgeTitle and edgeTitle ~= "" then hopName = edgeTitle end
				end
				hops[#hops + 1] = {
					kind = n.kind,
					map = n.map, x = n.x, y = n.y,
					name = hopName,
				}
			end
		end
		if id ~= START then prevId = id end
	end
	return { hops = hops, cost = dist[GOAL] }
end

local function RouteSearchCoroutine(ctx)
	return coroutine.create(function()
		local neighbours = ctx.neighbours
		local HeuristicFor = ctx.HeuristicFor
		local maxNodes = ctx.maxNodes
		local timedOut = ctx.timedOut
		local async = ctx.async

		local dist, prev
		for attempt, hScale in ipairs({ ASTAR_HEURISTIC_SCALE, 0 }) do
			local gScore = { [START] = 0 }
			local fScore = { [START] = HeuristicFor(hScale, START) }
			local p, visited = {}, {}
			local iter = 0
			while true do
				iter = iter + 1
				if iter > maxNodes or timedOut() then break end
				if iter % ROUTE_ITER_BATCH == 0 and async then
					coroutine.yield("continue")
				end
				local u, uf
				for node, f in pairs(fScore) do
					if not visited[node] and (not uf or f < uf) then u, uf = node, f end
				end
				if not u or u == GOAL then break end
				visited[u] = true
				local ug = gScore[u] or 0
				for v, c in pairs(neighbours(u)) do
					if not visited[v] then
						local tentative = ug + c
						if not gScore[v] or tentative < gScore[v] then
							gScore[v] = tentative
							fScore[v] = tentative + HeuristicFor(hScale, v)
							p[v] = u
						end
					end
				end
			end
			if gScore[GOAL] then
				dist, prev = gScore, p
				break
			end
		end

		local route = TravelGraph:_BuildRouteFromSearch(ctx, dist, prev)
		return "done", route
	end)
end

function TravelGraph:DriveRouteCoroutine(co)
	while co and coroutine.status(co) == "suspended" do
		local ok, state, route = coroutine.resume(co)
		if not ok then return nil end
		if state == "done" then return route end
	end
	return nil
end

function TravelGraph:ComputeRouteSync(goalMap, gx, gy, opts)
	local ctx = self:_PrepareRouteContext(goalMap, gx, gy, opts)
	if not ctx then return nil end
	ctx.async = false
	return self:DriveRouteCoroutine(RouteSearchCoroutine(ctx))
end

function TravelGraph:CancelRouteSearch()
	self._routeJob = nil
	self._routePendingKey = nil
	if self._routeDriver then self._routeDriver:Hide() end
end

function TravelGraph:EnsureRouteDriver()
	if not self._routeDriver then
		local df = CreateFrame("Frame")
		df:Hide()
		df:SetScript("OnUpdate", function()
			TravelGraph:OnRouteDriverUpdate()
		end)
		self._routeDriver = df
	end
	self._routeDriver:Show()
end

function TravelGraph:OnRouteDriverUpdate()
	local job = self._routeJob
	if not job or not job.co then
		if self._routeDriver then self._routeDriver:Hide() end
		return
	end

	local budget = ROUTE_FRAME_MS
	local t0 = debugprofilestop and debugprofilestop() or 0

	while job.co and coroutine.status(job.co) == "suspended" do
		local ok, state, route = coroutine.resume(job.co)
		if not ok then
			self._routeJob = nil
			if self._routeDriver then self._routeDriver:Hide() end
			if job.callback then job.callback(nil) end
			return
		end
		if state == "done" then
			self._routeJob = nil
			if self._routeDriver then self._routeDriver:Hide() end
			if job.callback then job.callback(route) end
			return
		end
		if debugprofilestop and (debugprofilestop() - t0) > budget then
			return
		end
	end
end

function TravelGraph:RequestRoute(goalMap, gx, gy, opts, callback)
	self:CancelRouteSearch()
	opts = opts or {}
	opts.async = true
	local ctx = self:_PrepareRouteContext(goalMap, gx, gy, opts)
	if not ctx then
		if callback then callback(nil) end
		return false
	end
	local key = self:GoalKey(goalMap, gx, gy)
	self._routePendingKey = key
	self._routeJob = {
		co = RouteSearchCoroutine(ctx),
		key = key,
		callback = function(route)
			if self._routePendingKey ~= key then return end
			self._routePendingKey = nil
			if callback then callback(route) end
		end,
	}
	self:EnsureRouteDriver()
	return true
end

function TravelGraph:GetRoute(goalMap, gx, gy, opts)
	return self:ComputeRouteSync(goalMap, gx, gy, opts)
end

----------------------------------------------------------------------
-- Active multi-hop route (auto on step change, advance on arrival)
----------------------------------------------------------------------

function TravelGraph:GoalKey(map, x, y)
	if not (map and x and y) then return nil end
	return map .. ":" .. math.floor(x * 10000) .. ":" .. math.floor(y * 10000)
end

function TravelGraph:ClearRoute()
	self:CancelRouteSearch()
	self.activeRoute = nil
	QC.CurrentRoute = nil
end

local function HopGoal(hop, label)
	return setmetatable({
		map = hop.map, x = hop.x, y = hop.y,
		text = label or hop.name or "Travel",
		action = "goto",
		dist = hop.kind == "goal" and nil or (QC.db.profile.arrow.arrival or 8) * 2,
		travelHop = true,
	}, QC.GoalProto_mt)
end

function TravelGraph:PointArrowAtHop(idx)
	local route = self.activeRoute
	if not route then return end
	local hop = route.hops[idx]
	if not hop then return end
	local label = (QC.L and QC.L[KIND_LABEL[hop.kind] or ""]) or KIND_LABEL[hop.kind] or ""
	route.arrowGoal = HopGoal(hop, "|cff33d6ff" .. label .. ":|r " .. (hop.name or ""))
end

function TravelGraph:ApplyRoute(goal, silent, force)
	if not goal or goal.notravel or goal.noway then
		self:ClearRoute()
		return false
	end
	if QC.TravelSeed and not QC.TravelSeed._graphReady then
		self:EnsureSeed()
	end
	local routes = QC.db.profile.routes
	if not (routes and routes.autoRoute ~= false) then return false end

	local map = goal.GetMapId and goal:GetMapId() or goal.map
	if not (map and goal.x and goal.y) then return false end
	if QC.EnsureMapData then QC.EnsureMapData(map) end

	local sp = CurrentPos()
	if sp and sp.map and sp.x and sp.y then
		local walk = Yards(sp.map, sp.x, sp.y, map, goal.x, goal.y)
		if walk and walk < START_SAME_MAP_YARDS then
			self:ClearRoute()
			return false
		end
	end

	local key = self:GoalKey(map, goal.x, goal.y)
	if not force then
		if self.activeRoute and self.activeRoute.goalKey == key then return true end
		if self._routeJob and self._routeJob.key == key then return true end
	end

	if self.activeRoute and self.activeRoute.goalKey ~= key then
		self.activeRoute = nil
		QC.CurrentRoute = nil
	end

	local goalKey = key
	local finalGoal = goal
	local printRoute = not silent

	self:RequestRoute(map, goal.x, goal.y, {}, function(route)
		if not route or not route.hops or #route.hops == 0 then
			self.activeRoute = nil
			QC.CurrentRoute = nil
		else
			self.activeRoute = {
				hops = route.hops,
				hopIdx = 1,
				goalKey = goalKey,
				finalGoal = finalGoal,
				cost = route.cost,
				_minHopDist = nil,
			}
			QC.CurrentRoute = route.hops
			self:PointArrowAtHop(1)
			if printRoute and #route.hops > 1 then
				local parts = {}
				for _, h in ipairs(route.hops) do
					local label = (QC.L and QC.L[KIND_LABEL[h.kind] or ""]) or KIND_LABEL[h.kind] or ""
					parts[#parts + 1] = label .. " |cffffffff" .. (h.name or "?") .. "|r"
				end
				QC:Print("|cff33d6ffRoute:|r " .. table.concat(parts, " |cff888888\226\134\146|r "))
			end
		end
		if QC.Waypoint then QC.Waypoint:Update() end
	end)

	return true
end

function TravelGraph:GetArrowGoal(fallback)
	if self.activeRoute and self.activeRoute.arrowGoal then
		return self.activeRoute.arrowGoal
	end
	return fallback
end

function TravelGraph:GetTravelTrailPoints()
	local route = self.activeRoute
	if not route then return nil end
	local pts = {}
	for i = route.hopIdx or 1, #route.hops do
		local h = route.hops[i]
		if h.map and h.x and h.y then
			pts[#pts + 1] = { map = h.map, x = h.x, y = h.y }
		end
	end
	local fg = route.finalGoal
	if fg then
		local fm = fg.GetMapId and fg:GetMapId() or fg.map
		if fm and fg.x and fg.y then
			pts[#pts + 1] = { map = fm, x = fg.x, y = fg.y }
		end
	end
	return pts
end

function TravelGraph:CheckHopAdvance()
	local route = self.activeRoute
	if not route then return end
	local idx = route.hopIdx or 1
	local hop = route.hops[idx]
	if not hop or not (hop.map and hop.x and hop.y) then return end

	local pmx, pmy, playerMap = HBD:GetPlayerZonePosition(true)
	if not (playerMap and pmx) then return end

	local dist = HBD:GetZoneDistance(playerMap, pmx, pmy, hop.map, hop.x, hop.y)
	local thresh = (QC.db.profile.arrow.arrival or 8) * 2
	if not dist or dist > thresh then return end

	if idx < #route.hops then
		route.hopIdx = idx + 1
		route._minHopDist = nil
		self:PointArrowAtHop(route.hopIdx)
		if QC.Waypoint then QC.Waypoint:UpdateTrail() end
	elseif hop.kind ~= "goal" then
		self:ClearRoute()
		if QC.Waypoint then QC.Waypoint:Update() end
	end
end

-- Recompute travel route when the player wanders off-course (async A* via RequestRoute).
function TravelGraph:CheckRouteRecalc()
	local route = self.activeRoute
	if not route or not route.finalGoal then return end
	if self._routeJob then return end
	if QC.Waypoint and QC.Waypoint.manual then return end

	local routes = QC.db.profile.routes
	if not (routes and routes.autoRoute ~= false and routes.recalcRoute ~= false) then return end

	local now = GetTime()
	if self._routeRecalcUntil and now < self._routeRecalcUntil then return end

	local idx = route.hopIdx or 1
	local hop = route.hops and route.hops[idx]
	if not hop or not (hop.map and hop.x and hop.y) then return end

	-- Pure same-map walk to the step goal: arrow bearing is enough.
	if #route.hops == 1 and hop.kind == "goal" then return end

	local pmx, pmy, playerMap = HBD:GetPlayerZonePosition(true)
	if not (pmx and playerMap) then return end

	local dist = HBD:GetZoneDistance(playerMap, pmx, pmy, hop.map, hop.x, hop.y)
	if not dist then return end

	local best = route._minHopDist
	if not best or dist < best then
		route._minHopDist = dist
		return
	end

	local thresh = routes.recalcYards or ROUTE_RECALC_YARDS
	if dist <= best + thresh then return end

	self._routeRecalcUntil = now + (routes.recalcCooldown or ROUTE_RECALC_COOLDOWN)
	route._minHopDist = nil
	self:ApplyRoute(route.finalGoal, true, true)
end

function TravelGraph:OnStepChanged()
	self:ClearRoute()
	if self._routeTimer and QC.CancelTimer then
		QC:CancelTimer(self._routeTimer)
		self._routeTimer = nil
	end
	self._routeTimer = QC.ScheduleTimer and QC:ScheduleTimer(function()
		self._routeTimer = nil
		local step = QC.CurrentStep
		local goal = step and step:GetWaypointGoal()
		if goal then self:ApplyRoute(goal, true) end
		if QC.Waypoint then QC.Waypoint:Update() end
	end, 0.05)
end

function TravelGraph:Stats()
	local nodes, edges = self:Merged()
	local n, e = 0, 0
	for _ in pairs(nodes) do n = n + 1 end
	for _, t in pairs(edges) do for _ in pairs(t) do e = e + 1 end end
	return n, e
end

function TravelGraph:GetStressRouteMs()
	return STRESS_ROUTE_MS
end

function TravelGraph:RouteToCurrentGoal()
	local goal = (QC.Waypoint and QC.Waypoint.manual)
		or (QC.CurrentStep and QC.CurrentStep:GetWaypointGoal())
	if not goal then QC:Print("No active waypoint to route to.") return end
	local map = goal.GetMapId and goal:GetMapId() or goal.map
	if not (map and goal.x and goal.y) then QC:Print("Active waypoint has no coordinates.") return end

	if not self:ApplyRoute(goal, false) then
		local n = select(1, self:Stats())
		QC:Print(("No travel route yet (%d points learned). Open flight maps and use portals to learn."):format(n))
		return
	end
	if self._routeJob then
		local msg = (QC.L and QC.L["Computing route"]) or "Computing route..."
		QC:Print("|cff33d6ff" .. msg .. "|r")
	end
	if QC.Waypoint then QC.Waypoint:Update() end
end

function TravelGraph:OnHearthBound()
	self:ClearRouteCache()
	if QC.TravelSeed and QC.TravelSeed.OnHearthBound then
		QC.TravelSeed:OnHearthBound()
	end
	local route = self.activeRoute
	if route and route.finalGoal then
		self:ApplyRoute(route.finalGoal, true, true)
	elseif QC.Waypoint then
		QC.Waypoint:Update()
	end
end

function TravelGraph:Enable()
	if self._enabled then return end
	self._enabled = true
	self:EnsureSeed()

	-- Private frame: learn portal/teleport links on world changes without
	-- clobbering other AceEvent handlers.
	local f = CreateFrame("Frame")
	f:RegisterEvent("PLAYER_ENTERING_WORLD")
	f:RegisterEvent("ZONE_CHANGED")
	f:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	f:RegisterEvent("HEARTHSTONE_BOUND")
	f:RegisterEvent("TAXIMAP_OPENED")
	f:SetScript("OnEvent", function(_, event)
		if event == "HEARTHSTONE_BOUND" then
			TravelGraph:OnHearthBound()
			return
		end
		if event == "TAXIMAP_OPENED" then
			if QC.db and QC.db.char then QC.db.char.flightDataSeeded = true end
			if QC.TryToCompleteStep then QC:TryToCompleteStep() end
			return
		end
		TravelGraph:OnWorldChanged()
		if event == "PLAYER_ENTERING_WORLD" then
			QC:ScheduleTimer(function()
				TravelGraph._lastPos = CurrentPos()
				TravelGraph:Scan()
			end, 3.0)
		end
	end)
	self.frame = f

	-- Initial position snapshot (portal learning needs before/after).
	QC:ScheduleTimer(function()
		self._lastPos = CurrentPos()
		self:Scan()
	end, 3.0)

	if not _G.LibTaxi then
		_G.LibTaxi = {
			IsContinentKnown = function()
				if NumTaxiNodes and NumTaxiNodes() > 1 then return true end
				return QC.db and QC.db.char and QC.db.char.flightDataSeeded == true
			end,
			AnyTaxiKnown = function()
				return _G.LibTaxi.IsContinentKnown()
			end,
		}
	end
end
