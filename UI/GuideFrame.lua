-- QuestCore: floating guide window — guide title, step, goals with checkboxes (ukUA-safe fonts).

local addonName, QuestCore = ...
local QC = QuestCore

local GuideFrame = {}
QC.GuideFrame = GuideFrame

local WHITE = "Interface\\Buttons\\WHITE8X8"
local CHECK_ON = "Interface\\Buttons\\UI-CheckBox-Check"
local CHECK_OFF = "Interface\\Buttons\\UI-CheckBox-Up"

local COLOR = {
	bg     = { 0.06, 0.07, 0.09, 0.94 },
	border = { 0.10, 0.55, 0.85, 1.00 },
	title  = { 0.10, 0.13, 0.18, 1.00 },
	toolbar = { 0.08, 0.10, 0.13, 1.00 },
	btn    = { 0.16, 0.18, 0.22, 1.00 },
	btnHi  = { 0.20, 0.45, 0.70, 1.00 },
	done   = { 0.30, 0.85, 0.35, 1.00 },
	pending = { 0.35, 0.38, 0.42, 1.00 },
}

local function L(k)
	return (QC.L and QC.L[k]) or k
end

local function FontSize()
	local w = QC.db and QC.db.profile.window
	return (w and w.fontSize) or 14
end

local function ApplyFont(fs, size)
	if QC.Font and QC.Font.Apply then
		QC.Font.Apply(fs, size or FontSize())
	elseif fs and fs.SetFontObject then
		fs:SetFontObject(GameFontNormalSmall)
	end
end

local function SolidTex(parent, layer, color)
	local t = parent:CreateTexture(nil, layer or "BACKGROUND")
	t:SetTexture(WHITE)
	if color then t:SetVertexColor(unpack(color)) end
	return t
end

local function CanUseBackdrop()
	return BackdropTemplateMixin ~= nil
end

local function ApplyBackdrop(frame)
	if frame.SetBackdrop then
		frame:SetBackdrop({
			bgFile = WHITE,
			edgeFile = WHITE,
			edgeSize = 1,
			insets = { left = 1, right = 1, top = 1, bottom = 1 },
		})
		frame:SetBackdropColor(unpack(COLOR.bg))
		frame:SetBackdropBorderColor(unpack(COLOR.border))
		return
	end
	if not frame._qcBg then
		frame._qcBg = SolidTex(frame, "BACKGROUND", COLOR.bg)
		frame._qcBg:SetAllPoints()
	end
end

local function CreateButton(parent, label, minWidth, height, maxWidth)
	local W = QC.UIWidgets
	if W then
		return W.CreateFlatButton(parent, label, {
			minWidth = minWidth or 48,
			maxWidth = maxWidth or math.max(minWidth or 48, (parent.GetWidth and parent:GetWidth() or 280) - 8),
			height = height or 22,
			padding = 14,
			bgColor = COLOR.btn,
			hiColor = COLOR.btnHi,
			hiAlpha = 0.35,
			fontApply = function(fs) ApplyFont(fs, FontSize()) end,
		})
	end

	local b = CreateFrame("Button", nil, parent)
	b:SetSize(minWidth or 72, height or 22)
	local bg = SolidTex(b, "BACKGROUND", COLOR.btn)
	bg:SetAllPoints()
	b.bg = bg
	local hi = SolidTex(b, "HIGHLIGHT", COLOR.btnHi)
	hi:SetAllPoints()
	hi:SetAlpha(0.35)
	local fs = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	fs:SetPoint("CENTER")
	fs:SetText(label)
	ApplyFont(fs, FontSize())
	b.label = fs
	return b
end

local function SaveFramePosition(self)
	local f = self.frame
	if not f or not QC.db then return end
	local pos = QC.db.profile.framePosition
	if not pos then return end
	local point, _, relpoint, x, y = f:GetPoint(1)
	pos.point = point or "CENTER"
	pos.relpoint = relpoint or point or "CENTER"
	pos.x = x or 0
	pos.y = y or 0
	pos.width = f:GetWidth()
	pos.height = f:GetHeight()
end

