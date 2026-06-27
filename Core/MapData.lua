-- QuestCore: ensure LibRover / scenario map IDs exist in HereBeDragons.
-- HBD only auto-fills map IDs 1..2500; Midnight intro maps (2565+) need this.

local addonName, QuestCore = ...
local QC = QuestCore

local vector00 = CreateVector2D and CreateVector2D(0, 0)
local vector05 = CreateVector2D and CreateVector2D(0.5, 0.5)
local vector11 = CreateVector2D and CreateVector2D(1, 1)

local function writeMapEntry(mapData, uiMapID, info, instance, left, right, top, bottom)
	local parent = (info.parentMapID and info.parentMapID ~= 0) and info.parentMapID or 0
	mapData[uiMapID] = {
		left - right, top - bottom, left, top,
		instance = instance,
		name = info.name,
		mapType = info.mapType,
		parent = parent,
	}
	return true
end

function QC.EnsureMapData(uiMapID)
	if not uiMapID or not QC.HBD or not C_Map or not vector05 then return false end
	local mapData = QC.HBD.mapData
	if not mapData then return false end

	local data = mapData[uiMapID]
	if data and data[1] and data[1] > 0 then return true end

	local info = C_Map.GetMapInfo(uiMapID)
	if not info then return false end

	local instance, center = C_Map.GetWorldPosFromMapPos(uiMapID, vector05)
	local width, height
	if C_Map.GetMapWorldSize then
		width, height = C_Map.GetMapWorldSize(uiMapID)
	end
	if center and width and height and width > 0 and height > 0 then
		local top, left = center:GetXY()
		top = top + (height / 2)
		local bottom = top - height
		left = left + (width / 2)
		local right = left - width
		if writeMapEntry(mapData, uiMapID, info, instance, left, right, top, bottom) then
			-- Register parent chain so cross-map pins/lines resolve on continent views.
			local parent = info.parentMapID
			while parent and parent ~= 0 do
				if mapData[parent] and mapData[parent][1] and mapData[parent][1] > 0 then break end
				QC.EnsureMapData(parent)
				parent = C_Map.GetMapInfo(parent) and C_Map.GetMapInfo(parent).parentMapID
			end
			return true
		end
	end

	-- Fallback for phased / scenario maps without GetMapWorldSize.
	if vector00 and vector11 then
		local instA, posA = C_Map.GetWorldPosFromMapPos(uiMapID, vector00)
		local instB, posB = C_Map.GetWorldPosFromMapPos(uiMapID, vector11)
		if instA and posA and posB then
			local x0, y0 = posA:GetXY()
			local x1, y1 = posB:GetXY()
			local w = math.abs(x1 - x0)
			local h = math.abs(y1 - y0)
			if w > 0 and h > 0 then
				local left = math.max(x0, x1)
				local top = math.max(y0, y1)
				local right = left - w
				local bottom = top - h
				return writeMapEntry(mapData, uiMapID, info, instA, left, right, top, bottom)
			end
		end
	end

	return false
end

-- Unify legacy LibRover UI map IDs with the client's HBD/C_Map IDs (Retail).
local canonicalCache = {}
local nameCanonical = {}

local function MapScore(id)
	local score = id
	if C_Map and C_Map.GetMapInfo then
		local mi = C_Map.GetMapInfo(id)
		if mi then
			if mi.mapType == 3 then score = score + 1e6
			elseif mi.mapType == 4 then score = score + 5e5
			elseif mi.mapType == 5 then score = score + 2e5 end
		end
	end
	return score
end

