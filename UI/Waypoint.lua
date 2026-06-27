-- QuestCore: direction arrow, multi-waypoint pins, route lines on world map.

local addonName, QuestCore = ...
local QC = QuestCore

local Waypoint = {}
QC.Waypoint = Waypoint

local HBD = QC.HBD
local HBDPins = QC.HBDPins
local HBD_SHOW_PARENT = HBDPins and HBDPins.HBD_PINS_WORLDMAP_SHOW_PARENT
	or (HBDPins and rawget(HBDPins, "HBD_PINS_WORLDMAP_SHOW_PARENT"))
local MAP_PIN_FLAG = HBD_SHOW_PARENT or 1
local math_atan2 = QC.atan2 or math.atan2 or math.atan
local math_sqrt = math.sqrt
local math_abs = math.abs
local math_min = math.min
local math_sin = math.sin
local math_cos = math.cos
local WHITE = "Interface\\Buttons\\WHITE8X8"
local ARROW_TEX = "Interface\\Minimap\\MiniMap-QuestArrow"
local LINE_TEX = "Interface\\Buttons\\WHITE8X8"

local PIN_ACTIVE = { 0.10, 0.70, 1.00 }
local PIN_ROUTE  = { 0.40, 0.75, 0.95 }

local function PinColor(active)
	if QC.GetColor then
		return active and QC:GetColor("pins", "active") or QC:GetColor("pins", "route")
	end
	return active and PIN_ACTIVE or PIN_ROUTE
end
local ANT_MASK   = "Interface\\CharacterFrame\\TempPortraitAlphaMask"
local MASK_CIRCLE = ANT_MASK
local DEFAULT_LINE_COLOR = { 0, 0.8, 1, 0.7 }
local DEFAULT_DOT_COLOR = { 0.35, 0.80, 1.00, 0.75 }
local DEFAULT_DOT_SPEED = 0.4

local SHAPE_ROTATION = {
	square = 0,
	circle = 0,
	diamond = math.pi / 4,
}

local function GetWaypointPinSettings()
	local r = (QC.db and QC.db.profile and QC.db.profile.routes) or {}
	return {
		size = math.max(1, math.min(24, r.pinSize or 12)),
		shape = r.pinShape or "circle",
		outline = r.pinOutline == true,
		outlineSize = math.max(0, math.min(6, r.pinOutlineSize or 2)),
	}
end

local function DetachCircleMasks(pin)
	if pin._fillMaskAttached and pin._fillMaskTex then
		pin._fillMaskAttached:RemoveMaskTexture(pin._fillMaskTex)
	end
	if pin._borderMaskAttached and pin._borderMaskTex then
		pin._borderMaskAttached:RemoveMaskTexture(pin._borderMaskTex)
	end
	pin._fillMaskAttached = nil
	pin._borderMaskAttached = nil
	pin._fillMask = nil
	pin._borderMask = nil
end

local function SetPinTexRotation(frame, angle)
	angle = angle or 0
	for _, tex in ipairs({ frame.fill, frame.border }) do
		if tex and tex.SetRotation then
			tex:SetRotation(angle)
		end
	end
end

