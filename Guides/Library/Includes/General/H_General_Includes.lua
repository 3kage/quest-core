-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
-----------------------
----- Auctioneers -----
-----------------------

QuestCore:RegisterInclude("auctioneer",[[
		talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.10,73.30
]])

QuestCore:RegisterInclude("shatt_auctioneer",[[
		talk Auctioneer Itoran##50143 |goto Shattrath City 51.00,26.50 |only if rep('The Aldor')>=Friendly
		talk Auctioneer Lyrsara##50140 |goto Shattrath City 56.80,62.40 |only if rep('The Scryers')>=Friendly
]])

QuestCore:RegisterInclude("auctioneer_warspear",[[
		talk Shei'ann Younghoof##88128 |goto Warspear/0 54.80,25.00
]])