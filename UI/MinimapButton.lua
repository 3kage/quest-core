-- QuestCore: draggable minimap launcher button.
-- Left-click toggles the main window (Log / Opts); right-click opens the guide menu.

local addonName, QuestCore = ...
local QC = QuestCore

local MinimapButton = {}
QC.MinimapButton = MinimapButton

local L = QC.L

local WHITE = "Interface\\Buttons\\WHITE8X8"
local cos, sin = math.cos, math.sin
local atan2 = QC.atan2 or math.atan2 or math.atan

----------------------------------------------------------------------
-- Position around the minimap edge
----------------------------------------------------------------------

local function UpdatePosition(btn, angle)
	local rad = angle * math.pi / 180
	local x = cos(rad) * 80
	local y = sin(rad) * 80
	btn:ClearAllPoints()
	btn:SetPoint("CENTER", Minimap, "CENTER", x, y)
end

----------------------------------------------------------------------
-- Build
----------------------------------------------------------------------

function MinimapButton:Create()
	if self.button then return self.button end

	local cfg = QC.db.profile.minimap

	local btn = CreateFrame("Button", "QuestCoreMinimapButton", Minimap)
	self.button = btn
	btn:SetSize(32, 32)
	btn:SetFrameStrata("MEDIUM")
	btn:SetFrameLevel(Minimap:GetFrameLevel() + 5)
	btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	btn:RegisterForDrag("LeftButton")
	btn:SetMovable(true)

	local bg = btn:CreateTexture(nil, "BACKGROUND")
	bg:SetTexture(WHITE)
	bg:SetSize(24, 24)
	bg:SetPoint("CENTER")
	bg:SetVertexColor(0.10, 0.55, 0.85, 0.95)
	btn.bg = bg

	local border = btn:CreateTexture(nil, "ARTWORK")
	border:SetTexture(WHITE)
	border:SetSize(26, 26)
	border:SetPoint("CENTER")
	border:SetVertexColor(0.05, 0.08, 0.12, 1)

	local label = btn:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	label:SetPoint("CENTER", 0, 1)
	label:SetText("|cffffffffQ|r")

	local hi = btn:CreateTexture(nil, "HIGHLIGHT")
	hi:SetTexture(WHITE)
	hi:SetSize(24, 24)
	hi:SetPoint("CENTER")
	hi:SetVertexColor(0.30, 0.70, 1.00, 0.45)

	UpdatePosition(btn, cfg.angle or 220)

	btn:SetScript("OnDragStart", function()
		btn:StartMoving()
	end)

	btn:SetScript("OnDragStop", function()
		btn:StopMovingOrSizing()
		local cx, cy = Minimap:GetCenter()
		local bx, by = btn:GetCenter()
		if cx and bx then
			local angle = math.deg(atan2(by - cy, bx - cx))
			cfg.angle = angle
			UpdatePosition(btn, angle)
		end
	end)

	btn:SetScript("OnClick", function(_, button)
		if button == "RightButton" then
			if QC.GuideMenu then QC.GuideMenu:Show() end
		elseif IsShiftKeyDown() then
			if QC.Options then QC.Options:Toggle() end
		elseif IsAltKeyDown() then
			if QC.ToggleTracker then QC:ToggleTracker() end
		else
			if QC.UI and QC.UI.Toggle then QC.UI:Toggle() end
		end
	end)

	btn:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_LEFT")
		GameTooltip:AddLine("|cff33d6ffQuestCore|r", 1, 1, 1)
		GameTooltip:AddLine(L["Minimap left main window"], 0.8, 0.8, 0.8)
		GameTooltip:AddLine(L["Minimap alt tracker"], 0.8, 0.8, 0.8)
		GameTooltip:AddLine(L["Minimap right guide menu"], 0.8, 0.8, 0.8)
		GameTooltip:AddLine(L["Minimap shift settings"], 0.8, 0.8, 0.8)
		GameTooltip:Show()
	end)
	btn:SetScript("OnLeave", function() GameTooltip:Hide() end)

	if cfg.hidden then btn:Hide() end
	return btn
end

function MinimapButton:SetAngle(angle)
	QC.db.profile.minimap.angle = angle
	if self.button then UpdatePosition(self.button, angle) end
end

function MinimapButton:Show()
	if not self.button then self:Create() end
	self.button:Show()
	QC.db.profile.minimap.hidden = false
end

function MinimapButton:Hide()
	if self.button then self.button:Hide() end
	QC.db.profile.minimap.hidden = true
end

function MinimapButton:Toggle()
	if self.button and self.button:IsShown() then self:Hide() else self:Show() end
end
