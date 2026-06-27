-- QuestCore: world quest tracker (map pins for active WQs near player).

local addonName, QuestCore = ...
local QC = QuestCore

local WorldQuests = {}
QC.WorldQuests = WorldQuests

function WorldQuests:GetNearby(maxDist)
	maxDist = maxDist or 5000
	local out = {}
	if not (C_TaskQuest and C_TaskQuest.GetQuestsForPlayerByMapID) then return out end
	local map = C_Map and C_Map.GetBestMapForUnit("player")
	if not map then return out end
	local tasks = C_TaskQuest.GetQuestsForPlayerByMapID(map)
	if not tasks then return out end
	local px, py = QC.HBD:GetPlayerZonePosition()
	for _, info in ipairs(tasks) do
		if info.mapPoint and info.questId then
			local dist
			if px then
				dist = QC.HBD:GetZoneDistance(map, px, py, map, info.mapPoint.x, info.mapPoint.y)
			end
			if not dist or dist <= maxDist then
				out[#out + 1] = {
					questId = info.questId,
					map = map,
					x = info.mapPoint.x,
					y = info.mapPoint.y,
					dist = dist,
				}
			end
		end
	end
	return out
end

function WorldQuests:List()
	local list = self:GetNearby()
	if #list == 0 then
		QC:Print("No world quests on current map.")
		return
	end
	for _, wq in ipairs(list) do
		local title = C_QuestLog and C_QuestLog.GetTitleForQuestID(wq.questId) or ("Quest " .. wq.questId)
		QC:Print(("- %s (%dyd)"):format(title, wq.dist or 0))
	end
end

function WorldQuests:Enable()
	if self._enabled then return end
	self._enabled = true
end