function QC.CanonicalMapID(mapID)
	if not mapID or type(mapID) ~= "number" then return mapID end
	-- Classic clients: LibRover / travel table IDs match HBD uiMapIDs; do not remap by zone name.
	local client = QC.Compat and QC.Compat.Client
	if client and client.isClassic then
		local md = QC.HBD and QC.HBD.mapData and QC.HBD.mapData[mapID]
		if md and md[1] and md[1] > 0 then
			canonicalCache[mapID] = mapID
			return mapID
		end
	end
	local cached = canonicalCache[mapID]
	if cached then return cached end

	local info = C_Map and C_Map.GetMapInfo and C_Map.GetMapInfo(mapID)
	local nk = info and info.name and info.name:lower()
	if nk and nameCanonical[nk] then
		canonicalCache[mapID] = nameCanonical[nk]
		return nameCanonical[nk]
	end

	QC.EnsureMapData(mapID)
	local mapData = QC.HBD and QC.HBD.mapData
	local d = mapData and mapData[mapID]
	if d and d[1] and d[1] > 0 and nk and not nameCanonical[nk] then
		nameCanonical[nk] = mapID
		canonicalCache[mapID] = mapID
		return mapID
	end

	if not nk then
		canonicalCache[mapID] = mapID
		return mapID
	end

	local bestId, bestScore
	if mapData then
		for id, data in pairs(mapData) do
			if data.name and data.name:lower() == nk then
				QC.EnsureMapData(id)
				local md = mapData[id]
				if md and md[1] and md[1] > 0 then
					local sc = MapScore(id)
					if not bestScore or sc > bestScore then
						bestId, bestScore = id, sc
					end
				end
			end
		end
	end

	local result = bestId or mapID
	nameCanonical[nk] = result
	canonicalCache[mapID] = result
	return result
end

-- Classic Era 1.15.x remapped zones to new uiMapIDs (e.g. Teldrassil 57 -> 1438).
local CLASSIC_ERA_NAME_ALIASES = {
	teldrassil = { "teldrassil", "shadowglen" },
	shadowglen = { "shadowglen", "teldrassil" },
}
QC.ClassicEraMapNameAliases = CLASSIC_ERA_NAME_ALIASES

local LEGACY_MAP_THRESHOLD = 1000
local MODERN_SCAN_MIN = 1400
local MODERN_SCAN_MAX = 2500

-- Known pairs when zone names differ between legacy and modern maps.
local CLASSIC_ERA_MAP_EQUIV = {
	[57] = 1438,
	[1438] = 57,
}
QC.ClassicEraMapEquiv = CLASSIC_ERA_MAP_EQUIV

local modernByName -- name (lower) -> newest modern uiMapID
local legacyToModern = {} -- legacy uiMapID -> modern uiMapID

local function IsClassicEra()
	local client = QC.Compat and QC.Compat.Client
	return client and client.isClassicEra
end

local function ClassicEraNameKeys(mapName, mapID)
	local keys = {}
	local function add(n)
		if n and n ~= "" then
			local nk = n:lower()
			keys[nk] = true
			local aliases = CLASSIC_ERA_NAME_ALIASES[nk]
			if aliases then
				for _, a in ipairs(aliases) do keys[a] = true end
			end
		end
	end
	add(mapName)
	if mapID and C_Map and C_Map.GetMapInfo then
		local mi = C_Map.GetMapInfo(mapID)
		add(mi and mi.name)
	end
	local mapData = QC.HBD and QC.HBD.mapData
	local md = mapData and mapData[mapID]
	if md and md.name then add(md.name) end
	if mapID and QC.LibRoverData and QC.LibRoverData.MapIDsByName then
		for n, val in pairs(QC.LibRoverData.MapIDsByName) do
			if type(val) == "table" then
				for _, id in pairs(val) do
					if id == mapID then add(n) end
				end
			elseif val == mapID then
				add(n)
			end
		end
	end
	return keys
end

local function IndexModernName(name, id)
	if not (name and id and id > LEGACY_MAP_THRESHOLD) then return end
	local nk = name:lower()
	if not modernByName[nk] or id > modernByName[nk] then
		modernByName[nk] = id
	end
	local aliases = CLASSIC_ERA_NAME_ALIASES[nk]
	if aliases then
		for _, a in ipairs(aliases) do
			if not modernByName[a] or id > modernByName[a] then
				modernByName[a] = id
			end
		end
	end
end

function QC.BuildClassicEraMapIndex()
	if not IsClassicEra() then return end
	modernByName = {}
	local mapData = QC.HBD and QC.HBD.mapData
	if mapData then
		for id, data in pairs(mapData) do
			if id > LEGACY_MAP_THRESHOLD and data.name and data[1] and data[1] > 0 then
				IndexModernName(data.name, id)
			end
		end
	end
	if C_Map and C_Map.GetMapInfo then
		for id = MODERN_SCAN_MIN, MODERN_SCAN_MAX do
			local info = C_Map.GetMapInfo(id)
			if info and info.name then
				QC.EnsureMapData(id)
				local md = mapData and mapData[id]
				if md and md[1] and md[1] > 0 then
					IndexModernName(info.name, id)
				end
			end
		end
	end
end

