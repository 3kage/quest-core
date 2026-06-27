local name,addon = ...

if type(addon.LibRoverData) ~= "table" then addon.LibRoverData = {} end
local data=addon.LibRoverData

data.basenodes = data.basenodes or {}
data.basenodes.setup = data.basenodes.setup or {}

data.MapIDsByName = {

--World Zones
["Argus"] = {[0]=905},
["Azeroth"] = {[0]=947},
["Broken Isles"] = {[0]=619},
["Cosmic"] = {[0]=946},
["Draenor"] = {[0]=572},
["Eastern Kingdoms"] = {[0]=13},
["Kalimdor"] = {[0]=12},
["Kul Tiras"] = {[0]=876, [1]=1014},
["Northrend"] = {[0]=113},
["Outland"] = {[0]=101},
["Pandaria"] = {[0]=424},
["The Maelstrom Continent"] = {[0]=948},
["Zandalar"] = {[0]=875, [1]=1011},
["The Shadowlands"] = {[0]=1550, [1]=1647},
["Khaz Algar"] = {[0]=2274, [1]=2276},
["Quel'Thalas"] = {[0]=2537,},




-----------------------------
-------    MIDNIGHT   -------
-----------------------------
-- zones & caves
["Atal Aman M"] = {[0]=2535, [1]=2536,},
["Eversong Woods M"] = {[0]=2395},
["Wartha'nan Crypts"] = {[0]=2579},
["Harandar"] = {[0]=2413, [1]=2480, [2]=2576},
["Floaret Grotto"] = {[0]=2522, [1]=2523,},
["Isle of Quel Danas M"] = {[0]=2424},
["Isle of Quel Danas (Intro)"] = {[0]=2432,[1]=2565,[2]=2566},
["March on Quel Danas"] = {[0]=2533, [1]=2534},
["Voidstorm"] = {[0]=2405, [1]=2479,},
["Slayers Rise"] = {[0]=2444,},
["Zul Aman M"] = {[0]=2437,[1]=2580},
["Loaknit Den"] = {[0]=2580},
["Silvermoon City M"] = {[0]=2393,},
["Wit'Kalar Crypt"] = {[0]=2583,},
["Revantusk Sedge"] = {[0]=2584,},

--Abundance
["Voidburrow"] = {[0]=2582,[1]=2581,},

-- housing
["Razorwind Shores"] = {[0]=2351,},
["Alliance Housing District"] = {[0]=2401,},
["Horde Housing District"] = {[0]=2402,},
["Founder's Point"] = {[0]=2352,},

-- delves
["Gulf Of Memory"] = {[0]=2575,[1]=2505},
["Sunkiller Sanctum"] = {[0]=2571, [1]=2528,},
["Torments Rise"] = {[0]=2507,},
["Twilight Crypts"] = {[0]=2503, [1]=2504,},
["The Darkway"] = {[0]=2525,},
["Voidholme"] = {[0]=2502,},
["Collegiate Calamity"] = {[0]=2577,[1]=2578},
["Parhelion Plaza"] = {[0]=2545,},
["Shadowguard Point"] = {[0]=2506,},

-- dungeons
["Den of Nalorakk"] = {[0]=2564, [1]=2514, [2]=2513},
["Voidscar Arena"] = {[0]=2574, [1]=2572, [2]=2573},
["Magisters Terrace M"] = {[0]=2511,[1]=2515, [2]=2516, [3]=2517, [4]=2518, [5]=2519, [6]=2520},
["Murder Row"] = {[0]=2433, [1]=2435, [2]=2434,},
["Maisara Caverns"] = {[0]=2501,},
["Nexus Point Xenas"] = {[0]=2556,},
["The Blinding Vale"] = {[0]=2500,},
["Windrunner Spire"] = {[0]=2492, [1]=2493, [2]=2494, [3]=2496, [4]=2497, [5]=2498, [6]=2499,},

-- raids
["Dreamrift"] = {[0]=2531, [1]=2532,},
["The Voidspire"] = {[0]=2529, [1]=2530,},
["Sporefall"] = {[0]=2427},

-- misc
["Silvermoon Campaign Scenario"] = {[0]=2443,},
["Legion Command Center"] = {[0]=2557, [1]=2558,},

["The Grudge Pit"] = {[0]=2510,},
["Void Lands"] = {[0]=2397,},
["Lair of Predaxas"] = {[0]=2527, [1]=2526,},

["Scarlet Halls Arator"] = {[0]=2438,},
["Arcantina"] = {[0]=2541,},

-- 12.0.5
["Broken Throne"] = {[0]=2585,},
["Daggerspine Point"] = {[0]=2594,},

-- 12.0.7
["Val"] = {[0]=2599,},
["Forgotten Depths"] = {[0]=2621,[1]=2620},
["Void Acropolis"] = {[0]=2618,[1]=2617,[2]=2619},
["The Lycaneum"] = {[0]=2649,},

["Naigtal"] = {[0]=2600,},
["Vilaldoun"] = {[0]=2646,},







-----------------------------------
-------    THE WAR WITHIN   -------
-----------------------------------
["Dornogal"] = {[0]=2339},
["Isle of Dorn"] = {[0]=2248, [1]=2271},
["The Ringing Deeps"] = {[0]=2214, [1]=2385, [2]=2272},
["Hallowfall"] = {[0]=2215},
["Azj-Kahet"] = {[0]=2255, [1]=2256},
["Nerub'ar"] = {[0]=2216, [1]=2213},
["The Proscenium"] = {[0]=2328},
["Hall of Awakening"] = {[0]=2322},				-- Earthen Starter
["Hall of Awakening Scenario"] = {[0]=2368},			-- Ringing Deeps storyline scenario
["Vault of Memory"] = {[0]=2367},				-- War Within Campaign
["Dalaran TWW"] = {[0]=2305, [1]=2306, [2]=2307},			-- Pre-Khaz Algar (TWW Intro)
["Priory Scenario"] = {[0]=2330},				-- War Within Campaign (Priory of the Sacred Flame Scenario)
["Codex of Chromie"] = {[0]=2354},
-- 11.0.7
["Siren Isle"] = {[0]=2369},
["The Forgotten Vault"] = {[0]=2375},
-- 11.1.0
["Undermine"] = {[0]=2346},
-- 11.1.5
["Vision of Orgrimmar"] = {[0]=2403},
["Vision of Stormwind"] = {[0]=2404},
["Dastardly Dome"] = {[0]=2447},
-- 11.1.7
["Red Dawn Arathi"] = {[0]=2372},
["Lorewalking Ny'alotha"] = {[0]=2384, [1]=2381, [2]=2383, [3]=2382, [4]=2379},
["Lorewalking Scarlet Halls"] = {[0]=2418},
-- 11.2.0
["Tazavesh"] = {[0]=2472},
["K'aresh"] = {[0]=2371},
["Voidscar Cavern"] = {[0]=2477},
-- 11.2.7
["Founder's Point"] = {[0]=2352},
["Razorwind Shores"] = {[0]=2351},
["Arathi Highlands New"] = {[0]=2451},
["The Wandering Isle Heritage"] = {[0]=2366},


		---------------------------
		-------    DELVES   -------
		---------------------------
		["Earthcrawl Mines"] = {[0]=2269},
		["Darkflame Cleft Scenario"] = {[0]=2304},
		["Fungal Folly"] = {[0]=2249},
		["Kriegval's Rest"] = {[0]=2250},
		["The Dread Pit"] = {[0]=2302},
		["The Waterworks"] = {[0]=2251},
		["The Sinkhole"] = {[0]=2301, [1]=2300},
		["Mycomancer Cavern"] = {[0]=2312},
		["Nightfall Sanctum"] = {[0]=2277},
		["Skittering Breach"] = {[0]=2310},
		["The Spiral Weave"] = {[0]=2347, [1]=2313},
		["The Underkeep"] = {[0]=2299},
		["Tak-Rethan Abyss"] = {[0]=2259, [1]=2314},
		["Excavation Site 9"] = {[0]=2396},
		["Sidestreet Sluice"] = {[0]=2420, [1]=2421, [2]=2422, [3]=2423},
		["Archival Assault"] = {[0]=2476, [1]=2455, [2]=2454, [3]=2452, [4]=2453},


		-----------------------------
		-------    DUNGEONS   -------
		-----------------------------
		["Cinderbrew Meadery"] = {[0]=2335},
		["Darkflame Cleft"] = {[0]=2303},
		["The Stonevault"] = {[0]=2341},
		["The Dawnbreaker"] = {[0]=2359},
		["Priory of the Sacred Flame"] = {[0]=2308, [1]=2309},
		["City of Echoes"] = {[0]=2358, [1]=2357},
		["City of Threads"] = {[0]=2344, [1]=2343},
		["The Rookery"] = {[0]=2318, [1]=2320, [2]=2319, [3]=2317, [4]=2316, [5]=2315},
		["Operation: Floodgate"] = {[0]=2388, [1]=2387},
		["Eco-Dome Al'dani"] = {[0]=2449},

		--Raid--
		["Nerub'ar Palace"] = {[0]=2291, [1]=2293, [2]=2292, [3]=2294, [4]=2295, [5]=2296, [6]=2298},
		["Liberation of Undermine"] = {[0]=2406, [1]=2407, [2]=2408, [3]=2411, [4]=2409, [5]=2428},
		["Manaforge Omega"] = {[0]=2460, [1]=2462, [2]=2461, [3]=2463, [4]=2464, [5]=2465, [6]=2466, [7]=2467, [8]=2471, [9]=2468, [10]=2469, [11]=2470},






		--["The Rookery (The Rookery Landing)"] = {[0]=2315},
		--["The Rookery (Storm's Roost)"] = {[0]=2316},
		--["The Rookery (Storm Rookery)"] = {[0]=2317},
		--["The Rookery (Stormrider Barracks)"] = {[0]=2318},
		--["The Rookery (Crashing Storm Hall)"] = {[0]=2319},
		--["The Rookery (Abandoned Mines)"] = {[0]=2320},












---------------------------------
-------    DRAGONFLIGHT   -------
---------------------------------
["The Forbidden Reach"] = {[0]=2118, [1]=2107, [2]=2026, [3]=2110, [4]=2109, [5]=2151, [6]=2131},
["The Azure Vault"] = {[0]=2077, [1]=2076, [2]=2075, [3]=2074, [4]=2073},
["Azmerloth"] = {[0]=2092},
["Brackenhide Hollow"]={[0]=2096, [1]=2106},
["Dragon Isles"] = {[0]=1978, [1]=2057, [2]=2063, [3]=2079},
["Halls of Infusion"] = {[0]=2082, [1]=2083},
["Neltharus"] = {[0]=2080, [1]=2081},
["Ohn'ahran Plains"] = {[0]=2023},
["Pandaren Revolution"] = {[0]=2088},
["Primalist Tomorrow"] = {[0]=2085},
["Redridge Mountains DF"] = {[0]=1260},
["Resonant Peaks"] = {[0]=2059},
["Ruby Life Pools"] = {[0]=2095, [1]=2094},
["Thaldraszus"] = {[0]=2025},
["The Azure Span"] = {[0]=2024, [1]=2132},
["The Black Empire"] = {[0]=2089},
["The Gnoll War"] = {[0]=2090},
["The Nokhud Offensive"] = {[0]=2093},
["The Waking Shores"] = {[0]=2022},
["Uldaman Legacy of Tyr"] = {[0]=2071, [1]=2072},
["Valdrakken"] = {[0]=2112},
["War of the Shifting Sands"] = {[0]=2091},
["Algeth'ar Academy"] = {[0]=2099, [1]=2097, [2]=2098},
["Vault of the Incarnates"] = {[0]=2123, [1]=2124, [2]=2122, [3]=2119, [4]=2126, [5]=2120, [6]=2121, [7]=2125},
["The Emerald Dreamway DF"]={[0]=2084},
["The Support Creche"]={[0]=2101, [1]=2111},
["The Siege Creche"]={[0]=2100},
["Froststone Vault"]={[0]=2154},
["The War Creche"]={[0]=2102, [1]=2373, },

["Dragonskull Island"]={[0]=2150},
["Zaralek Cavern"]={[0]=2133},
["The Throughway"]={[0]=2165},
["Deepflayer Nest"]={[0]=2184},
["Aberrus, the Shadowed Crucible"]={[0]=2166, [1]=2167, [2]=2168, [3]=2169, [4]=2170, [5]=2171, [6]=2172, [7]=2173, [8]=2174, [9]=2211},
["Alterac Valley Heritage"]={[0]=2162},
["The Eastern Glades"]={[0]=2146},
["Dawn of the Infinite"]={[0]=2190, [1]=2191, [2]=2192, [3]=2193, [4]=2194, [5]=2195, [6]=2196, [7]=2197, [8]=2198},
["The Black Empire 2"]={[0]=2228},
["The Emerald Dream"] = {[0]=2200},
["Barrows of Reverie"] = {[0]=2254},
["Halls of Valor D"] = {[0]=2230, [1]=2231},
["Amirdrassil, The Dream's Hope"]={[0]=2244, [1]=2240, [2]=2232, [3]=2233, [4]=2234, [5]=2238, [6]=2237, [7]=2236, [8]=2235, [9]=2268},
["Sor'theril Barrow Den"] = {[0]=2253},
["Amirdrassil"]={[0]=2239},
["The Nighthold T"]={[0]=2221, [1]=2220},
["Traitor's Rest"]={[0]=2262},

["Millenia's Threshold"] = {[0]=2266 }, -- faked map based on instance



--Time Rifts--
["Tyrhold Reservoir"]={[0]=2199},
["The Warlands"]={[0]=2207},
["Azq'roth"]={[0]=2201},
["A.Z.E.R.O.T.H."]={[0]=2206},
["AzmerlothTR"]={[0]=2204},
["Azmourne"]={[0]=2203},
["Ulderoth"]={[0]=2205},
["Azewrath"]={[0]=2202},



---------------------------------------------------------------
-------			SHADOWLANDS			-------
---------------------------------------------------------------
["Exile's Reach"] = {[0]=1409},
["Icecrown Citadel Intro"] = {[0]=1681, [1]=1682, [2]=1360, [3]=1359},
["The Maw Intro"] = {[0]=1648},
["Oribos"] = {[0]=1670, [1]=1671, [2]=1672, [3]=1673, [4]=1613},
["Bastion"] = {[0]=1533, [1]=1690},
["Elysian Hold"] = {[0]=1707, [1]=1708},
["Maldraxxus"] = {[0]=1536, [1]=1652},
["Sightless Hold"] = {[0]=1650},
["Ardenweald"] = {[0]=1565, [1]=1829, [2]=1818, [3]=1824, [4]=1709, [5]=1603, [6]=1643, [7]=1739, [8]=1740},
["Revendreth"] = {[0]=1525},
["Ember Court"] = {[0]=1644},
["The Maw"] = {[0]=1543},
["The Maw M"] = {[0]=1960},--Maldraxxus questline
["Val'sharah SDL"] = {[0]=1642},
["Heart of the Forest"] = {[0]=1701, [1]=1702, [2]=1703},
["Fungal Terminus"] = {[0]=1819},
["The Root Cellar"] = {[0]=1826, [1]=1827, [2]=1828, [3]=1825},
["Sinfall"] = {[0]=1699, [1]=1700},
["Seat of the Primus"] = {[0]=1698},
["Torghast"] = {[0]=1911, [1]=1656, [2]=1752, [3]=1751, [4]=1753, [5]=1705, [6]=1765, [7]=1627, [8]=1758, [9]=1763, [10]=1769, [11]=1985 },
["The Runecarver"] = {[0]=1912},
["Maldraxxus Venthyr Scenario"] = {[0]=1689},
["Shattered Grove"] = {[0]=1691},
["Pit of Anguish"] = {[0]=1821, [1]=1820},
["Altar of Domination"] = {[0]=1823},
["Revendreth Scenario"] = {[0]=1688},
["Extractor's Sanatorium"] = {[0]=1822},
["Night Fae Torghast"] = {[0]=1720},
["Path of Wisdom"] = {[0]=1713},
["Queen's Conservatory"] = {[0]=1662},
["Ascension Coliseum"] = {[0]=1711},
["Third Chamber of Kalliope"] = {[0]=1714},
["Etheric Vault"] = {[0]=1649},
["Chill's Reach"] = {[0]=1717},
["Battle of Ardenweald"] = {[0]=2005},
["Korthia"] = {[0]=1961},
["9.1 Skyhold"] = {[0]=1971},
["Caverns of Contemplation"] = {[0]=2006},
["Chamber of the Sigil"] = {[0]=2008},
["Ossuary of the Banished"] = {[0]=1969},
["Seat of the Archon"] = {[0]=2018},
["The Gilded Landing"] = {[0]=2016},
["Gromit Hollow"] = {[0]=2007},
["Spires of Ascension SL"] = {[0]=2017},
["The Crucible"] = {[0]=2042},
["Zereth Mortis"] = {[0]=1970},
["Locrian Esper"] = {[0]=2028},
["Gravid Repose"] = {[0]=2029},
["Nexus of Actualization"] = {[0]=2030},
["Crypts of the Eternal"] = {[0]=2031},
["Catalyst Wards"] = {[0]=2066},
["Blooming Foundry"] = {[0]=2027},
["Tirisfal Glades L"] = {[0]=2070},

--Shadowlands Dungeons--
["Theater of Pain"] = {[0]=1687, [1]=1686, [2]=1685, [3]=1684, [4]=1683},
["De Other Side"] = {[0]=1678, [1]=1677, [2]=1679, [3]=1680},
["Halls of Atonement"] = {[0]=1663, [1]=1664, [2]=1665},
["Plaguefall"] = {[0]=1697, [1]=1674},
["The Necrotic Wake"] = {[0]=1666, [1]=1667, [2]=1668},
["Spires of Ascension"] = {[0]=1692, [1]=1693, [2]=1694, [3]=1695},
["Sanguine Depths"] = {[0]=1676, [1]=1675},
["Mists of Tirna Scithe"] = {[0]=1669},
["Tazavesh, the Veiled Market"] = {[0]=1993, [1]=1996, [2]=1997, [3]=1995, [4]=1992, [5]=1991, [6]=1990, [7]=1989},

--Shadowlands Raids--
["Castle Nathria"] = {[0]=1750, [1]=1745, [2]=1746, [3]=1735, [4]=1744, [5]=1748, [6]=1747, [7]=1755},
["Sanctum of Domination"] = {[0]=1998, [1]=1999, [2]=2000, [3]=2001, [4]=2002, [5]=2003, [6]=2004},

["Sepulcher of the First Ones"] = {[0]=2061, [1]=2048, [2]=2049, [3]=2051, [4]=2052, [5]=2050, [6]=2047, [7]=2055},



---------------------------------------
-------    BATTLE FOR AZEROTH   -------
---------------------------------------

--Kul Tiras
["Boralus"] = {[0]=1161},
["Drustvar"] = {[0]=896, [1]=1045},
["Stormsong Valley"] = {[0]=942, [1]=1179, [2]=1180, [3]=1183, [4]=1182},
["Tiragarde Sound"] = {[0]=895, [1]=1171, [2]=1172, [3]=1185, [4]=1184},
["The Great Sea"] = {[0]=1157},

--Zandalar
["Nazmir"] = {[0]=863},
["Vol'dun"] = {[0]=864, [1]=1009},
["Zuldazar"] = {[0]=862, [1]=1173, [2]=1174, [3]=1176, [4]=1177, [5]=1181},
["Dazar'alor"] = {[0]=1165, [1]=1163, [2]=1164, [3]=1166, [4]=1167},

--BFA Dungeon
["Atal'Dazar"] = {[0]=934, [1]=935},
["Freehold"] = {[0]=936},
["Shrine of the Storm"] = {[0]=1039, [1]=1040},
["Tol Dagor"] = {[0]=974, [1]=975, [2]=976, [3]=977, [4]=978, [5]=979, [6]=980},
["Tol Dagor Isle"] = {[0]=1169},
["King's Rest"] = {[0]=1004},
["Temple of Sethraliss"] = {[0]=1038, [1]=1043},
["Waycrest Manor"] = {[0]=1015, [1]=1016, [2]=1017, [3]=1018, [4]=1029},
["The MOTHERLODE!!"] = {[0]=1010},
["Uldir"] = {[0]=1148, [1]=1149, [2]=1150, [3]=1151, [4]=1152, [5]=1153, [6]=1154, [7]=1155},
["Siege of Boralus"] = {[0]=1162},

--BFA Raid
["Battle of Dazar'alor"] = {[0]=1352, [1]=1353, [2]=1354, [3]=1356, [4]=1357, [5]=1358, [6]=1364, [7]=1367},
["Crucible of Storms"] = {[0]=1363},
["Ring of Containment"] = {[0]=1381},
["The Oblivion Door"] = {[0]=1382},


--Island Expeditions
["Uncharted Island"] = {[0]=1022},
["Un'gol Ruins"] = {[0]=981},
["Havenswood"] = {[0]=1336},


--Patch 8.1
["Tol Dagor Scenario"] = {[0]=1349, [1]=1351, [2]=1350},
["Zandalari Treasury"] = {[0]=1348},
["Arathi Warfront"] = {[0]=1044},
["Darkshore Warfront"] = {[0]=1332},
["Darkshore H"] = {[0]=1333},

--Shadowforge City
["Shadowforge City"] = {[0]=1186},

--Mag'har Allied Race Gorgrond Scenario
["Gorgrond Maghar Scenario"] = {[0]=1170},

--Prison of Ink
["Prison of Ink"] = {[0]=1407},

--Icecrown Citadel Scenario
["Icecrown Citadel S"] = {[0]=1359},

--Patch 8.2.5
["Durotar War Campaign"] = {[0]=1535},
["Orgrimmar War Campaign"] = {[0]=1534},

--Patch 8.3
["Orgrimmar Vision"] = {[0]=1469},
["Stormwind Vision"] = {[0]=1470},
["Uldum New"] = {[0]=1527},
["Vale of Eternal Blossoms New"] = {[0]=1530},
["Crapopolis Scenario"] = {[0]=1531},
["Crapopolis"] = {[0]=1532},
["BWD Scenario"] = {[1]=1538, [0]=1539},
["Halls of Origination S"] = {[0]=1540, [1]=1541, [2]=1542},
["Mogu Palace New"] = {[1]=1544, [0]=1545},
["Mogu Vaults New"] = {[1]=1548, [0]=1549},
["Vale Vision"] = {[0]=1570},
["Uldum Vision"] = {[0]=1571},
["Mechagon City"] = {[0]=1574, [1]=1573},
["Gilneas Scenario"] = {[0]=1577},
["BRD Pet Battle"] = {[0]=1578},
["Ny'alotha, the Waking City"] = {[0]=1596, [1]=1595, [2]=1594, [3]=1597, [4]=1590, [5]=1591, [6]=1592, [7]=1593, [8]=1582, [9]=1581, [10]=1580},
["CoH Scenario"] = {[0]=1604},
["The Frozen Throne"] = {[0]=1602},
["Pools of Power"] = {[0]=1579},



-------------------------------------
-------    EASTERN KINGDOMS   -------
-------------------------------------

["Abyssal Depths"] = {[0]=204},
["Alterac Valley"] = {[0]=91},
["Arathi Highlands"] = {[0]=14},
["Blasted Lands"] = {[0]=17},
["Burning Steppes"] = {[0]=36, [14]=33, [15]=34, [16]=35}, -- bfa alpha 14,15,16 were marked as searing gorge
["The Cape of Stranglethorn"] = {[0]=210},
["Coldridge Valley"] = {[0]=427, [9]=428},
["Deadwind Pass"] = {[0]=42, [21]=41, [22]=43, [23]=44, [24]=45, [27]=46},
["Deeprun Tram"] = {[1]=499, [2]=500},
["Dun Morogh"] = {[0]=27, [6]=28, [7]=29, [10]=30, [11]=31},
["Duskwood"] = {[0]=47},
["Eastern Plaguelands"] = {[0]=23, [20]=24},
["Elwynn Forest"] = {[0]=37, [1]=38, [2]=39, [19]=40},
["Gnomeregan Scenario"] = {[0]=840, [1]=841, [2]=842},
["Gnomeregan Heritage"] = {[0]=1380},
["Hillsbrad Foothills"] = {[0]=25},
["The Hinterlands"] = {[0]=26},
["Ironforge"] = {[0]=87, [1]=1361},
["Kelp'thar Forest"] = {[0]=201},
["Loch Modan"] = {[0]=48},
["New Tinkertown"] = {[0]=469, [8]=470},
["Northern Stranglethorn"] = {[0]=50},
["Northshire"] = {[0]=425, [3]=426},
["Redridge Mountains"] = {[0]=49},
["Searing Gorge"] = {[0]=32,},
["Shimmering Expanse"] = {[0]=205},
["Stormwind City"] = {[0]=84},
["Stranglethorn Vale"] = {[0]=224},
["Swamp of Sorrows"] = {[0]=51},
["Twilight Highlands"] = {[0]=241},
["Vashj'ir"] = {[0]=203},
["Western Plaguelands"] = {[0]=22},
["Westfall"] = {[0]=52, [4]=53, [5]=54, [17]=55},
["Wetlands"] = {[0]=56},

--Kalimdor
["Ahn'Qiraj: The Fallen Kingdom"] = {[0]=327},
["Ammen Vale"] = {[0]=468},
["Ashenvale"] = {[0]=63},
["Azshara"] = {[0]=76},
["Azuremyst Isle"] = {[0]=97, [2]=98, [3]=99},
["Badlands"] = {[0]=15, [18]=16},
["Bloodmyst Isle"] = {[0]=106},
["Camp Narache"] = {[0]=462},
["Darkshore"] = {[0]=62},
["Darkshore Scenario"] = {[0]=1338, [1]=1343},
["Darnassus"] = {[0]=89},
["Deathknell"] = {[0]=465, [12]=466},
["Desolace"] = {[0]=66, [21]=67, [22]=68},
["Durotar"] = {[0]=1, [8]=2, [10]=3, [11]=4, [12]=5, [19]=6},
["Dustwallow Marsh"] = {[0]=70},
["Echo Isles"] = {[0]=463, [9]=464},
["Eversong Woods"] = {[0]=94},
["The Exodar"] = {[0]=103},
["Felwood"] = {[0]=77},
["Feralas"] = {[0]=69},
["Ghostlands"] = {[0]=95, [1]=96},
["Gilneas"] = {[0]=179, [1]=180, [2]=181, [3]=182},
["Gilneas City"] = {[0]=202},
["The Lost Isles"] = {[0]=174, [1]=175, [2]=176, [3]=177, [4]=178},
["Moonglade"] = {[0]=80},
["Mulgore"] = {[0]=7, [6]=8, [7]=9},
["Northern Barrens"] = {[0]=10, [20]=11},
["Orgrimmar"] = {[1]=85, [2]=86},
["Shadowglen"] = {[0]=460},
["Silithus"] = {[0]=81, [13]=82},
["Silvermoon City"] = {[0]=110},
["Silverpine Forest"] = {[0]=21},
["Southern Barrens"] = {[0]=199},
["Stonetalon Mountains"] = {[0]=65},
["Sunstrider Isle"] = {[0]=467},
["Tanaris"] = {[0]=71, [15]=72, [16]=73, [17]=74, [18]=75},
["Teldrassil"] = {[0]=57, [2]=58, [3]=59, [4]=60, [5]=61},
["Thousand Needles"] = {[0]=64},
["Thunder Bluff"] = {[0]=88},
["Tirisfal Glades"] = {[0]=18, [13]=19, [25]=20},
["Uldum"] = {[0]=249},
["Un'Goro Crater"] = {[0]=78, [14]=79},
["Undercity"] = {[0]=90},
["Valley of Trials"] = {[0]=461},
["Winterspring"] = {[0]=83},

--Outlands
["Blade's Edge Mountains"] = {[0]=105},
["Hellfire Peninsula"] = {[0]=100},
["Nagrand"] = {[0]=107},
["Netherstorm"] = {[0]=109},
["Shadowmoon Valley"] = {[0]=104},
["Shattrath City"] = {[0]=111},
["Terokkar Forest"] = {[0]=108},
["Zangarmarsh"] = {[0]=102},

--Northrend
["Borean Tundra"] = {[0]=114},
["Crystalsong Forest"] = {[0]=127},
["Dalaran"] = {[1]=125, [2]=126},
["Dragonblight"] = {[0]=115},
["Grizzly Hills"] = {[0]=116},
["Howling Fjord"] = {[0]=117},
["Hrothgar's Landing"] = {[0]=170},
["Icecrown"] = {[0]=118},
["Sholazar Basin"] = {[0]=119},
["The Storm Peaks"] = {[0]=120},
["Zul'Drak"] = {[0]=121},
 
 --Pandaria
["Dread Wastes"] = {[0]=422},
["Isle of Giants"] = {[0]=507},
["The Jade Forest"] = {[0]=371, [6]=372, [7]=373, [15]=374, [16]=375},
["Krasarang Wilds"] = {[0]=418, [1]=419, [2]=420, [3]=421},
["Kun-Lai Summit"] = {[0]=379, [8]=380, [9]=381, [10]=382, [11]=383, [12]=384, [17]=385, [20]=386, [21]=387},
["Shrine of Seven Stars"] = {[1]=393, [2]=394}, 
["Shrine of Two Moons"] = {[1]=391, [2]=392},
["Timeless Isle"] = {[0]=554, [22]=555},
["Townlong Steppes"] = {[0]=388, [13]=389},
["Vale of Eternal Blossoms"] = {[0]=390, [1]=395, [2]=396},
["Valley of the Four Winds"] = {[0]=376, [14]=377},
["The Veiled Stair"] = {[0]=433, [5]=434},

 --Draenor
["Ashran"] = {[0]=588, [29]=589},
["Frostfire Ridge"] = {[0]=525, [1]=526, [2]=527, [3]=528, [4]=529, [6]=530, [7]=531, [8]=532, [9]=533},
["Frostwall"] = {[0]=590, [26]=585, [27]=586, [28]=587}, 
["Gorgrond"] = {[0]=543, [16]=544, [17]=545, [18]=546, [19]=547, [20]=548, [21]=549},
["Lunarfall"] = {[0]=582, [23]=579, [24]=580, [25]=581},
["Nagrand D"] = {[0]=550, [10]=551, [11]=552, [12]=553},
["Shadowmoon Valley D"] = {[0]=539, [15]=540, [22]=541},
["Shattrath City 2"] = {[0]=594},
["Spires of Arak"] = {[0]=542},
["Stormshield"] = {[0]=622},
["Talador"] = {[0]=535, [13]=536, [14]=537, [30]=538},
["Tanaan Jungle"] = {[0]=534},
["Warspear"] = {[0]=624},

 --Broken Isles/Argus
["Antoran Wastes"] = {[0]=885, [5]=886, [6]=887},
["Azsuna"] = {[0]=630, [17]=631, [18]=632, [19]=633},
["Broken Shore"] = {[0]=646, [1]=647, [2]=648},
["Broken Shore 2"] = {[0]=676},
["Dalaran L"] = {[4]=626, [10]=627, [11]=628, [12]=629,default=10},
["Dalaran MoP"] = {[0]=502, [1]=501},
["Eye of Azshara Map"] = {[0]=790},
["Highmountain"] = {[0]=650, [5]=651, [8]=653, [16]=654, [20]=655, [21]=656, [29]=657, [30]=658, [31]=659, [40]=660},
["Krokuun"] = {[0]=830, [1]=831, [2]=832, [7]=833},
["Eredath"] = {[0]=882, [3]=883, [4]=884},
["Stormheim"] = {[0]=634, [1]=635, [9]=636, [25]=637, [26]=638, [27]=639, [28]=640},
["Suramar"] = {[0]=680, [22]=681, [23]=682, [24]=683, [32]=684, [33]=685, [34]=686, [35]=687, [36]=688, [37]=689, [38]=690, [39]=691, [41]=692, [42]=693},
["Thunder Totem"] = {[0]=750, [6]=652},
["Val'sharah"] = {[0]=641, [13]=642, [14]=643, [15]=644},

--Dungeons
["Old Scholomance"] = {[3]=306, [2]=307, [1]=308, [0]=309},
["Ahn'kahet: The Old Kingdom"] = {[1]=132},
["Ahn'Qiraj"] = {[1]=319, [2]=320, [3]=321},
["The Arcatraz"] = {[1]=269, [2]=270, [3]=271},
["The Arcway"] = {[1]=749},
["Auchenai Crypts"] = {[1]=256, [2]=257},
["Auchindoun"] = {[1]=593},
["Azjol-Nerub"] = {[1]=157, [2]=158, [3]=159},
["The Black Morass"] = {[0]=273},
["Black Rook Hold"] = {[1]=751, [2]=752, [3]=753, [4]=754, [5]=755, [6]=756},
["Blackfathom Deeps"] = {[1]=221, [2]=222, [3]=223},
["Blackrock Caverns"] = {[1]=283, [2]=284},
["Blackrock Depths"] = {[1]=242, [2]=243},
["Blackrock Spire"] = {[1]=250, [2]=251, [3]=252, [4]=253, [5]=254, [6]=255},
["The Blood Furnace"] = {[1]=261},
["Bloodmaul Slag Mines"] = {[1]=573},
["The Botanica"] = {[1]=266},
["Cathedral of Eternal Night"] = {[1]=845, [2]=846, [3]=847, [4]=848, [5]=849},
["Court of Stars"] = {[1]=761, [2]=762, [3]=763},
["The Culling of Stratholme"] = {[1]=130, [2]=131},
["Darkheart Thicket"] = {[0]=733},
["The Deadmines"] = {[1]=291, [2]=292},
["Dire Maul"] = {[0]=234, [1]=235, [2]=236, [3]=237, [4]=238, [5]=239, [6]=240},
["Drak'Tharon Keep"] = {[1]=160, [2]=161},
["End Time"] = {[1]=401, [2]=402, [3]=403, [4]=404, [5]=405, [6]=406},
["The Everbloom"] = {[1]=620, [2]=621},
["Eye of Azshara"] = {[1]=713},
["The Forge of Souls"] = {[1]=183},
["Gate of the Setting Sun"] = {[1]=437, [2]=438},
["Gnomeregan"] = {[1]=226, [2]=227, [3]=228, [4]=229},
["Grim Batol"] = {[1]=293},
["Grimrail Depot"] = {[1]=606, [2]=607, [3]=608, [4]=609},
["Gundrak"] = {[0]=153, [1]=154},
["Halls of Lightning"] = {[1]=138, [2]=139},
["Halls of Origination"] = {[1]=297, [2]=298, [3]=299},
["Halls of Reflection"] = {[1]=185},
["Halls of Stone"] = {[1]=140},
["HoS Heritage"] = {[1]=1375},
["Hellfire Ramparts"] = {[1]=347},
["Helmouth Cliffs"] = {[1]=706, [2]=707, [3]=708},
["Hour of Twilight"] = {[1]=399, [2]=400},
["Iron Docks"] = {[1]=595},
["Lost City of the Tol'vir"] = {[0]=277},
["Magisters' Terrace"] = {[1]=348, [2]=349},
["Mana-Tombs"] = {[1]=272},
["Maraudon"] = {[1]=280, [2]=281},
["The Mechanar"] = {[1]=267, [2]=268},
["Mogu'shan Palace"] = {[1]=453, [2]=454, [3]=455},
["Neltharion's Lair"] = {[0]=731},
["The Nexus"] = {[1]=129},
["The Oculus"] = {[0]=142, [1]=143, [2]=144, [3]=145, [4]=146},
["Old Hillsbrad Foothills"] = {[0]=274},
["Pit of Saron"] = {[0]=184},
["Ragefire Chasm"] = {[1]=213},
["Razorfen Downs"] = {[1]=300},
["Razorfen Kraul"] = {[1]=301},
["Scarlet Halls"] = {[1]=431, [2]=432},
["Scarlet Monastery"] = {[1]=302, [2]=303, [3]=304, [4]=305},
["Scholomance"] = {[1]=476, [2]=477, [3]=478, [4]=479},
["The Seat of the Triumvirate"] = {[0]=903},
["Sethekk Halls"] = {[1]=258, [2]=259},
["Shado-Pan Monastery"] = {[1]=443, [2]=444, [3]=445, [4]=446},
["Shadow Labyrinth"] = {[1]=260},
["Shadowfang Keep"] = {[1]=310, [2]=311, [3]=312, [4]=313, [5]=314, [6]=315, [7]=316},
["Shadowmoon Burial Grounds"] = {[1]=574, [2]=575, [3]=576},
["The Shattered Halls"] = {[1]=246},
["Siege of Niuzao Temple"] = {[1]=457, [2]=458, [3]=459},
["Skyreach"] = {[1]=601, [2]=602},
["The Slave Pens"] = {[1]=265},
["The Steamvault"] = {[1]=263, [2]=264},
["The Stockade"] = {[1]=225},
["The Stonecore"] = {[1]=324},
["Stormstout Brewery"] = {[1]=439, [2]=440, [3]=441, [4]=442},
["Stratholme"] = {[1]=317, [2]=318},
["The Temple of Atal'Hakkar"] = {[1]=220},
["Temple of the Jade Serpent"] = {[1]=429, [2]=430},
["Throne of the Tides"] = {[1]=322, [2]=323},
["Trial of the Champion"] = {[1]=171},
["Uldaman"] = {[1]=230, [2]=231},
["The Underbog"] = {[1]=262},
["Upper Blackrock Spire 2"] = {[1]=616, [2]=617, [3]=618},
["Utgarde Keep"] = {[1]=133, [2]=134, [3]=135},
["Utgarde Pinnacle"] = {[1]=136, [2]=137},
["Vault of the Wardens"] = {[1]=677, [2]=678, [3]=679},
["Violet Hold"] = {[1]=732},
["The Violet Hold"] = {[1]=168},
["The Vortex Pinnacle"] = {[1]=325},
["Wailing Caverns"] = {[1]=279},
["Well of Eternity"] = {[0]=398},
["Zul'Aman"] = {[0]=333},
["Zul'Farrak"] = {[0]=219},
["Zul'Gurub"] = {[0]=337},

["Halls of Valor"] = {[0]=829, [1]=703, [2]=704, [3]=705},
["Vault of the Wardens 2"] = {[1]=710, [2]=711, [3]=712},
["Karazhan L"] = {[1]=809, [2]=810, [3]=811, [4]=812, [5]=813, [6]=814, [7]=815, [8]=816, [9]=817, [10]=818, [11]=819, [12]=820, [13]=821, [14]=822},

--Raids
["Antorus"] = {[0]=909, [1]=910, [2]=911, [3]=912, [4]=913, [5]=914, [6]=915, [7]=916, [8]=917, [9]=918, [10]=919, [11]=920},
["Baradin Hold"] = {[1]=282},
["The Bastion of Twilight"] = {[1]=294, [2]=295, [3]=296},
["Black Temple"] = {[1]=339, [2]=340, [3]=341, [4]=342, [5]=343, [6]=344, [7]=345, [8]=346},
["Blackrock Foundry"] = {[1]=596, [2]=597, [3]=598, [4]=599, [5]=600},
["Blackwing Descent"] = {[1]=285, [2]=286},
["Blackwing Lair"] = {[1]=287, [2]=288, [3]=289, [4]=290},
["Dragon Soul"] = {[1]=409, [2]=410, [3]=411, [4]=412, [5]=413, [6]=414, [7]=415},
["The Emerald Nightmare"] = {[1]=777, [2]=778, [3]=779, [4]=780, [5]=781, [6]=782, [7]=783, [8]=784, [9]=785, [10]=786, [11]=787, [12]=788, [13]=789},
["The Eye of Eternity R"] = {[1]=141},
["Firelands"] = {[0]=367, [1]=368, [3]=369},
["Gruul's Lair"] = {[1]=330},
["Heart of Fear"] = {[1]=474, [2]=475},
["Hellfire Citadel"] = {[1]=661, [2]=662, [3]=663, [4]=664, [5]=665, [6]=666, [7]=667, [8]=668, [9]=669, [10]=670},
["Highmaul"] = {[1]=610, [2]=611, [3]=612, [4]=613, [5]=614, [6]=615},
["Hyjal Summit"] = {[0]=329},
["Icecrown Citadel"] = {[1]=186, [2]=187, [3]=188, [4]=189, [5]=190, [6]=191, [7]=192, [8]=193},
["Karazhan"] = {[1]=350, [2]=351, [3]=352, [4]=353, [5]=354, [6]=355, [7]=356, [8]=357, [9]=358, [10]=359, [11]=360, [12]=361, [13]=362, [14]=363, [15]=364, [16]=365, [17]=366},
["Magtheridon's Lair"] = {[1]=331},
["Mogu'shan Vaults"] = {[1]=471, [2]=472, [3]=473},
["Molten Core"] = {[1]=232},
["Mount Hyjal"] = {[0]=198},
["Naxxramas"] = {[1]=162, [2]=163, [3]=164, [4]=165, [5]=166, [6]=167},
["The Nighthold"] = {[1]=764, [2]=765, [3]=766, [4]=767, [5]=768, [6]=769, [7]=770, [8]=771, [9]=772},
["The Obsidian Sanctum"] = {[0]=155},
["Onyxia's Lair"] = {[1]=248},
["The Ruby Sanctum"] = {[0]=200},
["Ruins of Ahn'Qiraj"] = {[0]=247},
["Serpentshrine Cavern"] = {[1]=332},
["Siege of Orgrimmar"] = {[0]=556, [1]=557, [2]=558, [3]=559, [4]=560, [5]=561, [6]=562, [7]=563, [8]=564, [9]=565, [10]=566, [11]=567, [12]=568, [13]=569, [14]=570},
["Sunwell Plateau"] = {[1]=335, [2]=336},
["Tempest Keep"] = {[1]=334},
["Terrace of Endless Spring"] = {[0]=456},
["Throne of the Four Winds"] = {[1]=328},
["Throne of Thunder"] = {[1]=508, [2]=509, [3]=510, [4]=511, [5]=512, [6]=513, [7]=514, [8]=515},
["Tomb of Sargeras"] = {[1]=850, [2]=851, [3]=852, [4]=853, [5]=854, [6]=855, [7]=856},
["Trial of the Crusader"] = {[1]=172, [2]=173},
["Trial of Valor"] = {[1]=806, [2]=807, [3]=808},
["Ulduar"] = {[1]=147, [2]=148, [3]=149, [4]=150, [5]=151, [6]=152},
["Vault of Archavon"] = {[1]=156},

--Scenarios
["Abyssal Maw"] = {[1]=742, [2]=743},
["Arcatraz L"] = {[1]=889, [2]=890},
["Assault on Broken Shore"] = {[0]=858},
["Assault on Zan'vess"] = {[0]=451},
["Azshara L"] = {[0]=697},
["Azsuna Invasion"] = {[1]=867},
["Azuremyst Scenario"] = {[0]=891, [1]=892, [2]=893, [3]=894},
["Battle on the High Seas"] = {[0]=524},
["The Beyond"] = {[1]=736},
["A Brewing Storm"] = {[0]=447},
["Black Rook Hold B"] = {[0]=793},
["Blood in the Snow"] = {[0]=523},
["Brewmoon Festival"] = {[0]=452},
["Celestial Tournament"] = {[0]=571},
["Chromie Dragonblight"] = {[1]=897, [2]=898, [3]=899, [4]=900, [5]=901, [6]=902},
["The Cove of Nashal"] = {[0]=671},
["Crypt of Forgotten Kings"] = {[1]=481, [2]=482},
["Dagger in the Dark"] = {[0]=488, [1]=489},
["Dark Heart of Pandaria"] = {[0]=520, [1]=521},
["Deadmines Scenario"] = {[1]=835, [2]=836},
["Domination Point"] = {[0]=498},
["Draenei Scenario"] = {[0]=933},
["The Exodar L"] = {[0]=775},
["Felwing Ledge"] = {[0]=861},
["Fields of the Eternal Hunt"] = {[0]=877},
["Gloaming Reef"] = {[0]=758},
["Greenstone Village"] = {[0]=448},
["Hall of Communion"] = {[1]=888},
["Icecrown Citadel L"] = {[1]=698, [2]=699, [3]=700, [4]=701},
["Invasion Point Alluradel"] = {[0]=928},
["Invasion Point Aurinor"] = {[0]=921},
["Invasion Point Bonich"] = {[0]=922},
["Invasion Point Cen'gar"] = {[0]=923},
["Invasion Point Folnuna"] = {[0]=929},
["Invasion Point Meto"] = {[0]=930},
["Invasion Point Naigtal"] = {[0]=924},
["Invasion Point Occularus"] = {[0]=932},
["Invasion Point Sangua"] = {[0]=925},
["Invasion Point Sotanathor"] = {[0]=931},
["Invasion Point Val"] = {[0]=926},
["Invasion Point Vilemus"] = {[0]=927},
["Lightless Cavern"] = {[1]=839},
["Lion's Landing"] = {[0]=486},
["A Little Patience"] = {[0]=487},
["The Lost Glacier"] = {[0]=871},
["The Maelstrom L A"] = {[0]=725},
["Niskara"] = {[0]=748},
["Niskara B"] = {[0]=714},
["The Oculus L"] = {[0]=799, [1]=800, [2]=801, [3]=802, [4]=803},
["Proving Grounds"] = {[1]=480},
["The Secrets of Ragefire"] = {[1]=522},
["Shadowgore Citadel"] = {[1]=740, [2]=741},
["Shrine of the Eclipse"] = {[1]=973},
["Skywall"] = {[1]=716},
["Stratholme Battle Pet"] = {[0]=1505},
["Telogrus Rift"] = {[0]=971},
["Temple of the Jade Serpent L"] = {[1]=791, [2]=792},
["Terrace of Endless Spring L"] = {[0]=728},
["Theramore's Fall"] = {[0]=483},
["Theramore's Fall H"] = {[0]=416},
["Tol Barad L"] = {[0]=773, [1]=774},
["Ulduar L"] = {[1]=744, [2]=745, [3]=746},
["Unga Ingoo"] = {[0]=450},
["Ursoc's Lair"] = {[0]=757},
["Vindicaar Scenario"] = {[1]=940, [2]=941},
["Void Elf Scenario"] = {[0]=972},
["Helmouth Shallows"] = {[0]=694},				-- Hunter Survival Legion artifact weapon scenario map
["Thunder King's Citadel"]={[0]=518},
["Firelands Scenario"]={[0]=1958, [1]=1959},
["Crumbling Depths"]={[0]=729},					-- Shaman Enhancement Legion artifact scenario map



--Battlegrounds
["Arathi Basin"] = {[0]=93},
["Eye of the Storm"] = {[0]=112},
["Isle of Conquest"] = {[0]=169},
["Silvershard Mines"] = {[1]=423},
["Strand of the Ancients"] = {[0]=128},
["Twin Peaks"] = {[0]=206},
["Warsong Gulch"] = {[0]=92},
["Deephaul Ravine"]={ [0]=2345, },

--Instanced Zones/Misc
["Assault on the Dark Portal"] = {[0]=577, [1]=578},
["Azuremyst Isle L"] = {[0]=776},
["Black Temple L"] = {[1]=759},
["Brawl'gar Arena"] = {[1]=503},
["Darkmoon Island"] = {[0]=407, [1]=408},
["Deepholm"] = {[0]=207, [1]=208, [2]=209},
["The Fel Hammer"] = {[0]=878, [1]=879, [2]=880},
["Firelands L"] = {[0]=738},
["Helheim"] = {[0]=649},
["Highmountain Invasion"] = {[1]=869, [2]=870},
["Kezan"] = {[0]=194, [5]=195, [6]=196, [7]=197},
["Isle of Quel'Danas"] = {[0]=122},
["Isle of Thunder"] = {[0]=504, [1]=505, [2]=506},
["The Maelstrom"] = {[0]=276}, -- deepholm intro scenario, among others
["Malorne's Nightmare"] = {[0]=760},
["Mardum, the Shattered Abyss C"] = {[0]=672, [1]=673, [2]=674, [3]=675},
["Molten Front"] = {[0]=338},
["Pit of Saron DK"] = {[0]=823},
["Plaguelands: The Scarlet Enclave"] = {[0]=124},
["The Ruby Sanctum DK"] = {[0]=860},
["Ruins of Gilneas"] = {[0]=217},
["Ruins of Gilneas City"] = {[0]=218},
["Stormheim Invasion"] = {[1]=865, [2]=866},
["Tol Barad"] = {[0]=244},
["Tol Barad Peninsula"] = {[0]=245},
["Val'sharah Invasion"] = {[1]=868},
["The Violet Hold L"] = {[1]=723},
["The Vortex Pinnacle L"] = {[1]=737},
["The Wandering Isle"] = {[0]=378},
["The Wandering Isle L"] = {[0]=709},
["Wintergrasp"] = {[0]=123},
["WC Pet Battle"] = {[0]=825},

["Isle of Thunder Scenario"] = {[0]=516, [1]=517, [2]=517},

--Legion Order Halls
["Dreadscar Rift"] = {[0]=717},
["The Dreamgrove"] = {[0]=747},
["Emerald Dreamway"] = {[0]=715},
["Hall of the Guardian"] = {[1]=734, [2]=735},
["The Maelstrom L"] = {[0]=726},
["Mardum, the Shattered Abyss"] = {[1]=719, [2]=720, [3]=721},
["Netherlight Temple"] = {[1]=702},
["Skyhold"] = {[1]=695},
["Trueshot Lodge"] = {[0]=739},
["Scarlet Monastery L"] = {[0]=804, [1]=805},
["Stormstout Brewery Monk"] = {[0]=872, [1]=873, [2]=874},
['Throne of the Four Winds Scenario'] = {[1]=857},






['Dreadscar Rift Warlock Intro'] = {[0]=718},	-- Warlock Legion Intro Scenario





["Atul'Aman"] = {[0]=1009},
["Greymane Manor"] = {[0]=1030, [1]=1031},
["Islands"] = {[0]=824},
["Molten Cay"] = {[0]=1035},
["Ruins of Lordaeron"] = {[0]=908},
["Seething Shore"] = {[0]=907},
["Silithus Brawl"] = {[0]=904},
["Skittering Hollow"] = {[0]=1032},
["The Dread Chain"] = {[0]=1036},
["The Rotting Mire"] = {[0]=1033},
["The Underrot"] = {[0]=1041, [1]=1042},
["Tropical Isle 8.0"] = {[0]=939},
["Verdant Wilds"] = {[0]=1034},
["Whispering Reef"] = {[0]=1037},
["Thros, The Blighted Lands"] = {[0]=1045},
["Tirisfal Glades BFA"] = {[0]=997},
["Undercity BFA"] = {[0]=998},
["Blackrock Scenario"] = {[0]=1159, [1]=1160},
["Arathi Highlands BFA"] = {[0]=1158},
["Stormwind City BFA"] = {[0]=1012},
["Stockcades Scenario"] = {[0]=1013},
["Stratholme Scenario"] = {[0]=827},

["The Nexus Scenario"] = {[0]=370},
--['924'] = {[1]=501, [2]=502}, -- Dalaran L
['The Arcway Scenario'] = {[0]=798}, -- The Arcway 2
['1127'] = {[1]=825},
['The Eye of Eternity'] = {[1]=881},

-- 8.2
["Orgrimmar Collapse Scenario"] = {[0]=1499},
["Mechagon Island"] = {[0]=1462},
["Baine Rescue"] = {[0]=1479},
["Mechagon"] = {[0]=1497, [1]=1494, [2]=1491, [3]=1490},
["Nazjatar"] = {[0]=1355, [10]=1524},
["The Eternal Palace"] = {[8]=1528, [7]=1512, [6]=1513, [5]=1514, [4]=1516, [3]=1517, [2]=1518, [1]=1519, [0]=1520},
["Chamber of Heart"] = {[0]=1021, [1]=1473, [2]=2321},
["The Emerald Dreamway"] = {[0]=1471, [1]=1475},
["The Dragon's Spine"] = {[0]=1472},
["The Maelstrom HoA"] = {[0]=1474},
["Vermillion Redoubt"] = {[0]=1476},
}










