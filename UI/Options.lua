-- QuestCore: settings panel.
-- Category sidebar on the left, scrollable controls on the right.
-- Blizzard-only textures (WHITE8X8 + fonts).

local addonName, QuestCore = ...
local QC = QuestCore

local Options = {}
QC.Options = Options

local L = QC.L
local WHITE = "Interface\\Buttons\\WHITE8X8"

local COLOR = {
	bg      = { 0.06, 0.07, 0.09, 0.97 },
	border  = { 0.10, 0.55, 0.85, 1.00 },
	title   = { 0.10, 0.13, 0.18, 1.00 },
	side    = { 0.09, 0.10, 0.13, 1.00 },
	catHi   = { 0.18, 0.38, 0.62, 1.00 },
	catSel  = { 0.13, 0.30, 0.50, 1.00 },
	header  = { 0.30, 0.65, 0.95, 1.00 },
}

local OPT_FONT_SIZE = 16
local OPT_FONT_SIZE_SMALL = 15
local OPT_HEADER_SIZE = 18
local OPT_TITLE_SIZE = 18
local OPT_FRAME_W = 580
local OPT_FRAME_H = 520
local OPT_SIDEBAR_W = 162

-- Right column: color swatch + reset icon (consistent across all tabs).
local OPT_SWATCH = 28
local OPT_RESET_ICON = 28
local OPT_GRP_GAP = 8
local OPT_GRP_W = OPT_SWATCH + OPT_GRP_GAP + OPT_RESET_ICON
local OPT_ROW_PAD = 6
local RESET_TEX = "Interface\\Buttons\\UI-RefreshButton"

local function SetOptFont(fs, size)
	if QC.Font and QC.Font.Apply then
		QC.Font.Apply(fs, size or OPT_FONT_SIZE, false)
	elseif fs and fs.SetFontObject then
		fs:SetFontObject(GameFontNormalSmall)
	end
end

----------------------------------------------------------------------
-- Apply saved settings to live UI
----------------------------------------------------------------------

function Options:ApplyAll()
	self:ApplyWindow()
	self:ApplyArrow()
	if QC.ApplyMainLogVisibility then QC:ApplyMainLogVisibility() end
	if QC.ApplyTrackerVisibility then QC:ApplyTrackerVisibility() end
	if QC.UI and QC.UI.Update then QC.UI:Update() end
	if QC.GuideFrame and QC.GuideFrame.Refresh then QC.GuideFrame:Refresh() end
	if QC.Waypoint then
		if QC.Waypoint.ApplyRouteSettings then QC.Waypoint:ApplyRouteSettings() end
		if QC.Waypoint.Update then QC.Waypoint:Update() end
	end
end

function Options:ApplyWindow()
	local cfg = QC.db.profile.window
	local f = QC.UI and QC.UI.frame
	if not f then return end

	local op = cfg.opacity or 0.92
	if InCombatLockdown() then op = cfg.combatOpacity or op end
	f:SetBackdropColor(0.06, 0.07, 0.09, op)
	f:SetScale(cfg.scale or 1.0)

	local border = QC.GetColor and QC:GetColor("window", "border") or { 0.10, 0.55, 0.85, 1 }
	local ba = cfg.hideBorder and 0 or (border[4] or 1)
	f:SetBackdropBorderColor(border[1], border[2], border[3], ba)

	local locked = cfg.locked
	f:SetMovable(not locked)
	f:SetResizable(not locked)
	if QC.UI.titleBar then
		if locked then
			QC.UI.titleBar:RegisterForDrag()
		else
			QC.UI.titleBar:RegisterForDrag("LeftButton")
		end
	end
end

function Options:ApplyArrow()
	if QC.Waypoint and QC.Waypoint.ApplySettings then
		QC.Waypoint:ApplySettings()
	end
	local cfg = QC.db.profile.arrow
	local a = QC.Waypoint and QC.Waypoint.arrowFrame
	if not a then return end
	a:SetScale(cfg.scale or 1.0)
	if cfg.shown and QC.Waypoint.target then a:Show()
	elseif not cfg.shown then a:Hide() end
end

----------------------------------------------------------------------
-- Control widgets
----------------------------------------------------------------------

local function MakeHeader(parent, text)
	local fs = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	SetOptFont(fs, OPT_HEADER_SIZE)
	fs:SetText(L[text])
	fs:SetTextColor(unpack(COLOR.header))
	fs._h = 30
	return fs
end

local function MakeCheckbox(parent, label, get, set)
	local cb = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
	cb:SetSize(28, 28)
	cb.text = cb:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetOptFont(cb.text)
	cb.text:SetPoint("LEFT", cb, "RIGHT", 6, 0)
	cb.text:SetText(L[label])
	cb:SetChecked(get())
	cb:SetScript("OnClick", function(self)
		set(self:GetChecked() and true or false)
		Options:ApplyAll()
	end)
	cb._h = 34
	cb._refresh = function() cb:SetChecked(get()) end
	return cb
end

local function MakeSlider(parent, label, min, max, step, fmt, get, set)
	local row = CreateFrame("Frame", nil, parent)
	row:SetHeight(50)

	local fs = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetOptFont(fs)
	fs:SetPoint("TOPLEFT", 2, 0)
	fs:SetText(L[label])

	local val = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetOptFont(val, OPT_FONT_SIZE_SMALL)
	val:SetPoint("TOPRIGHT", -2, 0)

	local slider = CreateFrame("Slider", nil, row, "OptionsSliderTemplate")
	slider:SetPoint("TOPLEFT", 4, -20)
	slider:SetPoint("TOPRIGHT", -4, -20)
	slider:SetMinMaxValues(min, max)
	slider:SetValueStep(step)
	slider:SetObeyStepOnDrag(true)
	if slider.Low then slider.Low:SetText("") end
	if slider.High then slider.High:SetText("") end

	local function display(v) return fmt and fmt(v) or tostring(v) end
	slider:SetValue(get())
	val:SetText(display(get()))
	slider:SetScript("OnValueChanged", function(self, v)
		v = math.floor(v / step + 0.5) * step
		set(v)
		val:SetText(display(v))
		Options:ApplyAll()
	end)

	row._h = 52
	row._fullWidth = true
	row._refresh = function()
		slider:SetValue(get())
		val:SetText(display(get()))
	end
	return row
end

local function MakeButton(parent, label, onclick)
	local maxW = parent._contentMaxWidth or 360
	local b = QC.UIWidgets and QC.UIWidgets.CreatePanelButton(parent, L[label], {
		height = 28,
		minWidth = 80,
		maxWidth = maxW,
		fontApply = function(fs) if fs then SetOptFont(fs, OPT_FONT_SIZE) end end,
		onClick = onclick,
	}) or CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")

	if not QC.UIWidgets then
		b:SetHeight(28)
		b:SetText(L[label])
		local bfs = b:GetFontString()
		if bfs then SetOptFont(bfs, OPT_FONT_SIZE) end
		b:SetScript("OnClick", onclick)
	end

	b._h = 36
	b._fitButton = true
	b._labelKey = label
	b._refresh = function()
		b:SetText(L[label])
		Options:FitControlButton(b)
	end
	return b
