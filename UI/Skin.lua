-- QuestCore: optional ElvUI compatibility.
-- When ElvUI is loaded, QuestCore windows adopt ElvUI's backdrop/border colors
-- so they blend with the rest of the UI. Falls back to the native look otherwise.

local addonName, QuestCore = ...
local QC = QuestCore

local Skin = {}
QC.Skin = Skin

local function GetElv()
	if not _G.ElvUI then return nil end
	local ok, E = pcall(function() return unpack(_G.ElvUI) end)
	if ok then return E end
	return nil
end

function Skin:Enabled()
	return GetElv() ~= nil
end

-- Recolor a backdrop frame to match ElvUI's media (safe, no taint).
function Skin:Apply(frame, alpha)
	local E = GetElv()
	if not E or not frame or not frame.SetBackdropColor then return end

	local media = E.media or {}
	local bc = media.backdropcolor or { 0.06, 0.06, 0.06 }
	local br = media.bordercolor or { 0.0, 0.0, 0.0 }

	pcall(function()
		frame:SetBackdropColor(bc[1], bc[2], bc[3], alpha or 0.9)
		frame:SetBackdropBorderColor(br[1], br[2], br[3], 1)
	end)

	-- Skin a close button and scrollbar if ElvUI's Skins module is present.
	local S = E.GetModule and E:GetModule("Skins", true)
	if S then
		pcall(function()
			for _, child in ipairs({ frame:GetChildren() }) do
				if child.GetObjectType and child:GetObjectType() == "ScrollFrame"
					and child.ScrollBar and S.HandleScrollBar then
					S:HandleScrollBar(child.ScrollBar)
				end
			end
		end)
	end
end

-- Apply to every top-level QuestCore window that currently exists.
function Skin:ApplyAll()
	if not self:Enabled() then return end
	local frames = {
		QC.UI and QC.UI.frame,
		QC.GuideMenu and QC.GuideMenu.frame,
		QC.Options and QC.Options.frame,
		QC.Options and QC.Options.stringDialog,
		QC.History and QC.History.frame,
		QC.GuideEditor and QC.GuideEditor.frame,
	}
	for _, f in ipairs(frames) do
		if f then self:Apply(f) end
	end
end
