-- QuestCore: isolated TravelGraph stress harness (/qc test travel).
-- Combinatorial hub matrix with loop protection (max hops) and timing.

local _, QC = ...
if type(QC.Test) ~= "table" then QC.Test = {} end

local MAX_HOPS = 50
local SLOW_MS = 50
local ROUTE_TIMEOUT_MS = 200  -- keep in sync with TravelGraph STRESS_ROUTE_MS

-- Blizzard chat color tokens
local C = {
	header  = "|cff33d6ff",
	ok      = "|cff00ff00",
	warn    = "|cffffaa00",
	err     = "|cffff0000",
	muted   = "|cff888888",
	white   = "|cffffffff",
	reset   = "|r",
}

local testNodes = {
	-- Coords MUST match Travel/data_transit.lua portal/zeppelin nodes (@anchors).
	{ zoneName = "Orgrimmar",                 floor = 1, x = 0.5252, y = 0.5315, name = "Orgrimmar Zeppelin (Kalimdor)" },
	{ zoneName = "Stormwind City",            floor = 0, x = 0.4635, y = 0.9023, name = "Stormwind (Eastern Kingdoms)" },
	{ zoneName = "Ironforge",                 floor = 0, x = 0.7693, y = 0.5125, name = "Ironforge (Deeprun Tram)" },
	{ zoneName = "Thunder Bluff",             floor = 0, x = 0.1528, y = 0.2570, name = "Thunder Bluff (Zeppelin)" },
	{ zoneName = "Shattrath City",            floor = 0, x = 0.5681, y = 0.4885, name = "Shattrath (Portal hub)" },
	{ zoneName = "Dalaran",                   floor = 1, x = 0.4010, y = 0.6281, name = "Dalaran (Northrend)" },
	{ zoneName = "Valdrakken",                floor = 0, x = 0.5955, y = 0.4146, name = "Valdrakken (Portal hub)" },
	-- Cross-continent bottlenecks
	{ zoneName = "Wetlands",                  floor = 0, x = 0.0637, y = 0.6224, name = "Menethil Harbor (Wetlands)" },
	{ zoneName = "The Cape of Stranglethorn", floor = 0, x = 0.3902, y = 0.6701, name = "Booty Bay (Stranglethorn)" },
	{ zoneName = "Northern Barrens",          floor = 0, x = 0.7016, y = 0.7327, name = "Ratchet (Northern Barrens)" },
	{ zoneName = "Tirisfal Glades",           floor = 0, x = 0.6074, y = 0.5867, name = "Tirisfal Zeppelin (Brill/UC tower)" },
}

local CLASSIC_SKIP = {
	["Shattrath City"] = true,
	["Dalaran"] = true,
	["Valdrakken"] = true,
}

local function Say(msg)
	print(C.header .. "[QuestCore]" .. C.reset .. " " .. msg)
end

local function ResolveTestNodes()
	for _, node in ipairs(testNodes) do
		if not node.zone and node.zoneName and QC.ResolveMapToken then
			node.zone = QC.ResolveMapToken(node.zoneName, node.floor or 0)
		end
	end
end

local function hopKey(hop)
	if not hop then return nil end
	local map = hop.map
	local x = hop.x or 0
	local y = hop.y or 0
	return string.format("%s:%d:%d:%s", tostring(map), math.floor(x * 1000), math.floor(y * 1000), tostring(hop.kind))
end

local function DetectLoop(hops)
	if not hops then return false, 0 end
	local n = #hops
	if n > MAX_HOPS then return true, n end
	local seen = {}
	for _, hop in ipairs(hops) do
		local key = hopKey(hop)
		if key and seen[key] then return true, n end
		if key then seen[key] = true end
	end
	return false, n
end