end

function Options:FitControlButton(ctrl)
	if not (ctrl and ctrl._fitButton) then return end
	local width = self.scroll and self.scroll:GetWidth() or (OPT_FRAME_W - OPT_SIDEBAR_W - 48)
	local maxW = math.max(80, width - 24)
	if self.content then self.content._contentMaxWidth = maxW end
	if QC.UIWidgets then QC.UIWidgets.RefitButton(ctrl, maxW) end
end

-- Open the Blizzard color picker for an {r,g,b[,a]} value.
local function OpenColorPicker(c, apply, withAlpha)
	local r, g, b, a = c[1], c[2], c[3], c[4] or 1
	local prev = { r, g, b, a }
	local function onChange()
		local nr, ng, nb = ColorPickerFrame:GetColorRGB()
		local na = a
		if withAlpha and OpacitySliderFrame and OpacitySliderFrame.GetValue then
			na = OpacitySliderFrame:GetValue()
		end
		apply(nr, ng, nb, na)
	end
	local info = {
		hasOpacity = withAlpha and true or false,
		opacity = withAlpha and a or nil,
		r = r, g = g, b = b,
		swatchFunc = onChange,
		opacityFunc = withAlpha and onChange or nil,
		cancelFunc = function()
			apply(prev[1], prev[2], prev[3], prev[4])
		end,
	}
	if ColorPickerFrame.SetupColorPickerAndShow then
		ColorPickerFrame:SetupColorPickerAndShow(info)
	else
		ColorPickerFrame.func = onChange
		ColorPickerFrame.opacityFunc = info.opacityFunc
		ColorPickerFrame.cancelFunc = info.cancelFunc
		ColorPickerFrame.hasOpacity = info.hasOpacity
		if info.hasOpacity and ColorPickerFrame.SetOpacity then
			ColorPickerFrame:SetOpacity(a)
		end
		ColorPickerFrame:SetColorRGB(r, g, b)
		ColorPickerFrame:Hide()
		ColorPickerFrame:Show()
	end
end

local function CreateColorSwatch(parent, get, set, withAlpha)
	local sw = CreateFrame("Button", nil, parent)
	sw:SetSize(OPT_SWATCH, OPT_SWATCH)
	local border = sw:CreateTexture(nil, "BACKGROUND")
	border:SetTexture(WHITE)
	border:SetAllPoints()
	border:SetVertexColor(0.15, 0.16, 0.20, 1)
	local fill = sw:CreateTexture(nil, "ARTWORK")
	fill:SetTexture(WHITE)
	fill:SetPoint("TOPLEFT", 3, -3)
	fill:SetPoint("BOTTOMRIGHT", -3, 3)
	sw.fill = fill

	local function paint()
		local col = get()
		fill:SetVertexColor(col[1], col[2], col[3], col[4] or 1)
	end
	paint()

	sw:SetScript("OnClick", function()
		OpenColorPicker(get(), function(r, g, b, a)
			if withAlpha then set(r, g, b, a)
			else set(r, g, b) end
			paint()
			Options:ApplyAll()
		end, withAlpha)
	end)
	sw:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(L["Pick color"])
		GameTooltip:Show()
	end)
	sw:SetScript("OnLeave", function() GameTooltip:Hide() end)

	sw._refresh = paint
	return sw
end

local function CreateResetIconButton(parent, onReset, swatchRefresh)
	local btn = CreateFrame("Button", nil, parent)
	btn:SetSize(OPT_RESET_ICON, OPT_RESET_ICON)

	local bg = btn:CreateTexture(nil, "BACKGROUND")
	bg:SetTexture(WHITE)
	bg:SetAllPoints()
	bg:SetVertexColor(0.15, 0.16, 0.20, 1)

	local icon = btn:CreateTexture(nil, "ARTWORK")
	icon:SetTexture(RESET_TEX)
	icon:SetPoint("TOPLEFT", 4, -4)
	icon:SetPoint("BOTTOMRIGHT", -4, 4)
	btn.icon = icon

	local hi = btn:CreateTexture(nil, "HIGHLIGHT")
	hi:SetTexture(WHITE)
	hi:SetAllPoints()
	hi:SetVertexColor(0.30, 0.65, 0.95, 0.35)

	btn:SetScript("OnClick", function()
		onReset()
		if swatchRefresh then swatchRefresh() end
		Options:ApplyAll()
	end)
	btn:SetScript("OnEnter", function(self)
		self.icon:SetVertexColor(1, 1, 1, 1)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(L["Reset color"])
		GameTooltip:Show()
	end)
	btn:SetScript("OnLeave", function(self)
		self.icon:SetVertexColor(0.85, 0.88, 0.92, 1)
		GameTooltip:Hide()
	end)
	btn.icon:SetVertexColor(0.85, 0.88, 0.92, 1)

	return btn
end

-- Fixed-width group: [reset icon] [color swatch] anchored on the right of a row.
local function CreateColorGroup(parent, get, set, withAlpha, onReset)
	local grp = CreateFrame("Frame", nil, parent)
	grp:SetSize(OPT_GRP_W, OPT_SWATCH)

	local sw = CreateColorSwatch(grp, get, set, withAlpha)
	sw:SetPoint("RIGHT", grp, "RIGHT", 0, 0)

	if onReset then
		local btn = CreateResetIconButton(grp, onReset, sw._refresh)
		btn:SetPoint("RIGHT", sw, "LEFT", -OPT_GRP_GAP, 0)
	end

	grp._refresh = function()
		if sw._refresh then sw._refresh() end
	end
	return grp
end

local function MakeColor(parent, label, get, set, withAlpha, onReset)
	local row = CreateFrame("Frame", nil, parent)
	row:SetHeight(40)

	local fs = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetOptFont(fs)
	fs:SetPoint("LEFT", OPT_ROW_PAD, 0)
	fs:SetPoint("RIGHT", row, "RIGHT", -(OPT_GRP_W + OPT_ROW_PAD + 4), 0)
	fs:SetJustifyH("LEFT")
	fs:SetText(L[label])

	local grp = CreateColorGroup(row, get, set, withAlpha, onReset)
	grp:SetPoint("RIGHT", row, "RIGHT", -OPT_ROW_PAD, 0)

	row._h = 42
	row._fullWidth = true
	row._refresh = function() if grp._refresh then grp._refresh() end end
	return row
end

