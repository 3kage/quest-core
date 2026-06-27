-- QuestCore: NPC / quest giver lookup for current step goals.

local addonName, QuestCore = ...
local QC = QuestCore

local WhoWhere = {}
QC.WhoWhere = WhoWhere

function WhoWhere:FindNPC(name)
	if not name or name == "" then return nil end
	local low = name:lower()
	if C_Map and C_Map.GetBestMapForUnit then
		-- Lightweight: search current step goals for matching npc name.
		local step = QC.CurrentStep
		if step and step.goals then
			for _, goal in ipairs(step.goals) do
				local n = goal.npcname or goal.mobname
				if n and n:lower():find(low, 1, true) and goal.x and goal.y then
					return goal:GetMapId(), goal.x, goal.y, n
				end
			end
		end
	end
	return nil
end

function WhoWhere:Go(name)
	local map, x, y, label = self:FindNPC(name)
	if not map then
		QC:Print("NPC not found on current step: " .. (name or "?"))
		return
	end
	if QC.Waypoint and QC.Waypoint.SetManual then
		QC.Waypoint:SetManual(map, x, y, label)
	end
end

function WhoWhere:Enable()
	if self._enabled then return end
	self._enabled = true
end
