-- QuestCore: user-created guides stored in SavedVariables.

local addonName, QuestCore = ...
local QC = QuestCore

local GuideStore = {}
QC.GuideStore = GuideStore

local CUSTOM_PREFIX = "Custom\\"

function GuideStore:Init()
	QC.db.global.customGuides = QC.db.global.customGuides or {}
end

function GuideStore:GetAll()
	self:Init()
	return QC.db.global.customGuides
end

function GuideStore:Save(title, header, rawdata)
	self:Init()
	title = QC:SanitizeGuideTitle(title)
	if title == "" then return false, "Title required" end

	local fullTitle = title:find("\\") and title or (CUSTOM_PREFIX .. title)
	QC.db.global.customGuides[fullTitle] = {
		header = header or {},
		rawdata = rawdata or "",
		saved = time(),
	}

	-- Re-register live.
	QC.RegisteredGuidesByTitle[fullTitle] = nil
	for i, g in ipairs(QC.registeredguides) do
		if g.title == fullTitle then
			table.remove(QC.registeredguides, i)
			break
		end
	end
	QC:RegisterGuide(fullTitle, header, rawdata)
	return true
end

function GuideStore:Delete(title)
	self:Init()
	title = QC:SanitizeGuideTitle(title)
	QC.db.global.customGuides[title] = nil
	QC.RegisteredGuidesByTitle[title] = nil
	for i, g in ipairs(QC.registeredguides) do
		if g.title == title then table.remove(QC.registeredguides, i) break end
	end
end

function GuideStore:LoadAll()
	self:Init()
	for title, data in pairs(QC.db.global.customGuides) do
		if not QC:GetGuide(title) then
			QC:RegisterGuide(title, data.header, data.rawdata)
		end
	end
end
