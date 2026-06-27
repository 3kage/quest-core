-- QuestCore: lightweight phase detection for QC.InPhase() in bundled guides.

local addonName, QuestCore = ...
local QC = QuestCore

local Phase = {}
QC.Phase = Phase

-- Common phase tokens used in bundled guides (expand as needed).
local MAP_PHASES = {
	exilesreach = { 1409, 1609 },
	dracthyrstart = { 2153 },
}

function Phase:Detect()
	local map = C_Map and C_Map.GetBestMapForUnit("player")
	if not map then return {} end
	local active = {}
	for name, ids in pairs(MAP_PHASES) do
		for _, id in ipairs(ids) do
			if id == map then active[name] = true break end
		end
	end
	-- Exile's Reach intro quest heuristic.
	if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
		if not C_QuestLog.IsQuestFlaggedCompleted(59770) and UnitLevel("player") <= 10 then
			active.exilesreach = true
		end
	end
	return active
end

function Phase:InPhase(token)
	if not token or token == "" then return true end
	local active = self:Detect()
	local low = token:lower()
	if active[low] then return true end
	-- Allow compound expressions like "not exilesreach" at call site; single token only here.
	return false
end

function Phase:InstallGuideAPI()
	QC.InitGuideAPI()
	local impl = QC._guideImpl
	if impl then
		impl.InPhase = function(token) return Phase:InPhase(token) end
	end
end
