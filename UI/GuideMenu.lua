-- QuestCore: guide selection menu.
-- Collapsible category tree + search + level filter + Continue/Suggested/Recent.
-- Blizzard-only textures (WHITE8X8 + fonts), no third-party art.

local addonName, QuestCore = ...
local QC = QuestCore

local GuideMenu = {}
QC.GuideMenu = GuideMenu

local L = QC.L
local WHITE = "Interface\\Buttons\\WHITE8X8"

local COLOR = {
	bg      = { 0.06, 0.07, 0.09, 0.96 },
	border  = { 0.10, 0.55, 0.85, 1.00 },
	title   = { 0.10, 0.13, 0.18, 1.00 },
	row     = { 0.12, 0.14, 0.18, 1.00 },
	rowHi   = { 0.18, 0.38, 0.62, 1.00 },
	node    = { 0.16, 0.20, 0.27, 1.00 },
	special = { 0.13, 0.22, 0.20, 1.00 },
}

local MENU_FONT_SIZE = 16
local MENU_FONT_SIZE_SMALL = 15
local MENU_TITLE_SIZE = 18
local MENU_FRAME_W = 500
local MENU_FRAME_H = 580
local ROW_H = 28
local INDENT = 14

-- Inline Blizzard textures (avoid Unicode glyphs missing from game fonts).
local ICON = {
	continue  = "|TInterface\\ChatFrame\\ChatFrameExpandArrow:12:12|t",
	suggested = "|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:14:14|t",
	recent    = "|TInterface\\Buttons\\UI-GuildButton-PublicNote-Up:12:12|t",
	active    = "|TInterface\\COMMON\\Indicator-Green:12:12|t",
	complete  = "|TInterface\\RaidFrame\\ReadyCheck-Ready:12:12|t",
	bullet    = "|TInterface\\COMMON\\Indicator-Yellow:8:8|t",
	sep       = "|TInterface\\COMMON\\UI-DropDownRadioUp:6:6|t",
}
GuideMenu.Icons = ICON
QC.UITextures = ICON

local function SetMenuFont(fs, size)
	if QC.Font and QC.Font.Apply then
		QC.Font.Apply(fs, size or MENU_FONT_SIZE, false)
	elseif fs and fs.SetFontObject then
		fs:SetFontObject(GameFontNormalSmall)
	end
end

local function SetMenuEditFont(eb, size)
	if not eb then return end
	if QC.Font and QC.Font.GetPath and eb.SetFont then
		eb:SetFont(QC.Font.GetPath(), size or MENU_FONT_SIZE, "")
	elseif eb.SetFontObject then
		eb:SetFontObject(ChatFontNormal)
	end
end

----------------------------------------------------------------------
-- Row pool
----------------------------------------------------------------------

local function CreateRow(parent)
	local b = CreateFrame("Button", nil, parent)
	b:SetHeight(ROW_H)

	local bg = b:CreateTexture(nil, "BACKGROUND")
	bg:SetTexture(WHITE)
	bg:SetAllPoints()
	bg:SetVertexColor(unpack(COLOR.row))
	b.bg = bg

	local hi = b:CreateTexture(nil, "HIGHLIGHT")
	hi:SetTexture(WHITE)
	hi:SetAllPoints()
	hi:SetVertexColor(unpack(COLOR.rowHi))
	hi:SetAlpha(0.55)

	-- Expander glyph (+/-) drawn as text.
	local glyph = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetMenuFont(glyph, MENU_FONT_SIZE)
	glyph:SetWidth(18)
	glyph:SetJustifyH("CENTER")
	b.glyph = glyph

	local fs = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetMenuFont(fs)
	fs:SetJustifyH("LEFT")
	fs:SetWordWrap(false)
	b.label = fs

	local lvl = b:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	SetMenuFont(lvl, MENU_FONT_SIZE_SMALL)
	lvl:SetPoint("RIGHT", -8, 0)
	lvl:SetJustifyH("RIGHT")
	b.lvl = lvl

	b:SetScript("OnEnter", function(self)
		if self.guideRef then GuideMenu:ShowTooltip(self, self.guideRef) end
	end)
	b:SetScript("OnLeave", function() GameTooltip:Hide() end)

	return b
