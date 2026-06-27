-- QuestCore: completed-guide history with time / level / XP stats.

local addonName, QuestCore = ...
local QC = QuestCore

local History = {}
QC.History = History

local L = QC.L
local WHITE = "Interface\\Buttons\\WHITE8X8"

local COLOR = {
	bg     = { 0.06, 0.07, 0.09, 0.96 },
	border = { 0.10, 0.55, 0.85, 1.00 },
	title  = { 0.10, 0.13, 0.18, 1.00 },
	row    = { 0.12, 0.14, 0.18, 1.00 },
	rowAlt = { 0.10, 0.12, 0.15, 1.00 },
}

local function FormatDuration(sec)
	sec = sec or 0
	if sec >= 3600 then return ("%dh %dm"):format(sec / 3600, (sec % 3600) / 60) end
	if sec >= 60 then return ("%dm %ds"):format(sec / 60, sec % 60) end
	return ("%ds"):format(sec)
end

local function FormatXP(xp)
	xp = xp or 0
	if xp >= 1000000 then return ("%.1fM"):format(xp / 1000000) end
	if xp >= 1000 then return ("%.1fk"):format(xp / 1000) end
	return tostring(xp)
end

----------------------------------------------------------------------
-- Build
----------------------------------------------------------------------

function History:Create()
	if self.frame then return self.frame end

	local f = CreateFrame("Frame", "QuestCoreHistory", UIParent, "BackdropTemplate")
	self.frame = f
	f:SetSize(360, 400)
	f:SetPoint("CENTER")
	f:SetFrameStrata("DIALOG")
	f:SetClampedToScreen(true)
	f:SetMovable(true)
	f:EnableMouse(true)
	f:RegisterForDrag("LeftButton")
	f:SetScript("OnDragStart", function() f:StartMoving() end)
	f:SetScript("OnDragStop", function() f:StopMovingOrSizing() end)
	f:Hide()

	f:SetBackdrop({ bgFile = WHITE, edgeFile = WHITE, edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 } })
	f:SetBackdropColor(unpack(COLOR.bg))
	f:SetBackdropBorderColor(unpack(COLOR.border))

	local titleBar = CreateFrame("Frame", nil, f)
	titleBar:SetPoint("TOPLEFT", 1, -1)
	titleBar:SetPoint("TOPRIGHT", -1, -1)
	titleBar:SetHeight(24)
	local tb = titleBar:CreateTexture(nil, "BACKGROUND")
	tb:SetTexture(WHITE); tb:SetAllPoints(); tb:SetVertexColor(unpack(COLOR.title))

	local title = titleBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	title:SetPoint("LEFT", 10, 0)
	title:SetText("|cff33d6ff" .. L["Guide History"] .. "|r")

	local close = CreateFrame("Button", nil, titleBar, "UIPanelCloseButton")
	close:SetPoint("RIGHT", 2, 0); close:SetScale(0.85)
	close:SetScript("OnClick", function() History:Hide() end)

	-- Summary line.
	local summary = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	summary:SetPoint("TOPLEFT", titleBar, "BOTTOMLEFT", 10, -6)
	summary:SetPoint("TOPRIGHT", titleBar, "BOTTOMRIGHT", -10, -6)
	summary:SetJustifyH("LEFT")
	self.summary = summary

	-- Clear button.
	local clear = QC.UIWidgets and QC.UIWidgets.CreatePanelButton(f, L["Clear history"], {
		height = 22,
		minWidth = 80,
		maxWidth = math.max(80, f:GetWidth() - 24),
		onClick = function()
			QC:ClearHistory()
			History:Rebuild()
		end,
	}) or CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
	if not QC.UIWidgets then
		clear:SetSize(110, 20)
		clear:SetText(L["Clear history"])
		clear:SetScript("OnClick", function()
			QC:ClearHistory()
			History:Rebuild()
		end)
	end
	clear:SetPoint("BOTTOMRIGHT", -10, 8)

	-- Scroll list.
	local scroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
	scroll:SetPoint("TOPLEFT", summary, "BOTTOMLEFT", 0, -6)
	scroll:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -28, 34)
	self.scroll = scroll

	local content = CreateFrame("Frame", nil, scroll)
	content:SetSize(1, 1)
	scroll:SetScrollChild(content)
	self.content = content
	self.rows = {}

	if QC._EnableWheelScroll then QC._EnableWheelScroll(scroll) end
	if QC.EnableEscapeClose then QC.EnableEscapeClose(f, function() History:Hide() end) end

	if QC.Skin then QC.Skin:Apply(f) end
	return f
end

function History:AcquireRow(i)
	local row = self.rows[i]
	if row then return row end
	row = CreateFrame("Frame", nil, self.content)
	row:SetHeight(34)

	local bg = row:CreateTexture(nil, "BACKGROUND")
	bg:SetTexture(WHITE)
	bg:SetAllPoints()
	row.bg = bg

	local name = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	name:SetPoint("TOPLEFT", 6, -3)
	name:SetPoint("TOPRIGHT", -6, -3)
	name:SetJustifyH("LEFT")
	row.name = name

	local stats = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	stats:SetPoint("BOTTOMLEFT", 6, 3)
	stats:SetJustifyH("LEFT")
	row.stats = stats

	self.rows[i] = row
	return row
end

function History:Rebuild()
	if not self.frame then self:Create() end
	for _, row in ipairs(self.rows) do row:Hide() end

	local hist = QC:GetHistory()
	local totalTime, totalLevels, totalXP = 0, 0, 0
	for _, rec in ipairs(hist) do
		totalTime = totalTime + (rec.duration or 0)
		totalLevels = totalLevels + (rec.levels or 0)
		totalXP = totalXP + (rec.xp or 0)
	end

	self.summary:SetText(("%s |cffffffff%d|r   %s |cffffffff%s|r   %s |cffffffff+%d|r   |cff33d6ffXP|r |cffffffff%s|r"):format(
		L["Completed:"], #hist,
		L["Time:"], FormatDuration(totalTime),
		L["Levels:"], totalLevels,
		FormatXP(totalXP)))

	local width = self.scroll:GetWidth()
	local y = -2
	for i, rec in ipairs(hist) do
		local row = self:AcquireRow(i)
		row:ClearAllPoints()
		row:SetPoint("TOPLEFT", self.content, "TOPLEFT", 0, y)
		row:SetWidth(width)
		row.bg:SetVertexColor(unpack(i % 2 == 0 and COLOR.rowAlt or COLOR.row))

		local short = rec.title:match("([^\\]+)$") or rec.title
		row.name:SetText(short)
		local sep = (QC.UITextures and QC.UITextures.sep) or " | "
		row.stats:SetText(("|cff88ccff%s|r  %s  |cff66cc66+%d|r  %s  |cffcc88ff%s XP|r"):format(
			FormatDuration(rec.duration), sep, rec.levels or 0, sep, FormatXP(rec.xp)))
		row:Show()
		y = y - 36
	end

	if #hist == 0 then
		self.summary:SetText("|cff888888" .. L["No completed guides yet."] .. "|r")
	end

	self.content:SetHeight(math.max(1, -y))
end

function History:Show()
	if not self.frame then self:Create() end
	self:Rebuild()
	self.frame:Show()
end

function History:Hide()
	if self.frame then self.frame:Hide() end
end

function History:Toggle()
	if self.frame and self.frame:IsShown() then self:Hide() else self:Show() end
end
