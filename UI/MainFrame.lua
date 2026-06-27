-- QuestCore: custom main window.
-- Built entirely in Lua using only Blizzard's WHITE8X8 fill texture,
-- SetColorTexture and Blizzard fonts. No third-party art.

local addonName, QuestCore = ...
local QC = QuestCore

local UI = {}
QC.UI = UI

local L = QC.L
local WHITE = "Interface\\Buttons\\WHITE8X8"

-- Palette (r, g, b, a).
local COLOR = {
	bg        = { 0.06, 0.07, 0.09, 0.92 },
	border    = { 0.10, 0.55, 0.85, 1.00 },
	title     = { 0.10, 0.13, 0.18, 1.00 },
	toolbar   = { 0.08, 0.10, 0.13, 1.00 },
	btn       = { 0.16, 0.18, 0.22, 1.00 },
	btnHi     = { 0.20, 0.45, 0.70, 1.00 },
	complete  = { 0.30, 0.80, 0.30, 1.00 },
	active    = { 0.95, 0.78, 0.20, 1.00 },
	passive   = { 0.45, 0.47, 0.52, 1.00 },
	textHi    = { 0.95, 0.96, 0.98, 1.00 },
}

----------------------------------------------------------------------
-- Small widget helpers (Blizzard-only textures)
----------------------------------------------------------------------

local function SolidTexture(parent, layer, color)
	local t = parent:CreateTexture(nil, layer or "BACKGROUND")
	t:SetTexture(WHITE)
	if color then t:SetVertexColor(unpack(color)) end
	return t
end

local function CreateButton(parent, label, minWidth, height, maxWidth)
	local W = QC.UIWidgets
	if W then
		local b = W.CreateFlatButton(parent, label, {
			minWidth = minWidth or 48,
			maxWidth = maxWidth or math.max(minWidth or 48, (parent.GetWidth and parent:GetWidth() or 280) - 8),
			height = height or 20,
			padding = 14,
			bgColor = COLOR.btn,
			hiColor = COLOR.btnHi,
			hiAlpha = 0.4,
			fontApply = function(fs)
				if QC.Font and QC.Font.Apply then QC.Font.Apply(fs, 12, false)
				elseif fs.SetFontObject then fs:SetFontObject(GameFontNormalSmall) end
			end,
		})
		return b
	end

	local b = CreateFrame("Button", nil, parent)
	b:SetSize(minWidth or 60, height or 20)
	local bg = b:CreateTexture(nil, "BACKGROUND")
	bg:SetTexture(WHITE)
	bg:SetAllPoints()
	bg:SetVertexColor(unpack(COLOR.btn))
	b.bg = bg
	local hi = b:CreateTexture(nil, "HIGHLIGHT")
	hi:SetTexture(WHITE)
	hi:SetAllPoints()
	hi:SetVertexColor(COLOR.btnHi[1], COLOR.btnHi[2], COLOR.btnHi[3], 0.4)
	local fs = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	fs:SetPoint("CENTER")
	fs:SetText(label)
	b.text = fs
	return b
end

-- Attach a simple two-line tooltip to any frame.
local function AddTooltip(frame, title, desc)
	frame:HookScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:AddLine(title, 1, 1, 1)
		if desc then GameTooltip:AddLine(desc, 0.8, 0.8, 0.8, true) end
		GameTooltip:Show()
	end)
	frame:HookScript("OnLeave", function() GameTooltip:Hide() end)
end

-- Add mouse-wheel scrolling to a UIPanelScrollFrame.
local function EnableWheelScroll(scroll, step)
	step = step or 28
	scroll:EnableMouseWheel(true)
	scroll:SetScript("OnMouseWheel", function(self, delta)
		local range = self:GetVerticalScrollRange() or 0
		local cur = self:GetVerticalScroll() or 0
		local new = cur - delta * step
		if new < 0 then new = 0 elseif new > range then new = range end
		self:SetVerticalScroll(new)
	end)
end
QC._EnableWheelScroll = EnableWheelScroll

----------------------------------------------------------------------
-- Build
----------------------------------------------------------------------