end

function GuideMenu:AcquireRow(index)
	local row = self.rows[index]
	if row then return row end
	row = CreateRow(self.content)
	self.rows[index] = row
	return row
end

----------------------------------------------------------------------
-- Build
----------------------------------------------------------------------

function GuideMenu:Create()
	if self.frame then return self.frame end

	local f = CreateFrame("Frame", "QuestCoreGuideMenu", UIParent, "BackdropTemplate")
	self.frame = f
	f:SetSize(MENU_FRAME_W, MENU_FRAME_H)
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

	-- Title bar.
	local titleBar = CreateFrame("Frame", nil, f)
	titleBar:SetPoint("TOPLEFT", 1, -1)
	titleBar:SetPoint("TOPRIGHT", -1, -1)
	titleBar:SetHeight(30)
	local tb = titleBar:CreateTexture(nil, "BACKGROUND")
	tb:SetTexture(WHITE)
	tb:SetAllPoints()
	tb:SetVertexColor(unpack(COLOR.title))

	local titleText = titleBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	SetMenuFont(titleText, MENU_TITLE_SIZE)
	titleText:SetPoint("LEFT", 12, 0)
	titleText:SetText("|cff33d6ff" .. L["Select Guide"] .. "|r")
	self.titleText = titleText

	local close = CreateFrame("Button", nil, titleBar, "UIPanelCloseButton")
	close:SetPoint("RIGHT", 2, 0)
	close:SetScale(0.9)
	close:SetScript("OnClick", function() GuideMenu:Hide() end)

	-- Search box.
	local search = CreateFrame("EditBox", nil, f, "InputBoxTemplate")
	search:SetHeight(26)
	search:SetPoint("TOPLEFT", titleBar, "BOTTOMLEFT", 14, -8)
	search:SetPoint("TOPRIGHT", titleBar, "BOTTOMRIGHT", -12, -8)
	SetMenuEditFont(search)
	search:SetScript("OnTextChanged", function(box)
		self.searchText = box:GetText():lower()
		self:Rebuild()
	end)
	if QC.BindEscapeEditBox then
		QC.BindEscapeEditBox(search, function()
			search:SetText("")
			GuideMenu:Hide()
		end)
	end
	self.search = search

	-- Level filter checkbox.
	local lvlcb = CreateFrame("CheckButton", nil, f, "UICheckButtonTemplate")
	lvlcb:SetSize(26, 26)
	lvlcb:SetPoint("TOPLEFT", search, "BOTTOMLEFT", -2, -6)
	lvlcb.text = lvlcb:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	SetMenuFont(lvlcb.text)
	lvlcb.text:SetPoint("LEFT", lvlcb, "RIGHT", 4, 0)
	lvlcb.text:SetText(L["Only my level"])
	lvlcb:SetScript("OnClick", function(b)
		QC.db.global.menuLevelFilter = b:GetChecked()
		self:Rebuild()
	end)
	self.lvlcb = lvlcb

	-- Scroll area.
	local scroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
	scroll:SetPoint("TOPLEFT", lvlcb, "BOTTOMLEFT", 10, -6)
	scroll:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -30, 10)
	self.scroll = scroll

	local content = CreateFrame("Frame", nil, scroll)
	content:SetSize(1, 1)
	scroll:SetScrollChild(content)
	self.content = content
	self.rows = {}

	if QC._EnableWheelScroll then QC._EnableWheelScroll(scroll) end
	if QC.EnableEscapeClose then QC.EnableEscapeClose(f, function() GuideMenu:Hide() end) end
	f:HookScript("OnHide", function()
		QC.ClearKeyboardFocus()
	end)

	if QC.Skin then QC.Skin:Apply(f) end
	return f
end

----------------------------------------------------------------------
-- Row helpers
----------------------------------------------------------------------

