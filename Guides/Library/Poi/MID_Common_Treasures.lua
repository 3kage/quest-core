-- Bundled QuestCore guide
if not QuestCore then return end

QC.Poi.Sets.PoiTreasureCMID={
{
treasure=[[Triple-Locked Safebox]],
spot="Eversong Woods M 38.89,76.06",
quest=93456,
steps=[[
step
click Triple-Locked Safebox |q 93456 |goto Eversong Woods M 38.89,76.06 |future
]],
},
{
treasure=[[Gift of the Phoenix]],
spot="Eversong Woods M 40.96,19.45",
quest=93544,
item=263211,
steps=[[
step
click Gift of the Phoenix |q 93544 |goto Eversong Woods M 40.96,19.45 |future
]],
},
{
treasure=[[Forgotten Ink and Quill]],
spot="Eversong Woods M 43.27,69.49",
quest=94747,
item=262616,
steps=[[
step
click Forgotten Ink and Quill |q 94747 |goto Eversong Woods M 43.27,69.49 |future
]],
},
{
treasure=[[Gilded Armillary Sphere]],
spot="Eversong Woods M 44.61,45.54",
quest=93908,
steps=[[
step
click Gilded Armillary Sphere |q 93908 |goto Eversong Woods M 44.61,45.54 |future
]],
},
{
treasure=[[Antique Nobleman's Signet Ring]],
spot="Eversong Woods M 52.34,45.43",
quest=93455,
steps=[[
step
click Antique Nobleman's Signet Ring |q 93455 |goto Eversong Woods M 52.34,45.43 |future
]],
},
{
treasure=[[Farstrider's Lost Quiver]],
spot="Eversong Woods M 60.68,67.29",
quest=93457,
steps=[[
step
click Farstrider's Lost Quiver |q 93457 |goto Eversong Woods M 60.68,67.29 |future
]],
},
{
treasure=[[Stone Vat of Wine]],
spot="Eversong Woods M 40.43,60.89",
quest=86645,
item=251912,
steps=[[
step
click Stone Vat of Wine |q 86645 |goto Eversong Woods M 40.43,60.89 |future
]],
},
{
treasure=[[Burbling Paint Pot]],
spot="Eversong Woods M 48.73,75.44",
quest=91358,
steps=[[
step
click Burbling Paint Pot |q 91358 |goto Eversong Woods M 48.73,75.44 |future
]],
},
{
treasure=[[Metalworking Cheat Sheet]],
spot="Eversong Woods M 56.84,40.77",
quest=89180,
item=238543,
condition=[[only if hasprof("Blacksmithing",1)]],
steps=[[
step
click Metalworking Cheat Sheet |q 89180 |goto Eversong Woods M 56.84,40.77 |future
]],
},
{
treasure=[[Silvermoon Smithing Kit]],
spot="Eversong Woods M 48.32,75.78",
quest=89178,
item=238541,
condition=[[only if hasprof("Blacksmithing",1)]],
steps=[[
step
click Silvermoon Smithing Kit |q 89178 |goto Eversong Woods M 48.32,75.78 |future
]],
},
{
treasure=[[Sin'dorei Enchanting Rod]],
spot="Eversong Woods M 63.49,32.60",
quest=89107,
item=238555,
condition=[[only if hasprof("Enchanting",1)]],
steps=[[
step
click Sin'dorei Enchanting Rod |q 89107 |goto Eversong Woods M 63.49,32.60 |future
]],
},
{
treasure=[[Everblazing Sunmote]],
spot="Eversong Woods M 60.75,53.01",
quest=89103,
item=238551,
condition=[[only if hasprof("Enchanting",1)]],
steps=[[
step
click Everblazing Sunmote |q 89103 |goto Eversong Woods M 60.75,53.01 |future
]],
},
{
treasure=[[Enchanted Sunfire Silk]],
spot="Eversong Woods M 40.19,61.21",
quest=89101,
item=238549,
condition=[[only if hasprof("Enchanting",1)]],
steps=[[
step
click Enchanted Sunfire Silk |q 89101 |goto Eversong Woods M 40.19,61.21 |future
]],
},
{
treasure=[[Manual of Mistakes and Mishaps]],
spot="Eversong Woods M 39.57,45.79",
quest=89135,
item=238558,
condition=[[only if hasprof("Engineering",1)]],
steps=[[
step
click Manual of Mistakes and Mishaps |q 89135 |goto Eversong Woods M 39.57,45.79 |future
]],
},
{
treasure=[[A Spade]],
spot="Eversong Woods M 64.25,30.46",
quest=89158,
item=238472,
condition=[[only if hasprof("Herbalism",1)]],
steps=[[
step
click A Spade |q 89158 |goto Eversong Woods M 64.25,30.46 |future
]],
},
{
treasure=[[Songwriter's Quill]],
spot="Eversong Woods M 40.35,61.23",
quest=89074,
item=238579,
condition=[[only if hasprof("Inscription",1)]],
steps=[[
step
click Songwriter's Quill |q 89074 |goto Eversong Woods M 40.35,61.23 |future
]],
},
{
treasure=[[Spare Ink]],
spot="Eversong Woods M 48.31,75.55",
quest=89069,
item=238574,
condition=[[only if hasprof("Inscription",1)]],
steps=[[
step
click Spare Ink |q 89069 |goto Eversong Woods M 48.31,75.55 |future
]],
},
{
treasure=[[Half-Baked Techniques]],
spot="Eversong Woods M 39.28,45.43",
quest=89072,
item=238577,
condition=[[only if hasprof("Inscription",1)]],
steps=[[
step
click Half-Baked Techniques |q 89072 |goto Eversong Woods M 39.28,45.43 |future
]],
},
{
treasure=[[Poorly Rounded Vial]],
spot="Eversong Woods M 56.62,40.88",
quest=89125,
item=238583,
condition=[[only if hasprof("Jewelcrafting",1)]],
steps=[[
step
click Poorly Rounded Vial |q 89125 |goto Eversong Woods M 56.62,40.88 |future
]],
},
{
treasure=[[Sin'dorei Gem Faceters]],
spot="Eversong Woods M 39.64,38.82",
quest=89129,
item=238587,
condition=[[only if hasprof("Jewelcrafting",1)]],
steps=[[
step
click Sin'dorei Gem Faceters |q 89129 |goto Eversong Woods M 39.64,38.82 |future
]],
},
{
treasure=[[Solid Ore Punchers]],
spot="Eversong Woods M 37.98,45.38",
quest=89147,
item=238599,
condition=[[only if hasprof("Mining",1)]],
steps=[[
step
click Solid Ore Punchers |q 89147 |goto Eversong Woods M 37.98,45.38 |future
]],
},
{
treasure=[[Thalassian Skinning Knife]],
spot="Eversong Woods M 48.40,76.26",
quest=89173,
item=238635,
condition=[[only if hasprof("Skinning",1)]],
steps=[[
step
click Thalassian Skinning Knife |q 89173 |goto Eversong Woods M 48.40,76.26 |future
]],
},
{
treasure=[[Sin'dorei Outfitter's Ruler]],
spot="Eversong Woods M 46.36,34.87",
quest=89080,
item=238614,
condition=[[only if hasprof("Tailoring",1)]],
steps=[[
step
click Sin'dorei Outfitter's Ruler |q 89080 |goto Eversong Woods M 46.36,34.87 |future
]],
},
{
treasure=[[Rookery Cache]],
spot="Silvermoon City M 24.34,69.28",
quest=93967,
item=267838,
steps=[[
step
click Rookery Cache |q 93967 |goto Silvermoon City M 24.34,69.28 |future
]],
},
{
treasure=[[Incomplete Book of Sonnets]],
spot="Silvermoon City M 37.80,52.38",
quest=94781,
item=245282,
steps=[[
step
click Incomplete Book of Sonnets |q 94781 |goto Silvermoon City M 37.80,52.38 |future
]],
},
{
treasure=[[Freshly Plucked Peacebloom]],
spot="Silvermoon City M 49.11,75.86",
quest=89115,
item=238536,
condition=[[only if hasprof("Alchemy",1)]],
steps=[[
step
click Freshly Plucked Peacebloom |q 89115 |goto Silvermoon City M 49.11,75.86 |future
]],
},
{
treasure=[[Pristine Potion]],
spot="Silvermoon City M 47.75,51.69",
quest=89117,
item=238538,
condition=[[only if hasprof("Alchemy",1)]],
steps=[[
step
click Pristine Potion |q 89117 |goto Silvermoon City M 47.75,51.69 |future
]],
},
{
treasure=[[Vial of Eversong Oddities]],
spot="Silvermoon City M 45.05,44.74",
quest=89111,
item=238532,
condition=[[only if hasprof("Alchemy",1)]],
steps=[[
step
click Vial of Eversong Oddities |q 89111 |goto Silvermoon City M 45.05,44.74 |future
]],
},
{
treasure=[[Sin'dorei Master's Forgemace]],
spot="Silvermoon City M 49.17,61.33",
quest=89183,
item=238546,
condition=[[only if hasprof("Blacksmithing",1)]],
steps=[[
step
click Sin'dorei Master's Forgemace |q 89183 |goto Silvermoon City M 49.17,61.33 |future
]],
},
{
treasure=[[Deconstructed Forge Techniques]],
spot="Silvermoon City M 26.98,60.29",
quest=89177,
item=238540,
condition=[[only if hasprof("Blacksmithing",1)]],
steps=[[
step
click Deconstructed Forge Techniques |q 89177 |goto Silvermoon City M 26.98,60.29 |future
]],
},
{
treasure=[[Silvermoon Blacksmith's Hammer]],
spot="Silvermoon City M 48.54,74.38",
quest=89184,
item=238547,
condition=[[only if hasprof("Blacksmithing",1)]],
steps=[[
step
click Silvermoon Blacksmith's Hammer |q 89184 |goto Silvermoon City M 48.54,74.38 |future
]],
},
{
treasure=[[One Engineer's Junk]],
spot="Silvermoon City M 51.30,74.40",
quest=89133,
item=238556,
condition=[[only if hasprof("Engineering",1)]],
steps=[[
step
click One Engineer's Junk |q 89133 |goto Silvermoon City M 51.30,74.40 |future
]],
},
{
treasure=[[What To Do When Nothing Works]],
spot="Silvermoon City M 51.20,57.20",
quest=89139,
item=238562,
condition=[[only if hasprof("Engineering",1)]],
steps=[[
step
click What To Do When Nothing Works |q 89139 |goto Silvermoon City M 51.20,57.20 |future
]],
},
{
treasure=[[Simple Leaf Pruners]],
spot="Silvermoon City M 49.02,75.93",
quest=89160,
item=238470,
condition=[[only if hasprof("Herbalism",1)]],
steps=[[
step
click Simple Leaf Pruners |q 89160 |goto Silvermoon City M 49.02,75.93 |future
]],
},
{
treasure=[[Songwriter's Pen]],
spot="Silvermoon City M 47.65,50.39",
quest=89073,
item=238578,
condition=[[only if hasprof("Inscription",1)]],
steps=[[
step
click Songwriter's Pen |q 89073 |goto Silvermoon City M 47.65,50.39 |future
]],
},
{
treasure=[[Vintage Soul Gem]],
spot="Silvermoon City M 55.44,47.82",
quest=89127,
item=238585,
condition=[[only if hasprof("Jewelcrafting",1)]],
steps=[[
step
click Vintage Soul Gem |q 89127 |goto Silvermoon City M 55.44,47.82 |future
]],
},
{
treasure=[[Sin'dorei Masterwork Chisel]],
spot="Silvermoon City M 50.50,56.59",
quest=89122,
item=238580,
condition=[[only if hasprof("Jewelcrafting",1)]],
steps=[[
step
click Sin'dorei Masterwork Chisel |q 89122 |goto Silvermoon City M 50.50,56.59 |future
]],
},
{
treasure=[[Dual-Function Magnifiers]],
spot="Silvermoon City M 28.62,46.38",
quest=89124,
item=238582,
condition=[[only if hasprof("Jewelcrafting",1)]],
steps=[[
step
click Dual-Function Magnifiers |q 89124 |goto Silvermoon City M 28.62,46.38 |future
]],
},
{
treasure=[[Artisan's Considered Order]],
spot="Silvermoon City M 44.76,56.26",
quest=89096,
item=238595,
condition=[[only if hasprof("Leatherworking",1)]],
steps=[[
step
click Artisan's Considered Order |q 89096 |goto Silvermoon City M 44.76,56.26 |future
]],
},
{
treasure=[[Sin'dorei Tanning Oil]],
spot="Silvermoon City M 43.13,55.62",
quest=89171,
item=238633,
condition=[[only if hasprof("Skinning",1)]],
steps=[[
step
click Sin'dorei Tanning Oil |q 89171 |goto Silvermoon City M 43.13,55.62 |future
]],
},
{
treasure=[[A Really Nice Curtain]],
spot="Silvermoon City M 35.73,61.22",
quest=89079,
item=238613,
condition=[[only if hasprof("Tailoring",1)]],
steps=[[
step
click A Really Nice Curtain |q 89079 |goto Silvermoon City M 35.73,61.22 |future
]],
},
{
treasure=[[Particularly Enchanting Tablecloth]],
spot="Silvermoon City M 31.79,68.28",
quest=89084,
item=238618,
condition=[[only if hasprof("Tailoring",1)]],
steps=[[
step
click Particularly Enchanting Tablecloth |q 89084 |goto Silvermoon City M 31.79,68.28 |future
]],
},
{
treasure=[[Failed Shroom Jumper's Satchel]],
spot="Harandar 71.68,31.00",
quest=92424,
steps=[[
step
click Failed Shroom Jumper's Satchel |q 92424 |goto Harandar 71.68,31.00 |future
]],
},
{
treasure=[[Burning Branch of the World Tree]],
spot="Harandar 47.06,50.25",
quest=92426,
steps=[[
step
click Burning Branch of the World Tree |q 92426 |goto Harandar 47.06,50.25 |future
]],
},
{
treasure=[[Sporelord's Fight Prize]],
spot="Harandar 73.65,65.35",
quest=92427,
item=263289,
steps=[[
step
click Sporelord's Fight Prize |q 92427 |goto Harandar 73.65,65.35 |future
]],
},
{
treasure=[[Reliquary's Lost Paintbrush]],
spot="Harandar 62.90,51.24",
quest=92431,
item=263287,
steps=[[
step
click Reliquary's Lost Paintbrush |q 92431 |goto Harandar 62.90,51.24 |future
]],
},
{
treasure=[[Kemet's Simmering Cauldron]],
spot="Harandar 55.69,39.43",
quest=92436,
item=258903,
steps=[[
step
click Kemet's Simmering Cauldron |q 92436 |goto Harandar 55.69,39.43 |future
]],
},
{
treasure=[[Altar of Innocence]],
spot="Harandar 51.15,47.55",
quest=93130,
steps=[[
step
click Altar of Innocence |q 93130 |goto Harandar 51.15,47.55 |future
]],
},
{
treasure=[[Altar of Vigor]],
spot="Harandar 47.18,53.14",
quest=93145,
steps=[[
step
click Altar of Vigor |q 93145 |goto Harandar 47.18,53.14 |future
]],
},
{
treasure=[[Altar of Wisdom]],
spot="Harandar 51.15,58.56",
quest=93146,
steps=[[
step
click Altar of Wisdom |q 93146 |goto Harandar 51.15,58.56 |future
]],
},
{
treasure=[[Impenatrably Sealed Gourd]],
spot="Harandar 26.73,67.59",
quest=93508,
item=260730,
steps=[[
step
click Impenatrably Sealed Gourd |q 93508 |goto Harandar 26.73,67.59 |future
]],
},
{
treasure=[[Sporespawned Cache]],
spot="Harandar 46.65,67.78",
quest=93650,
item=256423,
steps=[[
step
click Sporespawned Cache |q 93650 |goto Harandar 46.65,67.78 |future
]],
},
{
treasure=[[Peculiar Cauldron]],
spot="Harandar 40.64,28.02",
quest=93587,
item=252017,
steps=[[
step
click Peculiar Cauldron |q 93587 |goto Harandar 40.64,28.02 |future
]],
},
{
treasure=[[Vial of Rootlands Oddities]],
spot="Harandar 34.77,24.69",
quest=89113,
item=238534,
condition=[[only if hasprof("Alchemy",1)]],
steps=[[
step
click Vial of Rootlands Oddities |q 89113 |goto Harandar 34.77,24.69 |future
]],
},
{
treasure=[[Rutaani Floratender's Sword]],
spot="Harandar 66.34,50.85",
quest=89182,
item=238545,
condition=[[only if hasprof("Blacksmithing",1)]],
steps=[[
step
click Rutaani Floratender's Sword |q 89182 |goto Harandar 66.34,50.85 |future
]],
},
{
treasure=[[Entropic Shard]],
spot="Harandar 37.75,65.22",
quest=89104,
item=238552,
condition=[[only if hasprof("Enchanting",1)]],
steps=[[
step
click Entropic Shard |q 89104 |goto Harandar 37.75,65.22 |future
]],
},
{
treasure=[[Primal Essence Orb]],
spot="Harandar 65.72,50.22",
quest=89105,
item=238553,
condition=[[only if hasprof("Enchanting",1)]],
steps=[[
step
click Primal Essence Orb |q 89105 |goto Harandar 65.72,50.22 |future
]],
},
{
treasure=[[Expeditious Pylon]],
spot="Harandar 68.00,49.81",
quest=89136,
item=238559,
condition=[[only if hasprof("Engineering",1)]],
steps=[[
step
click Expeditious Pylon |q 89136 |goto Harandar 68.00,49.81 |future
]],
},
{
treasure=[[Planting Shovel]],
spot="Harandar 51.11,55.71",
quest=89155,
item=238475,
condition=[[only if hasprof("Herbalism",1)]],
steps=[[
step
click Planting Shovel |q 89155 |goto Harandar 51.11,55.71 |future
]],
},
{
treasure=[[Bloomed Bud]],
spot="Harandar 38.32,67.04",
quest=89162,
item=238468,
condition=[[only if hasprof("Herbalism",1)]],
steps=[[
step
click Bloomed Bud |q 89162 |goto Harandar 38.32,67.04 |future
]],
},
{
treasure=[[Harvester's Sickle (dupe spawn in Zul aman???)]],
spot="Harandar 76.13,51.05",
quest=89157,
item=238473,
condition=[[only if hasprof("Herbalism",1)]],
steps=[[
step
click Harvester's Sickle (dupe spawn in Zul aman???) |q 89157 |goto Harandar 76.13,51.05 |future
]],
},
{
treasure=[[Lightbloom Root]],
spot="Harandar 36.66,25.06",
quest=89159,
item=238471,
condition=[[only if hasprof("Herbalism",1)]],
steps=[[
step
click Lightbloom Root |q 89159 |goto Harandar 36.66,25.06 |future
]],
},
{
treasure=[[Leftover Sanguithorn Pigment]],
spot="Harandar 52.75,49.98",
quest=89071,
item=238576,
condition=[[only if hasprof("Inscription",1)]],
steps=[[
step
click Leftover Sanguithorn Pigment |q 89071 |goto Harandar 52.75,49.98 |future
]],
},
{
treasure=[[Intrepid Explorer's Marker]],
spot="Harandar 52.43,52.61",
quest=89070,
item=238575,
condition=[[only if hasprof("Inscription",1)]],
steps=[[
step
click Intrepid Explorer's Marker |q 89070 |goto Harandar 52.43,52.61 |future
]],
},
{
treasure=[[Haranir Leatherworking Knife]],
spot="Harandar 36.10,25.17",
quest=89095,
item=238594,
condition=[[only if hasprof("Leatherworking",1)]],
steps=[[
step
click Haranir Leatherworking Knife |q 89095 |goto Harandar 36.10,25.17 |future
]],
},
{
treasure=[[Haranir Leatherworking Mallet]],
spot="Harandar 51.69,51.32",
quest=89094,
item=238593,
condition=[[only if hasprof("Leatherworking",1)]],
steps=[[
step
click Haranir Leatherworking Mallet |q 89094 |goto Harandar 51.69,51.32 |future
]],
},
{
treasure=[[Spare Expedition Torch]],
spot="Harandar 38.83,65.86",
quest=89151,
item=238603,
condition=[[only if hasprof("Mining",1)]],
steps=[[
step
click Spare Expedition Torch |q 89151 |goto Harandar 38.83,65.86 |future
]],
},
{
treasure=[[Primal Hide]],
spot="Harandar 69.52,49.17",
quest=89168,
item=238630,
condition=[[only if hasprof("Skinning",1)]],
steps=[[
step
click Primal Hide |q 89168 |goto Harandar 69.52,49.17 |future
]],
},
{
treasure=[[Lightbloom Afflicted Hide]],
spot="Harandar 76.09,51.08",
quest=89166,
item=238628,
condition=[[only if hasprof("Skinning",1)]],
steps=[[
step
click Lightbloom Afflicted Hide |q 89166 |goto Harandar 76.09,51.08 |future
]],
},
{
treasure=[[A Child's Stuffy]],
spot="Harandar 70.56,50.90",
quest=89078,
item=238612,
condition=[[only if hasprof("Tailoring",1)]],
steps=[[
step
click A Child's Stuffy |q 89078 |goto Harandar 70.56,50.90 |future
]],
},
{
treasure=[[Wooden Weaving Sword]],
spot="Harandar 69.76,51.05",
quest=89081,
item=238615,
condition=[[only if hasprof("Tailoring",1)]],
steps=[[
step
click Wooden Weaving Sword |q 89081 |goto Harandar 69.76,51.05 |future
]],
},
{
treasure=[[Gift of the Cycle]],
spot="Harandar/2 47.23,50.78",
quest=93144,
steps=[[
step
click Gift of the Cycle |q 93144 |goto Harandar/2 47.23,50.78 |future
]],
},
{
treasure=[[Final Clutch of Predaxas]],
spot="Voidstorm 49.94,79.36",
quest=93237,
item=257446,
steps=[[
step
click Final Clutch of Predaxas |q 93237 |goto Voidstorm 49.94,79.36 |future
]],
},
{
treasure=[[Void-Shielded Tomb]],
spot="Voidstorm 25.76,67.28",
quest=92414,
steps=[[
step
click Void-Shielded Tomb |q 92414 |goto Voidstorm 25.76,67.28 |future
]],
},
{
treasure=[[Bloody Sack]],
spot="Voidstorm 64.53,75.47",
quest=93431,
item=267139,
steps=[[
step
click Bloody Sack |q 93431 |goto Voidstorm 64.53,75.47 |future
]],
},
{
treasure=[[Malignant Chest]],
spot="Voidstorm 53.36,42.66",
quest=93840,
steps=[[
step
click Malignant Chest |q 93840 |goto Voidstorm 53.36,42.66 |future
]],
},
{
treasure=[[Forgotten Researcher's Cache]],
spot="Voidstorm 47.93,78.51",
quest=94454,
item=250319,
steps=[[
step
click Forgotten Researcher's Cache |q 94454 |goto Voidstorm 47.93,78.51 |future
]],
},
{
treasure=[[Embedded Spear]],
spot="Voidstorm 55.37,75.42",
quest=93553,
item=266075,
steps=[[
step
click Embedded Spear |q 93553 |goto Voidstorm 55.37,75.42 |future
]],
},
{
treasure=[[Quivering Egg]],
spot="Voidstorm 31.50,44.51",
quest=93500,
item=266076,
steps=[[
step
click Quivering Egg |q 93500 |goto Voidstorm 31.50,44.51 |future
]],
},
{
treasure=[[Exaliburn]],
spot="Voidstorm 28.33,72.90",
quest=93498,
item=266099,
steps=[[
step
click Exaliburn |q 93498 |goto Voidstorm 28.33,72.90 |future
]],
},
{
treasure=[[Discarded Energy Pike]],
spot="Voidstorm 35.77,41.41",
quest=93496,
item=266100,
steps=[[
step
click Discarded Energy Pike |q 93496 |goto Voidstorm 35.77,41.41 |future
]],
},
{
treasure=[[Faindel's Quiver]],
spot="Voidstorm 43.01,81.94",
quest=93493,
item=266098,
steps=[[
step
click Faindel's Quiver |q 93493 |goto Voidstorm 43.01,81.94 |future
]],
},
{
treasure=[[Half-Digested Viscera]],
spot="Voidstorm 37.69,69.76",
quest=93467,
item=264303,
steps=[[
step
click Half-Digested Viscera |q 93467 |goto Voidstorm 37.69,69.76 |future
]],
},
{
treasure=[[Voidhoarder's Corpse]],
spot="Voidstorm 24.82,70.01",
quest=94742,
item=246951,
steps=[[
step
click Voidhoarder's Corpse |q 94742 |goto Voidstorm 24.82,70.01 |future
]],
},
{
treasure=[[Failed Experiment]],
spot="Voidstorm 32.79,43.29",
quest=89118,
item=238539,
condition=[[only if hasprof("Alchemy",1)]],
steps=[[
step
click Failed Experiment |q 89118 |goto Voidstorm 32.79,43.29 |future
]],
},
{
treasure=[[Pure Void Crystal]],
spot="Voidstorm 35.49,58.82",
quest=89102,
item=238550,
condition=[[only if hasprof("Enchanting",1)]],
steps=[[
step
click Pure Void Crystal |q 89102 |goto Voidstorm 35.49,58.82 |future
]],
},
{
treasure=[[Peculiar Lotus]],
spot="Voidstorm 34.68,56.97",
quest=89156,
item=238474,
condition=[[only if hasprof("Herbalism",1)]],
steps=[[
step
click Peculiar Lotus |q 89156 |goto Voidstorm 34.68,56.97 |future
]],
},
{
treasure=[[Ethereal Leatherworking Knife]],
spot="Voidstorm 34.72,56.92",
quest=89090,
item=238589,
condition=[[only if hasprof("Leatherworking",1)]],
steps=[[
step
click Ethereal Leatherworking Knife |q 89090 |goto Voidstorm 34.72,56.92 |future
]],
},
{
treasure=[[Star Metal Deposit]],
spot="Voidstorm 41.84,38.21",
quest=89150,
item=238602,
condition=[[only if hasprof("Mining",1)]],
steps=[[
step
click Star Metal Deposit |q 89150 |goto Voidstorm 41.84,38.21 |future
]],
},
{
treasure=[[Stellar Stash]],
spot="Slayer's Rise 53.13,32.28",
quest=93996,
steps=[[
step
click Stellar Stash |q 93996 |goto Slayer's Rise 53.13,32.28 |future
]],
},
{
treasure=[[Scout's Pack]],
spot="Slayer's Rise 49.05,20.12",
quest=94387,
item=266101,
steps=[[
step
click Scout's Pack |q 94387 |goto Slayer's Rise 49.05,20.12 |future
]],
},
{
treasure=[[Vial of Voidstorm Oddities]],
spot="Slayer's Rise 41.96,40.62",
quest=89112,
item=238533,
condition=[[only if hasprof("Alchemy",1)]],
steps=[[
step
click Vial of Voidstorm Oddities |q 89112 |goto Slayer's Rise 41.96,40.62 |future
]],
},
{
treasure=[[Voidstorm Defense Spear]],
spot="Slayer's Rise 30.51,68.99",
quest=89181,
item=238544,
condition=[[only if hasprof("Blacksmithing",1)]],
steps=[[
step
click Voidstorm Defense Spear |q 89181 |goto Slayer's Rise 30.51,68.99 |future
]],
},
{
treasure=[[Ethereal Stormwrench]],
spot="Slayer's Rise 54.13,51.01",
quest=89137,
item=238560,
condition=[[only if hasprof("Engineering",1)]],
steps=[[
step
click Ethereal Stormwrench |q 89137 |goto Slayer's Rise 54.13,51.01 |future
]],
},
{
treasure=[[Miniaturized Transport Skiff]],
spot="Slayer's Rise 28.93,39.03",
quest=89134,
item=238557,
condition=[[only if hasprof("Engineering",1)]],
steps=[[
step
click Miniaturized Transport Skiff |q 89134 |goto Slayer's Rise 28.93,39.03 |future
]],
},
{
treasure=[[Void-Touched Quill]],
spot="Slayer's Rise 60.69,84.26",
quest=89067,
item=238572,
condition=[[only if hasprof("Inscription",1)]],
steps=[[
step
click Void-Touched Quill |q 89067 |goto Slayer's Rise 60.69,84.26 |future
]],
},
{
treasure=[[Speculative Voidstorm Crystal]],
spot="Slayer's Rise 30.49,69.04",
quest=89123,
item=238581,
condition=[[only if hasprof("Jewelcrafting",1)]],
steps=[[
step
click Speculative Voidstorm Crystal |q 89123 |goto Slayer's Rise 30.49,69.04 |future
]],
},
{
treasure=[[Ethereal Gem Pliers]],
spot="Slayer's Rise 54.20,51.04",
quest=89128,
item=238586,
condition=[[only if hasprof("Jewelcrafting",1)]],
steps=[[
step
click Ethereal Gem Pliers |q 89128 |goto Slayer's Rise 54.20,51.04 |future
]],
},
{
treasure=[[Shattered Glass]],
spot="Slayer's Rise 62.76,53.45",
quest=89126,
item=238584,
condition=[[only if hasprof("Jewelcrafting",1)]],
steps=[[
step
click Shattered Glass |q 89126 |goto Slayer's Rise 62.76,53.45 |future
]],
},
{
treasure=[[Patterns: Beyond the Void]],
spot="Slayer's Rise 53.74,51.67",
quest=89093,
item=238592,
condition=[[only if hasprof("Leatherworking",1)]],
steps=[[
step
click Patterns: Beyond the Void |q 89093 |goto Slayer's Rise 53.74,51.67 |future
]],
},
{
treasure=[[Glimmering Void Pearl]],
spot="Slayer's Rise 28.73,38.56",
quest=89148,
item=238600,
condition=[[only if hasprof("Mining",1)]],
steps=[[
step
click Glimmering Void Pearl |q 89148 |goto Slayer's Rise 28.73,38.56 |future
]],
},
{
treasure=[[Lost Voidstorm Satchel]],
spot="Slayer's Rise 54.24,51.59",
quest=89146,
item=238598,
condition=[[only if hasprof("Mining",1)]],
steps=[[
step
click Lost Voidstorm Satchel |q 89146 |goto Slayer's Rise 54.24,51.59 |future
]],
},
{
treasure=[[Miner's Guide to Voidstorm]],
spot="Slayer's Rise 30.48,69.07",
quest=89144,
item=238596,
condition=[[only if hasprof("Mining",1)]],
steps=[[
step
click Miner's Guide to Voidstorm |q 89144 |goto Slayer's Rise 30.48,69.07 |future
]],
},
{
treasure=[[Voidstorm Leather Sample]],
spot="Slayer's Rise 45.50,42.40",
quest=89169,
item=238631,
condition=[[only if hasprof("Skinning",1)]],
steps=[[
step
click Voidstorm Leather Sample |q 89169 |goto Slayer's Rise 45.50,42.40 |future
]],
},
{
treasure=[[Book of Sin'dorei Stitches]],
spot="Slayer's Rise 62.01,83.52",
quest=89082,
item=238616,
condition=[[only if hasprof("Tailoring",1)]],
steps=[[
step
click Book of Sin'dorei Stitches |q 89082 |goto Slayer's Rise 62.01,83.52 |future
]],
},
{
treasure=[[Satin Throw Pillow]],
spot="Slayer's Rise 61.39,85.12",
quest=89083,
item=238617,
condition=[[only if hasprof("Tailoring",1)]],
steps=[[
step
click Satin Throw Pillow |q 89083 |goto Slayer's Rise 61.39,85.12 |future
]],
},
{
treasure=[[Forgotten Researcher's Cache]],
spot="Lair of Predaxas 23.74,83.69",
quest=94454,
item=250319,
steps=[[
step
click Forgotten Researcher's Cache |q 94454 |goto Lair of Predaxas 23.74,83.69 |future
]],
},
{
treasure=[[Abandoned Ritual Skull]],
spot="Zul Aman M 44.72,44.09",
quest=90794,
item=257444,
steps=[[
step
click Abandoned Ritual Skull |q 90794 |goto Zul Aman M 44.72,44.09 |future
]],
},
{
treasure=[[Honored Warrior's Cache]],
spot="Zul Aman M 46.83,81.86",
quest=90793,
item=257223,
rep={2696,90793},
steps=[[
step
click Honored Warrior's Cache |q 90793 |goto Zul Aman M 46.83,81.86 |future
]],
},
{
treasure=[[Sealed Twilight Blade Bounty]],
spot="Zul Aman M 21.89,77.38",
quest=93871,
steps=[[
step
click Sealed Twilight Blade Bounty |q 93871 |goto Zul Aman M 21.89,77.38 |future
]],
},
{
treasure=[[Bait and Tackle]],
spot="Zul Aman M 20.84,66.54",
quest=90795,
steps=[[
step
click Bait and Tackle |q 90795 |goto Zul Aman M 20.84,66.54 |future
]],
},
{
treasure=[[Burrow Bounty]],
spot="Zul Aman M 41.99,47.79",
quest=90796,
steps=[[
step
click Burrow Bounty |q 90796 |goto Zul Aman M 41.99,47.79 |future
]],
},
{
treasure=[[Mrruk's Mangy Trove]],
spot="Zul Aman M 52.32,65.99",
quest=90797,
steps=[[
step
click Mrruk's Mangy Trove |q 90797 |goto Zul Aman M 52.32,65.99 |future
]],
},
{
treasure=[[Secret Formula]],
spot="Zul Aman M 40.48,35.95",
quest=90798,
steps=[[
step
click Secret Formula |q 90798 |goto Zul Aman M 40.48,35.95 |future
]],
},
{
treasure=[[Abandoned Nest]],
spot="Zul Aman M 42.64,52.43",
quest=90799,
steps=[[
step
click Abandoned Nest |q 90799 |goto Zul Aman M 42.64,52.43 |future
]],
},
{
treasure=[[Vial of Zul'Aman Oddities]],
spot="Zul Aman M 40.39,51.17",
quest=89114,
item=238535,
condition=[[only if hasprof("Alchemy",1)]],
steps=[[
step
click Vial of Zul'Aman Oddities |q 89114 |goto Zul Aman M 40.39,51.17 |future
]],
},
{
treasure=[[Loa-Blessed Dust]],
spot="Zul Aman M 40.41,51.18",
quest=89106,
item=238554,
condition=[[only if hasprof("Enchanting",1)]],
steps=[[
step
click Loa-Blessed Dust |q 89106 |goto Zul Aman M 40.41,51.18 |future
]],
},
{
treasure=[[Handy Wrench]],
spot="Zul Aman M 34.21,87.80",
quest=89140,
item=238563,
condition=[[only if hasprof("Engineering",1)]],
steps=[[
step
click Handy Wrench |q 89140 |goto Zul Aman M 34.21,87.80 |future
]],
},
{
treasure=[[Sweeping Harvester's Scythe]],
spot="Zul Aman M 41.91,45.91",
quest=89161,
item=238469,
condition=[[only if hasprof("Herbalism",1)]],
steps=[[
step
click Sweeping Harvester's Scythe |q 89161 |goto Zul Aman M 41.91,45.91 |future
]],
},
{
treasure=[[Leather-Bound Techniques]],
spot="Zul Aman M 40.48,49.35",
quest=89068,
item=238573,
condition=[[only if hasprof("Inscription",1)]],
steps=[[
step
click Leather-Bound Techniques |q 89068 |goto Zul Aman M 40.48,49.35 |future
]],
},
{
treasure=[[Amani Leatherworker's Tool]],
spot="Zul Aman M 33.08,78.91",
quest=89089,
item=238588,
condition=[[only if hasprof("Leatherworking",1)]],
steps=[[
step
click Amani Leatherworker's Tool |q 89089 |goto Zul Aman M 33.08,78.91 |future
]],
},
{
treasure=[[Prestigiously Racked Hide]],
spot="Zul Aman M 30.75,83.97",
quest=89091,
item=238590,
condition=[[only if hasprof("Leatherworking",1)]],
steps=[[
step
click Prestigiously Racked Hide |q 89091 |goto Zul Aman M 30.75,83.97 |future
]],
},
{
treasure=[[Spelunker's Lucky Charm]],
spot="Zul Aman M 42.00,46.53",
quest=89145,
item=238597,
condition=[[only if hasprof("Mining",1)]],
steps=[[
step
click Spelunker's Lucky Charm |q 89145 |goto Zul Aman M 42.00,46.53 |future
]],
},
{
treasure=[[Amani Skinning Knife]],
spot="Zul Aman M 33.07,79.07",
quest=89172,
item=238634,
condition=[[only if hasprof("Skinning",1)]],
steps=[[
step
click Amani Skinning Knife |q 89172 |goto Zul Aman M 33.07,79.07 |future
]],
},
{
treasure=[[Amani Tanning Oil]],
spot="Zul Aman M 40.39,36.01",
quest=89170,
item=238632,
condition=[[only if hasprof("Skinning",1)]],
steps=[[
step
click Amani Tanning Oil |q 89170 |goto Zul Aman M 40.39,36.01 |future
]],
},
{
treasure=[[Artisan's Cover Comb]],
spot="Zul Aman M 40.53,49.36",
quest=89085,
item=238619,
condition=[[only if hasprof("Tailoring",1)]],
steps=[[
step
click Artisan's Cover Comb |q 89085 |goto Zul Aman M 40.53,49.36 |future
]],
},
{
treasure=[[Measured Ladle]],
spot="Atal'Aman 49.10,23.21",
quest=89116,
item=238537,
condition=[[only if hasprof("Alchemy",1)]],
steps=[[
step
click Measured Ladle |q 89116 |goto Atal'Aman 49.10,23.21 |future
]],
},
{
treasure=[[Carefully Racked Spear]],
spot="Atal'Aman 33.08,65.82",
quest=89179,
item=238542,
condition=[[only if hasprof("Blacksmithing",1)]],
steps=[[
step
click Carefully Racked Spear |q 89179 |goto Atal'Aman 33.08,65.82 |future
]],
},
{
treasure=[[Enchanted Amani Mask]],
spot="Atal'Aman 48.71,22.53",
quest=89100,
item=238548,
condition=[[only if hasprof("Enchanting",1)]],
steps=[[
step
click Enchanted Amani Mask |q 89100 |goto Atal'Aman 48.71,22.53 |future
]],
},
{
treasure=[[Offline Helper Bot]],
spot="Atal'Aman 65.14,34.76",
quest=89138,
item=238561,
condition=[[only if hasprof("Engineering",1)]],
steps=[[
step
click Offline Helper Bot |q 89138 |goto Atal'Aman 65.14,34.76 |future
]],
},
{
treasure=[[Bundle of Tanner's Trinkets]],
spot="Atal'Aman 45.29,45.61",
quest=89092,
item=238591,
condition=[[only if hasprof("Leatherworking",1)]],
steps=[[
step
click Bundle of Tanner's Trinkets |q 89092 |goto Atal'Aman 45.29,45.61 |future
]],
},
{
treasure=[[Amani Expert's Chisel]],
spot="Atal'Aman 33.29,65.91",
quest=89149,
item=238601,
condition=[[only if hasprof("Mining",1)]],
steps=[[
step
click Amani Expert's Chisel |q 89149 |goto Atal'Aman 33.29,65.91 |future
]],
},
{
treasure=[[Cadre Skinning Knife]],
spot="Atal'Aman 44.90,45.17",
quest=89167,
item=238629,
condition=[[only if hasprof("Skinning",1)]],
steps=[[
step
click Cadre Skinning Knife |q 89167 |goto Atal'Aman 44.90,45.17 |future
]],
},
}
