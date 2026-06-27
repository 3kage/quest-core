-- Bundled QuestCore guide
if not QuestCore then return end

QC.Poi.Sets.PoiRareCTWW={
{
rare=[[Scrapbeak]],
spot="Undermine/0 68.50,80.78",
quest=84917,
item=234419,
steps=[[
step
kill Scrapbeak##230931 |q 84917 |goto Undermine/0 68.50,80.78 |future
]],
},
{
rare=[[Ratspit]],
spot="Undermine/0 25.24,36.75",
quest=84918,
steps=[[
step
click Sewer Entrance |goto Undermine/0 25.45,34.98 < 7 |walk
kill Ratspit##230934 |q 84918 |goto Undermine/0 25.24,36.75 |future
|tip Inside the sewer.
]],
},
{
rare=[[Tally Doublespeak]],
spot="Undermine/0 37.68,44.48",
quest=84919,
item=234420,
steps=[[
step
kill Tally Doublespeak##230940 |q 84919 |goto Undermine/0 37.68,44.48 |future
]],
},
{
rare=[[V.V. Goosworth]],
spot="Undermine/0 36.87,78.15",
quest=84920,
steps=[[
step
kill V.V. Goosworth##230946 |q 84920 |goto Undermine/0 36.87,78.15 |future
]],
},
{
rare=[[Thwack]],
spot="Undermine/0 54.01,50.23",
quest=84921,
item=234420,
steps=[[
step
kill Thwack##230951 |q 84921 |goto Undermine/0 54.01,50.23 |future
]],
},
{
rare=[[S.A.L.]],
spot="Undermine/0 41.92,25.63",
quest=84922,
item=234381,
steps=[[
step
kill S.A.L.##230979 |q 84922 |goto Undermine/0 41.92,25.63 |future
]],
},
{
rare=[[Nitro]],
spot="Undermine/0 46.91,55.65",
quest=84926,
item=235324,
steps=[[
step
kill Nitro##230995 |q 84926 |goto Undermine/0 46.91,55.65 |future
]],
},
{
rare=[[Candy Stickemup]],
spot="Undermine/0 42.22,77.35",
quest=84927,
steps=[[
step
kill Candy Stickemup##231012 |q 84927 |goto Undermine/0 42.22,77.35 |future
]],
},
{
rare=[[Grimewick]],
spot="Undermine/0 67.33,33.53",
quest=84928,
steps=[[
step
kill Grimewick##230995 |q 84928 |goto Undermine/0 67.33,33.53 |future
]],
},
{
rare=[[Swigs Farsight]],
spot="Undermine/0 41.35,43.57",
quest=85004,
steps=[[
step
kill Swigs Farsight##231288 |q 85004 |goto Undermine/0 41.35,43.57 |future
]],
},
{
rare=[[Ephemeral Agent Lathyd]],
spot="Undermine/0 26.51,68.30",
quest=84877,
steps=[[
step
kill Ephemeral Agent Lathyd##230746 |q 84877 |goto Undermine/0 26.51,68.30 |future
]],
},
{
rare=[[The Junk-Wall]],
spot="Undermine/0 63.35,49.75",
quest=84884,
item=234419,
steps=[[
step
map Undermine/0
path follow smart; loop off; ants curved; dist 20
path	Undermine/0 63.35,49.75	Undermine/0 63.57,49.89	Undermine/0 64.08,50.16	Undermine/0 64.00,52.91
kill The Junk-Wall##230793 |quest 84884 |future
]],
},
{
rare=[[Slugger the Smart]],
spot="Undermine/0 52.35,41.07",
quest=84895,
steps=[[
step
kill Slugger the Smart##230800 |q 84895 |goto Undermine/0 52.35,41.07 |future
]],
},
{
rare=[[Chief Foreman Gutso]],
spot="Undermine/0 58.48,86.43",
quest=84907,
steps=[[
step
kill Chief Foreman Gutso##230828 |q 84907 |goto Undermine/0 58.48,86.43 |future
]],
},
{
rare=[[Flyboy Snooty]],
spot="Undermine/0 60.58,09.89",
quest=84911,
steps=[[
step
kill Flyboy Snooty##230840 |q 84911 |goto Undermine/0 60.58,09.89 |future
]],
},
{
rare=[[Giovante]],
spot="Undermine/0 32.02,76.52",
quest=86307,
item=235318,
steps=[[
step
Reach Renown Level 6 with The Cartels of Undermine |complete factionrenown(2653) >= 6
|tip Complete daily quests, weekly quests, and zone quests in the Undermine to gain renown.
step
kill Giovante##234499 |q 86307 |goto Undermine/0 32.02,76.52 |future
]],
},
{
rare=[[Scrapchewer]],
spot="Undermine/0 57.20,78.60",
quest=86431,
item=235829,
steps=[[
step
Reach Renown Level 6 with The Cartels of Undermine |complete factionrenown(2653) >= 6
|tip Complete daily quests, weekly quests, and zone quests in the Undermine to gain renown.
step
Ally with the Venture Company |complete completedq(84953,86431)
|tip Choose the Venture Company for your weekly allegiance.
step
kill Scrapchewer##233471 |q 86431 |goto Undermine/0 57.20,78.60 |future
]],
},
{
rare=[[Volstrike the Charged]],
spot="Undermine/0 64.16,25.56",
quest=86428,
item=235827,
steps=[[
step
Reach Renown Level 6 with The Cartels of Undermine |complete factionrenown(2653) >= 6
|tip Complete daily quests, weekly quests, and zone quests in the Undermine to gain renown.
step
kill Volstrike the Charged##233472 |q 86428 |goto Undermine/0 64.16,25.56 |future
]],
},
{
rare=[[Jix'ak the Crazed]],
spot="Azj-Kahet/1 67.45,83.18",
quest=82034,
steps=[[
step
kill Jix'ak the Crazed##216048 |q 82034 |goto Azj-Kahet/1 67.45,83.18 |future
]],
},
{
rare=[[The Oozekhan]],
spot="Azj-Kahet/1 61.93,89.73",
quest=82035,
steps=[[
step
kill The Oozekhan##216049 |q 82035 |goto Azj-Kahet/1 61.93,89.73 |future
]],
},
{
rare=[[Harvester Qixt]],
spot="Azj-Kahet/1 64.76,86.91",
quest=82036,
steps=[[
step
kill Harvester Qixt##216050 |q 82036 |goto Azj-Kahet/1 64.76,86.91 |future
]],
},
{
rare=[[Coalesced Monstrosity]],
spot="The Ringing Deeps/0 57.90,38.13",
quest=81511,
steps=[[
step
kill Coalesced Monstrosity##220266 |q 81511 |goto The Ringing Deeps/0 53.74,38.13 |future
]],
},
{
rare=[[Candleflyer Captain]],
spot="The Ringing Deeps/0 66.00,28.40",
quest=80505,
item=223360,
steps=[[
step
kill Candleflyer Captain##220276 |q 80505 |goto The Ringing Deeps/0 61.84,28.40 |future
|tip It patrols the area.
]],
},
{
rare=[[Terror of the Forge]],
spot="The Ringing Deeps/0 46.70,12.09",
quest=80507,
steps=[[
step
kill Terror of the Forge##220271 |q 80507 |goto The Ringing Deeps/0 42.54,12.09 |future
|tip Walking in the lava.
]],
},
{
rare=[[Charmonger]],
spot="The Ringing Deeps/0 41.36,16.92",
quest=81562,
steps=[[
step
kill Charmonger##220267 |q 81562 |goto The Ringing Deeps/0 37.20,16.92 |future
]],
},
{
rare=[[Deepflayer Broodmother]],
spot="The Ringing Deeps/0 55.06,08.43",
quest=80536,
steps=[[
step
kill Deepflayer Broodmother##220286 |q 80536 |goto The Ringing Deeps/0 50.90,8.43 |future
|tip It flies around counter-clockwise.
]],
},
{
rare=[[Aquellion]],
spot="The Ringing Deeps/0 49.55,66.19",
quest=80557,
item=223340,
steps=[[
step
kill Aquellion##220274 |q 80557 |goto The Ringing Deeps/0 45.39,66.19 |future
]],
},
{
rare=[[Lurker of the Deeps]],
spot="The Ringing Deeps/0 12.00,90.00",
quest=81633,
steps=[[
step
kill Lurker of the Deeps##220285 |q 81633 |goto The Ringing Deeps/0 7.84,90.00 |future
]],
},
{
rare=[[Rampaging Blight]],
spot="The Ringing Deeps/0 57.02,54.80",
quest=81563,
item=223401,
steps=[[
step
kill Rampaging Blight##220273 |q 81563 |goto The Ringing Deeps/0 52.86,54.80 |future
]],
},
{
rare=[[Trungal]],
spot="The Ringing Deeps/0 71.65,46.29",
quest=80574,
steps=[[
step
kill Root of Trungal##220615+
|tip Kill them to spawn Trungal.
kill Trungal##220268 |q 80574 |goto The Ringing Deeps/0 67.49,46.29 |future
]],
},
{
rare=[[Spore-infused Shalewing]],
spot="The Ringing Deeps/0 68.22,43.78",
quest=81652,
steps=[[
step
kill Spore-infused Shalewing##221217 |q 81652 |goto The Ringing Deeps/0 64.06,43.78 |future
|tip It flies around.
]],
},
{
rare=[[Deathbound Husk]],
spot="The Ringing Deeps/0 10.00,90.00",
quest=81566,
steps=[[
step
kill Deathbound Husk##220272 |q 81566 |goto The Ringing Deeps/0 5.84,90.00 |future
]],
},
{
rare=[[Hungerer of the Deeps]],
spot="The Ringing Deeps/0 65.36,49.49",
quest=81648,
steps=[[
step
kill Hungerer of the Deeps##221199 |q 81648 |goto The Ringing Deeps/0 61.20,49.49 |future
]],
},
{
rare=[[Disturbed Earthgorger]],
spot="The Ringing Deeps/0 67.08,52.62",
quest=80003,
steps=[[
step
kill Disturbed Earthgorger##218393 |q 80003 |goto The Ringing Deeps/0 62.92,52.62 |future
]],
},
{
rare=[[Cragmund]],
spot="The Ringing Deeps/0 50.86,46.51",
quest=80560,
item=221205,
steps=[[
step
kill Cragmund##220269 |q 80560 |goto The Ringing Deeps/0 46.70,46.51 |future
]],
},
{
rare=[[Kelpmire]],
spot="The Ringing Deeps/0 47.07,46.96",
quest=81485,
steps=[[
step
kill Kelpmire##220287 |q 81485 |goto The Ringing Deeps/0 42.91,46.96 |future
]],
},
{
rare=[[Automaxor]],
spot="The Ringing Deeps/0 52.59,19.91",
quest=81674,
steps=[[
step
kill Automaxor##220265 |q 81674 |goto The Ringing Deeps/0 48.43,19.91 |future
]],
},
{
rare=[[King Splash]],
spot="The Ringing Deeps/0 42.77,35.08",
quest=80547,
item=223352,
steps=[[
step
kill King Splash##220275 |q 80547 |goto The Ringing Deeps/0 38.61,35.08 |future
]],
},
{
rare=[[Zilthara]],
spot="The Ringing Deeps/0 52.02,26.57",
quest=80506,
steps=[[
step
kill Zilthara##220270 |q 80506 |goto The Ringing Deeps/0 47.86,26.57 |future
]],
},
{
rare=[[Kereke]],
spot="Isle of Dorn/0 26.00,53.80",
quest=82204,
item=226111,
steps=[[
step
kill Kereke##222378 |q 82204 |goto Isle of Dorn/0 26.00,53.80 |future
]],
},
{
rare=[[Flamekeeper Graz]],
spot="Isle of Dorn/0 63.99,40.55",
quest=81905,
item=221244,
steps=[[
step
kill Flamekeeper Graz##219279 |q 81905 |goto Isle of Dorn/0 63.99,40.55 |future
]],
},
{
rare=[[Sandres the Relicbearer]],
spot="Isle of Dorn/0 62.77,68.42",
quest=79685,
item=223376,
steps=[[
step
kill Sandres the Relicbearer##217534 |q 79685 |goto Isle of Dorn/0 62.77,68.42 |future
]],
},
{
rare=[[Kronolith, Might of the Mountain]],
spot="Isle of Dorn/0 48.20,27.03",
quest=81902,
steps=[[
step
kill Kronolith Might of the Mountain##219270 |q 81902 |goto Isle of Dorn/0 48.20,27.03 |future
]],
},
{
rare=[[Sweetspark the Oozeful]],
spot="Isle of Dorn/0 69.85,38.47",
quest=81922,
steps=[[
step
kill Sweetspark the Oozeful##220883 |q 81922 |goto Isle of Dorn/0 69.85,38.47 |future
]],
},
{
rare=[[Zovex]],
spot="Isle of Dorn/0 26.00,54.00",
quest=82203,
item=226117,
steps=[[
step
kill Zovex##219284 |q 82203 |goto Isle of Dorn/0 26.00,54.00 |future
]],
},
{
rare=[[Rotfist]],
spot="Isle of Dorn/0 26.00,54.01",
quest=82205,
steps=[[
step
kill Rotfist##222380 |q 82205 |goto Isle of Dorn/0 26.00,54.01 |future
]],
},
{
rare=[[Emperor Pitfang]],
spot="Isle of Dorn/0 47.94,60.14",
quest=81895,
item=223345,
steps=[[
step
kill Emperor Pitfang##219265 |q 81895 |goto Isle of Dorn/0 47.94,60.14 |future
|tip At the bottom of the cave.
]],
},
{
rare=[[Rustul Titancap]],
spot="Isle of Dorn/0 37.00,75.20",
quest=78619,
steps=[[
step
kill Rustul Titancap##213115 |q 78619 |goto Isle of Dorn/0 37.00,75.20 |future
]],
},
{
rare=[[Alunira]],
spot="Isle of Dorn/0 22.98,58.29",
quest=82196,
item=223270,
steps=[[
step
kill Alunira##219281 |q 82196 |goto Isle of Dorn/0 22.98,58.29 |future
]],
},
{
rare=[[Gar'loc]],
spot="Isle of Dorn/0 53.34,80.06",
quest=81899,
steps=[[
step
kill Gar'loc##219268 |q 81899 |goto Isle of Dorn/0 53.34,80.06 |future
]],
},
{
rare=[[Tephratennae]],
spot="Isle of Dorn/0 72.04,38.81",
quest=81923,
steps=[[
step
kill Tephratennae##221126 |q 81923 |goto Isle of Dorn/0 72.04,38.81 |future
]],
},
{
rare=[[Matriarch Charfuria]],
spot="Isle of Dorn/0 73.00,40.10",
quest=81921,
steps=[[
step
kill Matriarch Charfuria##220890 |q 81921 |goto Isle of Dorn/0 73.00,40.10 |future
]],
},
{
rare=[[Malfunctioning Spire]],
spot="Isle of Dorn/0 31.49,55.29",
quest=81891,
steps=[[
step
kill Malfunctioning Spire##220068 |q 81891 |goto Isle of Dorn/0 31.49,55.29 |future
]],
},
{
rare=[[Rowdy Rubble]],
spot="Isle of Dorn/0 46.00,31.80",
quest=81515,
steps=[[
step
kill Rowdy Rubble##220846 |q 81515 |goto Isle of Dorn/0 46.00,31.80 |future
]],
},
{
rare=[[Warphorn]],
spot="Isle of Dorn/0 57.00,34.60",
quest=81894,
item=223341,
steps=[[
step
kill Warphorn##219263 |q 81894 |goto Isle of Dorn/0 57.00,34.60 |future
]],
},
{
rare=[[Bloodmaw]],
spot="Isle of Dorn/0 41.13,76.79",
quest=81893,
item=223349,
steps=[[
step
kill Bloodmaw##219264 |q 81893 |goto Isle of Dorn/0 41.13,76.79 |future
]],
},
{
rare=[[Clawbreaker K'zithix]],
spot="Isle of Dorn/0 76.40,36.20",
quest=81920,
steps=[[
step
kill Clawbreaker K'zithix##221128 |q 81920 |goto Isle of Dorn/0 76.40,36.20 |future
]],
},
{
rare=[[Springbubble]],
spot="Isle of Dorn/0 58.76,60.68",
quest=81892,
item=223356,
steps=[[
step
kill Springbubble##219262 |q 81892 |goto Isle of Dorn/0 58.76,60.68 |future
]],
},
{
rare=[[Shallowshell the Clacker]],
spot="Isle of Dorn/0 74.08,27.56",
quest=81903,
steps=[[
step
kill Shallowshell the Clacker##219278 |q 81903 |goto Isle of Dorn/0 74.08,27.56 |future
]],
},
{
rare=[[Plaguehart]],
spot="Isle of Dorn/0 50.87,69.84",
quest=81897,
item=221213,
steps=[[
step
kill Plaguehart##219267 |q 81897 |goto Isle of Dorn/0 50.87,69.84 |future
]],
},
{
rare=[[Tempest Lord Incarnus]],
spot="Isle of Dorn/0 57.46,16.25",
quest=81901,
steps=[[
step
kill Tempest Lord Incarnus##219269 |q 81901 |goto Isle of Dorn/0 57.46,16.25 |future
]],
},
{
rare=[[Escaped Cutthroat]],
spot="Isle of Dorn/0 25.78,45.03",
quest=81907,
steps=[[
step
kill Escaped Cutthroat##219266 |q 81907 |goto Isle of Dorn/0 25.78,45.03 |future
]],
},
{
rare=[[Twice-Stinger the Wretched]],
spot="Isle of Dorn/0 57.07,22.79",
quest=81904,
steps=[[
step
kill Twice-Stinger the Wretched##219271 |q 81904 |goto Isle of Dorn/0 57.07,22.79 |future
]],
},
{
rare=[[The Groundskeeper]],
spot="Nerub'ar/0 36.40,41.60",
quest=81634,
steps=[[
step
kill The Groundskeeper##216038 |q 81634 |goto Nerub'ar/0 36.40,41.60 |future
]],
},
{
rare=[[Xishorr]],
spot="Nerub'ar/0 67.16,58.40",
quest=81701,
steps=[[
step
kill Xishorr##216039 |q 81701 |goto Nerub'ar/0 67.16,58.40 |future
]],
},
{
rare=[[Moth'ethk]],
spot="Hallowfall/0 63.40,28.80",
quest=82557,
item=211973,
steps=[[
step
kill Moth'ethk##206203 |q 82557 |goto Hallowfall/0 63.40,28.80 |future
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 68.12,30.14",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 68.12,30.14 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 51.42,70.80",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 51.42,70.80 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Sir Alastair Purefire]],
spot="Hallowfall/0 35.95,35.46",
quest=81853,
steps=[[
step
kill Sir Alastair Purefire##221708 |q 81853 |goto Hallowfall/0 35.95,35.46 |future
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 54.83,36.79",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 54.83,36.79 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 61.38,07.53",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 61.38,07.53 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Deepfiend Azellix]],
spot="Hallowfall/0 72.00,64.20",
quest=80011,
steps=[[
step
kill Deepfiend Azellix##218458 |q 80011 |goto Hallowfall/0 72.00,64.20 |future
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 37.20,71.91",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 37.20,71.91 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Magpie]],
spot="Hallowfall/0 60.42,60.22",
achieve="40625/68975",
steps=[[
step
kill Magpie##220720 |achieve 40625/68975 |goto Hallowfall/0 60.42,60.22 |future
]],
},
{
rare=[[Murkspike]],
spot="Hallowfall/0 62.40,13.20",
quest=82565,
steps=[[
step
kill Murkspike##220771 |q 82565 |goto Hallowfall/0 62.40,13.20 |future
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 50.51,48.57",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 50.51,48.57 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 32.67,39.62",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 32.67,39.62 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Horror of the Shallows]],
spot="Hallowfall/0 43.41,09.90",
quest=81836,
item=221211,
steps=[[
step
kill Horror of the Shallows##221668 |q 81836 |goto Hallowfall/0 43.41,09.90 |future
|tip It patrols a large area.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 62.82,38.57",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 62.82,38.57 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 72.80,41.52",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 72.80,41.52 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Funglour]],
spot="Hallowfall/0 36.68,71.72",
quest=81881,
item=223377,
steps=[[
step
kill Funglour##221767 |q 81881 |goto Hallowfall/0 36.68,71.72 |future
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 58.03,48.85",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 58.03,48.85 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 37.74,45.85",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 37.74,45.85 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Sloshmuck]],
spot="Hallowfall/0 73.40,52.59",
quest=79271,
steps=[[
step
kill Sloshmuck##215805 |q 79271 |goto Hallowfall/0 73.40,52.59 |future
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 42.73,31.33",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 42.73,31.33 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 47.01,55.04",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 47.01,55.04 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Strength of Beledar]],
spot="Hallowfall/0 43.62,29.93",
quest=81849,
steps=[[
step
kill Strength of Beledar##221690 |q 81849 |goto Hallowfall/0 43.62,29.93 |future
]],
},
{
rare=[[The Perchfather]],
spot="Hallowfall/0 44.00,16.20",
quest=81791,
steps=[[
step
kill The Perchfather##221648 |q 81791 |goto Hallowfall/0 44.00,16.20 |future
]],
},
{
rare=[[Duskshadow]],
spot="Hallowfall/0 64.40,18.80",
quest=82562,
steps=[[
step
kill Duskshadow##221179 |q 82562 |goto Hallowfall/0 64.40,18.80 |future
]],
},
{
rare=[[Lytfang the Lost]],
spot="Hallowfall/0 23.00,59.22",
quest=81756,
steps=[[
step
kill Lytfang the Lost##221534 |q 81756 |goto Hallowfall/0 23.00,59.22 |future
]],
},
{
rare=[[Deathtide]],
spot="Hallowfall/0 44.74,42.41",
quest=81880,
item=223921,
steps=[[
step
kill Deathtide##221753 |q 81880 |goto Hallowfall/0 44.74,42.41 |future
|tip Create an {o}Ominous Offering{} to summon it.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 38.38,24.74",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 38.38,24.74 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 48.85,31.97",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 48.85,31.97 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 72.06,65.66",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 72.06,65.66 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 25.82,57.54",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 25.82,57.54 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 45.25,25.69",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 45.25,25.69 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 71.97,65.58",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 71.97,65.58 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[The Taskmaker]],
spot="Hallowfall/0 56.46,68.97",
quest=80009,
steps=[[
step
kill The Taskmaker##218444 |q 80009 |goto Hallowfall/0 56.46,68.97 |future
]],
},
{
rare=[[Beledar's Spawn]],
spot="Hallowfall/0 60.45,18.62",
quest=81763,
item=223315,
steps=[[
step
kill Beledar's Spawn##207802 |q 81763 |goto Hallowfall/0 60.45,18.62 |future
|tip Buy and use {o}Beledar's Attunement{} from the {o}Hallowfall Arathi{} quartermaster to access.
]],
},
{
rare=[[Deathpetal]],
spot="Hallowfall/0 63.64,32.04",
quest=82559,
item=211967,
steps=[[
step
kill Deathpetal##206184 |q 82559 |goto Hallowfall/0 63.64,32.04 |future
]],
},
{
rare=[[Grimslice]],
spot="Hallowfall/0 31.20,54.64",
quest=81761,
item=223397,
steps=[[
step
kill Grimslice##221551 |q 81761 |goto Hallowfall/0 31.20,54.64 |future
|tip It patrols clockwise.
]],
},
{
rare=[[Ixlorb the Spinner]],
spot="Hallowfall/0 57.00,64.20",
quest=80006,
steps=[[
step
kill Ixlorb the Spinner##218426 |q 80006 |goto Hallowfall/0 57.00,64.20 |future
]],
},
{
rare=[[Abyssal Devourer]],
spot="Azj-Kahet/0 47.20,43.20",
quest=81695,
item=223390,
steps=[[
step
kill Abyssal Devourer##216031 |q 81695 |goto Azj-Kahet/0 47.20,43.20 |future
]],
},
{
rare=[[Enduring Gutterface]],
spot="Azj-Kahet/0 58.05,62.33",
quest=81707,
steps=[[
step
kill Enduring Gutterface##216045 |q 81707 |goto Azj-Kahet/0 58.05,62.33 |future
]],
},
{
rare=[[Webspeaker Grik'ik]],
spot="Azj-Kahet/0 61.24,27.31",
quest=81699,
steps=[[
step
kill Webspeaker Grik'ik##216041 |q 81699 |goto Azj-Kahet/0 61.24,27.31 |future
]],
},
{
rare=[[Kaheti Silk Hauler]],
spot="Azj-Kahet/0 62.49,28.77",
quest=81702,
steps=[[
step
kill Kaheti Silk Hauler##221327 |q 81702 |goto Azj-Kahet/0 62.49,28.77 |future
]],
},
{
rare=[[Rhak'ik]],
spot="Azj-Kahet/0 43.76,39.53",
quest=81694,
steps=[[
step
kill Rhak'ik##221032 |q 81694 |goto Azj-Kahet/0 43.76,39.53 |future
|tip It patrols with Khak'ik.
]],
},
{
rare=[[Cha'tak]],
spot="Azj-Kahet/0 70.73,21.46",
quest=81704,
steps=[[
step
kill Cha'tak##216042 |q 81704 |goto Azj-Kahet/0 70.73,21.46 |future
|tip Inside the cave behind the waterfall.
]],
},
{
rare=[[XT-Minecrusher 8700]],
spot="Azj-Kahet/0 76.58,57.80",
quest=81703,
steps=[[
step
kill XT-Minecrusher 8700##216034 |q 81703 |goto Azj-Kahet/0 76.58,57.80 |future
]],
},
{
rare=[[Tka'ktath]],
spot="Azj-Kahet/0 62.79,66.18",
quest=82289,
item=225952,
steps=[[
step
kill Tka'ktath##216046 |q 82289 |goto Azj-Kahet/0 62.79,66.18 |future
]],
},
{
rare=[[Maddened Siegebomber]],
spot="Azj-Kahet/0 68.87,64.80",
quest=81706,
steps=[[
step
kill Maddened Siegebomber##216044 |q 81706 |goto Azj-Kahet/0 68.87,64.80 |future
|tip It patrols around the area fighting other mobs.
]],
},
{
rare=[[Vilewing]],
spot="Azj-Kahet/0 34.57,41.06",
quest=81700,
item=223386,
steps=[[
step
kill Vilewing##216037 |q 81700 |goto Azj-Kahet/0 34.57,41.06 |future
]],
},
{
rare=[[Umbraclaw Matra]],
spot="Azj-Kahet/0 85.00,85.00",
quest=82037,
steps=[[
step
kill Umbraclaw Matra##216051 |quest 82037 |future
UNKNOWN LOCATION
]],
},
{
rare=[[Ahg'zagall]],
spot="Azj-Kahet/0 37.94,42.85",
quest=78905,
steps=[[
step
kill Ahg'zagall##214151 |q 78905 |goto Azj-Kahet/0 37.94,42.85 |future
]],
},
{
rare=[[Deepcrawler Tx'kesh]],
spot="Azj-Kahet/0 87.00,85.00",
quest=82077,
steps=[[
step
kill Deepcrawler Tx'kesh##222624 |q 82077 |goto Azj-Kahet/0 87.00,85.00 |future
]],
},
{
rare=[[Monstrous Lasharoth]],
spot="Azj-Kahet/0 69.99,69.20",
quest=81705,
steps=[[
step
kill Monstrous Lasharoth##216043 |q 81705 |goto Azj-Kahet/0 69.99,69.20 |future
]],
},
}