function GuideMenu:PlaceRow(idx, y, indent, width)
	local row = self:AcquireRow(idx)
	row:ClearAllPoints()
	row:SetPoint("TOPLEFT", self.content, "TOPLEFT", indent, y)
	row:SetWidth(width - indent)
	row.glyph:ClearAllPoints()
	row.glyph:SetPoint("LEFT", 2, 0)
	row.label:ClearAllPoints()
	row.label:SetPoint("LEFT", row.glyph, "RIGHT", 4, 0)
	row.label:SetPoint("RIGHT", -52, 0)
	row.lvl:SetText("")
	row.guideRef = nil
	row:Show()
	return row
end

-- One-line summary of a step (first meaningful goal text).
function GuideMenu:StepSummary(step)
	if not step or not step.goals then return nil end
	for _, goal in ipairs(step.goals) do
		if goal:IsVisible() then
			local txt = goal:GetText()
			if txt and txt ~= "" then
				if #txt > 60 then txt = txt:sub(1, 57) .. "..." end
				return txt
			end
		end
	end
	return nil
end

-- Rich hover preview: levels, description and the first few steps.
function GuideMenu:ShowTooltip(anchor, guide)
	GameTooltip:SetOwner(anchor, "ANCHOR_RIGHT")
	GameTooltip:AddLine(guide.title_short or guide.title, 0.3, 0.8, 1.0)

	local s, e = QC:GetGuideLevels(guide)
	if s then
		GameTooltip:AddLine(("Level %s%s"):format(s, e and ("-" .. e) or "+"), 0.8, 0.8, 0.8)
	end
	local desc = guide.headerdata and guide.headerdata.description
	if desc and desc ~= "" then
		GameTooltip:AddLine(desc, 0.9, 0.85, 0.6, true)
	end

	-- Only parse for the preview when cheap: already parsed, or small source.
	-- Avoids a hitch when hovering very large guides.
	local canParse = guide.parsed or (type(guide.rawdata) == "string" and #guide.rawdata < 40000)
	local ok = canParse and pcall(function() guide:Parse() end)
	if ok and guide.steps and #guide.steps > 0 then
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine((L["Steps:"] .. " %d"):format(#guide.steps), 0.6, 0.8, 1.0)
		local shown = 0
		for i = 1, #guide.steps do
			local sum = self:StepSummary(guide.steps[i])
			if sum then
				GameTooltip:AddLine("|cff66cc66" .. ICON.bullet .. "|r " .. sum, 0.82, 0.82, 0.82, true)
				shown = shown + 1
				if shown >= 6 then break end
			end
		end
		if #guide.steps > shown then
			GameTooltip:AddLine("|cff777777... and more|r", 0.5, 0.5, 0.5)
		end
	end

	GameTooltip:AddLine(" ")
	GameTooltip:AddLine("|cffffd100" .. L["Click to load this guide"] .. "|r", 0.6, 0.6, 0.6)
	GameTooltip:Show()
end

local function GuideLevelText(guide)
	local s, e = QC:GetGuideLevels(guide)
	if s and e then return ("|cff888888%d-%d|r"):format(s, e) end
	if s then return ("|cff888888%d+|r"):format(s) end
	return ""
end

local function ParseLevelsFromText(text)
	if not text then return nil, nil end
	local s, e = text:match("(%d+)%-(%d+)")
	if s and e then return tonumber(s), tonumber(e) end
	s = text:match("(%d+)%+")
	if s then return tonumber(s), nil end
	return nil, nil
end

local function GuideSortLevels(guide)
	local s, e = QC:GetGuideLevels(guide)
	if not s then
		local title = guide.title_short or guide.title or ""
		local leaf = title:match("[^\\]+$") or title
		s, e = ParseLevelsFromText(leaf)
	end
	s = s or 9999
	e = e or s
	return s, e
end

local function CompareGuidesByLevel(a, b)
	local as, ae = GuideSortLevels(a)
	local bs, be = GuideSortLevels(b)
	if as ~= bs then return as < bs end
	if ae ~= be then return ae < be end
	return (a.title_short or a.title) < (b.title_short or b.title)
end

local function NodeSortLevel(node)
	local s = ParseLevelsFromText(node.name)
	if s then return s end
	local minLevel = 9999
	for _, guide in ipairs(node.guides or {}) do
		local gs = GuideSortLevels(guide)
		if gs < minLevel then minLevel = gs end
	end
	for _, child in ipairs(node.children or {}) do
		local cs = NodeSortLevel(child)
		if cs < minLevel then minLevel = cs end
	end
	return minLevel
end

local function CompareNodesByLevel(a, b)
	local as = NodeSortLevel(a)
	local bs = NodeSortLevel(b)
	if as ~= bs then return as < bs end
	return a.name < b.name
end

----------------------------------------------------------------------
-- Rendering
----------------------------------------------------------------------

function GuideMenu:RenderNode(node, depth, width, state)
	local expanded = QC.db.global.menuExpanded

	-- Sort once per node (cached on the node to avoid re-sorting each rebuild).
	if not node._sorted then
		table.sort(node.children, CompareNodesByLevel)
		table.sort(node.guides, CompareGuidesByLevel)
		node._sorted = true
	end

	for _, child in ipairs(node.children) do
		local isExpanded = expanded[child.path]
		state.idx = state.idx + 1
		local row = self:PlaceRow(state.idx, state.y, depth * INDENT, width)
		row.bg:SetVertexColor(unpack(COLOR.node))
		row.glyph:SetText(isExpanded and "|cff66ccff-|r" or "|cff66ccff+|r")
		row.label:SetText("|cff9fd6ff" .. child.name .. "|r")
		row:SetScript("OnClick", function()
			expanded[child.path] = (not expanded[child.path]) or nil
			self:Rebuild()
		end)
		state.y = state.y - ROW_H - 1

		if isExpanded then
			self:RenderNode(child, depth + 1, width, state)
		end
	end

	for _, guide in ipairs(node.guides) do
		if QC.db.global.menuLevelFilter and not QC:IsGuideForMyLevel(guide) then
			-- filtered out
		elseif QC.IsGuideValid and not QC:IsGuideValid(guide) then
			-- hidden by condition_valid
		elseif QC.IsGuideEnded and QC:IsGuideEnded(guide) and QC.CurrentGuide ~= guide then
			-- hidden when condition_end is true (unless currently active)
		else
			state.idx = state.idx + 1
			local row = self:PlaceRow(state.idx, state.y, depth * INDENT, width)
			row.bg:SetVertexColor(unpack(COLOR.row))
			row.glyph:SetText("")
			local active = QC.CurrentGuide == guide
			local done = QC:IsGuideCompleted(guide.title) or (QC.IsGuideEnded and QC:IsGuideEnded(guide))
			local prefix = active and (ICON.active .. " ")
				or (done and (ICON.complete .. " ") or "")
			local name = guide.title_short or guide.title
			if done and not active then name = "|cff7f8a7f" .. name .. "|r" end
			row.label:SetText(prefix .. name)
			row.lvl:SetText(GuideLevelText(guide))
			row.guideRef = guide
			row:SetScript("OnClick", function()
				QC:SetGuide(guide, 1)
				if QC.GuideFrame and QC.GuideFrame.Show then QC.GuideFrame:Show() end
				GuideMenu:Hide()
			end)
			state.y = state.y - ROW_H - 1
		end
	end
end

-- Flat search results (no tree) when searching.
function GuideMenu:RenderSearch(width, state)
	local q = self.searchText
	local hits = {}
	for _, guide in ipairs(QC.registeredguides) do
		if guide.title:lower():find(q, 1, true) then
			hits[#hits + 1] = guide
		end
	end
	table.sort(hits, CompareGuidesByLevel)
	for _, guide in ipairs(hits) do
		state.idx = state.idx + 1
		local row = self:PlaceRow(state.idx, state.y, 0, width)
		row.bg:SetVertexColor(unpack(COLOR.row))
		row.glyph:SetText("")
		row.label:SetText(guide.title:gsub("\\", " |cff556677>|r "))
		row.lvl:SetText(GuideLevelText(guide))
		row.guideRef = guide
		row:SetScript("OnClick", function()
			QC:SetGuide(guide, 1)
			if QC.GuideFrame and QC.GuideFrame.Show then QC.GuideFrame:Show() end
			GuideMenu:Hide()
		end)
		state.y = state.y - ROW_H - 1
	end
end

function GuideMenu:RenderSpecialRow(state, width, glyph, text, onclick)
	state.idx = state.idx + 1
	local row = self:PlaceRow(state.idx, state.y, 0, width)
	row.bg:SetVertexColor(unpack(COLOR.special))
	row.glyph:SetText(glyph or "")
	row.label:SetText(text)
	row:SetScript("OnClick", onclick)
	state.y = state.y - ROW_H - 1
end

function GuideMenu:Rebuild()
	if not self.frame then self:Create() end
	for _, row in ipairs(self.rows) do row:Hide() end

	self.lvlcb:SetChecked(QC.db.global.menuLevelFilter)

	local width = self.scroll:GetWidth()
	local state = { idx = 0, y = -2 }

	if self.searchText and self.searchText ~= "" then
		self:RenderSearch(width, state)
		self.titleText:SetText("|cff33d6ff" .. L["Search"] .. "|r")
	else
		-- Continue current guide.
		if QC.CurrentGuide then
			self:RenderSpecialRow(state, width, ICON.continue,
				"|cff66cc66" .. L["Continue:"] .. "|r " .. (QC.CurrentGuide.title_short or QC.CurrentGuide.title),
				function()
					if QC.GuideFrame and QC.GuideFrame.Show then QC.GuideFrame:Show() end
					GuideMenu:Hide()
				end)
		end

		-- Suggested guide (cached; computed on Show).
		local sug = self._suggested
		if sug and sug ~= QC.CurrentGuide then
			self:RenderSpecialRow(state, width, ICON.suggested,
				"|cffffd100" .. L["Suggested:"] .. "|r " .. (sug.title_short or sug.title),
				function()
					QC:SetGuide(sug, 1)
					if QC.GuideFrame and QC.GuideFrame.Show then QC.GuideFrame:Show() end
					GuideMenu:Hide()
				end)
		end

		-- Recent guides.
		local recent = QC:GetRecentGuides()
		for i = 2, math.min(#recent, 4) do
			local g = recent[i]
			self:RenderSpecialRow(state, width, ICON.recent,
				"|cff99aabb" .. L["Recent:"] .. "|r " .. (g.title_short or g.title),
				function()
					QC:SetGuide(g, 1)
					if QC.GuideFrame and QC.GuideFrame.Show then QC.GuideFrame:Show() end
					GuideMenu:Hide()
				end)
		end

		if state.idx > 0 then state.y = state.y - 6 end

		if not self._tree then self._tree = QC:GetGuideTree() end
		self:RenderNode(self._tree, 0, width, state)
		self.titleText:SetText(("|cff33d6ff" .. L["Guides"] .. "|r |cff888888(%d)|r"):format(#QC.registeredguides))
	end

	self.content:SetHeight(math.max(1, -state.y))
end

----------------------------------------------------------------------
-- Visibility
----------------------------------------------------------------------

function GuideMenu:Show()
	if not self.frame then self:Create() end
	-- Refresh caches once per open (cheap thereafter for search/toggle).
	self._tree = QC:GetGuideTree()
	self._suggested = QC:GetSuggestedGuide()
	self:Rebuild()
	self.frame:Show()
end

-- Force the tree to rebuild next time (call when guides are added/removed).
function GuideMenu:InvalidateCache()
	self._tree = nil
	self._suggested = nil
end

function GuideMenu:Hide()
	QC.ClearKeyboardFocus()
	if self.frame then self.frame:Hide() end
end

function GuideMenu:Toggle()
	if self.frame and self.frame:IsShown() then self:Hide() else self:Show() end
end
