-- QuestCore: bundled guide registration helpers.
-- Individual guide files call QuestCore:RegisterGuide or QC.Guide:Register.

local addonName, QuestCore = ...
local QC = QuestCore

local Guide = QC.Guide

if not Guide then return end

local function L(k) return (QC.L and QC.L[k]) or k end

function Guide.RegisterBundled(meta, rawText)
	return Guide:Register(meta, rawText)
end

function Guide.RegisterNative(title, header, rawText)
	if type(header) == "string" then
		rawText = header
		header = {}
	end
	header = header or {}
	header.title = header.title or title
	if not (header.expansion or header.exp or header.flavor) and Guide.ResolveExpansion then
		header.expansion = Guide:ResolveExpansion(header, title)
	end
	return Guide:Register(title, header, rawText)
end

QC.GuideRegisterBundled = Guide.RegisterBundled
QC.GuideRegisterNative = Guide.RegisterNative