function UI:Create()
	if self.frame then return self.frame end

	local cfg = QC.db.profile.window

	local f = CreateFrame("Frame", "QuestCoreFrame", UIParent, "BackdropTemplate")
	self.frame = f
	f:SetSize(cfg.width or 280, cfg.height or 320)
	f:SetPoint(cfg.point or "CENTER", UIParent, cfg.relpoint or "CENTER", cfg.x or 0, cfg.y or 0)
	f:SetFrameStrata("MEDIUM")
	f:SetClampedToScreen(true)
	f:SetMovable(true)
	f:SetResizable(true)

	f:SetBackdrop({
		bgFile = WHITE,
		edgeFile = WHITE,
		edgeSize = 1,
		insets = { left = 1, right = 1, top = 1, bottom = 1 },
	})
	f:SetBackdropColor(unpack(COLOR.bg))
	f:SetBackdropBorderColor(unpack(COLOR.border))

	------------------------------------------------------------------
	-- Title bar
	------------------------------------------------------------------
	local title = CreateFrame("Frame", nil, f)
	title:SetPoint("TOPLEFT", 1, -1)
	title:SetPoint("TOPRIGHT", -1, -1)
	title:SetHeight(22)
	SolidTexture(title, "BACKGROUND", COLOR.title):SetAllPoints()

	local titleText = title:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	titleText:SetPoint("LEFT", 8, 0)
	titleText:SetText("|cff33d6ffQuest|r|cffffffffCore|r")
	self.titleText = titleText

	local close = CreateFrame("Button", nil, title, "UIPanelCloseButton")
	close:SetPoint("RIGHT", 2, 0)
	close:SetScale(0.85)
	close:SetScript("OnClick", function() UI:Hide() end)

	local menuBtn = CreateButton(title, L["Guides"] or "Guides", 52, 18, 90)
	menuBtn:SetPoint("RIGHT", close, "LEFT", -4, 0)
	menuBtn:SetScript("OnClick", function()
		if QC.GuideMenu then QC.GuideMenu:Show() end
	end)
	AddTooltip(menuBtn, L["Select Guide"], L["Browse and search all guides"])
	self.menuBtn = menuBtn

	local optsBtn = CreateButton(title, L["Opts"] or "Opts", 40, 18, 72)
	optsBtn:SetPoint("RIGHT", menuBtn, "LEFT", -4, 0)
	optsBtn:SetScript("OnClick", function()
		if QC.Options then QC.Options:Toggle() end
	end)
	AddTooltip(optsBtn, L["QuestCore Settings"], L["Window, arrow, profiles, language"])

	local editBtn = CreateButton(title, L["Edit"] or "Edit", 40, 18, 72)
	editBtn:SetPoint("RIGHT", optsBtn, "LEFT", -4, 0)
	editBtn:SetScript("OnClick", function()
		if QC.GuideEditor then QC.GuideEditor:Show() end
	end)
	AddTooltip(editBtn, L["Guide Editor"], L["Create or edit custom guides"])

	local logBtn = CreateButton(title, L["Log"] or "Log", 36, 18, 64)
	logBtn:SetPoint("RIGHT", editBtn, "LEFT", -4, 0)
	logBtn:SetScript("OnClick", function()
		if QC.History then QC.History:Toggle() end
	end)
	AddTooltip(logBtn, L["Guide History"], L["Completed guides, time and XP"])

	-- Dragging via the title bar.
	self.titleBar = title
	title:EnableMouse(true)
	title:RegisterForDrag("LeftButton")
	title:SetScript("OnDragStart", function() f:StartMoving() end)
	title:SetScript("OnDragStop", function()
		f:StopMovingOrSizing()
		local point, _, relpoint, x, y = f:GetPoint()
		cfg.point, cfg.relpoint, cfg.x, cfg.y = point, relpoint, x, y
	end)
	-- Right-click the title to quickly lock/unlock the window.
	title:SetScript("OnMouseUp", function(_, button)
		if button == "RightButton" then
			cfg.locked = not cfg.locked
			if QC.Options then QC.Options:ApplyWindow() end
			QC:Print(cfg.locked and "Window locked." or "Window unlocked.")
		end
	end)
	AddTooltip(title, "|cff33d6ffQuestCore|r",
		(L["Drag to move"] or "Drag to move") .. " "
		.. ((QC.UITextures and QC.UITextures.sep) or "|")
		.. " " .. (L["right-click to lock"] or "right-click to lock"))

	local talentHint = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	talentHint:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 8, -2)
	talentHint:SetPoint("TOPRIGHT", title, "BOTTOMRIGHT", -8, -2)
	talentHint:SetJustifyH("LEFT")
	talentHint:SetWordWrap(true)
	talentHint:Hide()
	self.talentHint = talentHint

	local autoStatus = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	autoStatus:SetPoint("TOPLEFT", talentHint, "BOTTOMLEFT", 0, -2)
	autoStatus:SetPoint("TOPRIGHT", talentHint, "BOTTOMRIGHT", 0, -2)
	autoStatus:SetJustifyH("LEFT")
	autoStatus:SetWordWrap(true)
	autoStatus:SetTextColor(0.55, 0.85, 1)
	autoStatus:Hide()
	self.autoStatus = autoStatus

	------------------------------------------------------------------
	-- Toolbar (bottom): Prev / step number / Next
	------------------------------------------------------------------
	local toolbar = CreateFrame("Frame", nil, f)
	toolbar:SetPoint("BOTTOMLEFT", 1, 1)
	toolbar:SetPoint("BOTTOMRIGHT", -1, 1)
	toolbar:SetHeight(24)
	SolidTexture(toolbar, "BACKGROUND", COLOR.toolbar):SetAllPoints()

	local prev = CreateButton(toolbar, L["< Prev"], 56, 18, 100)
	prev:SetPoint("LEFT", 4, 0)
	prev:SetScript("OnClick", function() QC:PrevStep() end)
	self.prevBtn = prev

	local next = CreateButton(toolbar, L["Next >"], 56, 18, 100)
	next:SetScript("OnClick", function() QC:NextStep() end)
	self.nextBtn = next

	local skip = CreateButton(toolbar, L["Skip step"], 56, 18, 120)
	skip:SetScript("OnClick", function() QC:MarkStepComplete(QC.CurrentStepNum, true) end)
	self.skipBtn = skip

	local stepNum = toolbar:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	stepNum:SetJustifyH("CENTER")
	stepNum:SetWordWrap(false)
	stepNum:SetText("")
	self.stepNum = stepNum
	self.toolbar = toolbar

	local function LayoutToolbar()
		if not (self.prevBtn and self.nextBtn and self.skipBtn and self.stepNum and self.toolbar) then return end
		local W = QC.UIWidgets
		local tw = self.toolbar:GetWidth() or 280
		if W and W.RefitButton then
			W.RefitButton(self.prevBtn, math.min(80, tw * 0.28))
			W.RefitButton(self.nextBtn, math.min(80, tw * 0.28))
			W.RefitButton(self.skipBtn, math.min(110, tw * 0.36))
		end
		self.nextBtn:ClearAllPoints()
		self.nextBtn:SetPoint("RIGHT", self.toolbar, "RIGHT", -4, 0)
		self.skipBtn:ClearAllPoints()
		self.skipBtn:SetPoint("RIGHT", self.nextBtn, "LEFT", -4, 0)
		self.stepNum:ClearAllPoints()
		self.stepNum:SetPoint("LEFT", self.prevBtn, "RIGHT", 6, 0)
		self.stepNum:SetPoint("RIGHT", self.skipBtn, "LEFT", -6, 0)
	end
	LayoutToolbar()
	self.LayoutToolbar = LayoutToolbar

	------------------------------------------------------------------
	-- XP progress bar (above the toolbar)
	------------------------------------------------------------------
	local xpBar = CreateFrame("Frame", nil, f)
	xpBar:SetPoint("BOTTOMLEFT", toolbar, "TOPLEFT", 4, 2)
	xpBar:SetPoint("BOTTOMRIGHT", toolbar, "TOPRIGHT", -4, 2)
	xpBar:SetHeight(13)
	SolidTexture(xpBar, "BACKGROUND", { 0.12, 0.13, 0.16, 1 }):SetAllPoints()

	local rested = xpBar:CreateTexture(nil, "ARTWORK")
	rested:SetTexture(WHITE)
	rested:SetPoint("TOPLEFT")
	rested:SetPoint("BOTTOMLEFT")
	rested:SetVertexColor(0.25, 0.35, 0.78, 0.7)
	self.xpRested = rested

	local fill = xpBar:CreateTexture(nil, "ARTWORK")
	fill:SetTexture(WHITE)
	fill:SetDrawLayer("ARTWORK", 1)
	fill:SetPoint("TOPLEFT")
	fill:SetPoint("BOTTOMLEFT")
	fill:SetVertexColor(unpack(QC.GetColor and QC:GetColor("bars", "xp") or { 0.55, 0.20, 0.78, 0.95 }))
	self.xpFill = fill

	local xpText = xpBar:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	xpText:SetPoint("CENTER")
	self.xpText = xpText
	self.xpBar = xpBar

	------------------------------------------------------------------
	-- Currency tracker bar
	------------------------------------------------------------------
	local curBar = CreateFrame("Frame", nil, f)
	curBar:SetHeight(14)
	SolidTexture(curBar, "BACKGROUND", { 0.10, 0.11, 0.14, 1 }):SetAllPoints()
	local curText = curBar:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	curText:SetPoint("LEFT", 6, 0)
	curText:SetPoint("RIGHT", -6, 0)
	curText:SetJustifyH("LEFT")
	curBar.text = curText
	self.curBar = curBar

	------------------------------------------------------------------
	-- Guide progress bar (% of steps)
	------------------------------------------------------------------
	local progBar = CreateFrame("Frame", nil, f)
	progBar:SetHeight(13)
	SolidTexture(progBar, "BACKGROUND", { 0.10, 0.12, 0.15, 1 }):SetAllPoints()
	local progFill = progBar:CreateTexture(nil, "ARTWORK")
	progFill:SetTexture(WHITE)
	progFill:SetPoint("TOPLEFT")
	progFill:SetPoint("BOTTOMLEFT")
	progFill:SetVertexColor(0.20, 0.55, 0.85, 0.9)
	progBar.fill = progFill
	local progText = progBar:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	progText:SetPoint("CENTER")
	progBar.text = progText
	self.progBar = progBar

	------------------------------------------------------------------
	-- Scrollable step content
	------------------------------------------------------------------
	local scroll = CreateFrame("ScrollFrame", "QuestCoreScroll", f, "UIPanelScrollFrameTemplate")
	scroll:SetPoint("TOPLEFT", autoStatus, "BOTTOMLEFT", 0, -4)
	scroll:SetPoint("BOTTOMRIGHT", toolbar, "TOPRIGHT", -26, 4)
	self.scroll = scroll

	local content = CreateFrame("Frame", nil, scroll)
	content:SetSize(1, 1)
	scroll:SetScrollChild(content)
	self.content = content
	EnableWheelScroll(scroll)

	self.lines = {}
	self.stickyLines = {}

	-- Sticky goals header area (above scroll).
	local empty = CreateFrame("Frame", nil, f)
	empty:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 8, -8)
	empty:SetPoint("BOTTOMRIGHT", toolbar, "TOPRIGHT", -8, 8)
	self.empty = empty

	local emptyText = empty:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	emptyText:SetPoint("CENTER", 0, 20)
	emptyText:SetWidth(220)
	emptyText:SetJustifyH("CENTER")
	emptyText:SetText(L["No guide loaded.\nPick one to begin."])
	self.emptyText = emptyText

	local selectBtn = CreateButton(empty, L["Select Guide"], 110, 24, 220)
	selectBtn:SetPoint("CENTER", 0, -20)
	selectBtn:SetScript("OnClick", function()
		if QC.GuideMenu then QC.GuideMenu:Show() end
	end)
	self.selectBtn = selectBtn

	------------------------------------------------------------------
	-- Resize grip (bottom-right)
	------------------------------------------------------------------
	if f.SetResizeBounds then pcall(f.SetResizeBounds, f, 200, 220, 520, 760)
	elseif f.SetMinResize then pcall(f.SetMinResize, f, 200, 220) end

	local grip = CreateFrame("Button", nil, f)
	grip:SetSize(14, 14)
	grip:SetPoint("BOTTOMRIGHT", -2, 2)
	grip:SetFrameLevel(toolbar:GetFrameLevel() + 5)
	local gt = grip:CreateTexture(nil, "OVERLAY")
	gt:SetTexture(WHITE)
	gt:SetAllPoints()
	gt:SetVertexColor(0.4, 0.6, 0.8, 0.5)
	grip:SetScript("OnEnter", function() gt:SetVertexColor(0.5, 0.8, 1.0, 0.9) end)
	grip:SetScript("OnLeave", function() gt:SetVertexColor(0.4, 0.6, 0.8, 0.5) end)
	grip:SetScript("OnMouseDown", function()
		if not QC.db.profile.window.locked then f:StartSizing("BOTTOMRIGHT") end
	end)
	grip:SetScript("OnMouseUp", function()
		f:StopMovingOrSizing()
		cfg.width, cfg.height = math.floor(f:GetWidth() + 0.5), math.floor(f:GetHeight() + 0.5)
		UI:Update()
	end)
	self.grip = grip

	------------------------------------------------------------------
	-- Quest item use button (secure)
	------------------------------------------------------------------
	local itemBtn = CreateFrame("Button", "QuestCoreItemButton", f, "SecureActionButtonTemplate")
	itemBtn:SetSize(38, 38)
	itemBtn:SetPoint("TOPLEFT", f, "TOPRIGHT", 4, -2)
	itemBtn:RegisterForClicks("AnyUp")
	itemBtn:SetAttribute("type", "item")
	local ibBg = itemBtn:CreateTexture(nil, "BACKGROUND")
	ibBg:SetTexture(WHITE); ibBg:SetAllPoints(); ibBg:SetVertexColor(0, 0, 0, 0.8)
	local ibIcon = itemBtn:CreateTexture(nil, "ARTWORK")
	ibIcon:SetPoint("TOPLEFT", 2, -2); ibIcon:SetPoint("BOTTOMRIGHT", -2, 2)
	ibIcon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
	itemBtn.icon = ibIcon
	local ibCount = itemBtn:CreateFontString(nil, "OVERLAY", "NumberFontNormalSmall")
	ibCount:SetPoint("BOTTOMRIGHT", -2, 2)
	itemBtn.count = ibCount
	itemBtn:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		if self.itemLink then
			GameTooltip:SetHyperlink(self.itemLink)
		elseif self.actionLabel then
			GameTooltip:AddLine("|cff33d6ffQuestCore|r", 1, 1, 1)
			GameTooltip:AddLine(self.actionLabel, 1, 1, 1, true)
		else
			return
		end
		GameTooltip:Show()
	end)
	itemBtn:SetScript("OnLeave", function() GameTooltip:Hide() end)
	itemBtn:Hide()
	self.itemBtn = itemBtn

	if cfg.showMainLog == false then
		f:Hide()
	end

	if QC.Options then QC.Options:ApplyWindow() end
	if QC.Skin then QC.Skin:Apply(f) end
	self:UpdateXP()
	self:UpdateCurrency()
	self:UpdateItemButton()

	f:HookScript("OnSizeChanged", function()
		if UI.UpdateXP then UI:UpdateXP() end
		if UI.UpdateProgress then UI:UpdateProgress() end
	end)

	return f