local function ApplyCircleMask(pin, tex, storeKey, attachKey)
	if not pin.CreateMaskTexture then return nil end
	local mask = pin[storeKey]
	if not mask then
		mask = pin:CreateMaskTexture(nil, "OVERLAY")
		mask:SetTexture(MASK_CIRCLE, "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
		pin[storeKey] = mask
	end
	if pin[attachKey] and pin[attachKey] ~= tex then
		pin[attachKey]:RemoveMaskTexture(mask)
		pin[attachKey] = nil
	end
	if pin[attachKey] ~= tex then
		tex:AddMaskTexture(mask)
		pin[attachKey] = tex
	end
	mask:ClearAllPoints()
	mask:SetAllPoints(tex)
	return mask
end

local function EnsurePinLayers(pin)
	if pin.fill and pin.border then return end
	if pin.tex and not pin.fill then
		pin.fill = pin.tex
	end
	if not pin.border then
		pin.border = pin:CreateTexture(nil, "BACKGROUND")
	end
	if not pin.fill then
		pin.fill = pin:CreateTexture(nil, "ARTWORK")
	end
	pin.tex = pin.fill
end

local function ApplyWaypointPinStyle(frame, col, settings, size)
	EnsurePinLayers(frame)
	if size then frame:SetSize(size, size) end

	local shape = settings.shape or "circle"
	local outSize = settings.outline and settings.outlineSize or 0
	local outlineCol = { 0, 0, 0, 1 }

	if shape == "circle" then
		SetPinTexRotation(frame, 0)
	else
		DetachCircleMasks(frame)
		SetPinTexRotation(frame, SHAPE_ROTATION[shape] or 0)
	end

	frame.fill:ClearAllPoints()
	frame.border:ClearAllPoints()
	frame.fill:SetTexture(WHITE)
	frame.border:SetTexture(WHITE)

	if outSize > 0 and settings.outline then
		frame.border:SetPoint("TOPLEFT", frame, "TOPLEFT", -outSize, outSize)
		frame.border:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", outSize, -outSize)
		frame.border:SetVertexColor(outlineCol[1], outlineCol[2], outlineCol[3], outlineCol[4] or 1)
		frame.border:Show()
		frame.fill:SetAllPoints(frame)
	else
		frame.border:Hide()
		frame.fill:SetAllPoints(frame)
	end

	frame.fill:SetVertexColor(col[1], col[2], col[3], col[4] or 1)

	if shape == "circle" then
		frame._fillMask = ApplyCircleMask(frame, frame.fill, "_fillMaskTex", "_fillMaskAttached")
		if frame.border:IsShown() then
			frame._borderMask = ApplyCircleMask(frame, frame.border, "_borderMaskTex", "_borderMaskAttached")
		end
	end
end

-- Spacing between minimap breadcrumb pins (yards, game units).
local MINI_CRUMB_YARDS = 12
local ANT_MAX = 60
local ANT_FLOW_DOTS = 5       -- animated dots per trail segment
local ANT_DOT_SIZE = 6
local ARROW_TICK = 0.05
local TRAIL_UPDATE_INTERVAL = 0.05  -- max ~20 trail rebuilds/sec
local ANT_UPDATE_INTERVAL = 0.05
local RETARGET_COOLDOWN = 0.25
local SPEED_SAMPLE_MAX = 12
local EMPTY_TRAIL = {}
local wipe = wipe or table.wipe or function(t)
	for k in pairs(t) do t[k] = nil end
end
-- Blizzard world-map canvas uses width-based pixels; Y is squashed (legacy Pointer.lua).
local MAP_LINE_Y_SCALE = 0.6667

local function GetRouteLineRGBA()
	local c = (QC.GetColor and QC:GetColor("routes", "lineColor"))
		or (QC.db.profile.routes or {}).lineColor
		or DEFAULT_LINE_COLOR
	return c[1] or 0, c[2] or 0.8, c[3] or 1, c[4] or 0.7
end

local function GetDotRGBA()
	local c = (QC.GetColor and QC:GetColor("routes", "dotColor"))
		or (QC.db.profile.routes or {}).dotColor
		or DEFAULT_DOT_COLOR
	return c[1] or 0.35, c[2] or 0.80, c[3] or 1, c[4] or 0.75
end

local function GetDotSpeed()
	local s = (QC.db.profile.routes or {}).dotSpeed
	if type(s) == "number" and s > 0 then return s end
	return DEFAULT_DOT_SPEED
end

local function GetRouteLineThickness()
	local routes = QC.db.profile.routes or {}
	return routes.lineWidth or routes.lineThickness or 2
end

local function GetMiniCrumbSize()
	return math.max(1, math.min(8, GetRouteLineThickness()))
end

local function GetMiniCrumbYards()
	local routes = QC.db.profile.routes or {}
	local yards = routes.crumbYards or routes.dotYards
	if type(yards) == "number" and yards > 0 then return yards end
	local thick = GetRouteLineThickness()
	if thick <= 2 then return math.max(4, thick * 4) end
	return MINI_CRUMB_YARDS
end

-- Classic clients: Blizzard Line atlas often missing or SetColorTexture breaks tinting.
local function PreferTextureRouteLines()
	if QC.API and QC.API.PreferTextureRouteLines and QC.API.PreferTextureRouteLines() then
		return true
	end
	if QC.IsClassicEra or QC.IsTBC or QC.IsWrath then return true end
	local C = QC.Compat and QC.Compat.Client
	if C and (C.isClassicEra or C.isTBC or C.isWrath) then return true end
	if Waypoint._mapLineFillFail and Waypoint._mapLineFillFail >= 1 then return true end
	return Waypoint._mapLineTemplateOk == false
end

local HOP_KIND_L10N = {
	fly = "Fly from",
	place = "Walk to",
	portal = "Take portal",
	hearth = "Hearthstone to",
	goal = "Go to goal",
	item = "Use teleport",
}

local function L(k) return (QC.L and QC.L[k]) or k end

-- Player position for the follow-line (C_Map first, HBD fallback).
local function GetPlayerMapPoint()
	local playerMap
	if C_Map and C_Map.GetBestMapForUnit then
		playerMap = C_Map.GetBestMapForUnit("player")
	end
	if playerMap and C_Map.GetPlayerMapPosition then
		local pos = C_Map.GetPlayerMapPosition(playerMap, "player")
		if pos then
			local px, py = pos:GetXY()
			if px and py then
				if QC.EnsureMapData then QC.EnsureMapData(playerMap) end
				return playerMap, px, py
			end
		end
	end
	if HBD and HBD.GetPlayerZonePosition then
		local px, py, map = HBD:GetPlayerZonePosition(true)
		if px and map then
			if QC.EnsureMapData then QC.EnsureMapData(map) end
			return map, px, py
		end
	end
	return nil
end

local function EnsureGoalMap(goal)
	if not goal then return nil end
	local map = goal.GetMapId and goal:GetMapId() or goal.map
	if map and QC.EnsureMapData then QC.EnsureMapData(map) end
	return map
end

-- Translate a zone point onto the map currently open in the world map frame.
local function ToViewMapXY(viewMap, mapID, x, y)
	if not (viewMap and mapID and x and y) then return nil end
	if QC.EnsureMapData then
		QC.EnsureMapData(mapID)
		QC.EnsureMapData(viewMap)
	end
	if mapID == viewMap then return x, y end
	if QC.TranslateMapCoords then
		local tx, ty = QC.TranslateMapCoords(x, y, mapID, viewMap)
		if tx and ty then return tx, ty end
	end
	if HBD and HBD.TranslateZoneCoordinates then
		return HBD:TranslateZoneCoordinates(x, y, mapID, viewMap, true)
	end
	return nil
end

local function GetMapCanvasSize()
	local w, h = 0, 0
	if WorldMapFrame and WorldMapFrame.GetCanvas then
		local canvas = WorldMapFrame:GetCanvas()
		if canvas then
			w, h = canvas:GetWidth(), canvas:GetHeight()
		end
	end
	if w <= 0 then
		local child = WorldMapFrame and WorldMapFrame.ScrollContainer and WorldMapFrame.ScrollContainer.Child
		if child then
			w, h = child:GetWidth(), child:GetHeight()
		end
	end
	if w <= 0 and Waypoint.mapOverlay then
		w, h = Waypoint.mapOverlay:GetWidth(), Waypoint.mapOverlay:GetHeight()
	end
	return w, h
end

-- Map fraction (0..1) -> overlay pixel offsets from TOPLEFT (legacy / MapCanvas).
local function TrailPointToPixels(viewMap, mapID, x, y)
	if not (viewMap and mapID and x and y) then return nil end
	local tx, ty = ToViewMapXY(viewMap, mapID, x, y)
	if not tx or not ty then return nil end
	local w = select(1, GetMapCanvasSize())
	if not w or w <= 0 then return nil end
	return tx * w, -ty * w * MAP_LINE_Y_SCALE
end

local function ToMapPixels(viewMap, mapID, x, y)
	if not (WorldMapFrame and WorldMapFrame:IsShown() and viewMap) then return nil end
	return TrailPointToPixels(viewMap, mapID, x, y)
end

local function EnsureViewMapData()
	if not (WorldMapFrame and WorldMapFrame:IsShown()) then return end
	local viewMap = WorldMapFrame:GetMapID()
	if viewMap and QC.EnsureMapData then QC.EnsureMapData(viewMap) end
	return viewMap
end

local function NormMapID(mapID)
	if not mapID then return nil end
	local client = QC.Compat and QC.Compat.Client
	if client and client.isClassicEra and QC.NormalizeMapID then
		return QC.NormalizeMapID(mapID)
	end
	if client and client.isClassic then return mapID end
	return (QC.CanonicalMapID and QC.CanonicalMapID(mapID)) or mapID
end

local function MapsMatch(a, b)
	if not a or not b then return false end
	if a == b then return true end
	if QC.MapsEquivalent and QC.MapsEquivalent(a, b) then return true end
	local na, nb = NormMapID(a), NormMapID(b)
	if na and nb and na == nb then return true end
	if C_Map and C_Map.GetMapInfo then
		local ia, ib = C_Map.GetMapInfo(a), C_Map.GetMapInfo(b)
		if ia and ib and ia.mapID == ib.mapID then return true end
	end
	return false
end

local function PointVisibleOnView(viewMap, mapID, x, y)
	if not (mapID and x and y) then return false end
	if not viewMap then return true end
	if NormMapID(mapID) == NormMapID(viewMap) then return true end
	return ToViewMapXY(viewMap, mapID, x, y) ~= nil
end

local function SegmentDrawable(viewMap, a, b)
	if not (a and b and a.map and b.map and a.x and b.x and a.y and b.y) then return false end
	if not viewMap then return NormMapID(a.map) == NormMapID(b.map) end
	if NormMapID(a.map) == NormMapID(b.map) and NormMapID(a.map) == NormMapID(viewMap) then
		return true
	end
	local tx1, ty1 = ToViewMapXY(viewMap, a.map, a.x, a.y)
	local tx2, ty2 = ToViewMapXY(viewMap, b.map, b.x, b.y)
	if not (tx1 and ty1 and tx2 and ty2) then return false end
	if tx1 < -0.05 or tx1 > 1.05 or ty1 < -0.05 or ty1 > 1.05 then return false end
	if tx2 < -0.05 or tx2 > 1.05 or ty2 < -0.05 or ty2 > 1.05 then return false end
	return true
end

local function NormCoord(x, y)
	if not (x and y) then return nil, nil end
	if x > 1 or y > 1 then return x / 100, y / 100 end
	return x, y
end

local function Clamp01(x, y)
	if not (x and y) then return nil, nil end
	return math.max(0, math.min(1, x)), math.max(0, math.min(1, y))
end

-- Project a hop onto viewMap; trail points are stored in viewMap space (0..1).
local function ProjectOntoViewMap(viewMap, mapID, x, y)
	if not (viewMap and mapID and x and y) then return nil, nil end
	x, y = NormCoord(x, y)
	if not x then return nil, nil end
	if MapsMatch(mapID, viewMap) then
		return x, y
	end
	if HBD and HBD.TranslateZoneCoordinates then
		local tx, ty = HBD:TranslateZoneCoordinates(x, y, mapID, viewMap, true)
		if tx and ty then
			return Clamp01(tx, ty)
		end
	end
	local tx, ty = ToViewMapXY(viewMap, mapID, x, y)
	if tx and ty then
		return Clamp01(tx, ty)
	end
	return nil, nil
end

local function AppendTrailPoint(trail, pool, viewMap, x, y)
	if not (viewMap and x and y) then return end
	x, y = Clamp01(x, y)
	if not x then return end
	local prev = trail[#trail]
	if prev and math_abs(prev.x - x) < 0.0005 and math_abs(prev.y - y) < 0.0005 then
		return
	end
	local p
	local pn = pool and #pool or 0
	if pn > 0 then
		p = pool[pn]
		pool[pn] = nil
	else
		p = {}
	end
	p.map, p.x, p.y = viewMap, x, y
	trail[#trail + 1] = p
end

local function AppendGoalFallback(trail, pool, viewMap, arrowGoal, playerMap, px, py)
	if not (arrowGoal and arrowGoal.x and arrowGoal.y and viewMap) then return end
	local am = EnsureGoalMap(arrowGoal) or viewMap
	local gx, gy = NormCoord(arrowGoal.x, arrowGoal.y)
	if not gx then return end
	local tx, ty = ProjectOntoViewMap(viewMap, am, gx, gy)
	if not tx then
		tx, ty = Clamp01(gx, gy)
	end
	if #trail == 0 and px and py and playerMap then
		local plx, ply = ProjectOntoViewMap(viewMap, playerMap, px, py)
		if plx then
			AppendTrailPoint(trail, pool, viewMap, plx, ply)
		elseif MapsMatch(playerMap, viewMap) then
			AppendTrailPoint(trail, pool, viewMap, px, py)
		end
	end
	AppendTrailPoint(trail, pool, viewMap, tx, ty)
	if #trail < 2 and trail[1] then
		local p = trail[1]
		local ox, oy = tx, ty
		if math_abs(p.x - ox) < 0.001 and math_abs(p.y - oy) < 0.001 then
			ox = math.max(0, math.min(1, p.x + 0.05))
			oy = math.max(0, math.min(1, p.y + (p.y < 0.95 and 0.05 or -0.05)))
		end
		AppendTrailPoint(trail, pool, viewMap, ox, oy)
	end
end

function Waypoint:_AcquireTrailBuffer(bufferKey)
	local trail = self[bufferKey]
	if not trail then
		trail = {}
		self[bufferKey] = trail
	end
	local pool = self._trailPointPool
	if not pool then
		pool = {}
		self._trailPointPool = pool
	end
	for i = #trail, 1, -1 do
		pool[#pool + 1] = trail[i]
		trail[i] = nil
	end
	return trail, pool
end

-- Points on the map currently being viewed (world map frame or player zone for minimap).
function Waypoint:BuildDisplayTrail(arrowGoal, viewMap, bufferKey)
	bufferKey = bufferKey or "_trailBuildBuf"
	if not viewMap then
		if WorldMapFrame and WorldMapFrame:IsShown() and WorldMapFrame.GetMapID then
			viewMap = WorldMapFrame:GetMapID()
		else
			viewMap = select(1, GetPlayerMapPoint())
		end
	end
	if viewMap and QC.EnsureMapData then QC.EnsureMapData(viewMap) end
	if not viewMap then return EMPTY_TRAIL end

	local trail, pool = self:_AcquireTrailBuffer(bufferKey)
	local playerMap, px, py = GetPlayerMapPoint()
	px, py = NormCoord(px, py)

	-- 1. Player position is always the first trail point (projected onto viewMap).
	if px and py and playerMap then
		local plx, ply = ProjectOntoViewMap(viewMap, playerMap, px, py)
		if plx then
			AppendTrailPoint(trail, pool, viewMap, plx, ply)
		end
	end

	-- 2. Route hops: first hop MUST appear; later hops while they project onto viewMap.
	local hops = QC.CurrentRoute
	if type(hops) == "table" and #hops > 0 and not self.manual then
		local startIdx = 1
		local TG = QC.TravelGraph
		if TG and TG.activeRoute and TG.activeRoute.hopIdx then
			startIdx = TG.activeRoute.hopIdx
		end
		for i = startIdx, #hops do
			local h = hops[i]
			if not (h and h.map and h.x and h.y) then break end
			local hx, hy = ProjectOntoViewMap(viewMap, h.map, h.x, h.y)
			if i == startIdx then
				if hx then
					AppendTrailPoint(trail, pool, viewMap, hx, hy)
				else
					local x, y = Clamp01(NormCoord(h.x, h.y))
					if x then AppendTrailPoint(trail, pool, viewMap, x, y) end
				end
			elseif hx then
				AppendTrailPoint(trail, pool, viewMap, hx, hy)
			else
				break
			end
		end
	end

	-- 3. Step route chain (improvised waypath: inline gotos -> destination).
	local routeGoals = self._routeGoals
	if type(routeGoals) == "table" then
		for _, g in ipairs(routeGoals) do
			if g and not g.travelHop and g.x and g.y then
				local am = EnsureGoalMap(g)
				if am then
					local gx, gy = ProjectOntoViewMap(viewMap, am, g.x, g.y)
					if gx then AppendTrailPoint(trail, pool, viewMap, gx, gy) end
				end
			end
		end
	end

	-- 4. Guaranteed >= 2 points when a waypoint is active.
	if #trail < 2 and arrowGoal then
		AppendGoalFallback(trail, pool, viewMap, arrowGoal, playerMap, px, py)
	end

	return trail
end

----------------------------------------------------------------------
-- Build
----------------------------------------------------------------------

function Waypoint:Create()
	if self.arrowFrame then
		if not self.arrowFrame.rot and self.arrowFrame.tex then
			local a = self.arrowFrame
			local tex = a.tex
			local rot = CreateFrame("Frame", nil, a)
			rot:SetSize(40, 40)
			rot:SetPoint("CENTER", a, "CENTER", 0, 0)
			tex:SetParent(rot)
			tex:ClearAllPoints()
			tex:SetAllPoints(rot)
			a.rot = rot
		end
		self:ApplySettings()
		self.overlayMarkers = self.overlayMarkers or {}
		return
	end
	local cfg = QC.db.profile.arrow

	local a = CreateFrame("Frame", "QuestCoreArrow", UIParent)
	a:SetSize(40, 40)
	a:SetPoint(cfg.point or "TOP", UIParent, cfg.point or "TOP", cfg.x or 0, cfg.y or -120)
	a:SetMovable(true)
	a:EnableMouse(true)
	a:RegisterForDrag("LeftButton")
	a:SetScript("OnDragStart", function()
		if not QC.db.profile.arrow.locked then a:StartMoving() end
	end)
	a:SetScript("OnDragStop", function()
		a:StopMovingOrSizing()
		local point, _, _, x, y = a:GetPoint()
		cfg.point, cfg.x, cfg.y = point, x, y
	end)

	local tex = a:CreateTexture(nil, "ARTWORK")
	tex:SetTexture(ARROW_TEX)
	tex:SetSize(40, 40)
	tex:SetPoint("CENTER")

	-- Rotate the wrapper frame (reliable on all clients); texture stays unrotated.
	local rot = CreateFrame("Frame", nil, a)
	rot:SetSize(40, 40)
	rot:SetPoint("CENTER", a, "CENTER", 0, 0)
	tex:SetParent(rot)
	tex:ClearAllPoints()
	tex:SetAllPoints(rot)
	a.rot = rot
	a.tex = tex

	a.dist = a:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	a.dist:SetPoint("TOP", a, "BOTTOM", 0, -2)
	a.label = a:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	a.label:SetPoint("TOP", a.dist, "BOTTOM", 0, -2)
	a.label:SetWidth(160)

	a:SetScript("OnUpdate", function(_, elapsed)
		self._acc = (self._acc or 0) + elapsed
		if self._acc < ARROW_TICK then return end
		local tick = self._acc
		self._acc = 0
		self:Refresh(tick)
	end)
	a:Hide()
	self.arrowFrame = a

	self.miniPins = {}
	self.worldPins = {}
	self.antPins = {}
	self.antWorldPins = {}
	self.crumbPins = {}
	self.overlayMarkers = {}
	self.trailRef = {}   -- static minimap breadcrumbs (HereBeDragons)
	self.trailLineRef = {} -- HBD anchors for vector line endpoints (allowOffEdge)
	self.antMiniRef = {} -- animated minimap dots (refreshed each frame)

	-- Overlay for waypoint dots on the world map (lines use GetCanvas pool like QuestCore).
	if WorldMapFrame and WorldMapFrame.ScrollContainer and WorldMapFrame.ScrollContainer.Child then
		self.mapOverlay = CreateFrame("Frame", "QuestCoreMapRouteOverlay", WorldMapFrame.ScrollContainer.Child)
		self.mapOverlay:SetAllPoints(true)
		self.mapOverlay:SetAlpha(1)
		self.mapOverlay:EnableMouse(false)
		self.mapOverlay:SetFrameStrata("HIGH")
		self.mapOverlay:SetFrameLevel(WorldMapFrame.ScrollContainer.Child:GetFrameLevel() + 10)
		self.mapOverlay:Show()
	end

	-- Throttled trail refresh + marching dots (avoid per-frame HBD rebuilds).
	local ticker = CreateFrame("Frame")
	ticker:SetScript("OnUpdate", function(_, elapsed)
		if not self._arrowGoal then return end
		self._trailThrottle = (self._trailThrottle or 0) + elapsed
		if self._trailThrottle >= TRAIL_UPDATE_INTERVAL then
			self:UpdateTrail(false)
			self._trailThrottle = 0
		end
		if self:ShouldDrawAntTrail() then
			self._antThrottle = (self._antThrottle or 0) + elapsed
			if self._antThrottle >= ANT_UPDATE_INTERVAL then
				self:AnimateAntTrail(self._antThrottle)
				self._antThrottle = 0
			end
		end
	end)
	self.trailTicker = ticker

	if QC.Options then QC.Options:ApplyArrow() end
	self:ApplySettings()
end

local function StyleMapLineFill(fill, thickness)
	if not fill then return end
	if not thickness then thickness = GetRouteLineThickness() end
	if fill.SetThickness then fill:SetThickness(thickness) end
	local r, g, b, a = GetRouteLineRGBA()
	-- Line atlas (_UI-Taxi-Line-horizontal): tint via vertex color only.
	local isLine = fill.GetObjectType and fill:GetObjectType() == "Line"
	if isLine then
		if fill.SetVertexColor then fill:SetVertexColor(r, g, b, a or 1) end
	elseif fill.SetColorTexture then
		fill:SetColorTexture(r, g, b, a)
	else
		fill:SetVertexColor(r, g, b, a)
	end
	if fill.SetAlpha then fill:SetAlpha(a or 1) end
	fill:Show()
end

local function GetMapLineFill(line)
	if not line then return nil end
	if line.Fill then return line.Fill end
	if line.GetRegions then
		for _, reg in ipairs({ line:GetRegions() }) do
			if reg and reg.SetStartPoint and reg.SetEndPoint then
				line.Fill = reg
				return reg
			end
		end
	end
	return nil
end

function Waypoint:EnsureMapOverlay()
	local child = WorldMapFrame and WorldMapFrame.ScrollContainer and WorldMapFrame.ScrollContainer.Child
	if not child then return nil end
	if self.mapOverlay and self.mapOverlay:GetParent() ~= child then
		self.mapOverlay:SetParent(child)
	end
	if not self.mapOverlay then
		self.mapOverlay = CreateFrame("Frame", "QuestCoreMapRouteOverlay", child)
	end
	self.mapOverlay:SetAllPoints(true)
	self.mapOverlay:SetAlpha(1)
	self.mapOverlay:EnableMouse(false)
	self.mapOverlay:SetFrameStrata("HIGH")
	self.mapOverlay:SetFrameLevel(child:GetFrameLevel() + 10)
	self.mapOverlay:Show()
	return self.mapOverlay
end

local function MapLinePoolResetter(_, line)
	if line then line:Hide() end
end

-- QuestCore Pointer.lua: line frames live on WorldMapFrame:GetCanvas(), not ScrollContainer.Child.
function Waypoint:EnsureMapLinePool()
	if self.mapLinePool then return true end
	if not (WorldMapFrame and WorldMapFrame.GetCanvas) then return false end
	local canvas = WorldMapFrame:GetCanvas()
	if not canvas then return false end
	local probe = CreateFrame("Frame", nil, canvas, "QuestCore_MapLineTemplate")
	self._mapLineTemplateOk = probe and GetMapLineFill(probe) ~= nil
	if probe then
		probe:Hide()
		probe:SetParent(nil)
	end
	if not CreateFramePool then return false end
	local ok, pool = pcall(CreateFramePool, "FRAME", canvas, "QuestCore_MapLineTemplate", MapLinePoolResetter)
	if ok and pool then
		self.mapLinePool = pool
		return true
	end
	return false
end

function Waypoint:AcquireTextureLine(index)
	local canvas = WorldMapFrame and WorldMapFrame.GetCanvas and WorldMapFrame:GetCanvas()
	if not canvas then return nil end
	self.textureLines = self.textureLines or {}
	local tex = self.textureLines[index]
	if tex then return tex end
	tex = canvas:CreateTexture(nil, "OVERLAY")
	tex:SetTexture(LINE_TEX)
	tex:SetDrawLayer("OVERLAY", 7)
	self.textureLines[index] = tex
	return tex
end

function Waypoint:DrawTextureLineSegment(index, x1, y1, x2, y2, thickness)
	local canvas = WorldMapFrame and WorldMapFrame.GetCanvas and WorldMapFrame:GetCanvas()
	if not canvas then return false end
	local tex = self:AcquireTextureLine(index)
	if not tex then return false end
	local dx, dy = x2 - x1, y2 - y1
	local len = (dx * dx + dy * dy) ^ 0.5
	if len < 0.5 then return false end
	if not thickness then thickness = GetRouteLineThickness() end
	local angle = math_atan2(dy, dx)
	tex:ClearAllPoints()
	tex:SetHeight(thickness)
	tex:SetPoint("BOTTOMLEFT", canvas, "TOPLEFT", x1, y1)
	tex:SetWidth(math.max(1, len))
	tex:SetRotation(angle)
	local lr, lg, lb, la = GetRouteLineRGBA()
	tex:SetVertexColor(lr, lg, lb, la)
	tex:Show()
	return true
end

function Waypoint:HideTextureLines(fromIndex)
	fromIndex = fromIndex or 1
	for i = fromIndex, #(self.textureLines or {}) do
		if self.textureLines[i] then self.textureLines[i]:Hide() end
	end
end

function Waypoint:HideRouteLines()
	if self.mapLinePool then
		self.mapLinePool:ReleaseAll()
	end
	self:HideTextureLines()
end

function Waypoint:HideMinimapRouteLines()
	if self.minimapLinePool then
		self.minimapLinePool:ReleaseAll()
	end
	self:HideMinimapTextureLines()
	self._minimapLineCount = 0
end

function Waypoint:AcquireCrumbPin(index)
	local pin = self.crumbPins[index]
	local size = GetMiniCrumbSize()
	if pin then
		pin:SetSize(size, size)
		return pin
	end
	pin = CreateFrame("Frame", nil, UIParent)
	pin:SetSize(size, size)
	local t = pin:CreateTexture(nil, "OVERLAY")
	t:SetTexture(WHITE)
	t:SetAllPoints()
	pin.tex = t
	self.crumbPins[index] = pin
	return pin
end

function Waypoint:StyleCrumbPin(pin, animated)
	if not pin or not pin.tex then return end
	local r, g, b, a
	if animated then
		r, g, b, a = GetDotRGBA()
	else
		r, g, b, a = GetRouteLineRGBA()
	end
	pin.tex:SetVertexColor(r, g, b, a or 0.85)
	pin:SetAlpha(a or 0.85)
end

-- Place HBD minimap breadcrumb pins along one trail segment (~12 yd apart).
function Waypoint:PlaceMinimapCrumbSegment(pinIdx, mapA, x1, y1, mapB, x2, y2, yardSpacing)
	if not (HBDPins and HBD and mapA and mapB and mapA == mapB) then return pinIdx end
	if not (x1 and y1 and x2 and y2) then return pinIdx end
	yardSpacing = yardSpacing or GetMiniCrumbYards()
	local dist = HBD:GetZoneDistance(mapA, x1, y1, mapB, x2, y2)
	if not dist then return pinIdx end
	if dist < yardSpacing * 0.5 then
		-- Very close targets (elevated NPCs, same map XY): show at least the goal crumb.
		if dist > 0.5 then
			pinIdx = pinIdx + 1
			local pin = self:AcquireCrumbPin(pinIdx)
			self:StyleCrumbPin(pin, false)
			HBDPins:AddMinimapIconMap(self.trailRef, pin, mapB, x2, y2, true, true)
			if pin.tex and pin.tex.SetDrawLayer then pin.tex:SetDrawLayer("OVERLAY", 4) end
			pin:Show()
		end
		return pinIdx
	end
	local steps = math.min(ANT_MAX - pinIdx, math.max(1, math.floor(dist / yardSpacing)))
	for s = 1, steps do
		local f = s / (steps + 1)
		local x = x1 + (x2 - x1) * f
		local y = y1 + (y2 - y1) * f
		pinIdx = pinIdx + 1
		local pin = self:AcquireCrumbPin(pinIdx)
		self:StyleCrumbPin(pin, false)
		HBDPins:AddMinimapIconMap(self.trailRef, pin, mapA, x, y, true, true)
		if pin.tex and pin.tex.SetDrawLayer then pin.tex:SetDrawLayer("OVERLAY", 4) end
		pin:Show()
	end
	return pinIdx
end

-- Minimap route: micro-pins via HereBeDragons (ant trail), not vector lines.
function Waypoint:DrawMinimapBreadcrumbs(trail, drawStatic, drawAnimated)
	if not (HBDPins and trail and #trail >= 2) then
		self._minimapLineCount = 0
		return
	end
	local pinIdx = 0
	local spacing = GetMiniCrumbYards()
	if drawStatic ~= false then
		for i = 1, #trail - 1 do
			local a, b = trail[i], trail[i + 1]
			if a and b and a.map and b.map and a.x and a.y and b.x and b.y then
				pinIdx = self:PlaceMinimapCrumbSegment(pinIdx, a.map, a.x, a.y, b.map, b.x, b.y, spacing)
			end
		end
	end
	self._minimapLineCount = pinIdx
end

-- Minimap view radius in yards (matches HereBeDragons-Pins logic).
local MINIMAP_ZOOM_SIZE = {
	indoor = { [0] = 300, [1] = 240, [2] = 180, [3] = 120, [4] = 80, [5] = 50 },
	outdoor = { [0] = 466 + 2 / 3, [1] = 400, [2] = 333 + 1 / 3, [3] = 266 + 2 / 6, [4] = 200, [5] = 133 + 1 / 3 },
}

local function GetMinimapViewRadius()
	if not Minimap then return nil end
	if C_Minimap and C_Minimap.GetViewRadius then
		return C_Minimap.GetViewRadius()
	end
	local zoom = Minimap:GetZoom()
	local indoors = GetCVar("minimapZoom") + 0 == zoom and "outdoor" or "indoor"
	local sizes = MINIMAP_ZOOM_SIZE[indoors]
	return sizes and sizes[zoom] and (sizes[zoom] / 2) or nil
end

local function ApplyMinimapRotation(xDist, yDist)
	if GetCVar("rotateMinimap") == "1" then
		local facing = GetPlayerFacing and GetPlayerFacing()
		if facing then
			local s, c = math_sin(facing), math_cos(facing)
			return xDist * c - yDist * s, xDist * s + yDist * c
		end
	end
	return xDist, yDist
end

local function WorldToMinimapNorm(worldX, worldY, playerX, playerY, mapRadius)
	local xDist, yDist = playerX - worldX, playerY - worldY
	xDist, yDist = ApplyMinimapRotation(xDist, yDist)
	return xDist / mapRadius, yDist / mapRadius
end

-- Classic fallback when world/instance coords fail indoors (Teldrassil tree ramps).
local function MapPointToMinimapNorm(mapID, x, y)
	local mapAPI = QC.Compat and QC.Compat.Map
	local client = QC.Compat and QC.Compat.Client
	if not (client and client.isClassic and mapAPI) then return nil, nil end
	local playerMap = mapAPI.GetBestMapForUnit("player")
	if not (playerMap and mapID) then return nil, nil end
	if QC.NormalizeMapID then
		playerMap = QC.NormalizeMapID(playerMap)
		mapID = QC.NormalizeMapID(mapID)
	end
	local px, py = mapAPI.GetPlayerMapPosition(playerMap, "player")
	if not (px and py) then return nil, nil end
	local tx, ty = x, y
	if playerMap ~= mapID and QC.TranslateMapCoords then
		tx, ty = QC.TranslateMapCoords(x, y, mapID, playerMap)
	end
	if not (tx and ty) then return nil, nil end
	local mapRadius = GetMinimapViewRadius()
	if not mapRadius or mapRadius == 0 then return nil, nil end
	if QC.EnsureMapData then QC.EnsureMapData(playerMap) end
	local md = HBD.mapData and HBD.mapData[playerMap]
	local scaleX = (md and md[1]) or 400
	local scaleY = (md and md[2]) or scaleX
	local xDist = (tx - px) * scaleX
	local yDist = (ty - py) * scaleY
	xDist, yDist = ApplyMinimapRotation(xDist, yDist)
	return xDist / mapRadius, yDist / mapRadius
end

local function ZonePointToMinimapNorm(mapID, x, y)
	if not (HBD and mapID and x and y) then return nil, nil end
	local wx, wy, inst = HBD:GetWorldCoordinatesFromZone(x, y, mapID)
	local px, py, pinst = HBD:GetPlayerWorldPosition()
	if wx and px and not (inst and pinst and inst ~= pinst) then
		local mapRadius = GetMinimapViewRadius()
		if mapRadius and mapRadius > 0 then
			local nx, ny = WorldToMinimapNorm(wx, wy, px, py, mapRadius)
			if nx and ny then return nx, ny end
		end
	end
	return MapPointToMinimapNorm(mapID, x, y)
end

-- Normalized trim from player center (legacy Pointer); ~0.07 ≈ 16 yd at default zoom.
local MINIMAP_PLAYER_TRIM = 0.07

-- Clip a minimap segment to the circular edge (legacy Pointer:UpdateMapLines).
local function ClipMinimapLineToCircle(ax, ay, bx, by, trimPlayerStart)
	local Cr = 0.95
	local Cx, Cy = 0, 0

	if trimPlayerStart then
		local bax, bay = bx - ax, by - ay
		local lab = math_sqrt(bax * bax + bay * bay)
		if lab < 0.000001 then return end
		-- Only trim when the segment is longer than the trim distance.
		-- Short hops (elevated NPCs, same spot on map) must keep a visible stub.
		if lab > MINIMAP_PLAYER_TRIM then
			local shift = MINIMAP_PLAYER_TRIM / lab
			ax, ay = ax + bax * shift, ay + bay * shift
		end
	end

	local bax, bay = bx - ax, by - ay
	local lab = math_sqrt(bax * bax + bay * bay)
	if lab < 0.000001 then return end
	local dx, dy = bax / lab, bay / lab
	local t = dx * (Cx - ax) + dy * (Cy - ay)
	local ex, ey = t * dx + ax, t * dy + ay
	local lec = math_sqrt((ex - Cx) * (ex - Cx) + (ey - Cy) * (ey - Cy))
	if lec >= Cr then return end

	local dt = math_sqrt(Cr * Cr - lec * lec)
	local acut = math_sqrt((ax - Cx) * (ax - Cx) + (ay - Cy) * (ay - Cy)) > Cr
	local bcut = math_sqrt((bx - Cx) * (bx - Cx) + (by - Cy) * (by - Cy)) > Cr
	if acut and bcut
		and ((ex > ax and ex > bx) or (ex < ax and ex < bx))
		and ((ey > ay and ey > by) or (ey < ay and ey < by)) then
		return
	end

	local oax, oay = ax, ay
	if acut then ax, ay = (t - dt) * dx + ax, (t - dt) * dy + ay end
	if bcut then bx, by = (t + dt) * dx + oax, (t + dt) * dy + oay end
	return ax, ay, bx, by
end

function Waypoint:TrailPointToMinimapNorm(mapID, x, y, anchorIdx)
	if not (HBD and HBDPins and Minimap and mapID and x and y) then
		return ZonePointToMinimapNorm(mapID, x, y)
	end
	self._trailLineAnchors = self._trailLineAnchors or {}
	local f = self._trailLineAnchors[anchorIdx]
	if not f then
		f = CreateFrame("Frame", nil, Minimap)
		f:SetSize(1, 1)
		self._trailLineAnchors[anchorIdx] = f
	end
	local playerMap = select(1, GetPlayerMapPoint())
	if playerMap and QC.NormalizeMapID then
		playerMap = QC.NormalizeMapID(playerMap)
		mapID = QC.NormalizeMapID(mapID) or mapID
	end
	-- Same-zone map coords align with quest pins on the minimap.
	if playerMap and mapID == playerMap then
		HBDPins:AddMinimapIconMap(self.trailLineRef, f, mapID, x, y, true, "allowOffEdge")
		if f.minimap_x and f.minimap_y then
			return f.minimap_x, f.minimap_y
		end
	end
	local wx, wy, inst = HBD:GetWorldCoordinatesFromZone(x, y, mapID)
	if wx then
		HBDPins:AddMinimapIconWorld(self.trailLineRef, f, inst, wx, wy, false, "allowOffEdge")
		if f.minimap_x and f.minimap_y then
			return f.minimap_x, f.minimap_y
		end
	end
	return ZonePointToMinimapNorm(mapID, x, y)
end

local function MinimapGoalPoint(goal)
	if not goal then return nil, nil, nil end
	local mapID = goal.map or (goal.GetMapId and goal:GetMapId())
	local gx, gy = goal.x, goal.y
	if mapID and gx and gy then return mapID, gx, gy end
	return nil, nil, nil
end

function Waypoint:DrawMinimapVectorLines(trail, arrowGoal)
	if not Minimap then
		self._minimapLineCount = 0
		return false
	end
	local drawn = 0
	local thickness = GetRouteLineThickness()

	local function trySegment(index, ax, ay, bx, by, trimStart)
		if not (ax and ay and bx and by) then return false end
		local cax, cay, cbx, cby = ClipMinimapLineToCircle(ax, ay, bx, by, trimStart)
		if not cax and trimStart then
			cax, cay, cbx, cby = ax, ay, bx, by
		end
		if cax and self:DrawMinimapTextureLineSegment(index, cax, cay, cbx, cby, thickness) then
			return true
		end
		return false
	end

	-- Minimap: one line from player center to the active arrow goal (matches pins / arrow).
	local mapID, gx, gy = MinimapGoalPoint(arrowGoal)
	if not mapID and trail and #trail > 0 then
		local pt = trail[#trail]
		mapID, gx, gy = pt.map, pt.x, pt.y
	end
	if mapID and gx and gy then
		local bx, by = self:TrailPointToMinimapNorm(mapID, gx, gy, 1)
		if bx and by and trySegment(1, 0, 0, bx, by, true) then
			drawn = 1
		end
	end

	self:HideMinimapTextureLines(drawn + 1)
	self._minimapLineCount = drawn
	return drawn > 0
end

-- Minimap route: vector line to arrow goal; HBD crumbs if line draw fails.
function Waypoint:DrawMinimapRouteLines(trail, arrowGoal)
	if self:DrawMinimapVectorLines(trail, arrowGoal) then
		return
	end
	self:DrawMinimapBreadcrumbs(trail, true, false)
end

function Waypoint:AcquireMinimapTextureLine(index)
	if not Minimap then return nil end
	self.minimapTextureLines = self.minimapTextureLines or {}
	local tex = self.minimapTextureLines[index]
	if tex then return tex end
	tex = Minimap:CreateTexture(nil, "OVERLAY")
	tex:SetTexture(LINE_TEX)
	tex:SetDrawLayer("OVERLAY", 7)
	self.minimapTextureLines[index] = tex
	return tex
end

function Waypoint:DrawMinimapTextureLineSegment(index, ax, ay, bx, by, thickness)
	if not Minimap then return false end
	local tex = self:AcquireMinimapTextureLine(index)
	if not tex then return false end
	local mmw = Minimap:GetWidth() / 2
	local mmh = Minimap:GetHeight() / 2
	if mmw <= 0 or mmh <= 0 then return false end
	local x1, y1 = ax * mmw, -ay * mmh
	local x2, y2 = bx * mmw, -by * mmh
	local dx, dy = x2 - x1, y2 - y1
	local len = (dx * dx + dy * dy) ^ 0.5
	if len < 0.5 then return false end
	if not thickness then thickness = GetRouteLineThickness() end
	local miniScale = Minimap:GetScale() or 1
	if miniScale <= 0 then miniScale = 1 end
	thickness = thickness / miniScale
	tex:ClearAllPoints()
	tex:SetHeight(thickness)
	tex:SetWidth(math.max(1, len))
	tex:SetPoint("BOTTOMLEFT", Minimap, "CENTER", x1, y1)
	if tex.SetRotation then tex:SetRotation(math_atan2(dy, dx)) end
	local lr, lg, lb, la = GetRouteLineRGBA()
	tex:SetVertexColor(lr, lg, lb, la)
	tex:Show()
	return true
end

function Waypoint:HideMinimapTextureLines(fromIndex)
	fromIndex = fromIndex or 1
	for i = fromIndex, #(self.minimapTextureLines or {}) do
		if self.minimapTextureLines[i] then self.minimapTextureLines[i]:Hide() end
	end
end

function Waypoint:EnsureMinimapLinePool()
	if self.minimapLinePool then return true end
	if not (Minimap and CreateFramePool) then return false end
	local ok, pool = pcall(CreateFramePool, "FRAME", Minimap, "QuestCore_MapLineTemplate", MapLinePoolResetter)
	if ok and pool then
		self.minimapLinePool = pool
		return true
	end
	return false
end

function Waypoint:FormatArrowLabel(goal)
	if not goal then return L("Go to goal") end
	local labelGoal = goal._waypointSourceGoal or goal
	if labelGoal.text and labelGoal.text ~= "" and labelGoal.travelHop then
		return labelGoal.text
	end
	local TG = QC.TravelGraph
	if TG and TG.activeRoute and TG.activeRoute.hops then
		local idx = TG.activeRoute.hopIdx or 1
		local hop = TG.activeRoute.hops[idx]
		if hop then
			local prefix = L(HOP_KIND_L10N[hop.kind] or "Walk to")
			return "|cff33d6ff" .. prefix .. ":|r " .. (hop.name or L("Destination"))
		end
	end
	if goal.action == "mapmarker" then
		local step = QC.CurrentStep
		if step and step.goals then
			for _, g in ipairs(step.goals) do
				if g:IsVisible() and not g:IsComplete() and g.GetText then
					local a = g.action
					if a == "kill" or a == "collect" or a == "get" or a == "grind" then
						local txt = g:GetText()
						if txt and txt ~= "" then return txt end
					end
				end
			end
		end
	end
	if goal.action == "vendor" or goal.action == "trainer" then
		local step = QC.CurrentStep
		if step and step.goals then
			for _, g in ipairs(step.goals) do
				if g:IsVisible() and not g:IsComplete() and g.GetText then
					local a = g.action
					if a == "talk" or a == "accept" or a == "turnin" then
						local txt = g:GetText()
						if txt and txt ~= "" then return txt end
					end
				end
			end
		end
	end
	if labelGoal.GetText then
		local txt = labelGoal:GetText()
		if txt and txt ~= "" then return txt end
	end
	return labelGoal.text or goal.text or L("Go to goal")
end

function Waypoint:AdvanceTravelHop()
	local TG = QC.TravelGraph
	if TG and TG.CheckHopAdvance then
		TG:CheckHopAdvance()
	end
	if TG and TG.activeRoute and TG.activeRoute.arrowGoal then
		return TG:GetArrowGoal(self.target)
	end
	return self.target
end

local function ApplyArrowFonts()
	local cfg = QC.db.profile.arrow
	local a = Waypoint.arrowFrame
	if not a or not a.dist or not a.label then return end
	local fontSize = cfg.fontSize or 12
	local labelSize = math.max(8, fontSize - 1)
	if QC.Font and QC.Font.ApplyArrow then
		QC.Font.ApplyArrow(a.dist, fontSize, cfg.outline)
		QC.Font.ApplyArrow(a.label, labelSize, cfg.outline)
	elseif QC.Font and QC.Font.Apply then
		QC.Font.Apply(a.dist, fontSize, cfg.outline)
		QC.Font.Apply(a.label, labelSize, cfg.outline)
	end
end

local function RefreshArrowText()
	local a = Waypoint.arrowFrame
	if not a or not a:IsShown() then return end
	if Waypoint.target then
		Waypoint:Refresh()
		return
	end
	local labelText = a.label:GetText()
	local distText = a.dist:GetText()
	if distText and distText ~= "" then a.dist:SetText(distText) end
	if labelText and labelText ~= "" then a.label:SetText(labelText) end
end

function Waypoint:ResolveArrowGoal(step, arrowGoal)
	local TG = QC.TravelGraph
	local Travel = QC.Travel
	if self.manual then return self.manual end
	if self.focusGoal and self.focusGoal.x then return self.focusGoal end
	if arrowGoal and TG and TG.activeRoute and TG.activeRoute.arrowGoal then
		return TG:GetArrowGoal(arrowGoal)
	end
	if arrowGoal and Travel and Travel.RouteToCurrentGoal then
		Travel:RouteToCurrentGoal(true)
		if TG and TG.activeRoute and TG.activeRoute.arrowGoal then
			return TG:GetArrowGoal(arrowGoal)
		end
	end
	return arrowGoal
end

function Waypoint:ApplySettings()
	local cfg = QC.db.profile.arrow
	local a = self.arrowFrame
	if not a then return end

	a:SetScale(cfg.scale or 1.0)
	a:RegisterForDrag(not cfg.locked and "LeftButton" or "none")

	local skin = QC.GetArrowSkin and QC.GetArrowSkin(cfg.skin or "classic") or {}
	local size = skin.size or 40
	if a.rot then a.rot:SetSize(size, size) end
	if a.tex then
		a.tex:SetTexture(skin.texture or ARROW_TEX)
		a.tex:SetSize(size, size)
		a.tex:SetVertexColor(1, 1, 1, 1)
		a._skinTint = skin.tint
	end

	ApplyArrowFonts()
	RefreshArrowText()
	self:ApplyRouteSettings()
end

-- Rebuild route lines/dots when map route options change (colors, thickness, style).
function Waypoint:ApplyRouteSettings()
	if self._arrowGoal and self.UpdateTrail then
		self._trailStateSig = nil
		self:UpdateTrail(true)
	elseif self._lastMiniTrail and #self._lastMiniTrail >= 2 then
		self._trailStateSig = nil
		self:UpdateTrail(true)
	end
end

local function SetArrowRotation(rot, tex, angle)
	if rot and rot.SetRotation then
		rot:SetRotation(angle)
	elseif tex and tex.SetRotation then
		tex:SetRotation(angle)
	end
end
local function GetPlayerFacingRad()
	if GetPlayerFacing then
		local f = GetPlayerFacing()
		if f then return f end
	end
	if UnitFacing then
		local f = UnitFacing("player")
		if f then return f end
	end
	return 0
end

local function GoalFromPoint(pt, extra)
	local g = {
		map = pt.map, x = pt.x, y = pt.y,
		mapname = pt.mapname, mapfloor = pt.mapfloor,
		text = pt.text or "", action = pt.action or "goto",
		travelHop = pt.travelHop,
	}
	if extra then for k, v in pairs(extra) do g[k] = v end end
	return setmetatable(g, QC.GoalProto_mt)
end

function Waypoint:AcquirePin(pool, index, size)
	local pin = pool[index]
	if pin then
		EnsurePinLayers(pin)
		if size then pin:SetSize(size, size) end
		return pin
	end
	pin = CreateFrame("Frame", nil, UIParent)
	pin:SetSize(size, size)
	pin.border = pin:CreateTexture(nil, "BACKGROUND")
	pin.fill = pin:CreateTexture(nil, "ARTWORK")
	pin.tex = pin.fill

	-- Pulsing alpha for the active waypoint.
	local pulse = pin:CreateAnimationGroup()
	local a1 = pulse:CreateAnimation("Alpha")
	a1:SetFromAlpha(1); a1:SetToAlpha(0.3); a1:SetDuration(0.6); a1:SetOrder(1); a1:SetSmoothing("IN_OUT")
	local a2 = pulse:CreateAnimation("Alpha")
	a2:SetFromAlpha(0.3); a2:SetToAlpha(1); a2:SetDuration(0.6); a2:SetOrder(2); a2:SetSmoothing("IN_OUT")
	pulse:SetLooping("REPEAT")
	pin.pulse = pulse

	pool[index] = pin
	return pin
end

local function SetPinPulse(pin, on)
	if not pin or not pin.pulse then return end
	if on then
		if not pin.pulse:IsPlaying() then pin.pulse:Play() end
	else
		pin.pulse:Stop()
		pin:SetAlpha(1)
	end
end

-- Small trail dot for the "ant trail" between waypoints (pooled per surface).
local function SetupRoundAntPin(pin)
	local t = pin.tex
	if not t then return end
	t:SetTexture(WHITE)
	t:SetAllPoints()
	if not pin.mask then
		local mask = pin:CreateMaskTexture(nil, "OVERLAY")
		mask:SetTexture(ANT_MASK, "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
		mask:SetAllPoints(t)
		t:AddMaskTexture(mask)
		pin.mask = mask
	end
	pin._roundAnt = true
end

function Waypoint:AcquireAnt(pool, index)
	local pin = pool[index]
	if pin then
		if not pin._roundAnt then SetupRoundAntPin(pin) end
		return pin
	end
	pin = CreateFrame("Frame", nil, UIParent)
	pin:SetSize(ANT_DOT_SIZE, ANT_DOT_SIZE)
	pin.tex = pin:CreateTexture(nil, "OVERLAY")
	SetupRoundAntPin(pin)
	local dr, dg, db = GetDotRGBA()
	pin.tex:SetVertexColor(dr, dg, db, 1)
	pool[index] = pin
	return pin
end

function Waypoint:HideAntTrail()
	if HBDPins and self.antMiniRef then
		HBDPins:RemoveAllMinimapIcons(self.antMiniRef)
	end
	for _, p in ipairs(self.antPins) do p:Hide() end
	for _, p in ipairs(self.antWorldPins) do p:Hide() end
end

function Waypoint:ShouldDrawAntTrail()
	if not QC.db.profile.routes.showLines then return false end
	local style = QC.db.profile.routes.routeStyle or "both"
	return style == "both" or style == "dots"
end

-- Cache segment endpoints for smooth marching-dot animation.
function Waypoint:BuildAntSegmentData(miniTrail, worldTrail, worldViewMap, worldMapOpen)
	local miniSegs = self._antMiniSegs
	if not miniSegs then
		miniSegs = {}
		self._antMiniSegs = miniSegs
	else
		wipe(miniSegs)
	end
	local segPool = self._antSegPool
	if not segPool then
		segPool = {}
		self._antSegPool = segPool
	end
	for i = 1, #(miniTrail or {}) - 1 do
		local a, b = miniTrail[i], miniTrail[i + 1]
		if a and b and a.map and b.map and a.x and b.x and a.y and b.y then
			local idx = #miniSegs + 1
			local seg = segPool[idx]
			if not seg then
				seg = {}
				segPool[idx] = seg
			end
			seg.map, seg.x1, seg.y1, seg.x2, seg.y2 = a.map, a.x, a.y, b.x, b.y
			miniSegs[idx] = seg
		end
	end

	if worldMapOpen and worldViewMap and worldTrail and #worldTrail >= 2 then
		local worldSegs = self._antWorldSegs
		if not worldSegs then
			worldSegs = { viewMap = worldViewMap, segs = {} }
			self._antWorldSegs = worldSegs
		else
			worldSegs.viewMap = worldViewMap
			wipe(worldSegs.segs)
		end
		for i = 1, #worldTrail - 1 do
			local a, b = worldTrail[i], worldTrail[i + 1]
			if a and b and a.map and b.map and a.x and b.x and a.y and b.y then
				local idx = #worldSegs.segs + 1
				local seg = segPool[#miniSegs + idx]
				if not seg then
					seg = {}
					segPool[#miniSegs + idx] = seg
				end
				seg.mapA, seg.x1, seg.y1, seg.mapB, seg.x2, seg.y2 =
					a.map, a.x, a.y, b.map, b.x, b.y
				worldSegs.segs[idx] = seg
			end
		end
		if #worldSegs.segs == 0 then self._antWorldSegs = nil end
	else
		self._antWorldSegs = nil
	end
end

function Waypoint:PlaceAnimatedMinimapAnt(antIdx, mapID, x, y, alpha)
	if not (HBDPins and Minimap and Minimap:IsShown()) then return antIdx end
	antIdx = antIdx + 1
	if antIdx > ANT_MAX then return antIdx end
	local ant = self:AcquireAnt(self.antPins, antIdx)
	if ant.tex then
		local dr, dg, db, da = GetDotRGBA()
		ant.tex:SetVertexColor(dr, dg, db, alpha or da)
	end
	HBDPins:AddMinimapIconMap(self.antMiniRef, ant, mapID, x, y, true, true)
	if ant.tex and ant.tex.SetDrawLayer then ant.tex:SetDrawLayer("OVERLAY", 6) end
	ant:Show()
	return antIdx
end

function Waypoint:PlaceAnimatedWorldAnt(antIdx, viewMap, mapA, x1, y1, mapB, x2, y2, t, alpha)
	if not (WorldMapFrame and WorldMapFrame:IsShown()) then return antIdx end
	local canvas = WorldMapFrame.GetCanvas and WorldMapFrame:GetCanvas()
	if not canvas then return antIdx end
	local wmcw = canvas:GetWidth()
	if not wmcw or wmcw <= 0 then return antIdx end

	local tx1, ty1 = ToViewMapXY(viewMap, mapA, x1, y1)
	local tx2, ty2 = ToViewMapXY(viewMap, mapB, x2, y2)
	if not (tx1 and ty1 and tx2 and ty2) then return antIdx end

	local tx = tx1 + (tx2 - tx1) * t
	local ty = ty1 + (ty2 - ty1) * t
	local px = tx * wmcw
	local py = -ty * wmcw * MAP_LINE_Y_SCALE

	antIdx = antIdx + 1
	if antIdx > ANT_MAX then return antIdx end
	local ant = self:AcquireAnt(self.antWorldPins, antIdx)
	ant:SetParent(canvas)
	ant:ClearAllPoints()
	ant:SetPoint("TOPLEFT", canvas, "TOPLEFT", px, py)
	ant:SetFrameStrata("TOOLTIP")
	ant:SetFrameLevel(10001)
	if ant.tex then
		local dr, dg, db, da = GetDotRGBA()
		ant.tex:SetVertexColor(dr, dg, db, alpha or da)
	end
	ant:Show()
	return antIdx
end

-- March dots along cached segments toward the goal.
function Waypoint:AnimateAntTrail(elapsed)
	if not self:ShouldDrawAntTrail() or not self._arrowGoal then
		self:HideAntTrail()
		return
	end

	self._antPhase = (self._antPhase or 0) + (elapsed or ANT_UPDATE_INTERVAL) * GetDotSpeed()
	local phase = self._antPhase
	local _, _, _, dotAlpha = GetDotRGBA()

	local miniIdx, worldIdx = 0, 0

	for _, seg in ipairs(self._antMiniSegs or {}) do
		for d = 1, ANT_FLOW_DOTS do
			local t = ((d - 1) / ANT_FLOW_DOTS + phase) % 1
			local x = seg.x1 + (seg.x2 - seg.x1) * t
			local y = seg.y1 + (seg.y2 - seg.y1) * t
			local fade = 0.4 + 0.6 * t
			miniIdx = self:PlaceAnimatedMinimapAnt(miniIdx, seg.map, x, y, dotAlpha * fade)
		end
	end

	local worldData = self._antWorldSegs
	if worldData and worldData.segs then
		for _, seg in ipairs(worldData.segs) do
			for d = 1, ANT_FLOW_DOTS do
				local t = ((d - 1) / ANT_FLOW_DOTS + phase) % 1
				local fade = 0.4 + 0.6 * t
				worldIdx = self:PlaceAnimatedWorldAnt(
					worldIdx, worldData.viewMap,
					seg.mapA, seg.x1, seg.y1, seg.mapB, seg.x2, seg.y2,
					t, dotAlpha * fade)
			end
		end
	end

	for i = miniIdx + 1, #self.antPins do
		if self.antPins[i] then
			if HBDPins then HBDPins:RemoveMinimapIcon(self.antMiniRef, self.antPins[i]) end
			self.antPins[i]:Hide()
		end
	end
	for i = worldIdx + 1, #self.antWorldPins do self.antWorldPins[i]:Hide() end
end

----------------------------------------------------------------------
-- Map pixel helpers for route lines (legacy Pointer:UpdateMapLines)
----------------------------------------------------------------------

function Waypoint:DrawRouteLines(points, viewMap)
	if not QC.db.profile.routes.showLines then
		self:HideRouteLines()
		self._pendingRouteDraw = nil
		return
	end
	local style = QC.db.profile.routes.routeStyle or "both"
	if style == "dots" then
		self:HideRouteLines()
		self._pendingRouteDraw = nil
		return
	end
	if not (WorldMapFrame and WorldMapFrame:IsShown()) or #points < 2 then
		self:HideRouteLines()
		self._pendingRouteDraw = nil
		return
	end

	viewMap = viewMap or EnsureViewMapData()
	if not viewMap then
		self:HideRouteLines()
		self._pendingRouteDraw = nil
		return
	end

	self:EnsureMapOverlay()
	local canvas = WorldMapFrame.GetCanvas and WorldMapFrame:GetCanvas()
	local wmcw = canvas and canvas:GetWidth() or 0
	if not wmcw or wmcw <= 0 then
		self._pendingRouteDraw = { points = points, viewMap = viewMap }
		self:HideRouteLines()
		return
	end
	self._pendingRouteDraw = nil
	self:HideRouteLines()
	self._mapLineCount = 0

	local canvasScale = canvas and canvas:GetScale() or 1
	if canvasScale <= 0 then canvasScale = 1 end
	local lineThickness = GetRouteLineThickness() / canvasScale

	local useTexture = PreferTextureRouteLines()
	local useXmlLines = not useTexture and self:EnsureMapLinePool() and self._mapLineTemplateOk ~= false
	local drawn = 0

	for i = 1, #points - 1 do
		local g1, g2 = points[i], points[i + 1]
		if g1 and g2 and g1.map and g2.map and g1.x and g2.x and g1.y and g2.y then
			local tx1, ty1 = ToViewMapXY(viewMap, g1.map, g1.x, g1.y)
			local tx2, ty2 = ToViewMapXY(viewMap, g2.map, g2.x, g2.y)
			if tx1 and ty1 and tx2 and ty2 then
				local x1, y1 = tx1 * wmcw, -ty1 * wmcw * MAP_LINE_Y_SCALE
				local x2, y2 = tx2 * wmcw, -ty2 * wmcw * MAP_LINE_Y_SCALE
				local ok = false
				if useXmlLines and self.mapLinePool then
					local line = self.mapLinePool:Acquire()
					local fill = GetMapLineFill(line)
					if line and fill then
						line:SetAllPoints()
						line:SetFrameStrata("TOOLTIP")
						line:SetFrameLevel(10000)
						line:SetAlpha(1)
						fill:SetStartPoint("TOPLEFT", x1, y1)
						fill:SetEndPoint("TOPLEFT", x2, y2)
						StyleMapLineFill(fill, lineThickness)
						line:Show()
						ok = true
					elseif line and self.mapLinePool.Release then
						self.mapLinePool:Release(line)
						self._mapLineFillFail = (self._mapLineFillFail or 0) + 1
					end
				end
				if not ok and self:DrawTextureLineSegment(drawn + 1, x1, y1, x2, y2, lineThickness) then
					ok = true
				end
				if ok then drawn = drawn + 1 end
			end
		end
	end
	self:HideTextureLines(drawn + 1)
	self._mapLineCount = drawn
end

function Waypoint:RedrawPendingRouteLines()
	if not self._pendingRouteDraw then return end
	local pending = self._pendingRouteDraw
	local canvas = WorldMapFrame and WorldMapFrame.GetCanvas and WorldMapFrame:GetCanvas()
	local w = canvas and canvas:GetWidth() or 0
	if not w or w <= 0 then return end
	self:DrawRouteLines(pending.points, pending.viewMap)
end

function Waypoint:AcquireOverlayMarker(index, size, active)
	self:EnsureMapOverlay()
	local pin = self.overlayMarkers[index]
	if not pin then
		pin = CreateFrame("Frame", nil, self.mapOverlay)
		local t = pin:CreateTexture(nil, "OVERLAY")
		t:SetTexture(WHITE)
		t:SetAllPoints()
		pin.tex = t
		self.overlayMarkers[index] = pin
	end
	pin:SetSize(size, size)
	local col = PinColor(active)
	pin.tex:SetVertexColor(unpack(col))
	pin:Show()
	return pin
end

function Waypoint:DrawOverlayMarkers(trail, arrowGoal)
	if not self.mapOverlay or not (WorldMapFrame and WorldMapFrame:IsShown()) then
		for _, m in ipairs(self.overlayMarkers or {}) do if m then m:Hide() end end
		return
	end
	local viewMap = EnsureViewMapData()
	if not viewMap or not trail or #trail < 1 then
		for _, m in ipairs(self.overlayMarkers or {}) do if m then m:Hide() end end
		return
	end

	local goalMap = arrowGoal and EnsureGoalMap(arrowGoal)
	local mi = 0
	for i = 2, #trail do
		local pt = trail[i]
		if pt.map and pt.x and pt.y then
			local px, py = ToMapPixels(viewMap, pt.map, pt.x, pt.y)
			if px and py then
				mi = mi + 1
				local active = goalMap and pt.map == goalMap and arrowGoal
					and math.abs(pt.x - arrowGoal.x) < 0.002
					and math.abs(pt.y - arrowGoal.y) < 0.002
				local pin = self:AcquireOverlayMarker(mi, active and 14 or 10, active)
				pin:ClearAllPoints()
				pin:SetPoint("CENTER", self.mapOverlay, "TOPLEFT", px, py)
			end
		end
	end
	for i = mi + 1, #(self.overlayMarkers or {}) do
		if self.overlayMarkers[i] then self.overlayMarkers[i]:Hide() end
	end
end

----------------------------------------------------------------------
-- Update pins + arrow
----------------------------------------------------------------------

function Waypoint:ClearPins()
	HBDPins:RemoveAllMinimapIcons(self)
	HBDPins:RemoveAllWorldMapIcons(self)
	for _, p in ipairs(self.miniPins) do
		if p.pulse then p.pulse:Stop() end
		p:SetAlpha(1)
		p:Hide()
	end
	for _, p in ipairs(self.worldPins) do
		if p.pulse then p.pulse:Stop() end
		p:SetAlpha(1)
		p:Hide()
	end
	for _, p in ipairs(self.antPins) do p:Hide() end
	for _, p in ipairs(self.antWorldPins) do p:Hide() end
end

-- Lay an evenly-spaced dotted trail between two zone coords (HBD on minimap).
function Waypoint:PlaceAntTrail(antIdx, mapA, x1, y1, mapB, x2, y2)
	local sameMap = mapA and mapB and mapA == mapB
	local viewMap = EnsureViewMapData()
	local tx1, ty1, tx2, ty2
	if viewMap then
		tx1, ty1 = ToViewMapXY(viewMap, mapA, x1, y1)
		tx2, ty2 = ToViewMapXY(viewMap, mapB, x2, y2)
	end

	local spacing = GetMiniCrumbYards()
	if sameMap and HBD and HBDPins then
		antIdx = self:PlaceMinimapCrumbSegment(antIdx, mapA, x1, y1, mapB, x2, y2, spacing)
	elseif tx1 and tx2 and viewMap and WorldMapFrame and WorldMapFrame:IsShown() then
		local dx, dy = tx2 - tx1, ty2 - ty1
		local len = (dx * dx + dy * dy) ^ 0.5
		if len >= 0.018 then
			local steps = math.min(ANT_MAX - antIdx, math.floor(len / 0.018))
			for s = 1, steps - 1 do
				local f = s / steps
				antIdx = antIdx + 1
				local ax = tx1 + dx * f
				local ay = ty1 + dy * f
				local mf = WorldMapFrame.ScrollContainer and WorldMapFrame.ScrollContainer.Child
				if mf then
					local px = ax * mf:GetWidth()
					local py = -ay * mf:GetHeight()
					local overlay = self.mapOverlay or self:EnsureMapOverlay()
					local w = self:AcquireAnt(self.antWorldPins, antIdx)
					w:SetParent(overlay or UIParent)
					w:ClearAllPoints()
					w:SetPoint("CENTER", overlay or w:GetParent(), "TOPLEFT", px, py)
					if w.tex and w.tex.SetDrawLayer then w.tex:SetDrawLayer("OVERLAY", 5) end
					w:Show()
				end
			end
		end
	end
	return antIdx
end

-- Manual waypoint (/way). Takes arrow priority over the step goal.
function Waypoint:SetManual(map, x, y, text)
	self.focusGoal = nil
	self.manual = setmetatable({
		map = map, x = x, y = y,
		text = text or "Waypoint",
		action = "goto",
		manual = true,
	}, QC.GoalProto_mt)
	self:Update()
end

function Waypoint:ClearManual()
	self.manual = nil
	self:Update()
end

-- multi-step: left-click a guide line to navigate there (arrow + travel route + map trail).
function Waypoint:FocusGoal(goal)
	if not goal or not goal.x then return end
	local map = goal.GetMapId and goal:GetMapId() or goal.map
	if not map then return end
	self.manual = nil
	self.focusGoal = goal
	if QC.TravelGraph then QC.TravelGraph:ClearRoute() end
	self:Update()
end

function Waypoint:ClearFocusGoal()
	self.focusGoal = nil
end

-- Pick the arrow target from a step's waypoint list (visible goals + hidden mapmarkers).
function Waypoint:SelectArrowGoal(step)
	if not step then return nil end
	local finalGoal = step:GetWaypointGoal()
	local routeGoals = step:GetTrailRouteGoals()
	if finalGoal and routeGoals and #routeGoals >= 2 then
		return self:SelectPathArrowGoal(routeGoals, finalGoal) or finalGoal
	end
	return finalGoal
end

function Waypoint:Update()
	if not self.arrowFrame then self:Create() end
	self:ClearPins()

	local step = QC.CurrentStep
	local arrowGoal, routeGoals
	local TG = QC.TravelGraph
	if self.manual then
		arrowGoal = self.manual
		routeGoals = { self.manual }
		for _, g in ipairs(step and step:GetTrailRouteGoals() or {}) do
			routeGoals[#routeGoals + 1] = g
		end
	elseif self.focusGoal and self.focusGoal.x then
		arrowGoal = self.focusGoal
		routeGoals = { self.focusGoal }
	elseif TG and TG.activeRoute and TG.activeRoute.arrowGoal then
		arrowGoal = TG:GetArrowGoal(step and step:GetWaypointGoal())
		routeGoals = {}
		local trail = TG:GetTravelTrailPoints()
		if trail then
			for _, pt in ipairs(trail) do
				routeGoals[#routeGoals + 1] = GoalFromPoint(pt, { travelHop = true })
			end
		end
		for _, g in ipairs(step and step:GetTrailRouteGoals() or {}) do
			routeGoals[#routeGoals + 1] = g
		end
	else
		local waypoints = step and step:GetWaypointGoals() or {}
		arrowGoal = self:SelectArrowGoal(step)
		routeGoals = step and step:GetTrailRouteGoals() or {}
		if #routeGoals == 0 and #waypoints > 0 then
			routeGoals = waypoints
		end
		-- No coords on this step: fall back to the quest's own waypoint.
		if not arrowGoal and step and step.GetFallbackWaypoint then
			arrowGoal = step:GetFallbackWaypoint()
			if arrowGoal then routeGoals = { arrowGoal } end
		end
		-- Text-only steps: hide arrow and skip travel routing.
		if not arrowGoal and not self.manual and not (self.focusGoal and self.focusGoal.x) then
			self.target = nil
			self._arrowGoal = nil
			self._routeGoals = {}
			if self.arrowFrame then self.arrowFrame:Hide() end
			self._trailStateSig = nil
			self:UpdateTrail(true)
			return
		end
		-- Use deferred travel route from TravelGraph (computed on step change).
		if arrowGoal and TG and TG.activeRoute and TG.activeRoute.arrowGoal then
			arrowGoal = TG:GetArrowGoal(arrowGoal)
			routeGoals = {}
			local trail = TG:GetTravelTrailPoints()
			if trail then
				for _, pt in ipairs(trail) do
					routeGoals[#routeGoals + 1] = GoalFromPoint(pt, { travelHop = true })
				end
			end
			for _, g in ipairs(step:GetTrailRouteGoals() or {}) do
				routeGoals[#routeGoals + 1] = g
			end
		end
	end

	-- Build / refresh travel route when the goal is in another zone.
	-- For an explicit focus click on the *current map*, keep direct arrow to the clicked point
	-- (what the player sees as the blue square) instead of a travel hop.
	local doApplyTravel = true
	if self.focusGoal and arrowGoal == self.focusGoal then
		local pmap = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
		local gmap = EnsureGoalMap(arrowGoal)
		if pmap and gmap and MapsMatch(pmap, gmap) then doApplyTravel = false end
	elseif arrowGoal then
		local pmap = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
		local gmap = EnsureGoalMap(arrowGoal)
		if pmap and gmap and MapsMatch(pmap, gmap) then doApplyTravel = false end
	end
	if doApplyTravel and arrowGoal and TG and not self.manual and not arrowGoal.notravel and not arrowGoal.noway then
		if QC.Travel and QC.Travel.RouteToCurrentGoal then
			QC.Travel:RouteToCurrentGoal(true)
		else
			TG:ApplyRoute(arrowGoal, true)
		end
		if TG.activeRoute and TG.activeRoute.arrowGoal then
			arrowGoal = TG:GetArrowGoal(arrowGoal)
			local trail = TG:GetTravelTrailPoints()
			if trail and #trail > 0 then
				routeGoals = {}
				for _, pt in ipairs(trail) do
					routeGoals[#routeGoals + 1] = GoalFromPoint(pt, { travelHop = true })
				end
				for _, g in ipairs(step and step:GetTrailRouteGoals() or {}) do
					routeGoals[#routeGoals + 1] = g
				end
			end
		end
	end

	-- If the focused goal is on the player's current map, force the arrow to point directly at it
	-- (the visible destination on the open map) rather than a travel hop.
	if self.focusGoal and self.focusGoal.x then
		local pmap = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
		local gmap = EnsureGoalMap(self.focusGoal)
		if pmap and gmap and MapsMatch(pmap, gmap) then
			arrowGoal = self.focusGoal
		end
	end

	arrowGoal = self:ResolveArrowGoal(step, arrowGoal)

	local arrowMap = EnsureGoalMap(arrowGoal)
	self.target = (QC.db.profile.arrow.shown and arrowGoal and arrowMap) and arrowGoal or nil
	if self.target then
		self.arrowFrame:Show()
		ApplyArrowFonts()
		self.arrowFrame.label:SetText(self:FormatArrowLabel(arrowGoal))
	else
		self.arrowFrame:Hide()
	end

	-- Place pins for every route waypoint.
	local showPins = QC.db.profile.routes.showPins ~= false
	local pinSettings = GetWaypointPinSettings()
	local pinSize = pinSettings.size
	for i, goal in ipairs(routeGoals) do
		local map = EnsureGoalMap(goal)
		if showPins and map and goal.x and goal.y then
			local mini = self:AcquirePin(self.miniPins, i, pinSize - 2)
			local world = self:AcquirePin(self.worldPins, i, pinSize)
			local active = (goal == arrowGoal)
			local col = PinColor(active)
			if goal.action == "accept" then col = { 1.00, 0.82, 0.10 }
			elseif goal.action == "turnin" then col = { 0.30, 0.85, 0.30 } end
			ApplyWaypointPinStyle(mini, col, pinSettings, pinSize - 2)
			ApplyWaypointPinStyle(world, col, pinSettings, pinSize)
			SetPinPulse(mini, active)
			SetPinPulse(world, active)
			mini:Show()
			world:Show()
			HBDPins:AddMinimapIconMap(self, mini, map, goal.x, goal.y, true, true)
			HBDPins:AddWorldMapIconMap(self, world, map, goal.x, goal.y, MAP_PIN_FLAG)
		end
	end

	-- Active goal pin even when it is not in routeGoals.
	if showPins and arrowGoal and arrowMap and arrowGoal.x and arrowGoal.y then
		local listed = false
		for _, g in ipairs(routeGoals) do if g == arrowGoal then listed = true break end end
		if not listed then
			local idx = #routeGoals + 1
			local mini = self:AcquirePin(self.miniPins, idx, pinSize - 2)
			local world = self:AcquirePin(self.worldPins, idx, pinSize)
			local col = PinColor(true)
			ApplyWaypointPinStyle(mini, col, pinSettings, pinSize - 2)
			ApplyWaypointPinStyle(world, col, pinSettings, pinSize)
			SetPinPulse(mini, true)
			SetPinPulse(world, true)
			HBDPins:AddMinimapIconMap(self, mini, arrowMap, arrowGoal.x, arrowGoal.y, true, true)
			HBDPins:AddWorldMapIconMap(self, world, arrowMap, arrowGoal.x, arrowGoal.y, MAP_PIN_FLAG)
		end
	end

	-- Remember the targets so the ticker can refresh the follow-line as the
	-- player moves, then draw it now.
	self._arrowGoal = (arrowMap and arrowGoal) or nil
	local goalKey = arrowGoal and arrowMap and arrowGoal.x and arrowGoal.y
		and ("%s:%.5f:%.5f"):format(tostring(arrowMap), arrowGoal.x, arrowGoal.y) or nil
	if goalKey ~= self._etaGoalKey then
		self._etaGoalKey = goalKey
		self:ResetSpeedSamples()
	end
	self._routeGoals = routeGoals
	self._trailStateSig = nil
	self:UpdateTrail(true)
	self:Refresh()
end

-- Draw a "follow me" breadcrumb from the player's current position through the
-- step's waypoints, on both the minimap and the world map (multi-step).
function Waypoint:UpdateTrail(force)
	if not force and self._arrowGoal then
		local playerMap, px, py = GetPlayerMapPoint()
		local worldMapOpen = WorldMapFrame and WorldMapFrame:IsShown()
		local worldViewMap = worldMapOpen and WorldMapFrame:GetMapID() or nil
		local hopIdx = QC.TravelGraph and QC.TravelGraph.activeRoute and QC.TravelGraph.activeRoute.hopIdx or 0
		local routeN = type(self._routeGoals) == "table" and #self._routeGoals or 0
		local sig = string.format(
			"%s:%.3f:%.3f:%s:%s:%s:%d",
			tostring(playerMap),
			px or 0, py or 0,
			tostring(worldMapOpen),
			tostring(worldViewMap),
			tostring(hopIdx),
			routeN)
		if sig == self._trailStateSig then
			return
		end
		self._trailStateSig = sig
	end

	-- Clear the previous trail (separate owner from the waypoint pins).
	HBDPins:RemoveAllMinimapIcons(self.trailRef)
	if self.trailLineRef then HBDPins:RemoveAllMinimapIcons(self.trailLineRef) end
	HBDPins:RemoveAllWorldMapIcons(self.trailRef)

	if not QC.db.profile.routes.showLines then
		self:DrawRouteLines({}, nil)
		self:HideMinimapRouteLines()
		self:HideAntTrail()
		self._antMiniSegs = nil
		self._antWorldSegs = nil
		self:DrawOverlayMarkers({}, nil)
		return
	end

	local style = QC.db.profile.routes.routeStyle or "both"
	local drawDots = (style == "both" or style == "dots")
	local drawLines = (style == "both" or style == "lines")

	if not drawDots then
		self:HideAntTrail()
		self._antMiniSegs = nil
		self._antWorldSegs = nil
	end

	local arrowGoal = self._arrowGoal
	local worldMapOpen = WorldMapFrame and WorldMapFrame:IsShown()
	local worldViewMap = worldMapOpen and WorldMapFrame:GetMapID() or nil
	local playerMap = select(1, GetPlayerMapPoint())

	-- World + minimap trails (separate reusable buffers; never share one table).
	local miniTrail = self:BuildDisplayTrail(arrowGoal, playerMap, "_miniTrailBuf")
	local worldTrail
	if worldMapOpen then
		worldTrail = self:BuildDisplayTrail(arrowGoal, worldViewMap or playerMap, "_worldTrailBuf")
	else
		worldTrail = EMPTY_TRAIL
	end
	local lineTrail = worldMapOpen and (#worldTrail >= 2 and worldTrail or miniTrail) or miniTrail
	self._lastWorldTrail = worldTrail
	self._lastMiniTrail = miniTrail
	self._lineTrail = lineTrail

	-- 4. World-map lines from the local filtered trail.
	if drawLines and worldMapOpen and #lineTrail >= 2 then
		self:DrawRouteLines(lineTrail, worldViewMap or playerMap)
	else
		self._mapLineCount = 0
		self:DrawRouteLines({}, nil)
	end

	-- 4b. Minimap route lines (vector textures; crumbs if conversion fails).
	if drawLines then
		self:DrawMinimapRouteLines(miniTrail, arrowGoal)
	elseif drawDots and #miniTrail >= 2 then
		self:DrawMinimapBreadcrumbs(miniTrail, false, true)
	else
		self._minimapLineCount = 0
		self:HideMinimapRouteLines()
	end

	-- 5. Animated marching dots along each trail segment.
	if drawDots then
		self:BuildAntSegmentData(miniTrail, worldTrail, worldViewMap or playerMap, worldMapOpen)
	else
		self._antMiniSegs = nil
		self._antWorldSegs = nil
	end

	self:DrawOverlayMarkers(lineTrail, arrowGoal)
end

function Waypoint:DebugTrail()
	local r = QC.db.profile.routes or {}
	local wmOpen = WorldMapFrame and WorldMapFrame:IsShown()
	QC:Print("|cff33d6ff--- QuestCore trail diagnostics ---|r")
	QC:Print("1. Style: " .. tostring(r.routeStyle or "both")
		.. "  showLines: " .. tostring(r.showLines ~= false))
	if self._arrowGoal then
		self:UpdateTrail(true)
	end
	if wmOpen then
		self:EnsureMapLinePool()
	else
		QC:Print("|cffffaa00World map is closed — open it (M) to test line rendering.|r")
	end
	local trail = self._lineTrail or self._lastMiniTrail or self._lastWorldTrail
	QC:Print("2. miniTrail=" .. tostring(#(self._lastMiniTrail or {}))
		.. "  lineTrail=" .. tostring(#(self._lineTrail or {}))
		.. "  worldTrail=" .. tostring(#(self._lastWorldTrail or {})))
	QC:Print("3. Line count: " .. tostring(self._mapLineCount or 0)
		.. "  pool active: " .. (self.mapLinePool and tostring(self.mapLinePool:GetNumActive()) or "n/a")
		.. "  miniCrumbs: " .. tostring(self._minimapLineCount or 0))
	local canvas = WorldMapFrame and WorldMapFrame.GetCanvas and WorldMapFrame:GetCanvas()
	local cw = canvas and canvas:GetWidth() or 0
	QC:Print("4. Map: " .. (wmOpen and "open" or "closed")
		.. "  mapID=" .. tostring(wmOpen and WorldMapFrame:GetMapID())
		.. "  canvasW=" .. tostring(cw))
	QC:Print("5. Route hops: " .. tostring(type(QC.CurrentRoute) == "table" and #QC.CurrentRoute or 0)
		.. "  templateOk=" .. tostring(self._mapLineTemplateOk)
		.. "  fillFail=" .. tostring(self._mapLineFillFail or 0))
	if self._arrowGoal then
		local g = self._arrowGoal
		QC:Print("6. Arrow: map=" .. tostring(g.GetMapId and g:GetMapId() or g.map)
			.. ("  %.2f,%.2f"):format((g.x or 0) * 100, (g.y or 0) * 100))
	end
	if (r.routeStyle or "both") == "dots" then
		QC:Print("|cffff5555Route style is 'dots' only — lines are disabled. Set to 'both' or 'lines'.|r")
	end
end

----------------------------------------------------------------------
-- Arrow refresh
----------------------------------------------------------------------

local PI = math.pi
local TWO_PI = PI * 2

local function FormatDistance(d)
	if not d then return "" end
	local metric = QC.db.profile.arrow.units == "metric"
	if metric then
		local m = d * 0.9144
		if m >= 1000 then return ("%.1f km"):format(m / 1000) end
		return ("%d m"):format(m)
	end
	if d >= 1760 then return ("%.1f mi"):format(d / 1760) end
	return ("%d yd"):format(d)
end

-- Seconds -> "1m 20s" / "45s".
local function FormatETA(sec)
	if not sec or sec <= 0 or sec == math.huge then return nil end
	if sec >= 3600 then return ("%dh %dm"):format(sec / 3600, (sec % 3600) / 60) end
	if sec >= 60 then return ("%dm %ds"):format(sec / 60, sec % 60) end
	return ("%ds"):format(math.ceil(sec))
end

local function IsApiSecret(value)
	return value and issecretvalue and issecretvalue(value)
end

local function SafeSpeed(value)
	if not value or IsApiSecret(value) then return 0 end
	return value
end

-- Effective yards/sec from movement APIs (ground, mount, swim, flying, dragonriding).
local function GetApiTravelSpeed()
	if not GetUnitSpeed then return 0 end
	local current = SafeSpeed(select(1, GetUnitSpeed("player")))
	local run = SafeSpeed(select(2, GetUnitSpeed("player")))
	local fly = SafeSpeed(select(3, GetUnitSpeed("player")))
	local swim = SafeSpeed(select(4, GetUnitSpeed("player")))

	if C_PlayerInfo and C_PlayerInfo.GetGlidingInfo then
		local isGliding, _, forwardSpeed = C_PlayerInfo.GetGlidingInfo()
		if isGliding and forwardSpeed and forwardSpeed > 0 and not IsApiSecret(forwardSpeed) then
			return math.max(current, forwardSpeed)
		end
	end

	if IsSwimming and IsSwimming() then
		return math.max(current, swim)
	end

	local flying = IsFlying and (IsFlying("player") or IsFlying())
	if flying then
		return math.max(current, fly, run)
	end

	if IsMounted and IsMounted() then
		return math.max(current, run, fly)
	end

	return math.max(current, run)
end

function Waypoint:ResetSpeedSamples()
	self._speedSamples = nil
	self._lastDistForSpeed = nil
	self._lastWorldPos = nil
end

function Waypoint:UpdateMeasuredSpeed(dist, elapsed)
	if not elapsed or elapsed <= 0 then return end

	local y, x, z = UnitPosition and UnitPosition("player")
	if x and y then
		local last = self._lastWorldPos
		if last then
			local dx, dy, dz = x - last.x, y - last.y, (z or 0) - (last.z or 0)
			local moved = math_sqrt(dx * dx + dy * dy + dz * dz)
			local spd = moved / elapsed
			if spd > 0.5 and spd < 500 then
				self:_PushSpeedSample(spd)
			end
		end
		self._lastWorldPos = { x = x, y = y, z = z }
	end

	if not dist then return end
	local lastDist = self._lastDistForSpeed
	if lastDist and dist < lastDist - 0.5 then
		local spd = (lastDist - dist) / elapsed
		if spd > 0.5 and spd < 500 then
			self:_PushSpeedSample(spd)
		end
	elseif lastDist and dist > lastDist + 100 then
		self:ResetSpeedSamples()
	end
	self._lastDistForSpeed = dist
end

function Waypoint:_PushSpeedSample(spd)
	local samples = self._speedSamples or {}
	samples[#samples + 1] = spd
	if #samples > SPEED_SAMPLE_MAX then
		table.remove(samples, 1)
	end
	self._speedSamples = samples
end

function Waypoint:GetMeasuredSpeed()
	local samples = self._speedSamples
	if not samples or #samples == 0 then return 0 end
	local sum = 0
	for i = 1, #samples do sum = sum + samples[i] end
	return sum / #samples
end

function Waypoint:GetPlayerTravelSpeed()
	local measured = self:GetMeasuredSpeed()
	local api = GetApiTravelSpeed()
	if api > 0.5 and measured > 0.5 then
		return math.max(api, measured)
	end
	if measured > 0.5 then return measured end
	if api > 0.5 then return api end

	-- Fallback when APIs are secret/zero but player is clearly flying on a mount.
	if IsMounted and IsMounted() then
		local base = tonumber(BASE_MOVEMENT_SPEED) or 7
		if IsFlying and (IsFlying("player") or IsFlying()) then
			return 2.5 * base
		end
	end
	return 0
end

-- Arrow direction state colors (live heading feedback).
local ARROW_GOOD = { 0.30, 0.95, 0.35 }   -- pointed roughly where you face
local ARROW_OK   = { 1.00, 0.92, 0.30 }   -- moderate turn needed
local ARROW_BAD  = { 1.00, 0.45, 0.25 }   -- big turn / turn around
local ARRIVE     = { 0.40, 1.00, 0.45 }

-- Map-space bearing (CW from north) matching HBD's GetWorldVector convention.
-- Map coords have +x east and +y south, so north is -y.
local function MapSpaceBearing(sx, sy, tx, ty)
	local dx, dy = tx - sx, ty - sy
	if dx == 0 and dy == 0 then return 0 end
	return math_atan2(dx, -dy)
end

local function NormalizeBearing(deltaX, deltaY)
	local angle = math_atan2(-deltaX, deltaY)
	if angle > 0 then angle = TWO_PI - angle else angle = -angle end
	return angle
end

local function MapFractionDistance(map, x1, y1, x2, y2)
	if QC.EnsureMapData then QC.EnsureMapData(map) end
	local md = HBD.mapData and HBD.mapData[map]
	if md and md[1] and md[1] > 0 then
		local dx, dy = (x2 - x1) * md[1], (y2 - y1) * md[2]
		return math_sqrt(dx * dx + dy * dy)
	end
	local dx, dy = x2 - x1, y2 - y1
	return math_sqrt(dx * dx + dy * dy) * 400
end

local function ComputeBearing(goal)
	local gmap = goal:GetMapId()
	if not (gmap and goal.x and goal.y and HBD) then return nil end
	if QC.NormalizeMapID then gmap = QC.NormalizeMapID(gmap) end
	if QC.EnsureMapData then QC.EnsureMapData(gmap) end

	local mapAPI = QC.Compat and QC.Compat.Map
	local client = QC.Compat and QC.Compat.Client

	-- Classic (1.15.x): C_Map player position is more reliable than UnitPosition in starter zones.
	if client and client.isClassic and mapAPI then
		local playerMap = mapAPI.GetBestMapForUnit("player")
		if QC.NormalizeMapID then playerMap = QC.NormalizeMapID(playerMap) end
		local px, py = playerMap and mapAPI.GetPlayerMapPosition(playerMap, "player")
		if px and py then
			if QC.EnsureMapData then QC.EnsureMapData(playerMap) end
			local tx, ty = goal.x, goal.y
			if not MapsMatch(playerMap, gmap) and QC.TranslateMapCoords then
				tx, ty = QC.TranslateMapCoords(goal.x, goal.y, gmap, playerMap)
			end
			if tx and ty then
				local dx, dy = tx - px, ty - py
				return math_atan2(dx, -dy), MapFractionDistance(playerMap, px, py, tx, ty), false
			end
		end
	end

	local pmx, pmy, playerMap = HBD:GetPlayerZonePosition(true)
	if pmx and playerMap then
		if QC.NormalizeMapID then playerMap = QC.NormalizeMapID(playerMap) end
		if QC.EnsureMapData then QC.EnsureMapData(playerMap) end
		local dist, dX, dY = HBD:GetZoneDistance(playerMap, pmx, pmy, gmap, goal.x, goal.y)
		if dX and dY then
			return NormalizeBearing(dX, dY), dist, false
		end
		local px, py, pInst = HBD:GetWorldCoordinatesFromZone(pmx, pmy, playerMap)
		local gx, gy, gInst = HBD:GetWorldCoordinatesFromZone(goal.x, goal.y, gmap)
		if px and gx and pInst and gInst and pInst == gInst and HBD.GetWorldVector then
			local vX, vY = HBD:GetWorldVector(pInst, px, py, gx, gy)
			if vX and vY then
				local wdist = HBD:GetWorldDistance(pInst, px, py, gx, gy)
				return NormalizeBearing(vX, vY), wdist, false
			end
		end
		if QC.TranslateMapCoords then
			local tx, ty = QC.TranslateMapCoords(goal.x, goal.y, gmap, playerMap)
			if tx and ty then
				local dx, dy = tx - pmx, ty - pmy
				return math_atan2(dx, -dy), MapFractionDistance(playerMap, pmx, pmy, tx, ty), false
			end
		end
	end

	local playerMap2 = mapAPI and mapAPI.GetBestMapForUnit("player")
	if playerMap2 then
		if QC.NormalizeMapID then playerMap2 = QC.NormalizeMapID(playerMap2) end
		if QC.EnsureMapData then QC.EnsureMapData(playerMap2) end
		local gx, gy = goal.x, goal.y
		local tx, ty = gx, gy
		if not MapsMatch(playerMap2, gmap) and QC.TranslateMapCoords then
			tx, ty = QC.TranslateMapCoords(gx, gy, gmap, playerMap2)
		end
		if tx and ty and mapAPI.GetPlayerMapPosition then
			local px, py = mapAPI.GetPlayerMapPosition(playerMap2, "player")
			if px and py then
				local dx, dy = tx - px, ty - py
				return math_atan2(dx, -dy), MapFractionDistance(playerMap2, px, py, tx, ty), false
			end
		end
	end

	return nil
end

-- Path length: player -> each route goal in order (handles ramps / elevation detours).
function Waypoint:GetPathChainDistance(routeGoals)
	if not (HBD and routeGoals and #routeGoals > 0) then return nil end
	local pmx, pmy, playerMap = HBD:GetPlayerZonePosition(true)
	if not pmx then return nil end
	local total = 0
	local fromMap, fromX, fromY = playerMap, pmx, pmy
	for _, g in ipairs(routeGoals) do
		if not g.travelHop and g.x and g.y then
			local gmap = g.GetMapId and g:GetMapId() or g.map
			if gmap then
				local seg = HBD:GetZoneDistance(fromMap, fromX, fromY, gmap, g.x, g.y)
				if seg then total = total + seg end
				fromMap, fromX, fromY = gmap, g.x, g.y
			end
		end
	end
	return total > 0 and total or nil
end

function Waypoint:SelectPathArrowGoal(routeGoals, finalGoal)
	if not (routeGoals and #routeGoals > 0) then return finalGoal end
	local pmx, pmy, playerMap = HBD:GetPlayerZonePosition(true)
	if not pmx then return finalGoal end
	local arrival = (QC.db.profile.arrow and QC.db.profile.arrow.arrival) or 8
	-- Only incomplete goals — never retarget a completed ramp goto while climbing.
	for _, g in ipairs(routeGoals) do
		if not g.travelHop and not g:IsComplete() and g.x and g.y then
			local gmap = g.GetMapId and g:GetMapId() or g.map
			if gmap then
				local d = HBD:GetZoneDistance(playerMap, pmx, pmy, gmap, g.x, g.y)
				if d and d > arrival then
					return g
				end
			end
		end
	end
	for _, g in ipairs(routeGoals) do
		if not g.travelHop and not g:IsComplete() and g.x and g.y then
			return g
		end
	end
	return finalGoal
end

-- Distance left along the path from the player through remaining (incomplete) goals.
function Waypoint:GetRemainingPathDistance(routeGoals, finalGoal)
	if not (HBD and routeGoals and #routeGoals > 0) then return nil end
	local pmx, pmy, playerMap = HBD:GetPlayerZonePosition(true)
	if not pmx then return nil end
	local startIdx = #routeGoals
	for i, g in ipairs(routeGoals) do
		if not g.travelHop and g.IsComplete and not g:IsComplete() then
			startIdx = i
			break
		end
	end
	local total = 0
	local fromMap, fromX, fromY = playerMap, pmx, pmy
	for i = startIdx, #routeGoals do
		local g = routeGoals[i]
		if not g.travelHop and g.x and g.y then
			local gmap = g.GetMapId and g:GetMapId() or g.map
			if gmap then
				local seg = HBD:GetZoneDistance(fromMap, fromX, fromY, gmap, g.x, g.y)
				if seg then total = total + seg end
				fromMap, fromX, fromY = gmap, g.x, g.y
			end
		end
	end
	return total > 0 and total or nil
end

function Waypoint:ComputeRouteMetrics(finalGoal, routeGoals)
	local arrowGoal = self:SelectPathArrowGoal(routeGoals, finalGoal) or finalGoal
	local bearing, directDist = ComputeBearing(arrowGoal)
	if not bearing then return nil, nil, arrowGoal, nil end
	local remainDist = self:GetRemainingPathDistance(routeGoals, finalGoal)
	local chainDist = self:GetPathChainDistance(routeGoals)
	local dist = remainDist or chainDist or directDist
	if chainDist and routeGoals and #routeGoals >= 2 and directDist then
		dist = math.max(dist, directDist)
	end
	return bearing, dist, arrowGoal, remainDist or chainDist
end

function Waypoint:Refresh(elapsed)
	self:AdvanceTravelHop()
	local TG = QC.TravelGraph
	if TG and TG.CheckRouteRecalc then TG:CheckRouteRecalc() end
	local goal = self.target
	if not goal or not self.arrowFrame:IsShown() then return end

	-- Completed step goals: retarget, but never treat a completed path node as the live arrow target.
	if goal.IsComplete and goal:IsComplete() and not goal.travelHop then
		local live = self:SelectPathArrowGoal(self._routeGoals, QC.CurrentStep and QC.CurrentStep:GetWaypointGoal())
		if live and live ~= goal and not live:IsComplete() then
			self.target = live
			goal = live
		else
			self._retargetCooldown = (self._retargetCooldown or 0) - (elapsed or ARROW_TICK)
			if self._retargetCooldown <= 0 then
				self._retargetCooldown = RETARGET_COOLDOWN
				self:Update()
			end
			return
		end
	end

	if TG and TG.activeRoute and TG.activeRoute.arrowGoal then
		goal = TG:GetArrowGoal(goal) or goal
		self.target = goal
	end
	local a = self.arrowFrame
	local rot = a.rot or a
	a.dist:SetShown(QC.db.profile.arrow.showDistance ~= false)

	local routeGoals = self._routeGoals
	local bearing, dist, pathGoal, chainDist = self:ComputeRouteMetrics(goal, routeGoals)
	if pathGoal and pathGoal ~= goal and not goal.travelHop then
		goal = pathGoal
		self.target = goal
	end

	if not bearing then
		SetArrowRotation(rot, a.tex, 0)
		a.tex:SetVertexColor(unpack(ARROW_BAD))
		a.dist:SetText("|cffff6633" .. L("another area") .. "|r")
		a.label:SetText(self:FormatArrowLabel(goal))
		return
	end

	local arrival = goal.dist or QC.db.profile.arrow.arrival or 8
	local hopArrival = goal.travelHop and math.max(5, arrival) or arrival
	local pathLen = chainDist or dist
	local directToGoal = select(2, ComputeBearing(goal))
	local atDestination = pathLen and pathLen <= hopArrival
	-- Horizontal proximity to an NPC upstairs is not arrival for talk/turnin goals.
	if atDestination and goal.IsComplete and not goal:IsComplete() then
		if goal.action ~= "goto" and not goal.travelHop then
			atDestination = false
		elseif directToGoal and directToGoal <= hopArrival and routeGoals and #routeGoals >= 2 then
			atDestination = false
		end
	end
	if atDestination then
		if goal.IsComplete and goal:IsComplete() and not goal.travelHop then
			self._retargetCooldown = (self._retargetCooldown or 0) - (elapsed or ARROW_TICK)
			if self._retargetCooldown <= 0 then
				self._retargetCooldown = RETARGET_COOLDOWN
				self:Update()
			end
			return
		end
		local proxArrival = goal.travelHop or goal.action == "goto"
		if not proxArrival then
			atDestination = false
		else
			SetArrowRotation(rot, a.tex, 0)
			a.tex:SetVertexColor(unpack(ARRIVE))
			a.dist:SetText("|cff66ff66" .. L("arrived") .. "|r")
			a.label:SetText(self:FormatArrowLabel(goal))
			if TG and TG.CheckHopAdvance then
				TG:CheckHopAdvance()
				local ng = TG.activeRoute and TG.activeRoute.arrowGoal
				if ng and ng ~= goal then
					self.target = ng
					self.arrowFrame.label:SetText(self:FormatArrowLabel(ng))
				end
			end
			return
		end
	end

	local facing = GetPlayerFacingRad()
	local rotAngle = bearing - facing
	rotAngle = (rotAngle % TWO_PI + TWO_PI) % TWO_PI
	if rotAngle > PI then rotAngle = rotAngle - TWO_PI end
	SetArrowRotation(rot, a.tex, rotAngle)

	local rel = (bearing + facing + PI) % TWO_PI - PI
	local off = math_abs(rel)
	local good = QC.db.profile.arrow.colorGood or ARROW_GOOD
	local bad = QC.db.profile.arrow.colorBad or ARROW_BAD
	local tint = a._skinTint
	if off < 0.35 then
		if tint then a.tex:SetVertexColor(tint[1], tint[2], tint[3])
		else a.tex:SetVertexColor(good[1], good[2], good[3]) end
	elseif off < 1.9 then
		if tint then
			a.tex:SetVertexColor(
				(tint[1] + bad[1]) / 2,
				(tint[2] + bad[2]) / 2,
				(tint[3] + bad[3]) / 2)
		else
			a.tex:SetVertexColor((good[1] + bad[1]) / 2, (good[2] + bad[2]) / 2, (good[3] + bad[3]) / 2)
		end
	else
		a.tex:SetVertexColor(bad[1], bad[2], bad[3])
	end

	if dist then
		self:UpdateMeasuredSpeed(pathLen or dist, elapsed or ARROW_TICK)
		local txt = FormatDistance(pathLen or dist)
		local speed = self:GetPlayerTravelSpeed()
		if speed > 0.5 then
			local eta = FormatETA((pathLen or dist) / speed)
			if eta then txt = txt .. "  |cff88ccff" .. eta .. "|r" end
		end
		a.dist:SetText(txt)
	else
		a.dist:SetText("|cffffcc66" .. L("far away") .. "|r")
	end
	a.label:SetText(self:FormatArrowLabel(goal))
end

-- Redraw route lines when world map opens or the map canvas resizes.
function Waypoint:HookMap()
	if self._mapHooked then return end
	self._mapHooked = true
	if WorldMapFrame then
		WorldMapFrame:HookScript("OnShow", function()
			Waypoint:EnsureMapOverlay()
			Waypoint:EnsureMapLinePool()
			EnsureViewMapData()
			Waypoint:Update()
			Waypoint:RedrawPendingRouteLines()
		end)
		if WorldMapFrame.OnMapChanged then
			hooksecurefunc(WorldMapFrame, "OnMapChanged", function()
				Waypoint:EnsureMapOverlay()
				EnsureViewMapData()
				Waypoint:UpdateTrail(true)
				Waypoint:RedrawPendingRouteLines()
			end)
		end
	end
	self:HookMapCanvasResize()
end

function Waypoint:HookMapCanvasResize()
	if self._canvasResizeHooked then return end
	self._canvasResizeHooked = true

	local function onCanvasLayout()
		Waypoint:EnsureMapLinePool()
		if Waypoint._arrowGoal then
			Waypoint:UpdateTrail(true)
		else
			self:RedrawPendingRouteLines()
		end
	end

	local scroll = WorldMapFrame and WorldMapFrame.ScrollContainer
	local child = scroll and scroll.Child
	if child then
		child:HookScript("OnSizeChanged", onCanvasLayout)
	end
	if scroll then
		scroll:HookScript("OnSizeChanged", onCanvasLayout)
	end
	if WorldMapFrame and WorldMapFrame.GetCanvas then
		local canvas = WorldMapFrame:GetCanvas()
		if canvas then
			canvas:HookScript("OnSizeChanged", onCanvasLayout)
		end
	end
	if EventRegistry and EventRegistry.RegisterCallback and WorldMapFrame then
		EventRegistry:RegisterCallback("MapCanvas.MapSet", onCanvasLayout, WorldMapFrame)
	end
end
