-- QuestCore: areaId -> uiMapId translation from bundled zone tables.

local addonName, QC = ...

local ZoneMaps = {}
QC.QuestDBZoneMaps = ZoneMaps

local DB = QC.QuestDBData

function ZoneMaps:Init()
	if self._ready then return true end

	local zdb = QuestieLoader and QuestieLoader:ImportModule("ZoneDB")
	if not zdb or not zdb.private then
		return false, "ZoneDB not loaded"
	end

	local priv = zdb.private
	self.areaIdToUiMapId = DB.ParseDataString(priv.areaIdToUiMapId) or {}
	local override = DB.ParseDataString(priv.areaIdToUiMapIdOverride) or {}
	for areaId, uiMapId in pairs(override) do
		self.areaIdToUiMapId[areaId] = uiMapId
	end

	self.subZoneToParentZone = DB.ParseDataString(priv.subZoneToParentZone) or {}
	local subOverride = DB.ParseDataString(priv.subZoneToParentZoneOverride) or {}
	for areaId, parentId in pairs(subOverride) do
		self.subZoneToParentZone[areaId] = parentId
	end

	self._ready = true
	return true
end

function ZoneMaps:GetParentZone(areaId)
	areaId = tonumber(areaId)
	if not areaId then return nil end
	return self.subZoneToParentZone and self.subZoneToParentZone[areaId]
end

function ZoneMaps:GetUiMapId(areaId)
	if not self._ready then return nil end
	areaId = tonumber(areaId)
	if not areaId then return nil end

	local uiMapId = self.areaIdToUiMapId[areaId]
	if uiMapId and uiMapId > 0 then return uiMapId end

	local parent = self:GetParentZone(areaId)
	if parent and parent ~= areaId then
		return self:GetUiMapId(parent)
	end

	return uiMapId
end
