-- QuestCore: optional guide/quest data pack (GitHub) vs engine (CurseForge).
-- Data pack: https://github.com/3kage/quest-core/releases
-- Auto-updater: QuestCore-Updater.zip (same releases page)

local addonName, QuestCore = ...
local QC = QuestCore

local DataPack = {}
QC.DataPack = DataPack

local function L(k)
	return (QC.L and QC.L[k]) or k
end

local DEFAULT_RELEASES = "https://github.com/3kage/quest-core/releases"
local DEFAULT_REPO = "https://github.com/3kage/quest-core"
local DEFAULT_UPDATER = "https://github.com/3kage/quest-core/releases/latest/download/QuestCore-Updater.zip"
local DEFAULT_INSTALL = "Interface\\AddOns\\QuestCore_Data"
local OPTIONAL_ADDON = "QuestCore_Data"
local MIN_GUIDES = 1
local SHOW_DELAY = 3

function DataPack:GetReleasesURL()
	local g = QC.db and QC.db.global
	if g and g.dataPackURL and g.dataPackURL ~= "" then
		return g.dataPackURL
	end
	return QC.DATA_PACK_URL or DEFAULT_RELEASES
end

function DataPack:GetUpdaterURL()
	local g = QC.db and QC.db.global
	if g and g.dataPackUpdaterURL and g.dataPackUpdaterURL ~= "" then
		return g.dataPackUpdaterURL
	end
	return QC.DATA_PACK_UPDATER_URL or DEFAULT_UPDATER
end

function DataPack:GetURL()
	return self:GetReleasesURL()
end

function DataPack:GetRepoURL()
	return QC.DATA_PACK_REPO or DEFAULT_REPO
end

function DataPack:GetInstallPath()
	return QC.DATA_PACK_INSTALL_PATH or DEFAULT_INSTALL
end

function DataPack:GetDataPackVersion()
	if not GetAddOnMetadata then return nil end
	if not (IsAddOnLoaded and IsAddOnLoaded(OPTIONAL_ADDON)) then return nil end
	return GetAddOnMetadata(OPTIONAL_ADDON, "Version")
		or GetAddOnMetadata(OPTIONAL_ADDON, "X-Data-Pack-Version")
end

function DataPack:HasGuideData()
	if QC.registeredguides and #QC.registeredguides >= (QC.DATA_PACK_MIN_GUIDES or MIN_GUIDES) then
		return true
	end
	if IsAddOnLoaded and IsAddOnLoaded(OPTIONAL_ADDON) then
		return true
	end
	return false
end

function DataPack:IsExternalDataPack()
	return IsAddOnLoaded and IsAddOnLoaded(OPTIONAL_ADDON) and true or false
end

function DataPack:NeedsPrompt()
	if self:HasGuideData() then return false end
	if QC.db and QC.db.global and QC.db.global.suppressDataPackPrompt then return false end
	return true
end

function DataPack:PrintStatus()
	local releases = self:GetReleasesURL()
	local updater = self:GetUpdaterURL()
	if not self:HasGuideData() then
		QC:Print("|cffffcc00QuestCore|r: " .. L("Guide data pack not found!"))
		QC:Print(L("Data pack updates hint") .. " |cff66ccff" .. releases .. "|r")
		QC:Print(L("Data pack updater hint") .. " |cff66ccff" .. updater .. "|r")
		return
	end
	local dpVer = self:GetDataPackVersion()
	local engineVer = QC.version or "?"
	if dpVer and self:IsExternalDataPack() then
		QC:Print(("|cff33d6ffQuestCore|r %s |cff888888| |r%s %s"):format(
			engineVer, L("Data pack"), dpVer))
	else
		QC:Print("|cff33d6ffQuestCore|r " .. engineVer .. " — "
			.. #QC.registeredguides .. " " .. L("guides loaded."))
	end
	QC:Print(L("Data pack updates hint") .. " |cff66ccff" .. releases .. "|r")
	QC:Print(L("Data pack updater hint") .. " |cff66ccff" .. updater .. "|r")
	QC:Print(L("Engine updates hint") .. " " .. (QC.CURSEFORGE_HINT or "CurseForge"))
end

local function ApplyEditBoxFont(editBox)
	if not editBox or not editBox.SetFont then return end
	if QC.Font and QC.Font.GetPath then
		editBox:SetFont(QC.Font.GetPath(), 12, "")
	elseif editBox.SetFontObject then
		editBox:SetFontObject(GameFontHighlight)
	end
end

local function MakeUrlField(parent, anchor, label, url)
	local title = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	title:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", 0, -12)
	title:SetWidth(360)
	title:SetJustifyH("LEFT")
	title:SetText(label)

	local box = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
	box:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -4)
	box:SetSize(360, 20)
	box:SetAutoFocus(false)
	box:SetText(url or "")
	ApplyEditBoxFont(box)
	box:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	box:SetScript("OnEditFocusGained", function(self) self:HighlightText() end)
	return box
