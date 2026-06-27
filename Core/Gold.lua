-- QuestCore: Gold Scanner + auction price bridge (TSM / Auctionator / vendor fallback).

local addonName, QuestCore = ...
local QC = QuestCore

local GoldScanner = {}
QC.GoldScanner = GoldScanner

-- QC.Gold facade (migrated guides + startup wizard).
local Gold = {}
QC.Gold = Gold
Gold.guides_loaded = true

GoldScanner._lastScan = 0
GoldScanner._scanSkipped = false
GoldScanner._provider = nil

----------------------------------------------------------------------
-- External addon detection
----------------------------------------------------------------------

local function DetectProvider()
	if _G.TSM and _G.TSM.API and _G.TSM.API.GetCustomPriceValue then
		return "tsm"
	end
	if _G.Auctionator and _G.Auctionator.API and _G.Auctionator.API.v1
		and _G.Auctionator.API.v1.GetAuctionPriceByItemID then
		return "auctionator"
	end
	return "vendor"
end

function GoldScanner:GetProvider()
	if not self._provider then self._provider = DetectProvider() end
	return self._provider
end

function GoldScanner:ResetProvider()
	self._provider = nil
	return self:GetProvider()
end

----------------------------------------------------------------------
-- Pricing
----------------------------------------------------------------------

function GoldScanner:GetVendorSellPrice(itemID)
	itemID = tonumber(itemID)
	if not itemID then return 0 end
	if QC.GetItemInfo then
		local _, _, _, _, _, _, _, _, _, _, sell = QC.GetItemInfo(itemID)
		return sell or 0
	end
	if GetItemInfo then
		local _, _, _, _, _, _, _, _, _, _, sell = GetItemInfo(itemID)
		return sell or 0
	end
	return 0
end

function GoldScanner:GetTSMPrice(itemID)
	if not (_G.TSM and _G.TSM.API and _G.TSM.API.GetCustomPriceValue) then return nil end
	local itemString = "i:" .. tostring(itemID)
	for _, source in ipairs({ "DBMarket", "DBMinBuyout", "DBRegionMarketAvg" }) do
		local ok, price = pcall(_G.TSM.API.GetCustomPriceValue, itemString, source)
		if ok and type(price) == "number" and price > 0 then return price end
	end
	return nil
end

function GoldScanner:GetAuctionatorPrice(itemID)
	itemID = tonumber(itemID)
	if not itemID then return nil end
	local API = _G.Auctionator and _G.Auctionator.API and _G.Auctionator.API.v1
	if not API then return nil end
	if API.GetAuctionPriceByItemID then
		local ok, price = pcall(API.GetAuctionPriceByItemID, itemID)
		if ok and type(price) == "number" and price > 0 then return price end
	end
	if API.GetAuctionPriceByItemLink and GetItemInfo then
		local link = select(2, GetItemInfo(itemID))
		if link then
			local ok, price = pcall(API.GetAuctionPriceByItemLink, link)
			if ok and type(price) == "number" and price > 0 then return price end
		end
	end
	return nil
end

function GoldScanner:GetItemPrice(itemID)
	itemID = tonumber(itemID)
	if not itemID then return 0 end
	local provider = self:GetProvider()
	if provider == "tsm" then
		local p = self:GetTSMPrice(itemID)
		if p then return p end
	elseif provider == "auctionator" then
		local p = self:GetAuctionatorPrice(itemID)
		if p then return p end
	end
	return self:GetVendorSellPrice(itemID)
end

----------------------------------------------------------------------
-- AH scan state (startup wizard + gold guides)
----------------------------------------------------------------------

function GoldScanner:RecordScan()
	self._lastScan = GetTime()
	if QC.db and QC.db.char then
		QC.db.char.lastGoldScan = self._lastScan
	end
	if QC.TryToCompleteStep then QC:TryToCompleteStep() end
end

function GoldScanner:SkipScan()
	self._scanSkipped = true
	self:RecordScan()
end

function GoldScanner:LastScan(maxAgeMinutes)
	maxAgeMinutes = tonumber(maxAgeMinutes) or 15
	if self._scanSkipped then return true end
	local last = self._lastScan
	if QC.db and QC.db.char and QC.db.char.lastGoldScan then
		last = math.max(last or 0, QC.db.char.lastGoldScan)
	end
	if last and last > 0 and (GetTime() - last) < maxAgeMinutes * 60 then
		return true
	end
	-- Vendor-only mode: treat as satisfied so wizard does not stall.
	if self:GetProvider() == "vendor" and QC.db and QC.db.char and QC.db.char.wizardComplete then
		return true
	end
	return false
end

function GoldScanner:OpenAuctionScan()
	local provider = self:GetProvider()
	if provider == "tsm" and _G.TSM and _G.TSM.Modules and _G.TSM.Modules.AuctionDB then
		pcall(function() _G.TSM.Modules.AuctionDB.Scan.Scan() end)
		self:RecordScan()
		return true
	end
	if provider == "auctionator" then
		if _G.Auctionator and _G.Auctionator.State and _G.Auctionator.State.TabManager then
			pcall(function()
				if SlashCmdList and SlashCmdList.AUCTIONATOR then
					SlashCmdList.AUCTIONATOR()
				end
			end)
		end
		self:RecordScan()
		return true
	end
	if MerchantFrame and MerchantFrame:IsShown() then
		self:RecordScan()
		return true
	end
	QC:Print("|cff33d6ffQuestCore|r: No auction addon found — using vendor sell prices.")
	self:SkipScan()
	return false
end

function Gold:LastScan(maxAgeMinutes)
	return GoldScanner:LastScan(maxAgeMinutes)
end

function Gold:GetItemPrice(itemID)
	return GoldScanner:GetItemPrice(itemID)
end

function Gold:RecordScan()
	return GoldScanner:RecordScan()
end

----------------------------------------------------------------------
-- Inventory bridge (startup wizard bank step)
----------------------------------------------------------------------

local Inventory = {}
QC.Inventory = Inventory

function Inventory:CharacterBankKnown()
	if QC.db and QC.db.char and QC.db.char.bankScanned then return true end
	return false
end

function Inventory:MarkBankKnown()
	if QC.db and QC.db.char then
		QC.db.char.bankScanned = true
	end
	if QC.TryToCompleteStep then QC:TryToCompleteStep() end
end

function Inventory:Enable()
	if self._enabled then return end
	self._enabled = true
	QC:RegisterEvent("BANKFRAME_OPENED", function() Inventory:MarkBankKnown() end)
end

function GoldScanner:Enable()
	if self._enabled then return end
	self._enabled = true
	if Inventory.Enable then Inventory:Enable() end
	if QC.Compat and QC.Compat.WireGoldModules then
		QC.Compat.WireGoldModules()
	end
	QC:RegisterEvent("AUCTION_HOUSE_SHOW", function() GoldScanner:RecordScan() end)
	QC:RegisterEvent("PLAYER_ENTERING_WORLD", function()
		GoldScanner:ResetProvider()
	end)
end
