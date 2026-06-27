-- QuestCore: points of interest overlay (treasures & rares) from bundled data.
-- Builds a map-indexed cache from QC.Poi.Sets and draws pins on the world map.

local addonName, QuestCore = ...
local QC = QuestCore

local POI = {}
QC.POI = POI

local WHITE = "Interface\\Buttons\\WHITE8X8"
local HBDPins = QC.HBDPins

local COLOR_TREASURE = { 1.00, 0.82, 0.20 }
local COLOR_RARE     = { 0.80, 0.40, 0.95 }

----------------------------------------------------------------------
-- Parse "Zone/floor x,y" -> mapID, x(0..1), y(0..1)
----------------------------------------------------------------------

local function ParseSpot(spot)
	if type(spot) ~= "string" then return nil end
	local mapTok, x, y = spot:match("^%s*(.-)%s+([%d%.]+)%s*,%s*([%d%.]+)")
	if not x then return nil end
	local mapName = mapTok:match("^([^/]+)")
	local mapID = QC.ResolveMapToken and QC.ResolveMapToken(mapName) or nil
	if not mapID then return nil end
	return mapID, tonumber(x) / 100, tonumber(y) / 100
end

----------------------------------------------------------------------
-- Build cache: [mapID] = { {name, x, y, kind, quest, item, steps}, ... }
----------------------------------------------------------------------

function POI:Build()
	if self.byMap then return self.byMap end
	self.byMap = {}

	local sets = QC.Poi and QC.Poi.Sets
	if type(sets) ~= "table" then return self.byMap end

	for setName, set in pairs(sets) do
		local isRare = tostring(setName):find("Rare") ~= nil
		if type(set) == "table" then
			for _, entry in ipairs(set) do
				local skip = false
				if entry.quest and C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
					local qid = tonumber(entry.quest)
					if qid and C_QuestLog.IsQuestFlaggedCompleted(qid) then skip = true end
				end
				if not skip then
					local name = entry.rare or entry.treasure or entry.npc or entry.name
					local mapID, x, y = ParseSpot(entry.spot)
					if name and mapID then
						local list = self.byMap[mapID]
						if not list then list = {}; self.byMap[mapID] = list end
						list[#list + 1] = {
							name = name, x = x, y = y,
							kind = isRare and "rare" or "treasure",
							quest = entry.quest, item = entry.item,
							steps = entry.steps,
						}
					end
				end
			end
		end
	end
	return self.byMap
end

function POI:GetForMap(mapID)
	return self:Build()[mapID]
end

----------------------------------------------------------------------
-- World map pins
----------------------------------------------------------------------

function POI:AcquirePin(i)
	self.pins = self.pins or {}
	local pin = self.pins[i]
	if pin then return pin end
	pin = CreateFrame("Button", nil, UIParent)
	pin:SetSize(11, 11)
	local t = pin:CreateTexture(nil, "OVERLAY")
	t:SetTexture(WHITE)
	t:SetAllPoints()
	pin.tex = t
	pin:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:AddLine(self.poiName or "")
		if self.poiItem then GameTooltip:AddLine("Item: " .. self.poiItem, 0.8, 0.8, 0.8) end
		GameTooltip:AddLine("|cffffd100" .. (QC.L["Click to set waypoint"] or "Click to set waypoint") .. "|r", 0.6, 0.6, 0.6)
		GameTooltip:Show()
	end)
	pin:SetScript("OnLeave", function() GameTooltip:Hide() end)
	self.pins[i] = pin
	return pin
end

function POI:Refresh()
	self.byMap = nil
	HBDPins:RemoveAllWorldMapIcons(self)
	for _, p in ipairs(self.pins or {}) do p:Hide() end

	if not QC.db.profile.general.poiOverlay then return end
	if not (WorldMapFrame and WorldMapFrame:IsShown()) then return end

	local mapID = WorldMapFrame:GetMapID()
	local list = mapID and self:GetForMap(mapID)
	if not list then return end

	for i, poi in ipairs(list) do
		local pin = self:AcquirePin(i)
		local col = QC.GetColor and (
			poi.kind == "rare" and QC:GetColor("poi", "rare") or QC:GetColor("poi", "treasure")
		) or (poi.kind == "rare" and COLOR_RARE or COLOR_TREASURE)
		pin.tex:SetVertexColor(col[1], col[2], col[3])
		pin.poiName = poi.name
		pin.poiItem = poi.item
		pin:SetScript("OnClick", function()
			if QC.Waypoint and QC.Waypoint.SetManual then
				QC.Waypoint:SetManual(mapID, poi.x, poi.y, poi.name)
			end
		end)
		HBDPins:AddWorldMapIconMap(self, pin, mapID, poi.x, poi.y)
	end
end

function POI:Enable()
	if self._enabled then return end
	self._enabled = true
	if WorldMapFrame then
		WorldMapFrame:HookScript("OnShow", function() POI:Refresh() end)
		if WorldMapFrame.OnMapChanged then
			hooksecurefunc(WorldMapFrame, "OnMapChanged", function() POI:Refresh() end)
		end
	end
end