local function LookupModernByKeys(keys)
	if not modernByName then QC.BuildClassicEraMapIndex() end
	local bestId
	for nk in pairs(keys) do
		local mid = modernByName[nk]
		if mid and (not bestId or mid > bestId) then bestId = mid end
	end
	return bestId
end

function QC.GetModernMapID(mapID, mapName)
	if not mapID or type(mapID) ~= "number" then return mapID end
	if not IsClassicEra() then return mapID end
	if mapID > LEGACY_MAP_THRESHOLD then
		legacyToModern[mapID] = mapID
		return mapID
	end
	local cached = legacyToModern[mapID]
	if cached then return cached end
	local keys = ClassicEraNameKeys(mapName, mapID)
	local result = LookupModernByKeys(keys)
	if not result or result == mapID then
		local hard = CLASSIC_ERA_MAP_EQUIV[mapID]
		if hard and C_Map and C_Map.GetMapInfo(hard) then
			result = hard
		end
	end
	result = result or mapID
	legacyToModern[mapID] = result
	return result
end

function QC.RemapClassicMapID(mapID, towardMap)
	if not (mapID and towardMap) then return mapID end
	if QC.MapsEquivalent(mapID, towardMap) then return towardMap end
	return mapID
end

function QC.NormalizeMapID(mapID, referenceMap)
	if not mapID then return mapID end
	if IsClassicEra() then
		local modern = QC.GetModernMapID(mapID)
		if referenceMap then
			return QC.RemapClassicMapID(modern, referenceMap)
		end
		return modern
	end
	return mapID
end

function QC.NormalizeClassicMapID(mapID, referenceMap)
	return QC.NormalizeMapID(mapID, referenceMap)
end

function QC.MapsEquivalent(a, b)
	if not a or not b then return false end
	if a == b then return true end
	if IsClassicEra() then
		return QC.GetModernMapID(a) == QC.GetModernMapID(b)
	end
	if C_Map and C_Map.GetMapInfo then
		local ia, ib = C_Map.GetMapInfo(a), C_Map.GetMapInfo(b)
		if ia and ib and ia.mapID == ib.mapID then return true end
	end
	if QC.CanonicalMapID then
		return QC.CanonicalMapID(a) == QC.CanonicalMapID(b)
	end
	return false
end

function QC.ResolveClassicLiveMapID(mapID, mapName)
	return QC.GetModernMapID(mapID, mapName)
end

function QC.ClearClassicEraMapCache()
	wipe(legacyToModern)
	modernByName = nil
end

function QC.ClearClassicEraLookupCache()
	wipe(legacyToModern)
end

function QC.ClearClassicLiveMapCache()
	QC.ClearClassicEraMapCache()
end

-- Convert zone coords from one uiMapID to another (child/parent maps, e.g. Shadowglen <-> Teldrassil).
function QC.TranslateMapCoords(x, y, fromMap, toMap)
	if not (x and y and fromMap and toMap) then return nil, nil end
	if QC.NormalizeMapID then
		fromMap = QC.NormalizeMapID(fromMap)
		toMap = QC.NormalizeMapID(toMap)
	end
	if QC.MapsEquivalent(fromMap, toMap) then return x, y end
	QC.EnsureMapData(fromMap)
	QC.EnsureMapData(toMap)
	local hbd = QC.HBD
	if hbd and hbd.TranslateZoneCoordinates then
		local tx, ty = hbd:TranslateZoneCoordinates(x, y, fromMap, toMap, true)
		if tx and ty then return tx, ty end
	end
	if C_Map and C_Map.GetWorldPosFromMapPos and C_Map.GetMapPosFromWorldPos and CreateVector2D then
		local _, world = C_Map.GetWorldPosFromMapPos(fromMap, CreateVector2D(x, y))
		if world then
			local localPos = C_Map.GetMapPosFromWorldPos(toMap, world)
			if localPos then return localPos:GetXY() end
		end
	end
	return nil, nil
end

function QC.EnsureAllRoverMaps()
	local roverMaps = QC.LibRoverData and QC.LibRoverData.MapIDsByName
	if not roverMaps then return end
	for _, val in pairs(roverMaps) do
		if type(val) == "table" then
			for _, id in pairs(val) do
				if type(id) == "number" then QC.EnsureMapData(id) end
			end
		elseif type(val) == "number" then
			QC.EnsureMapData(val)
		end
	end
end