-- Slider row with a dedicated right column for color + reset (no squishing).
local function MakeSliderColorRow(parent, label, min, max, step, fmt, getVal, setVal, getColor, setColor, withAlpha, onReset)
	local row = CreateFrame("Frame", nil, parent)
	row:SetHeight(56)

	local fs = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetOptFont(fs)
	fs:SetPoint("TOPLEFT", OPT_ROW_PAD, -2)
	fs:SetText(L[label])

	local grp = CreateColorGroup(row, getColor, setColor, withAlpha, onReset)
	grp:SetPoint("TOPRIGHT", row, "TOPRIGHT", -OPT_ROW_PAD, -16)

	local val = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetOptFont(val, OPT_FONT_SIZE_SMALL)
	val:SetPoint("RIGHT", grp, "LEFT", -14, 0)
	val:SetPoint("TOP", grp, "TOP", 0, -3)

	local slider = CreateFrame("Slider", nil, row, "OptionsSliderTemplate")
	slider:SetPoint("TOPLEFT", OPT_ROW_PAD, -22)
	slider:SetPoint("RIGHT", val, "LEFT", -12, 0)
	slider:SetMinMaxValues(min, max)
	slider:SetValueStep(step)
	slider:SetObeyStepOnDrag(true)
	if slider.Low then slider.Low:SetText("") end
	if slider.High then slider.High:SetText("") end

	local function display(v) return fmt and fmt(v) or tostring(v) end
	slider:SetValue(getVal())
	val:SetText(display(getVal()))
	slider:SetScript("OnValueChanged", function(_, v)
		v = math.floor(v / step + 0.5) * step
		setVal(v)
		val:SetText(display(v))
		Options:ApplyAll()
	end)

	row._h = 58
	row._fullWidth = true
	row._refresh = function()
		slider:SetValue(getVal())
		val:SetText(display(getVal()))
		if grp._refresh then grp._refresh() end
	end
	return row
end

local OPT_DROPDOWN_FONT_SIZE = OPT_FONT_SIZE

local function EnsureDropDownFontObject()
	if Options._dropDownFontObject then return Options._dropDownFontObject end
	local fo = CreateFont("QuestCoreOptDropDownFont")
	if QC.Font and QC.Font.GetPath then
		fo:SetFont(QC.Font.GetPath(), OPT_DROPDOWN_FONT_SIZE, "")
	else
		fo:SetFontObject(GameFontNormal)
	end
	Options._dropDownFontObject = fo
	return fo
end

local function StyleDropDownFrame(dd)
	if not dd then return end
	local name = dd:GetName()
	if name then
		local text = _G[name .. "Text"]
		if text then SetOptFont(text, OPT_DROPDOWN_FONT_SIZE) end
	end
	if dd.Text then SetOptFont(dd.Text, OPT_DROPDOWN_FONT_SIZE) end
end

local function StyleOpenDropDownLists()
	for level = 1, (UIDROPDOWNMENU_MAXLEVELS or 2) do
		local list = _G["DropDownList" .. level]
		if list and list:IsShown() then
			for i = 1, (UIDROPDOWNMENU_MAXBUTTONS or 16) do
				local btn = _G["DropDownList" .. level .. "Button" .. i]
				if btn and btn:IsShown() then
					if btn.NormalText then SetOptFont(btn.NormalText, OPT_DROPDOWN_FONT_SIZE) end
					if btn.HighlightText then SetOptFont(btn.HighlightText, OPT_DROPDOWN_FONT_SIZE) end
					local fs = btn.GetFontString and btn:GetFontString()
					if fs then SetOptFont(fs, OPT_DROPDOWN_FONT_SIZE) end
				end
			end
		end
	end
end

local function HookDropDownListFonts()
	if Options._dropDownListHooked then return end
	Options._dropDownListHooked = true
	for level = 1, (UIDROPDOWNMENU_MAXLEVELS or 2) do
		local list = _G["DropDownList" .. level]
		if list then
			list:HookScript("OnShow", StyleOpenDropDownLists)
		end
	end
	if hooksecurefunc then
		hooksecurefunc("UIDropDownMenu_SetText", function(frame)
			if frame and frame.GetName and frame:GetName():find("^QuestCoreOptDropdown") then
				StyleDropDownFrame(frame)
			end
		end)
		hooksecurefunc("UIDropDownMenu_AddButton", function(info)
			if info and info.fontObject == Options._dropDownFontObject then
				C_Timer.After(0, StyleOpenDropDownLists)
			end
		end)
	end
end

local ddCounter = 0
-- Dropdown built on Blizzard's UIDropDownMenu.
-- getValues() -> array of strings; getCurrent() -> string; onSelect(value).
local function MakeDropdown(parent, label, getValues, getCurrent, onSelect)
	local row = CreateFrame("Frame", nil, parent)
	row:SetHeight(58)

	local fs = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetOptFont(fs)
	fs:SetPoint("TOPLEFT", 4, 0)
	fs:SetText(L[label])

	ddCounter = ddCounter + 1
	local dd = CreateFrame("Frame", "QuestCoreOptDropdown" .. ddCounter, row, "UIDropDownMenuTemplate")
	dd:SetPoint("TOPLEFT", -12, -18)
	UIDropDownMenu_SetWidth(dd, 240)

	local dropFont = EnsureDropDownFontObject()
	HookDropDownListFonts()

	UIDropDownMenu_Initialize(dd, function(_, level)
		local cur = getCurrent()
		for _, v in ipairs(getValues()) do
			local info = UIDropDownMenu_CreateInfo()
			info.text = v
			info.checked = (v == cur)
			info.fontObject = dropFont
			info.func = function()
				onSelect(v)
				UIDropDownMenu_SetText(dd, v)
				StyleDropDownFrame(dd)
				CloseDropDownMenus()
				Options:ApplyAll()
			end
			UIDropDownMenu_AddButton(info, level)
		end
	end)
	UIDropDownMenu_SetText(dd, getCurrent())
	StyleDropDownFrame(dd)

	row._h = 62
	row._fullWidth = true
	row._refresh = function()
		UIDropDownMenu_SetText(dd, getCurrent())
		StyleDropDownFrame(dd)
	end
	return row
end

----------------------------------------------------------------------
-- Category definitions
----------------------------------------------------------------------

local function p() return QC.db.profile end

local function refreshQuestPins()
	if QC.QuestMapPins and QC.QuestMapPins.Refresh then QC.QuestMapPins:Refresh() end
end

local function refreshWaypoints()
	if QC.UpdateWaypoints then QC:UpdateWaypoints() end
end

local function uiGet(cat, key)
	return function() return QC:GetColor(cat, key) end
end

local function uiSet(cat, key, withAlpha)
	return function(r, g, b, a)
		local colors = p().colors
		colors[cat] = colors[cat] or {}
		if withAlpha then
			colors[cat][key] = { r, g, b, a or 1 }
		else
			colors[cat][key] = { r, g, b }
		end
		if cat == "bars" and QC.UI and QC.UI.Update then QC.UI:Update() end
		if cat == "questPins" then refreshQuestPins() end
	end
end

local function uiReset(cat, key)
	return function()
		if QC.ResetColor then QC:ResetColor(cat, key) end
	end
end

