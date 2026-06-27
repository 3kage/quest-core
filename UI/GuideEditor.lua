-- QuestCore: simple in-game guide editor (paste DSL, save to SavedVariables).

local addonName, QuestCore = ...
local QC = QuestCore

local GuideEditor = {}
QC.GuideEditor = GuideEditor

local WHITE = "Interface\\Buttons\\WHITE8X8"

function GuideEditor:Create()
	if self.frame then return self.frame end

	local f = CreateFrame("Frame", "QuestCoreGuideEditor", UIParent, "BackdropTemplate")
	self.frame = f
	f:SetSize(480, 420)
	f:SetPoint("CENTER")
	f:SetFrameStrata("DIALOG")
	f:Hide()
	f:SetBackdrop({ bgFile = WHITE, edgeFile = WHITE, edgeSize = 1 })
	f:SetBackdropColor(0.06, 0.07, 0.09, 0.96)
	f:SetBackdropBorderColor(0.10, 0.55, 0.85, 1)

	local title = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	title:SetPoint("TOPLEFT", 12, -10)
	title:SetText("|cff33d6ffGuide Editor|r")

	local close = CreateFrame("Button", nil, f, "UIPanelCloseButton")
	close:SetPoint("TOPRIGHT", -2, -2)
	close:SetScript("OnClick", function() GuideEditor:Hide() end)

	local nameLabel = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	nameLabel:SetPoint("TOPLEFT", 12, -32)
	nameLabel:SetText("Guide name:")

	local nameBox = CreateFrame("EditBox", nil, f, "InputBoxTemplate")
	nameBox:SetSize(200, 20)
	nameBox:SetPoint("LEFT", nameLabel, "RIGHT", 8, 0)
	if QC.BindEscapeEditBox then
		QC.BindEscapeEditBox(nameBox, function() GuideEditor:Hide() end)
	end
	self.nameBox = nameBox

	local scroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
	scroll:SetPoint("TOPLEFT", 12, -58)
	scroll:SetPoint("BOTTOMRIGHT", -30, 44)
	self.scroll = scroll

	local edit = CreateFrame("EditBox", nil, scroll)
	edit:SetMultiLine(true)
	edit:SetFontObject(ChatFontNormal)
	edit:SetWidth(420)
	if QC.BindEscapeEditBox then
		QC.BindEscapeEditBox(edit, function() GuideEditor:Hide() end)
	end
	scroll:SetScrollChild(edit)
	self.edit = edit

	local hint = f:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	hint:SetPoint("BOTTOMLEFT", 12, 26)
	hint:SetText("Paste guide DSL here. Saved under Custom\\")

	local function editorBtn(text, onClick, anchor, relTo, relPoint, x, y)
		local maxW = math.floor((f:GetWidth() - 36) / 2)
		local btn = QC.UIWidgets and QC.UIWidgets.CreatePanelButton(f, text, {
			height = 22,
			minWidth = 72,
			maxWidth = maxW,
			onClick = onClick,
		}) or CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
		if not QC.UIWidgets then
			btn:SetSize(80, 22)
			btn:SetText(text)
			btn:SetScript("OnClick", onClick)
		end
		btn:SetPoint(anchor, relTo, relPoint, x, y)
		return btn
	end

	local saveBtn = editorBtn("Save", function() GuideEditor:Save() end, "BOTTOMRIGHT", f, "BOTTOMRIGHT", -12, 10)
	local loadBtn = editorBtn("Load", function() GuideEditor:LoadFromField() end, "RIGHT", saveBtn, "LEFT", -6, 0)

	if QC._EnableWheelScroll then QC._EnableWheelScroll(scroll) end
	if QC.EnableEscapeClose then QC.EnableEscapeClose(f, function() GuideEditor:Hide() end) end
	f:HookScript("OnHide", function()
		QC.ClearKeyboardFocus()
	end)

	if QC.Skin then QC.Skin:Apply(f) end
	return f
end

function GuideEditor:Show(title, raw)
	if not self.frame then self:Create() end
	if title then self.nameBox:SetText(title:gsub("^Custom\\", "")) end
	if raw then self.edit:SetText(raw) end
	self.frame:Show()
end

function GuideEditor:Hide()
	QC.ClearKeyboardFocus()
	if self.frame then self.frame:Hide() end
end

function GuideEditor:Save()
	local name = self.nameBox:GetText():gsub("^%s+", ""):gsub("%s+$", "")
	local raw = self.edit:GetText()
	if name == "" then
		QC:Print("Enter a guide name.")
		return
	end
	local ok, err = QC.GuideStore:Save(name, { startlevel = 1 }, raw)
	if ok then
		QC:Print("Saved guide: Custom\\" .. name)
		if QC.GuideMenu then
			QC.GuideMenu:InvalidateCache()
			if QC.GuideMenu.frame and QC.GuideMenu.frame:IsShown() then QC.GuideMenu:Show() end
		end
	else
		QC:Print("Save failed: " .. tostring(err))
	end
end

function GuideEditor:LoadFromField()
	local name = self.nameBox:GetText():gsub("^%s+", ""):gsub("%s+$", "")
	if name == "" then return end
	local full = name:find("\\") and QC:SanitizeGuideTitle(name) or ("Custom\\" .. name)
	local g = QC:GetGuide(full)
	if g then
		self.edit:SetText(g.rawdata or "")
		QC:SetGuide(g, 1)
		QC:Print("Loaded: " .. full)
	else
		QC:Print("Guide not found: " .. full)
	end
end
