-- QuestCore: import the bundled manual travel database into TravelGraph seed.
-- Parses Travel/data_transit.lua (portals/boats/zepps) and Travel/data_items.lua
-- (hearth toys, cloaks, engineering gadgets, mole machine, etc.).

local addonName, QuestCore = ...
local QC = QuestCore

local TravelSeed = {}
QC.TravelSeed = TravelSeed

local PORTAL_COST = 60
local BORDER_COST = 120
local DEFAULT_ITEM_COST = 60

-- Strip {key:val} tags from a transit line; return cleaned line + meta table.
local function ParseLineMeta(line)
	local meta = {}
	repeat
		local t1, key, val, t2 = line:match("^(.-)%{([^:]+):([^}]+)%}(.-)$")
		if key then
			meta[key] = val
			line = t1 .. t2
		end
	until not key
	return line, meta
end

local function MetaCondOk(meta)
	if not meta or not meta.cond or meta.cond == "" then return true end
	-- Phased / quest-gated links: include in static graph for routing audits.
	if meta.cond:find("InPhase", 1, true) then return true end
	if meta.cond:find("PlayerCompletedQuest", 1, true) then return true end
	if meta.cond:find("PlayerLevel", 1, true) then return true end
	if QC.MakeCondition then
		local fn = QC.MakeCondition(meta.cond, true)
		if fn then
			local ok, res = pcall(fn)
			return ok and res
		end
	end
	return true
end

local function MetaCost(meta, default)
	if meta and meta.cost then
		local n = tonumber(meta.cost)
		if n then return n end
	end
	return default
end

local function playerFac()
	return (UnitFactionGroup("player") == "Horde") and "H" or "A"
end

local function StripInlineTags(s)
	if not s then return nil end
	return (s:gsub("%s*<[^>]+>", ""):match("^%s*(.-)%s*$"))
end

-- "Zone Name/floor x,y" or "Zone Name x,y" -> map, x(0..1), y(0..1), zoneName
local function ParsePoint(s)
	if not s then return nil end
	s = StripInlineTags(s)
	local zone, floor, cx, cy = s:match("^(.-)/(%d+)%s+([%d%.]+)%s*,%s*([%d%.]+)")
	if zone and zone ~= "" then
		local map = QC.ResolveMapToken and QC.ResolveMapToken(zone, tonumber(floor))
		if not map then return nil end
		if QC.CanonicalMapID then map = QC.CanonicalMapID(map) end
		return map, tonumber(cx) / 100, tonumber(cy) / 100, zone
	end
	local zone2, cx2, cy2 = s:match("^(.-)%s+([%d%.]+)%s*,%s*([%d%.]+)%s*$")
	if zone2 and zone2 ~= "" then
		local map = QC.ResolveMapToken and QC.ResolveMapToken(zone2, 0)
		if not map then return nil end
		if QC.CanonicalMapID then map = QC.CanonicalMapID(map) end
		local x, y = tonumber(cx2), tonumber(cy2)
		if x > 1 or y > 1 then x, y = x / 100, y / 100 end
		return map, x, y, zone2
	end
	return nil
end

-- Standalone transit line with "@anchor" id.
local function ParseAnchorPoint(s)
	if not s or type(s) ~= "string" then return nil end
	s = s:match("^%s*(.-)%s*$")
	local rest, id = s:match("^(.-)%s*@(%S+)$")
	if not id then return nil end
	if id:sub(1, 1) == "!" then id = id:sub(2) end
	local body = StripInlineTags((rest ~= "" and rest or s))
	local map, x, y, name = ParsePoint(body)
	if map then return id, map, x, y, name end
	return nil
end

local function RegisterAnchorPoint(part, anchors)
	part = StripInlineTags(part)
	if not part or part == "" then return end
	local id, map, x, y, name = ParseAnchorPoint(part)
	if id and map and not anchors[id] then
		anchors[id] = { map = map, x = x, y = y, name = name }
	end
end

