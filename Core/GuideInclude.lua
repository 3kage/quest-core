-- QuestCore: #include snippet registry (RegisterInclude).

local addonName, QuestCore = ...
local QC = QuestCore

QC.registeredincludes = {}
QC.RegisteredIncludesByName = {}

function QC:RegisterInclude(name, data)
	if not name or not data then return end
	QC.registeredincludes[#QC.registeredincludes + 1] = { name = name, data = data }
	QC.RegisteredIncludesByName[name] = data
end