local function HopDescription(hop)
	if not hop then return "?" end
	local parts = {}
	if hop.name and hop.name ~= "" then
		parts[#parts + 1] = hop.name
	end
	if hop.label and hop.label ~= "" and hop.label ~= hop.name then
		parts[#parts + 1] = hop.label
	end
	if #parts == 0 and hop.x and hop.y then
		parts[#parts + 1] = string.format("%.1f%%, %.1f%%", hop.x * 100, hop.y * 100)
	end
	return #parts > 0 and table.concat(parts, " / ") or "—"
end

-- Trace dump for failed / looped routes.
function QC.Test:DumpFailedRoute(route, context)
	if not route or not route.hops or #route.hops == 0 then
		Say(C.warn .. "Trace dump: маршрут порожній або відсутній." .. C.reset)
		return
	end
	if context and context ~= "" then
		Say(C.muted .. "Trace dump (" .. context .. "):" .. C.reset)
	else
		Say(C.muted .. "Trace dump:" .. C.reset)
	end
	for i, hop in ipairs(route.hops) do
		local zoneId = hop.map or "?"
		local kind = hop.kind or "?"
		local desc = HopDescription(hop)
		Say(string.format(
			"Hop %d: [%s] -> Метод: %s (%s)",
			i, tostring(zoneId), tostring(kind), desc
		))
	end
	if route.cost then
		Say(C.muted .. string.format("  Загальна вартість маршруту: %.1f" .. C.reset, route.cost))
	end
end

local function EnsureTravelSeed(force)
	if QC.TravelSeed then
		if force then QC.TravelSeed._graphReady = nil end
	end
	if QC.TravelGraph and QC.TravelGraph.EnsureSeed then
		QC.TravelGraph:EnsureSeed()
	elseif QC.TravelSeed and QC.TravelSeed.Load then
		QC.TravelSeed:Load()
	end
end

local function ShouldSkipNode(node, clientInfo)
	if not node.zone then return true end
	if clientInfo.isClassicEra and node.zoneName and CLASSIC_SKIP[node.zoneName] then
		return true
	end
	return false
end

function QC.Test:RunTravelStressTest()
	Say(C.ok .. "Запуск стрес-тесту TravelGraph..." .. C.reset)

	local clientInfo = QC.Compat and QC.Compat.Client or {}
	Say(string.format(
		"Клієнт: Retail=%s, Classic Era=%s",
		tostring(clientInfo.isRetail),
		tostring(clientInfo.isClassicEra)
	))

	if not (QC.Travel and QC.Travel.GetRouteBetween) then
		Say(C.err .. "[FAILED]" .. C.reset .. " QC.Travel.GetRouteBetween недоступний.")
		return
	end

	EnsureTravelSeed(true)
	ResolveTestNodes()

	if QC.TravelGraph then
		local sn, se = 0, 0
		local seed = QC.TravelGraph.seed
		if seed then
			for _ in pairs(seed.nodes or {}) do sn = sn + 1 end
			for _, e in pairs(seed.edges or {}) do for _ in pairs(e) do se = se + 1 end end
		end
		Say(string.format(
			"TravelSeed: %d transit edges imported, %d seed nodes, %d seed edges",
			QC.TravelSeed and QC.TravelSeed.imported or 0, sn, se
		))
	end

	local totalTests = 0
	local passedTests = 0
	local failedTests = 0
	local timeoutTests = 0
	local deadEndTests = 0
	local slowTests = 0
	local skippedNodes = 0
	local maxDuration = 0
	local slowestRoute = ""
	local failures = {}
	local slowRoutes = {}

	if QC.Travel.ClearCache then
		QC.Travel:ClearCache()
	end

	for _, node in ipairs(testNodes) do
		if not node.zone then skippedNodes = skippedNodes + 1 end
	end
	if skippedNodes > 0 then
		Say(C.warn .. string.format(
			"Увага: %d тестових точок не вдалося зіставити з map ID (перевірте ResolveMapToken)." .. C.reset,
			skippedNodes
		))
	end

	for i = 1, #testNodes do
		for j = 1, #testNodes do
			if i ~= j then
				local startNode = testNodes[i]
				local endNode = testNodes[j]

				if ShouldSkipNode(startNode, clientInfo) or ShouldSkipNode(endNode, clientInfo) then
					-- skip expansion-only pairs on Classic Era
				elseif not startNode.zone or not endNode.zone then
					-- unresolved map id
				else
					totalTests = totalTests + 1
					local routeLabel = startNode.name .. " -> " .. endNode.name

					local startTime = debugprofilestop and debugprofilestop() or 0

					local success, route = pcall(function()
						return QC.Travel:GetRouteBetween(
							startNode.zone, startNode.x, startNode.y,
							endNode.zone, endNode.x, endNode.y,
							{ stressTest = true, ignoreFaction = true }
						)
					end)

					local duration = (debugprofilestop and debugprofilestop() or 0) - startTime

					if duration > maxDuration then
						maxDuration = duration
						slowestRoute = routeLabel
					end

					if duration > SLOW_MS then
						slowTests = slowTests + 1
						slowRoutes[#slowRoutes + 1] = { label = routeLabel, ms = duration }
					end

					if not success then
						failedTests = failedTests + 1
						local entry = { kind = "CRASH", label = routeLabel, detail = tostring(route) }
						failures[#failures + 1] = entry
						Say(string.format(
							"%s[CRASH]%s %s — Lua: %s",
							C.err, C.reset, routeLabel, tostring(route)
						))
					elseif not route or not route.hops or #route.hops == 0 then
						failedTests = failedTests + 1
						local timeoutMs = ROUTE_TIMEOUT_MS
						if QC.TravelGraph and QC.TravelGraph.GetStressRouteMs then
							timeoutMs = QC.TravelGraph:GetStressRouteMs()
						end
						local isTimeout = duration >= (timeoutMs * 0.85)
						local kind = isTimeout and "TIMEOUT" or "DEAD END"
						if isTimeout then timeoutTests = timeoutTests + 1
						else deadEndTests = deadEndTests + 1 end
						local entry = { kind = kind, label = routeLabel, route = route, ms = duration }
						failures[#failures + 1] = entry
						local tagColor = isTimeout and C.muted or C.warn
						Say(string.format(
							"%s[%s]%s %s (%.1f мс)",
							tagColor, kind, C.reset, routeLabel, duration
						))
						if route and route.hops and #route.hops > 0 then
							self:DumpFailedRoute(route, routeLabel)
						end
					else
						local looped, hopCount = DetectLoop(route.hops)
						if looped then
							failedTests = failedTests + 1
							local entry = { kind = "LOOP", label = routeLabel, route = route, hops = hopCount }
							failures[#failures + 1] = entry
							Say(string.format(
								"%s[LOOP DETECTED]%s Зациклення (%d хопів): %s",
								C.err, C.reset, hopCount, routeLabel
							))
							self:DumpFailedRoute(route, routeLabel)
						else
							passedTests = passedTests + 1
						end
					end
				end
			end
		end
	end

	-- Structured final report
	print(C.header .. "══════════════════════════════════════" .. C.reset)
	Say(C.white .. "Результати стрес-тесту TravelGraph" .. C.reset)
	print(C.header .. "──────────────────────────────────────" .. C.reset)
	Say(string.format("  Прогнано маршрутів: %s%d%s", C.white, totalTests, C.reset))
	Say(string.format("  %sУспішно:%s %d", C.ok, C.reset, passedTests))
	Say(string.format("  %sПомилок / петель:%s %d", C.err, C.reset, failedTests))
	if timeoutTests > 0 then
		Say(string.format("    %sТаймаут пошуку:%s %d (збільште STRESS_ROUTE_MS або оптимізуйте граф)", C.muted, C.reset, timeoutTests))
	end
	if deadEndTests > 0 then
		Say(string.format("    %sСправжній DEAD END:%s %d", C.warn, C.reset, deadEndTests))
	end
	Say(string.format("  %sПовільних (>%d мс):%s %d", C.warn, SLOW_MS, C.reset, slowTests))
	Say(string.format(
		"  Найповільніший пошук: %s%.2f мс%s (%s)",
		C.warn, maxDuration, C.reset, slowestRoute ~= "" and slowestRoute or "—"
	))

	if #slowRoutes > 0 then
		table.sort(slowRoutes, function(a, b) return a.ms > b.ms end)
		Say(C.warn .. "Топ повільних маршрутів:" .. C.reset)
		for k = 1, math.min(5, #slowRoutes) do
			local s = slowRoutes[k]
			Say(string.format("  %s%.2f мс%s — %s", C.warn, s.ms, C.reset, s.label))
		end
	end

	if #failures > 0 then
		Say(C.err .. "Підсумок збоїв:" .. C.reset)
		for _, f in ipairs(failures) do
			local tag = f.kind == "LOOP" and C.err or (f.kind == "CRASH" and C.err or C.warn)
			local extra = f.hops and (" (" .. f.hops .. " hops)") or (f.detail and (" — " .. f.detail) or "")
			Say(string.format("  %s[%s]%s %s%s", tag, f.kind, C.reset, f.label, extra))
		end
	end

	print(C.header .. "══════════════════════════════════════" .. C.reset)
	if failedTests == 0 then
		Say(C.ok .. "[PASSED]" .. C.reset .. " Граф TravelGraph стабільний!")
	elseif deadEndTests == 0 and timeoutTests > 0 then
		Say(C.warn .. "[SLOW]" .. C.reset .. " Маршрути є, але пошук впирається в ліміт часу. Потрібна подальша оптимізація.")
	else
		Say(C.err .. "[FAILED]" .. C.reset .. " Знайдено розриви графа або зациклення. Потрібен аудит ребер.")
	end
end