function GuideFrame:Create()
	if self.frame then return self.frame end

	local pos = QC.db.profile.framePosition or {}
	local template = CanUseBackdrop() and "BackdropTemplate" or nil
	local f = CreateFrame("Frame", "QuestCoreGuideFrame", UIParent, template)
	self.frame = f
	f:SetSize(pos.width or 300, pos.height or 380)
	f:SetPoint(pos.point or "CENTER", UIParent, pos.relpoint or "CENTER", pos.x or 0, pos.y or 0)
	f:SetFrameStrata("MEDIUM")
	f:SetClampedToScreen(true)
	f:SetMovable(true)
	f:EnableMouse(true)
	f:RegisterForDrag("LeftButton")
	f:SetScript("OnDragStart", function()
		if not (QC.db.profile.window and QC.db.profile.window.locked) then
			f:StartMoving()
		end
	end)
	f:SetScript("OnDragStop", function()
		f:StopMovingOrSizing()
		SaveFramePosition(GuideFrame)
	end)
	ApplyBackdrop(f)

	local titleBar = CreateFrame("Frame", nil, f)
	titleBar:SetPoint("TOPLEFT", 1, -1)
	titleBar:SetPoint("TOPRIGHT", -1, -1)
	titleBar:SetHeight(24)
	SolidTex(titleBar, "BACKGROUND", COLOR.title):SetAllPoints()

	local titleFS = titleBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	titleFS:SetPoint("LEFT", 8, 0)
	titleFS:SetText("|cff33d6ffQuest|r|cffffffffCore|r")
	ApplyFont(titleFS, FontSize() + 1)
	self.titleFS = titleFS

	local close = CreateFrame("Button", nil, titleBar, "UIPanelCloseButton")
	close:SetPoint("RIGHT", 2, 0)
	close:SetScale(0.85)
	close:SetScript("OnClick", function() GuideFrame:Hide() end)

	local guideFS = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	guideFS:SetPoint("TOPLEFT", titleBar, "BOTTOMLEFT", 10, -8)
	guideFS:SetPoint("TOPRIGHT", titleBar, "BOTTOMRIGHT", -10, -8)
	guideFS:SetJustifyH("LEFT")
	ApplyFont(guideFS, FontSize())
	self.guideFS = guideFS

	local stepFS = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	stepFS:Hide()
	self.stepFS = stepFS

	local scroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
	scroll:SetPoint("TOPLEFT", guideFS, "BOTTOMLEFT", -4, -8)
	scroll:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -28, 36)
	self.scroll = scroll

	local content = CreateFrame("Frame", nil, scroll)
	content:SetSize(1, 1)
	scroll:SetScrollChild(content)
	self.content = content

	scroll:EnableMouseWheel(true)
	scroll:SetScript("OnMouseWheel", function(_, delta)
		local cur = scroll:GetVerticalScroll() or 0
		local range = scroll:GetVerticalScrollRange() or 0
		local step = 28
		local new = cur - delta * step
		if new < 0 then new = 0 elseif new > range then new = range end
		scroll:SetVerticalScroll(new)
	end)

	local toolbar = CreateFrame("Frame", nil, f)
	toolbar:SetPoint("BOTTOMLEFT", 4, 4)
	toolbar:SetPoint("BOTTOMRIGHT", -4, 4)
	toolbar:SetHeight(28)
	SolidTex(toolbar, "BACKGROUND", COLOR.toolbar):SetAllPoints()
	self.toolbar = toolbar

	local function LayoutToolbar()
		if not (self.prevBtn and self.nextBtn and self.skipBtn and self.footerStepFS and self.toolbar) then return end
		local W = QC.UIWidgets
		local tw = self.toolbar:GetWidth() or 280
		if W and W.RefitButton then
			W.RefitButton(self.prevBtn, math.min(90, tw * 0.28))
			W.RefitButton(self.nextBtn, math.min(90, tw * 0.28))
			W.RefitButton(self.skipBtn, math.min(120, tw * 0.36))
		end
		self.nextBtn:ClearAllPoints()
		self.nextBtn:SetPoint("RIGHT", self.toolbar, "RIGHT", -4, 0)
		self.skipBtn:ClearAllPoints()
		self.skipBtn:SetPoint("RIGHT", self.nextBtn, "LEFT", -4, 0)
		self.footerStepFS:ClearAllPoints()
		self.footerStepFS:SetPoint("LEFT", self.prevBtn, "RIGHT", 6, 0)
		self.footerStepFS:SetPoint("RIGHT", self.skipBtn, "LEFT", -6, 0)
	end

	local prevBtn = CreateButton(toolbar, L("< Prev"), 72, 22, 100)
	prevBtn:SetPoint("LEFT", 4, 0)
	prevBtn:SetScript("OnClick", function()
		if QC.Guide and QC.Guide.PrevStep then
			QC.Guide:PrevStep()
		else
			QC:PrevStep()
		end
	end)
	self.prevBtn = prevBtn

	local nextBtn = CreateButton(toolbar, L("Next >"), 72, 22, 100)
	nextBtn:SetScript("OnClick", function()
		if QC.Guide and QC.Guide.NextStep then
			QC.Guide:NextStep()
		else
			QC:NextStep()
		end
	end)
	self.nextBtn = nextBtn

	local skipBtn = CreateButton(toolbar, L("Skip step"), 72, 22, 120)
	skipBtn:SetScript("OnClick", function()
		QC:MarkStepComplete(QC.CurrentStepNum, true)
	end)
	self.skipBtn = skipBtn

	local footerStepFS = toolbar:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	footerStepFS:SetJustifyH("CENTER")
	footerStepFS:SetWordWrap(false)
	ApplyFont(footerStepFS, FontSize() - 1)
	self.footerStepFS = footerStepFS

	LayoutToolbar()
	self.LayoutToolbar = LayoutToolbar

	self.goalLines = {}
	self._linePool = {}

	if QC.EnableEscapeClose then
		QC.EnableEscapeClose(f, function() GuideFrame:Hide() end)
	end

	if QC.db.profile.window and QC.db.profile.window.shown ~= false then
		f:Show()
	else
		f:Hide()
	end

	return f
