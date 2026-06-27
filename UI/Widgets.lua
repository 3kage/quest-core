-- QuestCore: shared UI helpers (auto-sized buttons).

local addonName, QuestCore = ...
local QC = QuestCore

local Widgets = {}
QC.UIWidgets = Widgets

local PAD_PANEL = 36
local PAD_FLAT = 14

function Widgets.GetFontString(btn)
	if not btn then return nil end
	if btn.GetFontString then
		local fs = btn:GetFontString()
		if fs then return fs end
	end
	return btn.text or btn.label
end

-- Resize a button to fit its label, clamped to [minWidth, maxWidth].
function Widgets.FitButton(btn, opts)
	if not btn then return 0 end
	opts = opts or {}

	local fs = Widgets.GetFontString(btn)
	local minW = opts.minWidth or 48
	local maxW = opts.maxWidth or 320
	local pad = opts.padding or PAD_PANEL
	local height = opts.height

	if fs and fs.SetWidth then
		fs:SetWidth(0)
	end

	local textW = 0
	if fs and fs.GetStringWidth then
		textW = fs:GetStringWidth() or 0
	end

	local w = math.ceil(textW + pad)
	w = math.max(minW, math.min(maxW, w))
	btn:SetWidth(w)
	if height then btn:SetHeight(height) end
	btn._fitMaxWidth = maxW
	btn._fitMinWidth = minW
	btn._fitPadding = pad
	return w
end

function Widgets.RefitButton(btn, maxWidth)
	if not btn then return end
	Widgets.FitButton(btn, {
		minWidth = btn._fitMinWidth or 48,
		maxWidth = maxWidth or btn._fitMaxWidth or 320,
		padding = btn._fitPadding or PAD_PANEL,
		height = btn:GetHeight(),
	})
end

function Widgets.CreatePanelButton(parent, text, opts)
	opts = opts or {}
	local b = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
	b:SetHeight(opts.height or 28)
	b:SetText(text)
	if opts.fontApply then
		opts.fontApply(b:GetFontString())
	elseif opts.fontSize and QC.Font and QC.Font.Apply then
		QC.Font.Apply(b:GetFontString(), opts.fontSize)
	end
	Widgets.FitButton(b, {
		minWidth = opts.minWidth or 48,
		maxWidth = opts.maxWidth or 320,
		padding = opts.padding or PAD_PANEL,
		height = opts.height or 28,
	})
	if opts.onClick then b:SetScript("OnClick", opts.onClick) end
	return b
end

-- Flat QuestCore-style button (MainFrame / GuideFrame toolbars).
function Widgets.CreateFlatButton(parent, label, opts)
	opts = opts or {}
	local WHITE = "Interface\\Buttons\\WHITE8X8"
	local b = CreateFrame("Button", nil, parent)
	local bg = b:CreateTexture(nil, "BACKGROUND")
	bg:SetTexture(WHITE)
	bg:SetAllPoints()
	if opts.bgColor then bg:SetVertexColor(unpack(opts.bgColor)) end
	b.bg = bg

	local hi = b:CreateTexture(nil, "HIGHLIGHT")
	hi:SetTexture(WHITE)
	hi:SetAllPoints()
	if opts.hiColor then
		hi:SetVertexColor(opts.hiColor[1], opts.hiColor[2], opts.hiColor[3], opts.hiAlpha or 0.4)
	end

	local fs = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	fs:SetPoint("CENTER")
	fs:SetText(label)
	if opts.fontApply then opts.fontApply(fs) end
	b.text = fs
	b.label = fs

	Widgets.FitButton(b, {
		minWidth = opts.minWidth or 48,
		maxWidth = opts.maxWidth or 200,
		padding = opts.padding or PAD_FLAT,
		height = opts.height or 20,
	})
	if opts.onClick then b:SetScript("OnClick", opts.onClick) end
	return b
end