end

-- Find the most relevant one-click action on the active step.
-- Priority: explicit |macro > |cast / cast goal > |use / use goal item.
local function FindStepAction(step)
	if not (step and step.goals) then return nil end
	local item, spell, macro
	for _, goal in ipairs(step.goals) do
		if goal:IsVisible() and not goal:IsComplete() then
			if not macro and goal.macrosrc then macro = goal.macrosrc end
			if not spell and goal.castspell then spell = goal end
			if not item and goal.useitem then item = goal end
		end
	end
	-- Fall back to completed-but-visible goals so the button still appears.
	if not (item or spell or macro) and step.goals then
		for _, goal in ipairs(step.goals) do
			if goal:IsVisible() then
				if not macro and goal.macrosrc then macro = goal.macrosrc end
				if not spell and goal.castspell then spell = goal end
				if not item and goal.useitem then item = goal end
			end
		end
	end
	if macro then return { kind = "macro", macrotext = macro } end
	if spell then return { kind = "spell", goal = spell } end
	if item then return { kind = "item", goal = item } end
	return nil
end

local function SpellTexture(spell)
	if C_Spell and C_Spell.GetSpellTexture then return C_Spell.GetSpellTexture(spell) end
	if GetSpellTexture then return GetSpellTexture(spell) end
	return nil