end

function GuideFrame:AcquireLine(index)
	local line = self._linePool[index]
	if line then return line end

	local parent = self.content
	line = CreateFrame("Frame", nil, parent)
	line:SetHeight(22)

	local box = CreateFrame("Frame", nil, line)
	box:SetSize(14, 14)
	box:SetPoint("LEFT", 0, 0)
	local icon = box:CreateTexture(nil, "ARTWORK")
	icon:SetTexture("Interface\\Common\\Indicator-Grey")
	icon:SetAllPoints()
	line.icon = icon
	line.box = box

	local mark = box:CreateTexture(nil, "OVERLAY")
	mark:SetTexture(CHECK_ON)
	mark:SetSize(10, 10)
	mark:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", 2, -2)
	mark:Hide()
	line.checkMark = mark

	local text = line:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	text:SetPoint("LEFT", box, "RIGHT", 6, 0)
	text:SetPoint("RIGHT", line, "RIGHT", -4, 0)
	text:SetJustifyH("LEFT")
	text:SetWordWrap(true)
	line.text = text

	self._linePool[index] = line
	return line
end

function GuideFrame:ReleaseLines(from)
	from = from or 1
	for i = from, #self._linePool do
		local line = self._linePool[i]
		if line then line:Hide() end
	end
end

function GuideFrame:RenderGoalLine(line, goal, width)
	local done = false
	if QC.GoalTypes and QC.GoalTypes.IsGoalComplete then
		done = QC.GoalTypes.IsGoalComplete(goal)
	elseif goal.IsComplete then
		done = goal:IsComplete()
	end

	local status = done and "complete" or "incomplete"
	local active = not done and goal.sticky
	local fs = FontSize()
	if line.box then line.box:SetSize(QC.GoalIcons and QC.GoalIcons.IconSize(fs) or 14, QC.GoalIcons and QC.GoalIcons.IconSize(fs) or 14) end
	if QC.GoalIcons and QC.GoalIcons.ApplyToLine then
		QC.GoalIcons.ApplyToLine(line, goal, { status = status, dim = false, active = active })
	elseif line.icon then
		local col = done and COLOR.done or COLOR.pending
		line.icon:SetVertexColor(unpack(col))
	end

	local txt
	if goal.GetText then
		txt = goal:GetText()
	elseif goal.text then
		txt = goal.text
	else
		txt = goal.action or ""
	end
	if done then
		txt = "|cff55cc55" .. txt .. "|r"
	elseif goal.sticky then
		txt = "|cffccaa44" .. txt .. "|r"
	end
	line.text:SetWidth(math.max(40, width - 24))
	ApplyFont(line.text, FontSize())
	line.text:SetText(txt or "")

	local h = math.max(22, line.text:GetStringHeight() + 4)
	line:SetHeight(h)
	return h
end

