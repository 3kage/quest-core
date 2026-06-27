-- QuestCore: corpse navigation. On death, point the arrow at the corpse;
-- clear it once the player is alive again.

local addonName, QuestCore = ...
local QC = QuestCore

local Death = {}
QC.Death = Death

local function CorpsePosition()
	if not C_DeathInfo or not C_DeathInfo.GetCorpseMapPosition then return nil end
	local map = C_Map and C_Map.GetBestMapForUnit("player")
	if not map then return nil end
	local pos = C_DeathInfo.GetCorpseMapPosition(map)
	if not pos then return nil end
	local x, y = pos:GetXY()
	if not x then return nil end
	return map, x, y
end

function Death:PointToCorpse()
	if not QC.db.profile.general.deathArrow then return end
	if not (QC.Waypoint and QC.Waypoint.SetManual) then return end

	-- Poll briefly: corpse position is known shortly after release.
	local tries = 0
	local function attempt()
		tries = tries + 1
		local map, x, y = CorpsePosition()
		if map then
			self._active = true
			QC.Waypoint:SetManual(map, x, y, "|cffff8888" .. (QC.L["Your corpse"] or "Your corpse") .. "|r")
		elseif tries < 10 then
			QC:ScheduleTimer(attempt, 0.5)
		end
	end
	attempt()
end

function Death:ClearCorpse()
	if self._active and QC.Waypoint and QC.Waypoint.ClearManual then
		self._active = false
		QC.Waypoint:ClearManual()
	end
end

function Death:Enable()
	if self._enabled then return end
	self._enabled = true
	QC:RegisterEvent("PLAYER_DEAD", function() Death:PointToCorpse() end)
	QC:RegisterEvent("PLAYER_ALIVE", function() Death:ClearCorpse() end)
	QC:RegisterEvent("PLAYER_UNGHOST", function() Death:ClearCorpse() end)
	QC:RegisterEvent("CORPSE_IN_RANGE", function() Death:ClearCorpse() end)
end