end

-- Show a secure one-click button (cast / use / macro) for the active step.
function UI:UpdateItemButton()
	local btn = self.itemBtn
	if not btn then return end

	if QC.db and QC.db.profile.general.actionButton == false then
		btn:Hide()
		return
	end

	if InCombatLockdown() then
		self._itemBtnDirty = true
		return
	end
	self._itemBtnDirty = false

	local action = FindStepAction(QC.CurrentStep)
	if not action then
		btn:Hide()
		return
	end

	local icon, label, count
	if action.kind == "macro" then
		btn:SetAttribute("type", "macro")
		btn:SetAttribute("macrotext", action.macrotext)
		btn:SetAttribute("item", nil)
		btn:SetAttribute("spell", nil)
		icon = "Interface\\Icons\\INV_Misc_Note_01"
		label = action.macrotext
		btn.itemLink = nil
	elseif action.kind == "spell" then
		local g = action.goal
		local spell = g.castspell
		-- /cast needs a spell name; resolve it from an id when necessary.
		local spellName = g.castspellname
		if not spellName and type(spell) == "string" then spellName = spell end
		if not spellName and QC.GetSpellInfo then spellName = QC.GetSpellInfo(spell) end
		btn:SetAttribute("type", "macro")
		btn:SetAttribute("macrotext", spellName and ("/cast " .. spellName) or "")
		btn:SetAttribute("item", nil)
		btn:SetAttribute("spell", nil)
		icon = SpellTexture(spell)
		label = spellName or g:GetText()
		btn.itemLink = nil
	else
		local g = action.goal
		local itemid = g.useitem
		btn:SetAttribute("type", "item")
		btn:SetAttribute("item", itemid and ("item:" .. itemid) or g.useitemname)
		btn:SetAttribute("macrotext", nil)
		if itemid then
			icon = QC.GetItemIcon(itemid)
			btn.itemLink = "item:" .. itemid
			count = QC.GetItemCount(itemid) or 0
		end
		label = g.useitemname or (g.GetText and g:GetText())
	end

	btn.icon:SetTexture(icon or "Interface\\Icons\\INV_Misc_QuestionMark")
	btn.count:SetText((count and count > 1) and count or "")
	btn.actionLabel = label
	btn:Show()
