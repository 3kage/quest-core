-- QuestCore: optional automatic skipping of cinematics and movies.

local addonName, QuestCore = ...
local QC = QuestCore

local Cinematic = {}
QC.Cinematic = Cinematic

local function enabled()
	return QC.db and QC.db.profile.general.skipCinematics
end

-- In-engine cinematic (CinematicFrame).
function Cinematic:CINEMATIC_START()
	if not enabled() then return end
	-- Defer a frame so the cinematic is fully started before cancelling.
	QC:ScheduleTimer(function()
		if _G.CinematicFrame_CancelCinematic then
			pcall(CinematicFrame_CancelCinematic)
		elseif _G.StopCinematic then
			pcall(StopCinematic)
		end
	end, 0.1)
end

-- Pre-rendered movie (MovieFrame).
function Cinematic:PLAY_MOVIE()
	if not enabled() then return end
	QC:ScheduleTimer(function()
		if _G.GameMovieFinished then pcall(GameMovieFinished) end
		if _G.MovieFrame and MovieFrame:IsShown() then pcall(function() MovieFrame:Hide() end) end
	end, 0.1)
end

function Cinematic:Enable()
	if self._enabled then return end
	self._enabled = true
	QC:RegisterEvent("CINEMATIC_START", function() Cinematic:CINEMATIC_START() end)
	QC:RegisterEvent("PLAY_MOVIE", function() Cinematic:PLAY_MOVIE() end)
end