local CATEGORIES = {
	{
		name = "Guide Window",
		build = function(parent)
			local c = {}
			c[#c+1] = MakeHeader(parent, "Guide Window")
			c[#c+1] = MakeCheckbox(parent, "Show main log window",
				function() return p().window.showMainLog end,
				function(v) p().window.showMainLog = v end)
			c[#c+1] = MakeCheckbox(parent, "Show step tracker",
				function() return p().window.shown ~= false end,
				function(v) p().window.shown = v end)
			c[#c+1] = MakeCheckbox(parent, "Lock window (no drag or resize)",
				function() return p().window.locked end,
				function(v) p().window.locked = v end)
			c[#c+1] = MakeCheckbox(parent, "Hide window border",
				function() return p().window.hideBorder end,
				function(v) p().window.hideBorder = v end)
			c[#c+1] = MakeCheckbox(parent, "Show step counter in title",
				function() return p().window.showProgress ~= false end,
				function(v) p().window.showProgress = v end)
			c[#c+1] = MakeCheckbox(parent, "Hide completed objectives",
				function() return p().window.hideCompleted end,
				function(v) p().window.hideCompleted = v end)
			c[#c+1] = MakeCheckbox(parent, "Show XP progress bar",
				function() return p().window.showXP ~= false end,
				function(v)
					p().window.showXP = v
					if QC.UI and QC.UI.Update then QC.UI:Update() end
				end)
			c[#c+1] = MakeSlider(parent, "Steps shown at once", 1, 5, 1,
				function(v) return tostring(v) end,
				function() return p().window.stepsShown or 1 end,
				function(v) p().window.stepsShown = v end)
			c[#c+1] = MakeSlider(parent, "Font size", 10, 26, 1,
				function(v) return ("%dpx"):format(v) end,
				function() return p().window.fontSize or 14 end,
				function(v) p().window.fontSize = v end)
			c[#c+1] = MakeSlider(parent, "Window scale", 0.7, 1.5, 0.05,
				function(v) return ("%d%%"):format(v * 100) end,
				function() return p().window.scale or 1.0 end,
				function(v) p().window.scale = v end)
			c[#c+1] = MakeSlider(parent, "Background opacity", 0.3, 1.0, 0.05,
				function(v) return ("%d%%"):format(v * 100) end,
				function() return p().window.opacity or 0.92 end,
				function(v) p().window.opacity = v end)
			c[#c+1] = MakeSlider(parent, "Opacity in combat", 0.1, 1.0, 0.05,
				function(v) return ("%d%%"):format(v * 100) end,
				function() return p().window.combatOpacity or 0.92 end,
				function(v) p().window.combatOpacity = v end)
			c[#c+1] = MakeColor(parent, "Completed goal",
				uiGet("goals", "complete"), uiSet("goals", "complete"), false, uiReset("goals", "complete"))
			c[#c+1] = MakeColor(parent, "Active goal",
				uiGet("goals", "active"), uiSet("goals", "active"), false, uiReset("goals", "active"))
			c[#c+1] = MakeColor(parent, "Passive goal",
				uiGet("goals", "passive"), uiSet("goals", "passive"), false, uiReset("goals", "passive"))
			c[#c+1] = MakeColor(parent, "XP bar",
				uiGet("bars", "xp"), uiSet("bars", "xp", true), true, uiReset("bars", "xp"))
			c[#c+1] = MakeColor(parent, "Guide progress bar",
				uiGet("bars", "progress"), uiSet("bars", "progress", true), true, uiReset("bars", "progress"))
			c[#c+1] = MakeColor(parent, "Window border",
				uiGet("window", "border"), uiSet("window", "border", true), true, uiReset("window", "border"))
			return c
		end,
	},
	{
		name = "Waypoint Arrow",
		build = function(parent)
			local c = {}
			c[#c+1] = MakeHeader(parent, "Waypoint Arrow")
			c[#c+1] = MakeCheckbox(parent, "Enable direction arrow",
				function() return p().arrow.shown end,
				function(v) p().arrow.shown = v end)
			c[#c+1] = MakeCheckbox(parent, "Show distance and time text",
				function() return p().arrow.showDistance ~= false end,
				function(v) p().arrow.showDistance = v end)
			c[#c+1] = MakeSlider(parent, "Arrow scale", 0.5, 2.0, 0.1,
				function(v) return ("%d%%"):format(v * 100) end,
				function() return p().arrow.scale or 1.0 end,
				function(v) p().arrow.scale = v end)
			c[#c+1] = MakeSlider(parent, "Arrival distance (yards)", 3, 30, 1,
				function(v) return ("%d yd"):format(v) end,
				function() return p().arrow.arrival or 8 end,
				function(v) p().arrow.arrival = v end)
			c[#c+1] = MakeCheckbox(parent, "Lock arrow position",
				function() return p().arrow.locked end,
				function(v) p().arrow.locked = v end)
			c[#c+1] = MakeDropdown(parent, "Arrow skin",
				function()
					local t = {}
					for _, id in ipairs(QC.ArrowSkinOrder or {}) do
						local sk = QC.ArrowSkins and QC.ArrowSkins[id]
						if sk then t[#t + 1] = sk.name end
					end
					return t
				end,
				function()
					local cur = p().arrow.skin or "classic"
					local sk = QC.GetArrowSkin and QC.GetArrowSkin(cur)
					return (sk and sk.name) or "Classic"
				end,
				function(name)
					for _, id in ipairs(QC.ArrowSkinOrder or {}) do
						local sk = QC.ArrowSkins and QC.ArrowSkins[id]
						if sk and sk.name == name then p().arrow.skin = id break end
					end
				end)
			c[#c+1] = MakeSlider(parent, "Distance font size", 9, 22, 1,
				function(v) return tostring(v) end,
				function() return p().arrow.fontSize or 12 end,
				function(v) p().arrow.fontSize = v end)
			c[#c+1] = MakeCheckbox(parent, "Distance text outline",
				function() return p().arrow.outline end,
				function(v) p().arrow.outline = v end)
			c[#c+1] = MakeDropdown(parent, "Distance units",
				function() return { L["yards / miles"], L["kilometers / meters"] } end,
				function()
					return p().arrow.units == "metric" and L["kilometers / meters"] or L["yards / miles"]
				end,
				function(v)
					p().arrow.units = (v == L["kilometers / meters"]) and "metric" or "yards"
				end)
			c[#c+1] = MakeColor(parent, "Right-direction color",
				function() return p().arrow.colorGood or QC.COLOR_DEFAULTS.arrow.colorGood end,
				function(r, g, b) p().arrow.colorGood = { r, g, b } end,
				false, uiReset("arrow", "colorGood"))
			c[#c+1] = MakeColor(parent, "Wrong-direction color",
				function() return p().arrow.colorBad or QC.COLOR_DEFAULTS.arrow.colorBad end,
				function(r, g, b) p().arrow.colorBad = { r, g, b } end,
				false, uiReset("arrow", "colorBad"))
			return c
		end,
	},
	{
		name = "Map & Minimap",
		build = function(parent)
			local c = {}
			c[#c+1] = MakeHeader(parent, "Map & Minimap")
			c[#c+1] = MakeCheckbox(parent, "Show waypoint pins",
				function() return p().routes.showPins ~= false end,
				function(v) p().routes.showPins = v end)
			c[#c+1] = MakeCheckbox(parent, "Show quest objectives on map",
				function() return p().general.questMapPins ~= false end,
				function(v)
					p().general.questMapPins = v
					refreshQuestPins()
				end)
			c[#c+1] = MakeHeader(parent, "Quest objective pins")
			c[#c+1] = MakeSlider(parent, "Quest pin size", 1, 24, 1,
				function(v) return ("%dpx"):format(v) end,
				function() return (p().questPins and p().questPins.size) or 10 end,
				function(v)
					p().questPins = p().questPins or {}
					p().questPins.size = v
					refreshQuestPins()
				end)
			c[#c+1] = MakeDropdown(parent, "Quest pin shape",
				function() return { L["Square"], L["Circle"], L["Diamond"] } end,
				function()
					local s = (p().questPins and p().questPins.shape) or "circle"
					if s == "square" then return L["Square"] end
					if s == "diamond" then return L["Diamond"] end
					return L["Circle"]
				end,
				function(v)
					p().questPins = p().questPins or {}
					if v == L["Square"] then p().questPins.shape = "square"
					elseif v == L["Diamond"] then p().questPins.shape = "diamond"
					else p().questPins.shape = "circle" end
					refreshQuestPins()
				end)
			c[#c+1] = MakeCheckbox(parent, "Quest pin outline",
				function() return (p().questPins and p().questPins.outline) ~= false end,
				function(v)
					p().questPins = p().questPins or {}
					p().questPins.outline = v
					refreshQuestPins()
				end)
			c[#c+1] = MakeSlider(parent, "Quest pin outline size", 0, 6, 1,
				function(v) return ("%dpx"):format(v) end,
				function() return (p().questPins and p().questPins.outlineSize) or 2 end,
				function(v)
					p().questPins = p().questPins or {}
					p().questPins.outlineSize = v
					refreshQuestPins()
				end)
			c[#c+1] = MakeColor(parent, "Quest pin outline color",
				uiGet("questPins", "outline"), uiSet("questPins", "outline", true), true,
				uiReset("questPins", "outline"))
			c[#c+1] = MakeColor(parent, "Quest accept pin color",
				uiGet("questPins", "accept"), uiSet("questPins", "accept", true), true,
				uiReset("questPins", "accept"))
			c[#c+1] = MakeColor(parent, "Quest turn-in pin color",
				uiGet("questPins", "turnin"), uiSet("questPins", "turnin", true), true,
				uiReset("questPins", "turnin"))
			c[#c+1] = MakeColor(parent, "Quest objective pin color",
				uiGet("questPins", "objective"), uiSet("questPins", "objective", true), true,
				uiReset("questPins", "objective"))
			c[#c+1] = MakeColor(parent, "Quest talk pin color",
				uiGet("questPins", "talk"), uiSet("questPins", "talk", true), true,
				uiReset("questPins", "talk"))
			c[#c+1] = MakeCheckbox(parent, "Show route trail and lines",
				function() return p().routes.showLines ~= false end,
				function(v) p().routes.showLines = v end)
			c[#c+1] = MakeDropdown(parent, "Route display style",
				function() return { L["Dots and lines"], L["Dots only"], L["Lines only"] } end,
				function()
					local s = p().routes.routeStyle or "both"
					if s == "dots" then return L["Dots only"] end
					if s == "lines" then return L["Lines only"] end
					return L["Dots and lines"]
				end,
				function(v)
					if v == L["Dots only"] then p().routes.routeStyle = "dots"
					elseif v == L["Lines only"] then p().routes.routeStyle = "lines"
					else p().routes.routeStyle = "both" end
				end)
			c[#c+1] = MakeHeader(parent, "Route waypoint pins")
			c[#c+1] = MakeSlider(parent, "Waypoint pin size", 1, 24, 1,
				function(v) return ("%dpx"):format(v) end,
				function() return p().routes.pinSize or 12 end,
				function(v)
					p().routes.pinSize = v
					refreshWaypoints()
				end)
			c[#c+1] = MakeDropdown(parent, "Waypoint pin shape",
				function() return { L["Square"], L["Circle"], L["Diamond"] } end,
				function()
					local s = p().routes.pinShape or "circle"
					if s == "square" then return L["Square"] end
					if s == "diamond" then return L["Diamond"] end
					return L["Circle"]
				end,
				function(v)
					if v == L["Square"] then p().routes.pinShape = "square"
					elseif v == L["Diamond"] then p().routes.pinShape = "diamond"
					else p().routes.pinShape = "circle" end
					refreshWaypoints()
				end)
			c[#c+1] = MakeCheckbox(parent, "Waypoint pin outline",
				function() return p().routes.pinOutline == true end,
				function(v)
					p().routes.pinOutline = v
					refreshWaypoints()
				end)
			c[#c+1] = MakeSlider(parent, "Waypoint pin outline size", 0, 6, 1,
				function(v) return ("%dpx"):format(v) end,
				function() return p().routes.pinOutlineSize or 2 end,
				function(v)
					p().routes.pinOutlineSize = v
					refreshWaypoints()
				end)
			c[#c+1] = MakeColor(parent, "Active waypoint pin",
				uiGet("pins", "active"), uiSet("pins", "active"), false, uiReset("pins", "active"))
			c[#c+1] = MakeColor(parent, "Route waypoint pin",
				uiGet("pins", "route"), uiSet("pins", "route"), false, uiReset("pins", "route"))
			c[#c+1] = MakeSliderColorRow(parent, "Route lines",
				1, 6, 1,
				function(v) return ("%dpx"):format(v) end,
				function() return p().routes.lineThickness or 2 end,
				function(v) p().routes.lineThickness = v end,
				function() return QC:GetColor("routes", "lineColor") end,
				function(r, g, b, a)
					p().routes.lineColor = { r, g, b, a or (p().routes.lineColor and p().routes.lineColor[4]) or 0.7 }
				end,
				true, uiReset("routes", "lineColor"))
			c[#c+1] = MakeSliderColorRow(parent, "Route dots",
				0.1, 2.0, 0.05,
				function(v) return ("%.2f"):format(v) end,
				function() return p().routes.dotSpeed or 0.4 end,
				function(v) p().routes.dotSpeed = v end,
				function() return QC:GetColor("routes", "dotColor") end,
				function(r, g, b, a)
					p().routes.dotColor = { r, g, b, a or (p().routes.dotColor and p().routes.dotColor[4]) or 0.75 }
				end,
				true, uiReset("routes", "dotColor"))
			c[#c+1] = MakeCheckbox(parent, "Show minimap button",
				function() return not p().minimap.hidden end,
				function(v)
					p().minimap.hidden = not v
					if QC.MinimapButton then
						if v then QC.MinimapButton:Show() else QC.MinimapButton:Hide() end
					end
				end)
			c[#c+1] = MakeSlider(parent, "Minimap button position", 0, 360, 5,
				function(v) return ("%d\194\176"):format(v) end,
				function() return p().minimap.angle or 220 end,
				function(v) if QC.MinimapButton then QC.MinimapButton:SetAngle(v) else p().minimap.angle = v end end)
			return c
		end,
	},
	{
		name = "General",
		build = function(parent)
			local c = {}
			c[#c+1] = MakeHeader(parent, "General")

			local locales = QC.AvailableLocales or {}
			local function localeNames()
				local t = {}
				for _, e in ipairs(locales) do t[#t + 1] = e.name end
				return t
			end
			local function currentLocaleName()
				local cur = QC.db.global.locale or "auto"
				for _, e in ipairs(locales) do
					if e.key == cur then return e.name end
				end
				return locales[1] and locales[1].name or "Auto"
			end
			c[#c+1] = MakeDropdown(parent, "Language", localeNames, currentLocaleName, function(name)
				for _, e in ipairs(locales) do
					if e.name == name then
						QC.db.global.locale = e.key
						if QC.ApplyLocale then QC.ApplyLocale(e.key) end
						Options:RefreshLocale()
						QC:Print(QC.L["Language changed. Type /reload to apply."])
						StaticPopup_Show("QUESTCORE_RELOAD_LOCALE")
						break
					end
				end
			end)

			c[#c+1] = MakeCheckbox(parent, "Auto-advance to next step",
				function() return p().general.autoAdvance end,
				function(v) p().general.autoAdvance = v end)
			c[#c+1] = MakeCheckbox(parent, "Suggest a guide on login",
				function() return p().general.suggestOnLogin end,
				function(v) p().general.suggestOnLogin = v end)
			c[#c+1] = MakeCheckbox(parent, "Play sound on step change",
				function() return p().general.sound end,
				function(v) p().general.sound = v end)
			c[#c+1] = MakeCheckbox(parent, "Auto-scroll to active step",
				function() return p().general.autoScroll end,
				function(v) p().general.autoScroll = v end)
			c[#c+1] = MakeCheckbox(parent, "Show on-screen notifications",
				function() return p().general.notifications end,
				function(v) p().general.notifications = v end)
			c[#c+1] = MakeCheckbox(parent, "Hide Blizzard objective tracker",
				function() return p().general.hideBlizzTracker end,
				function(v)
					p().general.hideBlizzTracker = v
					if QC.UpdateBlizzTracker then QC:UpdateBlizzTracker() end
				end)
			c[#c+1] = MakeCheckbox(parent, "Auto-load guide for your zone",
				function() return p().general.autoZoneGuide end,
				function(v) p().general.autoZoneGuide = v end)

			do
				local autoQ = MakeCheckbox(parent, "Auto Quest Acceptance & Turn-In",
					function()
						local a = p().automation
						return a and a.autoQuest == true
					end,
					function(v)
						p().automation = p().automation or {}
						p().automation.autoQuest = v
					end)
				autoQ:SetScript("OnEnter", function(self)
					if GameTooltip then
						GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
						GameTooltip:SetText(L["Auto Quest tooltip"] or "", nil, nil, nil, nil, true)
						GameTooltip:Show()
					end
				end)
				autoQ:SetScript("OnLeave", function()
					if GameTooltip then GameTooltip:Hide() end
				end)
				c[#c+1] = autoQ
			end

			c[#c+1] = MakeCheckbox(parent, "Auto-accept guide quests",
				function() return p().general.autoAccept end,
				function(v) p().general.autoAccept = v end)
			c[#c+1] = MakeCheckbox(parent, "Auto-turn-in guide quests",
				function() return p().general.autoTurnIn end,
				function(v) p().general.autoTurnIn = v end)
			c[#c+1] = MakeDropdown(parent, "Auto-quest modifier key",
				function() return { "none", "shift", "ctrl", "alt" } end,
				function() return p().general.autoQuestModifier or "none" end,
				function(v) p().general.autoQuestModifier = v end)

			c[#c+1] = MakeCheckbox(parent, "Show currency tracker bar",
				function() return p().general.currencyBar end,
				function(v) p().general.currencyBar = v; if QC.UI and QC.UI.UpdateCurrency then QC.UI:UpdateCurrency() end end)
			c[#c+1] = MakeCheckbox(parent, "Point arrow to corpse on death",
				function() return p().general.deathArrow end,
				function(v) p().general.deathArrow = v end)
			c[#c+1] = MakeCheckbox(parent, "Show treasures & rares on map",
				function() return p().general.poiOverlay end,
				function(v) p().general.poiOverlay = v; if QC.POI then QC.POI:Refresh() end end)
			c[#c+1] = MakeColor(parent, "Treasure pin",
				uiGet("poi", "treasure"), uiSet("poi", "treasure"), false, uiReset("poi", "treasure"))
			c[#c+1] = MakeColor(parent, "Rare mob pin",
				uiGet("poi", "rare"), uiSet("poi", "rare"), false, uiReset("poi", "rare"))
			c[#c+1] = MakeCheckbox(parent, "Skip cinematics automatically",
				function() return p().general.skipCinematics end,
				function(v) p().general.skipCinematics = v end)
			c[#c+1] = MakeCheckbox(parent, "Gear upgrade advisor",
				function() return p().general.gearAdvisor end,
				function(v) p().general.gearAdvisor = v end)
			c[#c+1] = MakeCheckbox(parent, "Smart-skip completed steps on load",
				function() return p().general.smartSkip end,
				function(v) p().general.smartSkip = v end)
			c[#c+1] = MakeCheckbox(parent, "Auto-select gossip options",
				function() return p().general.autoGossip end,
				function(v) p().general.autoGossip = v end)
			c[#c+1] = MakeCheckbox(parent, "Auto train at class trainer",
				function() return p().general.autoTrainer end,
				function(v)
					p().general.autoTrainer = v
					p().general.manualTrainer = not v
				end)
			c[#c+1] = MakeCheckbox(parent, "One-click step action button",
				function() return p().general.actionButton ~= false end,
				function(v) p().general.actionButton = v; if QC.UI and QC.UI.UpdateItemButton then QC.UI:UpdateItemButton() end end)
			c[#c+1] = MakeCheckbox(parent, "Auto-take flight paths on route",
				function() return p().general.autoTakeTaxi end,
				function(v) p().general.autoTakeTaxi = v end)
			c[#c+1] = MakeCheckbox(parent, "Jump to a quest's step when accepted",
				function() return p().general.questStepJump ~= false end,
				function(v) p().general.questStepJump = v end)
			c[#c+1] = MakeCheckbox(parent, "Speak steps aloud (TTS)",
				function() return p().general.tts end,
				function(v) p().general.tts = v end)

			c[#c+1] = MakeButton(parent, "Reset all settings", function()
				QC.db:ResetProfile()
				Options:ApplyAll()
				Options:RefreshAll()
				QC:Print("Settings reset to defaults.")
			end)
			return c
		end,
	},
	{
		name = "Profiles",
		build = function(parent)
			local c = {}
			c[#c+1] = MakeHeader(parent, "Settings Profiles")

			local function allProfiles()
				local t = {}
				QC.db:GetProfiles(t)
				table.sort(t)
				return t
			end
			local function otherProfiles()
				local cur = QC.db:GetCurrentProfile()
				local t = {}
				for _, v in ipairs(allProfiles()) do
					if v ~= cur then t[#t + 1] = v end
				end
				return t
			end

			c[#c+1] = MakeDropdown(parent, "Active profile",
				allProfiles,
				function() return QC.db:GetCurrentProfile() end,
				function(v) QC.db:SetProfile(v) end)

			c[#c+1] = MakeButton(parent, "New profile for this character", function()
				local key = UnitName("player") .. " - " .. GetRealmName()
				QC.db:SetProfile(key)
			end)

			c[#c+1] = MakeDropdown(parent, "Copy settings from",
				otherProfiles,
				function() return "Select..." end,
				function(v) QC.db:CopyProfile(v) end)

			c[#c+1] = MakeDropdown(parent, "Delete a profile",
				otherProfiles,
				function() return "Select..." end,
				function(v)
					QC.db:DeleteProfile(v)
					Options:RefreshAll()
					QC:Print("Deleted profile: " .. v)
				end)

			c[#c+1] = MakeCheckbox(parent, "Auto-switch profile per specialization",
				function() return QC.db.global.autoProfileBySpec end,
				function(v)
					QC.db.global.autoProfileBySpec = v
					if v then QC:ApplySpecProfile() end
				end)

			c[#c+1] = MakeButton(parent, "Export profile string", function()
				Options:ShowStringDialog("Export Profile", QC:ExportProfile(), nil)
			end)

			c[#c+1] = MakeButton(parent, "Import profile string", function()
				Options:ShowStringDialog("Import Profile", "", function(text)
					return QC:ImportProfile(text)
				end)
			end)

			return c
		end,
	},
}

----------------------------------------------------------------------
-- Live language refresh
----------------------------------------------------------------------

StaticPopupDialogs = StaticPopupDialogs or {}
StaticPopupDialogs["QUESTCORE_RELOAD_LOCALE"] = {
	text = "QuestCore: reload the interface to fully apply the new language?",
	button1 = OKAY or "Reload",
	button2 = CANCEL or "Later",
	OnAccept = function() ReloadUI() end,
	timeout = 0, whileDead = true, hideOnEscape = true, preferredIndex = 3,
}

-- Re-read text on the settings window after a language change (immediate
-- partial feedback; a reload refreshes every window).
function Options:RefreshLocale()
	if not self.frame then return end
	if self.titleFS then self.titleFS:SetText("|cff33d6ff" .. L["QuestCore Settings"] .. "|r") end
	for i, b in ipairs(self.catButtons or {}) do
		if b.label and CATEGORIES[i] then b.label:SetText(L[CATEGORIES[i].name]) end
	end
	-- Rebuild the visible category so its control labels update too.
	if self.built then
		for _, controls in pairs(self.built) do
			for _, ctrl in ipairs(controls) do ctrl:Hide() end
		end
		wipe(self.built)
	end
	self:SelectCategory(self.current or 1)
end

----------------------------------------------------------------------
-- Build options frame
----------------------------------------------------------------------

function Options:Create()
	if self.frame then return self.frame end

	local f = CreateFrame("Frame", "QuestCoreOptions", UIParent, "BackdropTemplate")
	self.frame = f
	f:SetSize(OPT_FRAME_W, OPT_FRAME_H)
	f:SetPoint("CENTER")
	f:SetFrameStrata("DIALOG")
	f:SetClampedToScreen(true)
	f:SetMovable(true)
	f:EnableMouse(true)
	f:RegisterForDrag("LeftButton")
	f:SetScript("OnDragStart", function() f:StartMoving() end)
	f:SetScript("OnDragStop", function() f:StopMovingOrSizing() end)
	f:Hide()

	f:SetBackdrop({ bgFile = WHITE, edgeFile = WHITE, edgeSize = 1 })
	f:SetBackdropColor(unpack(COLOR.bg))
	f:SetBackdropBorderColor(unpack(COLOR.border))

	-- Title bar.
	local titleBar = CreateFrame("Frame", nil, f)
	titleBar:SetPoint("TOPLEFT", 1, -1)
	titleBar:SetPoint("TOPRIGHT", -1, -1)
	titleBar:SetHeight(30)
	local tb = titleBar:CreateTexture(nil, "BACKGROUND")
	tb:SetTexture(WHITE)
	tb:SetAllPoints()
	tb:SetVertexColor(unpack(COLOR.title))

	local title = titleBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	SetOptFont(title, OPT_TITLE_SIZE)
	title:SetPoint("LEFT", 12, 0)
	title:SetText("|cff33d6ff" .. L["QuestCore Settings"] .. "|r")
	self.titleFS = title

	local close = CreateFrame("Button", nil, titleBar, "UIPanelCloseButton")
	close:SetPoint("RIGHT", 2, 0)
	close:SetScale(0.9)
	close:SetScript("OnClick", function() Options:Hide() end)

	-- Left category sidebar.
	local side = CreateFrame("Frame", nil, f)
	side:SetPoint("TOPLEFT", titleBar, "BOTTOMLEFT", 4, -4)
	side:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 4, 8)
	side:SetWidth(OPT_SIDEBAR_W)
	local sb = side:CreateTexture(nil, "BACKGROUND")
	sb:SetTexture(WHITE)
	sb:SetAllPoints()
	sb:SetVertexColor(unpack(COLOR.side))
	self.catButtons = {}

	local cy = -4
	for i, cat in ipairs(CATEGORIES) do
		local b = CreateFrame("Button", nil, side)
		b:SetPoint("TOPLEFT", 4, cy)
		b:SetPoint("TOPRIGHT", -4, cy)
		b:SetHeight(30)

		local bg = b:CreateTexture(nil, "BACKGROUND")
		bg:SetTexture(WHITE)
		bg:SetAllPoints()
		bg:SetVertexColor(0, 0, 0, 0)
		b.bg = bg

		local hi = b:CreateTexture(nil, "HIGHLIGHT")
		hi:SetTexture(WHITE)
		hi:SetAllPoints()
		hi:SetVertexColor(unpack(COLOR.catHi))
		hi:SetAlpha(0.4)

		local fs = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
		SetOptFont(fs, OPT_FONT_SIZE)
		fs:SetPoint("LEFT", 10, 0)
		fs:SetText(L[cat.name])
		b.label = fs

		b:SetScript("OnClick", function() Options:SelectCategory(i) end)
		self.catButtons[i] = b
		cy = cy - 32
	end

	-- Right content scroll.
	local scroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
	scroll:SetPoint("TOPLEFT", side, "TOPRIGHT", 12, 0)
	scroll:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -30, 10)
	self.scroll = scroll

	local content = CreateFrame("Frame", nil, scroll)
	content:SetSize(1, 1)
	scroll:SetScrollChild(content)
	self.content = content
	self.built = {}   -- [index] = { controls }

	if QC._EnableWheelScroll then QC._EnableWheelScroll(scroll) end
	if QC.EnableEscapeClose then QC.EnableEscapeClose(f, function() Options:Hide() end) end
	f:HookScript("OnHide", function()
		QC.ClearKeyboardFocus()
		if Options.stringDialog and Options.stringDialog:IsShown() then
			Options.stringDialog:Hide()
		end
	end)

	self:SelectCategory(1)
	if QC.Skin then QC.Skin:Apply(f) end
	return f
end

-- Build (once) and lay out a category's controls into the content frame.
function Options:BuildCategory(index)
	if self.built[index] then return self.built[index] end
	local cat = CATEGORIES[index]
	if not cat then return {} end

	local width = self.scroll:GetWidth()
	self.content._contentMaxWidth = math.max(80, width - 24)
	local controls = cat.build(self.content)
	controls._contentMaxWidth = self.content._contentMaxWidth
	local y = -4
	for _, ctrl in ipairs(controls) do
		ctrl:ClearAllPoints()
		ctrl:SetPoint("TOPLEFT", self.content, "TOPLEFT", 6, y)
		if ctrl.SetWidth and (ctrl._fullWidth or (ctrl._h and ctrl._h >= 48)) and not ctrl._fitButton then
			ctrl:SetWidth(math.max(200, width - 12))
		end
		if ctrl._fitButton then self:FitControlButton(ctrl) end
		ctrl:Hide()
		y = y - (ctrl._h or 24)
	end
	controls._height = math.max(1, -y + 6)
	self.built[index] = controls
	return controls
end

-- Re-pull values into every built control (after profile change/reset).
function Options:RefreshAll()
	if not self.built then return end
	for _, controls in pairs(self.built) do
		for _, ctrl in ipairs(controls) do
			if ctrl._refresh then ctrl._refresh() end
		end
	end
end

function Options:SelectCategory(index)
	if not self.frame then self:Create() end
	self.current = index

	-- Hide controls from every built category.
	for _, controls in pairs(self.built) do
		for _, ctrl in ipairs(controls) do ctrl:Hide() end
	end

	-- Highlight the active category button.
	for i, b in ipairs(self.catButtons) do
		if i == index then
			b.bg:SetVertexColor(unpack(COLOR.catSel))
		else
			b.bg:SetVertexColor(0, 0, 0, 0)
		end
	end

	local controls = self:BuildCategory(index)
	local width = self.scroll:GetWidth()
	for _, ctrl in ipairs(controls) do
		if ctrl.SetWidth and ctrl._fullWidth and not ctrl._fitButton then
			ctrl:SetWidth(math.max(200, width - 12))
		end
		if ctrl._fitButton then self:FitControlButton(ctrl) end
		if ctrl._refresh then ctrl._refresh() end
		ctrl:Show()
	end
	self.content:SetHeight(controls._height or 1)
end

function Options:Show()
	if not self.frame then self:Create() end
	self:SelectCategory(self.current or 1)
	self.frame:Show()
end

function Options:Hide()
	QC.ClearKeyboardFocus()
	if self.stringDialog and self.stringDialog:IsShown() then
		self.stringDialog:Hide()
	end
	if self.frame then self.frame:Hide() end
end

function Options:Toggle()
	if self.frame and self.frame:IsShown() then self:Hide() else self:Show() end
end

----------------------------------------------------------------------
-- Shared string dialog (export = read-only, import = editable + Accept)
----------------------------------------------------------------------

function Options:ShowStringDialog(title, text, onImport)
	local d = self.stringDialog
	if not d then
		d = CreateFrame("Frame", "QuestCoreStringDialog", UIParent, "BackdropTemplate")
		self.stringDialog = d
		d:SetSize(500, 280)
		d:SetPoint("CENTER")
		d:SetFrameStrata("FULLSCREEN_DIALOG")
		d:EnableMouse(true)
		d:SetMovable(true)
		d:RegisterForDrag("LeftButton")
		d:SetScript("OnDragStart", function() d:StartMoving() end)
		d:SetScript("OnDragStop", function() d:StopMovingOrSizing() end)
		d:SetBackdrop({ bgFile = WHITE, edgeFile = WHITE, edgeSize = 1 })
		d:SetBackdropColor(unpack(COLOR.bg))
		d:SetBackdropBorderColor(unpack(COLOR.border))

		local tbar = CreateFrame("Frame", nil, d)
		tbar:SetPoint("TOPLEFT", 1, -1)
		tbar:SetPoint("TOPRIGHT", -1, -1)
		tbar:SetHeight(30)
		local tb = tbar:CreateTexture(nil, "BACKGROUND")
		tb:SetTexture(WHITE); tb:SetAllPoints(); tb:SetVertexColor(unpack(COLOR.title))
		d.title = tbar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		SetOptFont(d.title, OPT_TITLE_SIZE)
		d.title:SetPoint("LEFT", 12, 0)

		local close = CreateFrame("Button", nil, tbar, "UIPanelCloseButton")
		close:SetPoint("RIGHT", 2, 0); close:SetScale(0.9)
		close:SetScript("OnClick", function() d:Hide() end)

		local sf = CreateFrame("ScrollFrame", nil, d, "UIPanelScrollFrameTemplate")
		sf:SetPoint("TOPLEFT", 12, -36)
		sf:SetPoint("BOTTOMRIGHT", -32, 48)
		local eb = CreateFrame("EditBox", nil, sf)
		eb:SetMultiLine(true)
		if QC.Font and QC.Font.Apply then
			QC.Font.Apply(eb, OPT_FONT_SIZE, false)
		else
			eb:SetFontObject(ChatFontNormal)
		end
		eb:SetWidth(420)
		if QC.BindEscapeEditBox then
			QC.BindEscapeEditBox(eb, function() d:Hide() end)
		end
		sf:SetScrollChild(eb)
		d.editbox = eb

		d:SetScript("OnHide", function()
			if d.editbox then d.editbox:ClearFocus() end
		end)
		if QC.EnableEscapeClose then QC.EnableEscapeClose(d, function() d:Hide() end) end

		local accept = CreateFrame("Button", nil, d, "UIPanelButtonTemplate")
		accept:SetSize(140, 28)
		accept:SetPoint("BOTTOMRIGHT", -14, 12)
		d.accept = accept
		local acceptFs = accept:GetFontString()
		if acceptFs then SetOptFont(acceptFs, OPT_FONT_SIZE) end

		local hint = d:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
		SetOptFont(hint, OPT_FONT_SIZE_SMALL)
		hint:SetPoint("BOTTOMLEFT", 14, 18)
		d.hint = hint

		if QC.Skin then QC.Skin:Apply(d) end
	end

	d.title:SetText("|cff33d6ff" .. L[title] .. "|r")
	d.editbox:SetText(text or "")

	if onImport then
		d.editbox:Enable()
		d.hint:SetText(L["Paste a QuestCore profile string, then Import."])
		d.accept:SetText(L["Import"])
		if QC.UIWidgets then
			QC.UIWidgets.FitButton(d.accept, { minWidth = 80, maxWidth = d:GetWidth() - 40, height = 28, padding = 36 })
		end
		d.accept:Show()
		d.accept:SetScript("OnClick", function()
			local ok, err = onImport(d.editbox:GetText())
			if ok then
				QC.ClearKeyboardFocus()
				d:Hide()
				QC:Print("Profile imported.")
			else
				QC:Print("|cffff5555Import failed:|r " .. tostring(err))
			end
		end)
	else
		d.editbox:Enable()   -- keep enabled so text is selectable
		d.hint:SetText(L["Press Ctrl+C to copy."])
		d.accept:Hide()
		d.editbox:HighlightText()
	end

	d:Show()
	if not onImport and d.editbox and d.editbox.HighlightText then
		d.editbox:HighlightText()
	end
end