end

-- Stack optional bottom bars and anchor scroll above them (full window width).
-- When XP and guide progress are both enabled, they share one row side by side.
function UI:LayoutBars()
	if not self.scroll or not self.toolbar then return end

	local margin = 4
	local gap = 4
	local barH = 13
	local spacing = 2
	local toolbar = self.toolbar

	local xpShown = self.xpBar and self.xpBar:IsShown()
	local progShown = self.progBar and self.progBar:IsShown()
	local split = xpShown and progShown
	local curShown = self.curBar and self.curBar:IsShown()

	local bottomInset = spacing

	if split then
		local frameW = self.frame and self.frame:GetWidth() or 280
		local innerW = math.max(80, frameW - margin * 2)
		local halfW = math.max(40, (innerW - gap) / 2)

		self.xpBar:ClearAllPoints()
		self.xpBar:SetPoint("BOTTOMLEFT", toolbar, "TOPLEFT", margin, spacing)
		self.xpBar:SetSize(halfW, barH)

		self.progBar:ClearAllPoints()
		self.progBar:SetPoint("BOTTOMRIGHT", toolbar, "TOPRIGHT", -margin, spacing)
		self.progBar:SetSize(halfW, barH)

		bottomInset = bottomInset + barH + spacing
	elseif xpShown then
		self.xpBar:ClearAllPoints()
		self.xpBar:SetPoint("BOTTOMLEFT", toolbar, "TOPLEFT", margin, spacing)
		self.xpBar:SetPoint("BOTTOMRIGHT", toolbar, "TOPRIGHT", -margin, spacing)
		self.xpBar:SetHeight(barH)

		bottomInset = bottomInset + barH + spacing
	elseif progShown then
		self.progBar:ClearAllPoints()
		self.progBar:SetPoint("BOTTOMLEFT", toolbar, "TOPLEFT", margin, spacing)
		self.progBar:SetPoint("BOTTOMRIGHT", toolbar, "TOPRIGHT", -margin, spacing)
		self.progBar:SetHeight(barH)

		bottomInset = bottomInset + barH + spacing
	end

	if curShown then
		self.curBar:ClearAllPoints()
		self.curBar:SetPoint("BOTTOMLEFT", toolbar, "TOPLEFT", margin, bottomInset)
		self.curBar:SetPoint("BOTTOMRIGHT", toolbar, "TOPRIGHT", -margin, bottomInset)
		self.curBar:SetHeight(14)
		bottomInset = bottomInset + 14 + spacing
	end

	-- Scroll spans the full window width; only the bottom inset grows with extra bars.
	self.scroll:ClearAllPoints()
	self.scroll:SetPoint("TOPLEFT", self.titleBar, "BOTTOMLEFT", 4, -4)
	self.scroll:SetPoint("BOTTOMRIGHT", toolbar, "TOPRIGHT", -26, bottomInset)
end

local function BarWidth(bar, frame)
	local w = bar and bar:GetWidth()
	if (not w or w <= 0) and frame then
		w = math.max(0, frame:GetWidth() - 16)
	end
	return w or 0
end

local function UpdateXPBar(self, bar, fill, rested, text, width)
	local lvl = UnitLevel("player")
	local maxLvl = (GetMaxLevelForPlayerExpansion and GetMaxLevelForPlayerExpansion())
		or (GetMaxPlayerLevel and GetMaxPlayerLevel()) or 80

	fill:SetVertexColor(unpack(QC.GetColor and QC:GetColor("bars", "xp") or { 0.55, 0.20, 0.78, 0.95 }))

	if lvl >= maxLvl then
		fill:SetWidth(width > 0 and width or 0.001)
		if rested then rested:SetWidth(0) end
		text:SetText(("|cffaaaaaaLv %d  |cff888888%s|r"):format(lvl, L["Max level"] or "Max level"))
	else
		local cur = UnitXP("player") or 0
		local max = UnitXPMax("player") or 0
		local rest = GetXPExhaustion() or 0
		if max > 0 and width > 0 then
			local pct = cur / max
			fill:SetWidth(math.max(0.001, width * pct))
			if rested then rested:SetWidth(math.min(width, width * ((cur + rest) / max))) end
			local sep = (QC.UITextures and QC.UITextures.sep) or " | "
			text:SetText(("|cffcc88ffLv %d  %s  %d%%%s|r"):format(
				lvl, sep, math.floor(pct * 100 + 0.5), rest > 0 and "  |cff7faaff+|r" or ""))
		else
			fill:SetWidth(0.001)
			if rested then rested:SetWidth(0) end
			text:SetText(("|cffcc88ffLv %d|r"):format(lvl))
		end
	end
end

local function UpdateGuideBar(self, bar, fill, text, width, guide)
	local pct = (QC.CurrentStepNum or 1) / #guide.steps
	pct = math.max(0, math.min(1, pct))
	fill:SetVertexColor(unpack(QC.GetColor and QC:GetColor("bars", "progress") or { 0.20, 0.55, 0.85, 0.9 }))
	if width > 0 then fill:SetWidth(math.max(0.001, width * pct)) end
	text:SetText(("|cffaaccff%d%%|r"):format(math.floor(pct * 100 + 0.5)))
end

