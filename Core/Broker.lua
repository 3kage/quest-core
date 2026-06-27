-- QuestCore: LibDataBroker launcher.
-- Registers a data object when LibDataBroker-1.1 is available (provided by
-- broker displays like Titan Panel, ChocolateBar, Bazooka). No-ops otherwise.

local addonName, QuestCore = ...
local QC = QuestCore

local Broker = {}
QC.Broker = Broker

function Broker:Enable()
	if self._enabled then return end
	local LDB = LibStub and LibStub:GetLibrary("LibDataBroker-1.1", true)
	if not LDB then return end
	self._enabled = true

	self.obj = LDB:NewDataObject("QuestCore", {
		type = "launcher",
		icon = "Interface\\Icons\\INV_Misc_Map_01",
		label = "QuestCore",
		OnClick = function(_, button)
			if button == "RightButton" then
				if QC.GuideMenu then QC.GuideMenu:Toggle() end
			elseif IsShiftKeyDown() then
				if QC.Options then QC.Options:Toggle() end
			else
				QC:ToggleTracker()
			end
		end,
		OnTooltipShow = function(tt)
			tt:AddLine("|cff33d6ffQuestCore|r")
			local g = QC.CurrentGuide
			if g then
				tt:AddLine((g.title_short or g.title), 1, 1, 1)
				if QC.IsGuideAtEnd and QC:IsGuideAtEnd() then
					tt:AddLine((QC.L and QC.L["Guide complete!"]) or "Complete", 0.4, 1.0, 0.5)
				else
					tt:AddLine(("Step %d / %d"):format(QC.CurrentStepNum or 1, #(g.steps or {})), 0.8, 0.8, 0.8)
				end
			else
				tt:AddLine(QC.L["No guide"] or "No guide", 0.8, 0.8, 0.8)
			end
			tt:AddLine(" ")
			tt:AddLine("|cffffff00Left|r: " .. (QC.L["toggle window"] or "toggle window"), 0.7, 0.7, 0.7)
			tt:AddLine("|cffffff00Right|r: " .. (QC.L["guide menu"] or "guide menu"), 0.7, 0.7, 0.7)
			tt:AddLine("|cffffff00Shift+Left|r: " .. (QC.L["settings"] or "settings"), 0.7, 0.7, 0.7)
		end,
	})
end

-- Refresh broker text/tooltip (called on step changes).
function Broker:Update()
	if self.obj then
		local g = QC.CurrentGuide
		self.obj.text = g and (g.title_short or g.title) or "QuestCore"
	end
end