function GuideFrame:Refresh()
	if not self.frame then self:Create() end
	local f = self.frame
	if not f:IsShown() then return end

	ApplyFont(self.titleFS, FontSize() + 1)
	ApplyFont(self.guideFS, FontSize())
	if self.footerStepFS then ApplyFont(self.footerStepFS, FontSize() - 1) end
	if self.prevBtn and self.prevBtn.label then ApplyFont(self.prevBtn.label, FontSize()) end
	if self.nextBtn and self.nextBtn.label then ApplyFont(self.nextBtn.label, FontSize()) end
	if self.skipBtn and self.skipBtn.label then ApplyFont(self.skipBtn.label, FontSize()) end
	if self.LayoutToolbar then self:LayoutToolbar() end

	local guide = QC.CurrentGuide
	local step = QC.CurrentStep
	local stepNum = QC.CurrentStepNum or 1

	if guide then
		self.guideFS:SetText("|cffffffff" .. (guide.title_short or guide.title) .. "|r")
	else
		self.guideFS:SetText("|cff888888" .. L("No guide") .. "|r")
	end

	if self.footerStepFS then
		if step and guide and guide.steps then
			self.footerStepFS:SetText(("|cff88ccff" .. L("Steps:") .. " %d / %d|r"):format(stepNum, #guide.steps))
		else
			self.footerStepFS:SetText("")
		end
	end

	local width = (self.scroll:GetWidth() or 260) - 8
	local y = 0
	local idx = 0

	if not step or not step.goals or #step.goals == 0 then
		idx = 1
		local line = self:AcquireLine(idx)
		line:ClearAllPoints()
		line:SetPoint("TOPLEFT", self.content, "TOPLEFT", 0, 0)
		line:SetWidth(width)
		if line.icon then line.icon:Hide() end
		if line.checkMark then line.checkMark:Hide() end
		line.text:SetWidth(width - 24)
		ApplyFont(line.text, FontSize())
		local msg = guide and ("|cffaaaaaa" .. L("Steps:") .. " —|r") or ("|cff888888" .. L("No guide loaded.\nPick one to begin.") .. "|r")
		line.text:SetText(msg)
		local h = math.max(40, line.text:GetStringHeight() + 8)
		line:SetHeight(h)
		line:Show()
		y = y - h - 2
	else
		for _, goal in ipairs(step.goals) do
			if goal:IsVisible() and not QC:ShouldHideCompletedGoal(goal) then
				idx = idx + 1
				local line = self:AcquireLine(idx)
				line:ClearAllPoints()
				line:SetPoint("TOPLEFT", self.content, "TOPLEFT", 0, y)
				line:SetWidth(width)
				local h = self:RenderGoalLine(line, goal, width)
				line:Show()
				y = y - h - 2
			end
		end
	end

	self:ReleaseLines(idx + 1)
	self.content:SetSize(width, math.abs(y) + 4)

	if InCombatLockdown() then
		self._itemBtnDirty = true
	else
		self:UpdateItemButton()
	end
end

function GuideFrame:UpdateItemButton()
	local btn = self.itemBtn
	if not btn then return end
	if InCombatLockdown() then
		self._itemBtnDirty = true
		return
	end
	self._itemBtnDirty = false
	if not (QC.db and QC.db.profile.general.actionButton) then
		btn:Hide()
		return
	end
	local goal = QC.GoalTypes and QC.GoalTypes.FindUseGoal and QC.GoalTypes.FindUseGoal(QC.CurrentStep)
	if not goal or not goal.useitem then
		btn:Hide()
		return
	end
	if QC.GoalTypes.ApplySecureItemButton(btn, goal) then
		local icon = QC.GetItemIcon and QC.GetItemIcon(goal.useitem)
		if btn.icon and icon then btn.icon:SetTexture(icon) end
		btn:Show()
	end
end

function GuideFrame:Show()
	if not self.frame then self:Create() end
	self.frame:Show()
	if QC.db and QC.db.profile.window then
		QC.db.profile.window.shown = true
	end
	self:Refresh()
end

function GuideFrame:Hide()
	if self.frame then self.frame:Hide() end
	if QC.db and QC.db.profile.window then
		QC.db.profile.window.shown = false
	end
end

function GuideFrame:Toggle()
	if self.frame and self.frame:IsShown() then
		self:Hide()
	else
		self:Show()
	end
end

function GuideFrame:IsShown()
	return self.frame and self.frame:IsShown()
end