-- Bottom strip(s): XP bar + guide progress bar (side by side when both enabled).
function UI:RefreshBottomBar()
	local showXP = QC.db.profile.window.showXP ~= false
	local showSteps = QC.db.profile.window.showProgress ~= false
	local guide = QC.CurrentGuide
	local hasGuide = type(guide) == "table" and guide.steps and #guide.steps > 0
	local showProg = showSteps and hasGuide

	if showXP and self.xpBar then
		self.xpBar:Show()
	else
		if self.xpBar then self.xpBar:Hide() end
	end

	if showProg and self.progBar then
		self.progBar:Show()
	else
		if self.progBar then self.progBar:Hide() end
	end

	self:LayoutBars()

	if showXP and self.xpBar then
		UpdateXPBar(self, self.xpBar, self.xpFill, self.xpRested, self.xpText,
			BarWidth(self.xpBar, self.frame))
	end

	if showProg and self.progBar then
		UpdateGuideBar(self, self.progBar, self.progBar.fill, self.progBar.text,
			BarWidth(self.progBar, self.frame), guide)
	end
end

function UI:UpdateXP()
	self:RefreshBottomBar()
end

-- Show up to a few backpack-tracked currencies.
function UI:UpdateCurrency()
	if not self.curBar then return end
	if not QC.db.profile.general.currencyBar or not C_CurrencyInfo then
		self.curBar:Hide()
		self:LayoutBars()
		return
	end

	local parts = {}
	local n = C_CurrencyInfo.GetCurrencyListSize and C_CurrencyInfo.GetCurrencyListSize() or 0
	for i = 1, n do
		local info = C_CurrencyInfo.GetCurrencyListInfo(i)
		if info and info.isShowInBackpack and info.quantity then
			parts[#parts + 1] = ("|cffffd100%s|r %d"):format(info.name:sub(1, 10), info.quantity)
			if #parts >= 3 then break end
		end
	end

	if #parts == 0 then
		self.curBar:Hide()
	else
		self.curBar.text:SetText(table.concat(parts, "   "))
		self.curBar:Show()
	end
	self:UpdateProgress()
	self:LayoutBars()
end

-- Guide completion percentage bar (or XP when showXP is enabled).
function UI:UpdateProgress()
	self:RefreshBottomBar()
end

----------------------------------------------------------------------
-- Goal line pool
----------------------------------------------------------------------

function UI:AcquireLine(index)
	local line = self.lines[index]
	if line then return line end

	line = CreateFrame("Button", nil, self.content)
	line:SetHeight(16)

	local hl = line:CreateTexture(nil, "BACKGROUND")
	hl:SetTexture(WHITE)
	hl:SetAllPoints()
	hl:SetVertexColor(0.95, 0.78, 0.20, 0.13)
	hl:Hide()
	line.hl = hl

	local icon = line:CreateTexture(nil, "ARTWORK")
	icon:SetTexture("Interface\\Common\\Indicator-Grey")
	icon:SetSize(14, 14)
	icon:SetPoint("TOPLEFT", 0, -2)
	line.icon = icon

	local checkMark = line:CreateTexture(nil, "OVERLAY")
	checkMark:SetTexture("Interface\\Buttons\\UI-CheckBox-Check")
	checkMark:SetSize(10, 10)
	checkMark:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", 2, -2)
	checkMark:Hide()
	line.checkMark = checkMark

	local text = line:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	text:SetPoint("TOPLEFT", icon, "TOPRIGHT", 6, 2)
	text:SetJustifyH("LEFT")
	text:SetJustifyV("TOP")
	line.text = text
	line.goal = nil

	self.lines[index] = line
	return line
end

----------------------------------------------------------------------
-- Render
----------------------------------------------------------------------

local STATUS_COLOR = {
	complete = COLOR.complete,
	incomplete = COLOR.active,
	passive = COLOR.passive,
}

local function GoalStatusColor(status)
	if QC.GetColor then
		if status == "complete" then return QC:GetColor("goals", "complete") end
		if status == "incomplete" then return QC:GetColor("goals", "active") end
		return QC:GetColor("goals", "passive")
	end
	return STATUS_COLOR[status] or COLOR.passive
end

function UI:AcquireStickyLine(index)
	local line = self.stickyLines[index]
	if line then return line end
	line = self:AcquireLine(index)
	self.stickyLines[index] = line
	return line
end

local function ApplyLineFont(fs, size)
	if QC.Font and QC.Font.Apply then
		QC.Font.Apply(fs, size)
	elseif fs and fs.SetFontObject then
		fs:SetFontObject(GameFontNormalSmall)
	end
end

function UI:RenderGoalLine(line, goal, width, status, dim, active)
	line.goal = goal
	if line.icon then line.icon:Show() end
	if line.text then
		line.text:ClearAllPoints()
		line.text:SetPoint("TOPLEFT", line.icon, "TOPRIGHT", 6, 2)
	end
	if line.hl then
		if active then line.hl:Show() else line.hl:Hide() end
	end

	local goalMap = goal.GetMapId and goal:GetMapId() or goal.map

	line:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	line:SetScript("OnClick", function(_, button)
		if goal.action == "confirm" then
			goal.confirmed = true
			local loadTitle = goal.loadguide or goal.next
			if loadTitle and loadTitle:find("\\") then
				if QC.TryLoadGuide and QC:TryLoadGuide(loadTitle, goal) then
					UI:Update()
					return
				end
				QC:TryToCompleteStep()
				UI:Update()
				return
			end
			if goal.loadguide then
				if QC.TryLoadGuide and QC:TryLoadGuide(goal.loadguide, goal) then
					UI:Update()
					return
				end
			end
			QC:TryToCompleteStep()
			UI:Update()
			return
		end
		if button == "RightButton" then
			-- Right-click: drop a waypoint at this goal.
			if goalMap and goal.x and goal.y and QC.Waypoint and QC.Waypoint.SetManual then
				QC.Waypoint:SetManual(goalMap, goal.x, goal.y, goal:GetText())
			end
		else
			-- Left-click: jump to step, then navigate (arrow + travel route) like QuestCore.
			local st = goal.parentStep
			if st and st.num and st.num ~= QC.CurrentStepNum then
				QC:FocusStep(st.num, true)
			end
			if goalMap and goal.x and goal.y and QC.Waypoint and QC.Waypoint.FocusGoal then
				QC.Waypoint:FocusGoal(goal)
			end
			if goalMap and WorldMapFrame then
				pcall(function()
					if not WorldMapFrame:IsShown() then ToggleWorldMap() end
					WorldMapFrame:SetMapID(goalMap)
				end)
			end
		end
	end)

	line:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:AddLine(goal:GetText() or "", 1, 1, 1, true)
		if goalMap and goal.x and goal.y then
			GameTooltip:AddLine(L["Left-click: navigate here"] or "Left-click: navigate here", 0.55, 0.80, 1.00)
		end
		if goal.tip then GameTooltip:AddLine(goal.tip, 0.85, 0.8, 0.55, true) end
		if goal.questid and C_QuestLog and C_QuestLog.GetQuestObjectives then
			local objs = C_QuestLog.GetQuestObjectives(goal.questid)
			if objs and #objs > 0 then
				GameTooltip:AddLine(" ")
				for _, o in ipairs(objs) do
					local done = o.finished
					GameTooltip:AddLine((done and "|cff66cc66" or "|cffcccccc") .. (o.text or "") .. "|r")
				end
			end
		end
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine("|cff888888L: " .. (QC.L["jump / map"] or "jump / map")
			.. "   R: " .. (QC.L["waypoint"] or "waypoint") .. "|r")
		GameTooltip:Show()
	end)
	line:SetScript("OnLeave", function() GameTooltip:Hide() end)

	local size = QC.db.profile.window.fontSize or 12
	ApplyLineFont(line.text, size)
	local iconSize = (QC.GoalIcons and QC.GoalIcons.IconSize(size)) or math.min(size + 2, 16)
	line.icon:SetSize(iconSize, iconSize)
	if QC.GoalIcons and QC.GoalIcons.ApplyToLine then
		QC.GoalIcons.ApplyToLine(line, goal, { status = status, dim = dim, active = active })
	else
		local col = dim and GoalStatusColor("passive") or GoalStatusColor(status)
		line.icon:SetVertexColor(unpack(col))
	end
	line.text:SetWidth(width - iconSize - 10)

	local txt = goal:GetText()
	if (not txt or txt == "") and goal.tip then txt = goal.tip end
	if dim then txt = "|cff8a8d93" .. txt .. "|r"
	elseif status == "complete" then txt = "|cff66cc66" .. txt .. "|r"
	elseif goal.sticky then txt = "|cff88aaff[sticky]|r " .. txt end
	-- Append the tip as a dimmed sub-line (unless it's already the text).
	if goal.tip and txt ~= goal.tip and not txt:find(goal.tip, 1, true) then
		local tipText = goal.tip
		if QC.FormatGuideText then tipText = QC.FormatGuideText(tipText) end
		txt = txt .. "\n|cffb9a06e\194\187 " .. tipText .. "|r"
	end
	line.text:SetText(txt)
	local h = math.max(size + 4, line.text:GetStringHeight() + 4)
	line:SetHeight(h)
	line:Show()
	return h
end

function UI:Update()
	if not self.frame then return end

	self:UpdateXP()
	self:UpdateItemButton()
	if self.LayoutToolbar then self:LayoutToolbar() end

	local guide = QC.CurrentGuide
	local step = QC.CurrentStep

	-- Title + step counter.
	local showProgress = QC.db.profile.window.showProgress ~= false
	if guide then
		self.titleText:SetText("|cffffffff" .. (guide.title_short or guide.title) .. "|r")
		if QC.IsGuideAtEnd and QC:IsGuideAtEnd() then
			self.stepNum:SetText(showProgress and (L["Guide complete!"] or "Complete") or "")
		else
			self.stepNum:SetText(showProgress and ("Step %d / %d"):format(QC.CurrentStepNum or 1, #guide.steps) or "")
		end
	else
		self.titleText:SetText("|cff33d6ffQuest|r|cffffffffCore|r")
		self.stepNum:SetText(showProgress and L["No guide"] or "")
	end

	if self.talentHint then
		local hint = QC.TalentAdvisor and QC.TalentAdvisor.GetHint and QC.TalentAdvisor:GetHint()
		if hint and hint ~= "" then
			self.talentHint:SetText(hint)
			self.talentHint:Show()
		else
			self.talentHint:Hide()
		end
	end

	-- Hide all pooled lines first.
	for _, line in ipairs(self.lines) do line:Hide() end
	for _, line in ipairs(self.stickyLines) do if line then line:Hide() end end

	if not step then
		self.scroll:Hide()
		self.empty:Show()
		self.content:SetHeight(1)
		return
	end

	self.empty:Hide()
	self.scroll:Show()

	local width = self.scroll:GetWidth()
	local y = -2
	local idx = 0

	-- Sticky goals from earlier steps.
	local stickies = QC:GetActiveStickyGoals()
	if #stickies > 0 then
		for si, goal in ipairs(stickies) do
			if not QC:ShouldHideCompletedGoal(goal) then
				idx = idx + 1
				local line = self:AcquireStickyLine(si)
				line:ClearAllPoints()
				line:SetPoint("TOPLEFT", self.content, "TOPLEFT", 0, y)
				line:SetWidth(width)
				local h = self:RenderGoalLine(line, goal, width, goal:GetStatus())
				y = y - h - 2
			end
		end
		y = y - 4
	end

	local scrollTarget

	for _, goal in ipairs(step.goals) do
		if goal:IsVisible() and not QC:ShouldHideCompletedGoal(goal) then
			idx = idx + 1
			local line = self:AcquireLine(idx)
			line:ClearAllPoints()
			line:SetPoint("TOPLEFT", self.content, "TOPLEFT", 0, y)
			line:SetWidth(width)

			local status = goal:GetStatus()
			local isActive = false
			if not scrollTarget and status == "incomplete" then
				scrollTarget = -y
				isActive = true
			end
			local h = self:RenderGoalLine(line, goal, width, status, false, isActive)

			y = y - h - 2
		end
	end
	self._scrollTarget = scrollTarget or 0

	-- Upcoming steps preview (dimmed), multi-step multi-step view.
	local stepsShown = QC.db.profile.window.stepsShown or 1
	if stepsShown > 1 and guide and guide.steps then
		local shown = 1
		local n = QC.CurrentStepNum or 1
		while shown < stepsShown do
			n = n + 1
			local nextStep = guide.steps[n]
			if not nextStep then break end
			local hasVisible = false
			for _, goal in ipairs(nextStep.goals) do
				if goal:IsVisible() then hasVisible = true break end
			end
			if hasVisible then
				y = y - 6
				idx = idx + 1
				local sep = self:AcquireLine(idx)
				sep:ClearAllPoints()
				sep:SetPoint("TOPLEFT", self.content, "TOPLEFT", 0, y)
				sep:SetWidth(width)
				sep.goal = nil
				sep:SetScript("OnClick", nil)
				sep:SetScript("OnEnter", nil)
				sep:SetScript("OnLeave", nil)
				if sep.hl then sep.hl:Hide() end
				if sep.icon then sep.icon:Hide() end
				ApplyLineFont(sep.text, (QC.db.profile.window.fontSize or 12) - 1)
				sep.text:ClearAllPoints()
				sep.text:SetPoint("TOPLEFT", sep, "TOPLEFT", 2, -2)
				sep.text:SetWidth(width - 6)
				sep.text:SetText(("|cff556677— Step %d —|r"):format(n))
				sep:SetHeight(14)
				sep:Show()
				y = y - 16

				for _, goal in ipairs(nextStep.goals) do
					if goal:IsVisible() and not QC:ShouldHideCompletedGoal(goal) then
						idx = idx + 1
						local line = self:AcquireLine(idx)
						line:ClearAllPoints()
						line:SetPoint("TOPLEFT", self.content, "TOPLEFT", 0, y)
						line:SetWidth(width)
						local h = self:RenderGoalLine(line, goal, width, goal:GetStatus(), true)
						y = y - h - 2
					end
				end
				shown = shown + 1
			end
		end
	end

	self.content:SetHeight(math.max(1, -y))

	-- Auto-scroll to the active goal once per step change.
	if QC.db.profile.general.autoScroll ~= false then
		local cur = QC.CurrentStepNum
		if cur ~= self._autoScrolledStep then
			self._autoScrolledStep = cur
			local maxScroll = math.max(0, self.content:GetHeight() - self.scroll:GetHeight())
			local target = math.max(0, math.min(self._scrollTarget or 0, maxScroll))
			self.scroll:SetVerticalScroll(target)
		end
	end

	self:UpdateProgress()
end

----------------------------------------------------------------------
-- Notification banner (fading toast near top of screen)
----------------------------------------------------------------------

function UI:SetAutomationStatus(text)
	if not self.autoStatus then return end
	if text and text ~= "" then
		self.autoStatus:SetText(text)
		self.autoStatus:Show()
	else
		self.autoStatus:Hide()
	end
end

function UI:Notify(text, color)
	if QC.db.profile.general.notifications == false then return end

	local b = self.banner
	if not b then
		b = CreateFrame("Frame", "QuestCoreBanner", UIParent, "BackdropTemplate")
		b:SetSize(380, 44)
		b:SetPoint("TOP", UIParent, "TOP", 0, -170)
		b:SetFrameStrata("HIGH")
		b:SetBackdrop({ bgFile = WHITE, edgeFile = WHITE, edgeSize = 1,
			insets = { left = 1, right = 1, top = 1, bottom = 1 } })
		b:SetBackdropColor(0.05, 0.07, 0.10, 0.9)
		b:SetBackdropBorderColor(0.10, 0.55, 0.85, 1)

		local fs = b:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		fs:SetPoint("CENTER")
		b.text = fs
		b:Hide()
		self.banner = b
	end

	b.text:SetText(text)
	b.text:SetTextColor(color and color[1] or 1, color and color[2] or 0.9, color and color[3] or 0.4)
	b:SetAlpha(1)
	b:Show()

	if UIFrameFadeRemoveFrame then UIFrameFadeRemoveFrame(b) end
	if C_Timer and C_Timer.After then
		C_Timer.After(2.5, function()
			if UIFrameFadeOut then UIFrameFadeOut(b, 1.0, b:GetAlpha(), 0) end
			C_Timer.After(1.0, function() b:Hide() end)
		end)
	end
end

----------------------------------------------------------------------
-- Visibility
----------------------------------------------------------------------

function UI:Show()
	if not self.frame then self:Create() end
	self.frame:Show()
	QC.db.profile.window.showMainLog = true
	self:Update()
end

function UI:Hide()
	if self.frame then self.frame:Hide() end
	QC.db.profile.window.showMainLog = false
end

function UI:Toggle()
	if not self.frame then self:Create() end
	if self.frame:IsShown() then self:Hide() else self:Show() end
end