end

function DataPack:EnsureSetupFrame()
	if self.setupFrame then return self.setupFrame end

	local f = CreateFrame("Frame", "QuestCoreDataPackSetup", UIParent, "BasicFrameTemplateWithInset")
	f:SetSize(420, 360)
	f:SetPoint("CENTER")
	f:SetMovable(true)
	f:EnableMouse(true)
	f:RegisterForDrag("LeftButton")
	f:SetScript("OnDragStart", f.StartMoving)
	f:SetScript("OnDragStop", f.StopMovingOrSizing)
	f:Hide()

	f.title = f:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	f.title:SetPoint("TOP", 0, -8)
	f.title:SetText("|cff33d6ffQuestCore|r")

	f.body = f:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	f.body:SetPoint("TOPLEFT", 16, -36)
	f.body:SetWidth(388)
	f.body:SetJustifyH("LEFT")

	f.hint = f:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	f.hint:SetPoint("TOPLEFT", f.body, "BOTTOMLEFT", 0, -8)
	f.hint:SetWidth(388)
	f.hint:SetJustifyH("LEFT")

	f.installLabel = f:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	f.installLabel:SetPoint("TOPLEFT", f.hint, "BOTTOMLEFT", 0, -12)
	f.installLabel:SetWidth(388)
	f.installLabel:SetJustifyH("LEFT")

	f.updaterBox = MakeUrlField(f, f.installLabel, L("Auto-updater (recommended)"), self:GetUpdaterURL())
	f.releasesBox = MakeUrlField(f, f.updaterBox, L("Manual download (Releases)"), self:GetReleasesURL())

	f.engineHint = f:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall")
	f.engineHint:SetPoint("TOPLEFT", f.releasesBox, "BOTTOMLEFT", 0, -10)
	f.engineHint:SetWidth(388)
	f.engineHint:SetJustifyH("LEFT")

	f.closeBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
	f.closeBtn:SetSize(100, 24)
	f.closeBtn:SetPoint("BOTTOM", 0, 16)
	f.closeBtn:SetScript("OnClick", function() f:Hide() end)

	self.setupFrame = f
	return f
end

function DataPack:RefreshSetupFrame()
	local f = self:EnsureSetupFrame()
	f.body:SetText(L("Guide data pack not found!"))
	f.hint:SetText(L("Data pack setup hint"))
	f.installLabel:SetText("|cffffcc00" .. L("Install to:") .. "|r\n" .. self:GetInstallPath())
	f.updaterBox:SetText(self:GetUpdaterURL())
	f.releasesBox:SetText(self:GetReleasesURL())
	f.engineHint:SetText(L("Engine updates hint") .. " " .. (QC.CURSEFORGE_HINT or "CurseForge"))
	f.closeBtn:SetText(L("Close"))
end

function DataPack:ShowMissingDialog(force)
	if not force and not self:NeedsPrompt() then return end
	self:RefreshSetupFrame()
	self.setupFrame:Show()
end

function DataPack:CheckAndNotify()
	if not self:NeedsPrompt() then return false end
	if self._scheduled or self._shownThisSession then return false end
	self._scheduled = true

	local delay = SHOW_DELAY
	if C_Timer and C_Timer.After then
		C_Timer.After(delay, function()
			self._scheduled = nil
			if not self:NeedsPrompt() then return end
			self._shownThisSession = true
			self:ShowMissingDialog(true)
		end)
	else
		self._shownThisSession = true
		self:ShowMissingDialog(true)
	end
	return true
end

function DataPack:Init()
	self:EnsureSetupFrame()
end