-- Collect coord@id anchors embedded in edge lines (e.g. Deeprun Tram @deeprun_if).
local function RegisterAnchorsFromLine(line, anchors)
	if type(line) ~= "string" then return end
	local cleaned = select(1, ParseLineMeta(line)) or line
	for _, op in ipairs({ " -x- ", " -to- ", " -> " }) do
		local at = cleaned:find(op, 1, true)
		if at then
			RegisterAnchorPoint(cleaned:sub(1, at - 1), anchors)
			RegisterAnchorPoint(cleaned:sub(at + #op), anchors)
			return
		end
	end
	RegisterAnchorPoint(cleaned, anchors)
end

local function BuildAnchors(transit)
	local anchors = {}
	if type(transit) ~= "table" then return anchors end
	for _, line in ipairs(transit) do
		if type(line) == "string"
			and not line:find(" -x- ", 1, true)
			and not line:find(" -to- ", 1, true)
			and not line:find(" -> ", 1, true)
		then
			local id, map, x, y, name = ParseAnchorPoint(line)
			if id then anchors[id] = { map = map, x = x, y = y, name = name } end
		end
	end
	for _, raw in ipairs(transit) do
		RegisterAnchorsFromLine(raw, anchors)
	end
	return anchors
end

local function ResolveDestination(dest, anchors)
	if not dest or type(dest) ~= "string" then return nil end
	if dest:sub(1, 1) == "_" then return nil end

	if dest:sub(1, 1) == "@" then
		local id = (dest:sub(1, 2) == "@!") and dest:sub(3) or dest:sub(2)
		local a = anchors[id]
		if a then return a.map, a.x, a.y, a.name end
		return nil
	end

	return ParsePoint(dest)
end

local function ResolveSide(side, anchors)
	side = StripInlineTags(select(1, ParseLineMeta(side or "")) or side)
	if not side or side == "" then return nil end

	local id, map, x, y, name = ParseAnchorPoint(side)
	if map then
		if id and not anchors[id] then
			anchors[id] = { map = map, x = x, y = y, name = name }
		end
		return map, x, y, name
	end

	-- Pure @anchor (e.g. @org_tp_dst) — ParseAnchorPoint has no embedded coords.
	local aid = side:match("^@!?(%S+)$")
	if aid then
		if aid:sub(1, 1) == "!" then aid = aid:sub(2) end
		local a = anchors[aid]
		if a then return a.map, a.x, a.y, a.name end
		return nil
	end

	return ParsePoint(side)
end

----------------------------------------------------------------------
-- Portkey condition / availability helpers
----------------------------------------------------------------------

local travelEnvReady

local function PrepCondEnv()
	if travelEnvReady then return end
	travelEnvReady = true

	local parser = QC.EnsureGuideParser and QC.EnsureGuideParser() or rawget(QC, "Parser")
	if type(parser) ~= "table" then
		parser = {}
		rawset(QC, "Parser", parser)
	end

	local base = QC.ConditionEnv
	local skillFn = function(skillName)
		if not GetProfessionInfo then return 0 end
		local prof1, prof2 = GetProfessions and GetProfessions()
		for _, prof in ipairs({ prof1, prof2 }) do
			if prof then
				local _, _, rank, _, _, offset = GetProfessionInfo(prof)
				local name = GetProfessionInfo and select(1, GetProfessionInfo(prof))
				if name and name:find(skillName, 1, true) then
					return rank or 0
				end
				if offset and skillName:find("Engineering", 1, true) and offset > 0 then
					return rank or 0
				end
			end
		end
		return 0
	end

	local travelEnv = setmetatable({}, {
		__index = function(t, k)
			if k == "skill" then return skillFn end
			if k == "indoors" then
				return function() return IsIndoors and IsIndoors() or false end
			end
			if k == "Necrolord" or k == "Kyrian" or k == "Venthyr" or k == "NightFae" then
				if base then
					local v = base[k]
					if v ~= nil then return v end
				end
				return false
			end
			if base then
				local v = base[k]
				if v ~= nil then return v end
			end
			return _G[k]
		end,
	})

	parser.ConditionEnv = travelEnv
end

function TravelSeed:PrepCondEnv()
	PrepCondEnv()
	QC.CurrentMapID = C_Map and C_Map.GetBestMapForUnit("player")
end

function TravelSeed:OnHearthBound()
	self._bindZoneCache = nil
end

function TravelSeed:EvalCond(port)
	if not port or not port.cond then return true end
	self:PrepCondEnv()
	local ok, res = pcall(port.cond)
	return ok and res and true or false
end

local function PlayerHasUsableToy(toyID)
	if not toyID then return false end
	if C_ToyBox and C_ToyBox.PlayerHasToy then
		if not C_ToyBox.PlayerHasToy(toyID) then return false end
		if C_ToyBox.IsToyUsable and not C_ToyBox.IsToyUsable(toyID) then return false end
		return true
	end
	return PlayerHasToy and PlayerHasToy(toyID) or false
end

local function HasTeleportItem(tp)
	if not tp or not tp.item then return false end
	if tp.toy then
		return PlayerHasUsableToy(tp.item)
	end
	local itemAPI = QC.Compat and QC.Compat.Item
	if itemAPI then
		if itemAPI.GetCount(tp.item) > 0 then return true end
		if itemAPI.IsEquipped(tp.item) then return true end
	end
	return (GetItemCount and GetItemCount(tp.item) or 0) > 0
end

local function SpellKnown(spellID)
	if not spellID then return false end
	local spellAPI = QC.Compat and QC.Compat.Spell
	if spellAPI and spellAPI.IsKnown then
		return spellAPI.IsKnown(spellID)
	end
	return IsSpellKnown and IsSpellKnown(spellID)
end

----------------------------------------------------------------------
-- Hearthstone (shared cooldown across item 6948, toys, Astral Recall)
----------------------------------------------------------------------

local HEARTH_CD_ITEM = 6948
local ASTRAL_RECALL_SPELL = 556
-- Graph time units: ~10s cast + ~30s loading screen (relative walk cost).
local HEARTH_TRAVEL_COST = 40

local function HearthItemCount()
	local itemAPI = QC.Compat and QC.Compat.Item
	if itemAPI and itemAPI.GetCount then
		return itemAPI.GetCount(HEARTH_CD_ITEM) or 0
	end
	if C_Item and C_Item.GetItemCount then
		return C_Item.GetItemCount(HEARTH_CD_ITEM, false, false) or 0
	end
	return (GetItemCount and GetItemCount(HEARTH_CD_ITEM, false, false) or 0)
end

-- Item 6948, hearth toys, and Astral Recall share one cooldown category.
local function IsSharedHearthCooldownReady()
	local hasItem = HearthItemCount() > 0
	local hasAstral = SpellKnown(ASTRAL_RECALL_SPELL)
	local itemAPI = QC.Compat and QC.Compat.Item
	local spellAPI = QC.Compat and QC.Compat.Spell

	if hasItem and itemAPI and itemAPI.IsCooldownReady then
		return itemAPI.IsCooldownReady(HEARTH_CD_ITEM)
	end
	if hasAstral and spellAPI and spellAPI.IsCooldownReady then
		return spellAPI.IsCooldownReady(ASTRAL_RECALL_SPELL)
	end
	if itemAPI and itemAPI.IsCooldownReady then
		return itemAPI.IsCooldownReady(HEARTH_CD_ITEM)
	end
	local start, duration, enable = GetItemCooldown and GetItemCooldown(HEARTH_CD_ITEM)
	if enable == 0 then return false end
	if not duration or duration <= 0 then return true end
	if not start or start <= 0 then return true end
	return (GetTime() - start) >= duration
end

local function CollectHearthPortkeys()
	local ports = QC.LibRoverData and QC.LibRoverData.portkeys
	if type(ports) ~= "table" then return {} end
	local list = {}
	for i = 1, #ports do
		local p = ports[i]
		if p and p.destination == "_HEARTH" and p.mode == "hearth" and not p.is_astral then
			list[#list + 1] = p
		end
	end
	return list
end

function TravelSeed:FindHearthMethod()
	if HearthItemCount() > 0 then return "item", HEARTH_CD_ITEM end
	if SpellKnown(ASTRAL_RECALL_SPELL) then return "astral", ASTRAL_RECALL_SPELL end

	for _, port in ipairs(CollectHearthPortkeys()) do
		if port.item and port.item ~= HEARTH_CD_ITEM and self:EvalCond(port) then
			if port.toy then
				if PlayerHasUsableToy(port.item) then return "toy", port.item end
			elseif HasTeleportItem(port) then
				return "item", port.item
			end
		end
	end
	return nil
end

function TravelSeed:HasHearthAccess()
	return self:FindHearthMethod() ~= nil
end

local function CanResolveHearthBind()
	if not GetBindLocation then return false end
	local bind = GetBindLocation()
	if not bind or bind == "" then return false end
	local TS = QC.TravelSeed
	if TS and TS.ResolveInn and select(1, TS:ResolveInn(bind)) then return true end
	return QC.ResolveMapToken and QC.ResolveMapToken(bind) ~= nil
end

-- Returns { ready = bool, cost = number, method = "item"|"toy"|"astral" } for A* HEARTH edge.
function TravelSeed:ProbeHearth()
	-- 1. Access: hearthstone, toy, or Astral Recall (bind-location teleports only).
	local method = self:FindHearthMethod()
	if not method then return { ready = false } end

	-- 2. Shared cooldown across item 6948 / toys / Astral Recall.
	if not IsSharedHearthCooldownReady() then
		return { ready = false, method = method }
	end

	-- 3. Must resolve bind location to a routable inn node.
	if not CanResolveHearthBind() then
		return { ready = false, method = method }
	end

	local cost = HEARTH_TRAVEL_COST
	if method == "astral" then
		cost = math.max(25, HEARTH_TRAVEL_COST - 10)
	end
	return { ready = true, cost = cost, method = method }
end

-- Full availability probe (inventory + cooldown + cond). Called once per route snapshot.
function TravelSeed:ProbeTeleport(tp)
	if not tp then return false end
	if tp.maxlevel and UnitLevel("player") > tp.maxlevel then return false end
	if not self:EvalCond(tp) then return false end

	if tp.spell then
		if not SpellKnown(tp.spell) then return false end
		local spellAPI = QC.Compat and QC.Compat.Spell
		if spellAPI and spellAPI.IsCooldownReady then
			return spellAPI.IsCooldownReady(tp.spell)
		end
		local start, duration = GetSpellCooldown and GetSpellCooldown(tp.spell)
		if not duration or duration <= 0 then return true end
		if not start or start <= 0 then return true end
		return (GetTime() - start) >= duration
	end

	if tp.item then
		if not HasTeleportItem(tp) then return false end
		local itemAPI = QC.Compat and QC.Compat.Item
		if itemAPI and itemAPI.IsUsable and not tp.toy and not itemAPI.IsUsable(tp.item) then
			return false
		end
		if itemAPI and itemAPI.IsCooldownReady then
			return itemAPI.IsCooldownReady(tp.item)
		end
		local start, duration, enable = GetItemCooldown and GetItemCooldown(tp.item)
		if enable == 0 then return false end
		if not duration or duration <= 0 then return true end
		if not start or start <= 0 then return true end
		return (GetTime() - start) >= duration
	end

	return false
end

-- O(1) lookup table keyed by graph node id (`tp.node`, e.g. "tp:12").
function TravelSeed:BuildTeleportSnapshot(teleportList)
	local allowed = {}
	if type(teleportList) ~= "table" then return allowed end
	for i = 1, #teleportList do
		local tp = teleportList[i]
		if tp.node and self:ProbeTeleport(tp) then
			allowed[tp.node] = true
		end
	end
	return allowed
end

function TravelSeed:CanUseTeleport(tp, allowedSnapshot)
	if not tp then return false end
	if allowedSnapshot then
		return allowedSnapshot[tp.node] == true
	end
	return self:ProbeTeleport(tp)
end

local function PortkeyLabel(port)
	if port.title then return port.title end
	if port.item and C_Item and C_Item.GetItemInfo then
		local name = C_Item.GetItemInfo(port.item)
		if name then return name end
	end
	if port.spell and GetSpellInfo then
		return GetSpellInfo(port.spell)
	end
	return "Teleport"
end

-- Resolve hearth bind location to inn coordinates from bundled data_inns.lua.
function TravelSeed:PickInnEntry(list, fac, preferName)
	if type(list) ~= "table" then return nil end
	local preferLow = preferName and preferName:lower() or nil
	local fallback
	for _, inn in ipairs(list) do
		local okFac = not inn.faction or inn.faction == "B" or inn.faction == fac
		if okFac then
			if preferLow and inn.name and inn.name:lower() == preferLow then return inn end
			if not fallback then fallback = inn end
		end
	end
	return fallback
end

function TravelSeed:InnEntryCoords(zoneKey, inn)
	if not (inn and zoneKey) then return nil end
	local map = QC.ResolveMapToken and QC.ResolveMapToken(zoneKey)
	if not (map and inn.x and inn.y) then return nil end
	return map, inn.x / 100, inn.y / 100, inn.name
end

-- Match GetBindLocation() to a data_inns zone key (client-localized map names).
function TravelSeed:MatchBindZone(bindName)
	if not bindName then return nil end
	if self._bindZoneCache and self._bindZoneCache[bindName] ~= nil then
		return self._bindZoneCache[bindName] or nil
	end
	self._bindZoneCache = self._bindZoneCache or {}

	local inns = QC.LibRoverData and QC.LibRoverData.basenodes and QC.LibRoverData.basenodes.inns
	if not inns then
		self._bindZoneCache[bindName] = false
		return nil
	end

	local bindLow = bindName:lower()
	for zoneKey in pairs(inns) do
		if type(zoneKey) == "string" then
			if zoneKey:lower() == bindLow or bindLow:find(zoneKey:lower(), 1, true) or zoneKey:lower():find(bindLow, 1, true) then
				self._bindZoneCache[bindName] = zoneKey
				return zoneKey
			end
			local map = QC.ResolveMapToken and QC.ResolveMapToken(zoneKey)
			if map and C_Map and C_Map.GetMapInfo then
				local info = C_Map.GetMapInfo(map)
				if info and info.name then
					local loc = info.name:lower()
					if loc == bindLow or loc:find(bindLow, 1, true) or bindLow:find(loc, 1, true) then
						self._bindZoneCache[bindName] = zoneKey
						return zoneKey
					end
				end
			end
		end
	end

	self._bindZoneCache[bindName] = false
	return nil
end

function TravelSeed:ResolveInn(bindName)
	local inns = QC.LibRoverData and QC.LibRoverData.basenodes and QC.LibRoverData.basenodes.inns
	if not (inns and bindName) then return nil end
	local fac = (UnitFactionGroup("player") == "Horde") and "H" or "A"
	local bindLow = bindName:lower()

	local zoneKey = self:MatchBindZone(bindName)
	if zoneKey and inns[zoneKey] then
		local inn = self:PickInnEntry(inns[zoneKey], fac, bindName)
		if inn then
			return self:InnEntryCoords(zoneKey, inn)
		end
	end

	for zone, list in pairs(inns) do
		if type(list) == "table" then
			for _, inn in ipairs(list) do
				local okFac = not inn.faction or inn.faction == "B" or inn.faction == fac
				local name = inn.name and inn.name:lower() or ""
				if okFac and (name == bindLow or name:find(bindLow, 1, true) or bindLow:find(name, 1, true)) then
					local coords = self:InnEntryCoords(zone, inn)
					if coords then return coords end
				end
			end
		end
	end
	return nil
end

local function ImportEdgeLines(seed, lines, anchors, addEdge, nodeAt, fac, defaultCost, counter)
	local n = 0
	if type(lines) ~= "table" then return 0 end
	for _, raw in ipairs(lines) do
		if type(raw) == "string" and not raw:find("toylocation", 1, true) then
			local line, meta = ParseLineMeta(raw)
			if MetaCondOk(meta) then
				local lineFac = meta.fac or line:match("{fac:([ABH])}")
				-- Import all faction variants; TravelGraph filters by player at walk time.
				local op, twoway
				if line:find(" -x- ", 1, true) then op, twoway = " -x- ", true
				elseif line:find(" -to- ", 1, true) then op = " -to- "
				elseif line:find(" -> ", 1, true) then op = " -> " end
				if op then
					local at = line:find(op, 1, true)
					local lm, lx, ly, ln = ResolveSide(line:sub(1, at - 1), anchors)
					local rm, rx, ry, rn = ResolveSide(line:sub(at + #op), anchors)
					if lm and rm then
						local cost = MetaCost(meta, defaultCost)
						local a = nodeAt(lm, lx, ly, ln)
						local b = nodeAt(rm, rx, ry, rn)
						addEdge(a, b, cost, meta, lineFac)
						if twoway then addEdge(b, a, cost, meta, lineFac) end
						n = n + 1
					end
				end
			end
		end
	end
	return n
end

----------------------------------------------------------------------
-- Load transit + portkeys into TravelGraph.seed
----------------------------------------------------------------------

function TravelSeed:Load()
	local TG = QC.TravelGraph
	if not TG then return 0 end
	self._graphReady = nil

	local rover = QC.LibRoverData
	local basenodes = rover and rover.basenodes
	local transit = basenodes and basenodes.transit
	local portkeys = rover and rover.portkeys
	local borders = basenodes and basenodes.borders
	local floorX = basenodes and basenodes.FloorCrossings
	local dungeons = basenodes and basenodes.DungeonEntrances

	local seed = TG.seed
	wipe(seed.nodes)
	wipe(seed.edges)
	seed.edgeLabels = {}
	seed.edgeFaction = {}
	seed.teleports = {}
	TG._routeSet = nil

	local fac = playerFac()
	local idseq, tpseq, byKey, transitCount, itemCount = 0, 0, {}, 0, 0
	local anchors = BuildAnchors(transit)

	local function nodeAt(map, x, y, name, kind)
		local key = map .. ":" .. math.floor(x * 1000) .. ":" .. math.floor(y * 1000)
		local id = byKey[key]
		if id then return id end
		idseq = idseq + 1
		id = "seed:" .. idseq
		seed.nodes[id] = { map = map, x = x, y = y, name = name, kind = kind or "portal" }
		byKey[key] = id
		return id
	end

	local function teleportNode(map, x, y, name, label)
		tpseq = tpseq + 1
		local id = "tp:" .. tpseq
		seed.nodes[id] = { map = map, x = x, y = y, name = name, label = label, kind = "item" }
		return id
	end

	local function addEdge(a, b, cost, meta, lineFac)
		seed.edges[a] = seed.edges[a] or {}
		if not seed.edges[a][b] or cost < seed.edges[a][b] then
			seed.edges[a][b] = cost
			if meta and meta.title then
				seed.edgeLabels[a .. ">" .. b] = meta.title
			end
			if lineFac and lineFac ~= "" then
				seed.edgeFaction[a .. ">" .. b] = lineFac
			end
		end
	end

	if type(transit) == "table" then
		transitCount = ImportEdgeLines(seed, transit, anchors, addEdge, nodeAt, fac, PORTAL_COST)
	end

	if type(borders) == "table" then
		transitCount = transitCount + ImportEdgeLines(seed, borders, anchors, addEdge, nodeAt, fac, BORDER_COST)
	end

	if type(floorX) == "table" then
		for _, zoneLines in pairs(floorX) do
			if type(zoneLines) == "table" then
				transitCount = transitCount + ImportEdgeLines(seed, zoneLines, anchors, addEdge, nodeAt, fac, PORTAL_COST)
			end
		end
	end

	if type(dungeons) == "table" then
		transitCount = transitCount + ImportEdgeLines(seed, dungeons, anchors, addEdge, nodeAt, fac, PORTAL_COST)
	end

	-- LibTaxi data is kept in QC.LibTaxiData for reference; flight nodes are learned
	-- at runtime via TravelGraph:Scan() when the player opens a flight map.
	-- Bulk-importing every FP as a graph node caused routing timeouts (O(n²) Dijkstra).

	if type(portkeys) == "table" then
		self:PrepCondEnv()
		for _, port in ipairs(portkeys) do
			repeat
				if port.initfunc then break end
				local dest = port.destination
				if dest == "_HEARTH" or dest == "_G_HEARTH" or dest == "_TAXIWHISTLE" then break end
				if type(dest) == "string" and dest:find("player_house", 1, true) then break end
				if type(dest) == "string" and dest:find("arcantina_exit", 1, true) then break end

				if port.destA and port.destH then
					dest = (fac == "A") and port.destA or port.destH
				end

				if type(dest) ~= "string" or dest:sub(1, 1) == "_" then break end

				local map, x, y, name = ResolveDestination(dest, anchors)
				if not map then break end

				local label = PortkeyLabel(port)
				local nid = teleportNode(map, x, y, name, label)
				seed.teleports[#seed.teleports + 1] = {
					node = nid,
					id = nid,
					cost = port.cost or DEFAULT_ITEM_COST,
					item = port.item,
					spell = port.spell,
					toy = port.toy,
					mode = port.mode,
					maxlevel = port.maxlevel,
					cond = port.cond,
					label = label,
				}
				itemCount = itemCount + 1
			until true
		end
	end

	self.imported = transitCount
	self.itemsImported = itemCount
	self._graphReady = true
	if QC.EnsureAllRoverMaps then QC.EnsureAllRoverMaps() end
	return transitCount + itemCount
end
