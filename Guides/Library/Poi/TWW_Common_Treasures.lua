-- Bundled QuestCore guide
if not QuestCore then return end

QC.Poi.Sets.PoiTreasureCTWW={
{
treasure=[[Unexploded Fireworks]],
spot="Undermine/0 48.47,43.07",
quest=85683,
steps=[[
step
click Unexploded Fireworks |q 85683 |goto Undermine/0 48.47,43.07 |future
|tip On top of the roof of the building.
|tip You can see sparks coming off of it.
|tip Stand on the balcony to reach it.
]],
},
{
treasure=[[Suspicious Book]],
spot="Undermine/0 49.89,66.13",
quest=85866,
steps=[[
step
click Suspicious Book |q 85866 |goto Undermine/0 49.89,66.13 |future
|tip Inside the building on the middle shelf on top of the books.
]],
},
{
treasure=[[Suspicious Book]],
spot="Undermine/0 49.55,64.53",
quest=85867,
steps=[[
step
click Suspicious Book |q 85867 |goto Undermine/0 49.55,64.53 |future
|tip Inside the building on the middle floor.
|tip In the bookshelf on top of the books.
]],
},
{
treasure=[[Suspicious Book]],
spot="Undermine/0 49.80,65.66",
quest=85868,
steps=[[
step
click Suspicious Book |q 85868 |goto Undermine/0 49.80,65.66 |future
|tip Inside the building on the top floor.
|tip On top of the desk.
]],
},
{
treasure=[[Fireworks Hat]],
spot="Undermine/0 57.84,52.69",
quest=85838,
steps=[[
step
Run up the stairs |goto Undermine/0 60.03,54.01 < 7 |only if walking
click Door |goto Undermine/0 58.06,53.51 < 3 |only if walking
click Fireworks Hat |q 85838 |goto Undermine/0 57.84,52.69 |future
|tip On the balcony surrounded by wind.
]],
},
{
treasure=[[Blackened Dice]],
spot="Undermine/0 38.96,59.63",
quest=85814,
item=235255,
steps=[[
step
click Pipe Valve
|tip At the top of the stairs on the pipe.
|tip The nearby flame blowing on the dice will stop.
Shut Off the Flames |q 85813 |goto Undermine/0 39.20,59.18 |future
step
click Blackened Dice |q 85814 |goto Undermine/0 38.96,59.63 |future
|tip On the edge of the balcony.
]],
},
{
treasure=[[Lonely Tub]],
spot="Undermine/0 59.35,19.12",
quest=85858,
item=235279,
steps=[[
step
click Fire Extinguisher
Loot the Extinguisher |q 85860 |goto Undermine/0 58.75,17.98 |future
step
click Lonely Tub |q 85858 |goto Undermine/0 59.35,19.12 |future
]],
},
{
treasure=[[Potent Potable]],
spot="Undermine/0 69.65,21.64",
quest=85426,
item=235230,
steps=[[
step
click Potent Potable |q 85426 |goto Undermine/0 69.65,21.64 |future
|tip Underneath the stage.
]],
},
{
treasure=[[Abandoned Toolbox]],
spot="Undermine/0 40.85,21.26",
quest=85422,
item=235230,
steps=[[
step
Run up the stairs |goto Undermine/0 39.40,25.86 < 7 |only if walking
click Abandoned Toolbox |q 85422 |goto Undermine/0 40.85,21.26 |future
|tip On top of the building.
]],
},
{
treasure=[[Papa's Prized Putter]],
spot="Undermine/0 74.67,79.88",
quest=85424,
item=234821,
steps=[[
step
Jump up the rocks here |goto Undermine/0 74.54,75.84 < 8 |only if walking
Jump up the rocks here |goto Undermine/0 74.84,78.17 < 8 |only if walking
click Papa's Prized Putter |q 85424 |goto Undermine/0 74.67,79.88 |future
]],
},
{
treasure=[[Unsupervised Takeout]],
spot="Undermine/0 26.86,42.65",
quest=85425,
steps=[[
step
click Unsupervised Takeout |q 85425 |goto Undermine/0 26.86,42.65 |future
]],
},
{
treasure=[[Particularly Nice Lamp]],
spot="Undermine/0 39.38,61.03",
quest=85492,
item=235221,
steps=[[
step
click Particularly Nice Lamp |q 85492 |goto Undermine/0 39.38,61.03 |future
|tip Inside the building on the ground floor.
]],
},
{
treasure=[[Uncracked Cold Ones]],
spot="Undermine/0 53.40,52.72",
quest=85495,
item=234951,
steps=[[
step
click Uncracked Cold Ones |q 85495 |goto Undermine/0 53.40,52.72 |future
]],
},
{
treasure=[[Marooned Floatmingo]],
spot="Undermine/0 63.81,32.20",
quest=85494,
item=235273,
steps=[[
step
click Marooned Floatmingo |q 85494 |goto Undermine/0 63.81,32.20 |future
]],
},
{
treasure=[[Trick Deck of Cards]],
spot="Undermine/0 43.66,51.54",
quest=85496,
steps=[[
step
click Trick Deck of Cards |q 85496 |goto Undermine/0 43.66,51.54 |future
|tip Inside the building.
]],
},
{
treasure=[[Crumpled Schematics]],
spot="Undermine/0 42.30,82.31",
quest=86487,
item=235273,
steps=[[
step
Enter the lower building |goto Undermine/0 42.18,80.87 < 8 |walk
click Crumpled Schematics |q 86487 |goto Undermine/0 42.30,82.31 |future
|tip Inside the building.
]],
},
{
treasure=[[Exploded Plunger]],
spot="Undermine/0 49.69,90.25",
quest=85698,
steps=[[
step
click Inert Plunger? |q 85694 |goto Undermine/0 49.69,90.25 |future
step
click Exploded Plunger |q 85698 |goto Undermine/0 49.69,90.25 |future
]],
},
{
treasure=[[Rocket Drill Safety Manual]],
spot="The Ringing Deeps/0 72.90,73.16",
quest=86570,
steps=[[
step
click Rocket Drill Safety Manual |q 86570 |goto The Ringing Deeps/0 72.90,73.16 |future
]],
},
{
treasure=[[Extractor Drill X-78 Safety Guide]],
spot="The Ringing Deeps/0 67.25,98.09",
quest=86569,
steps=[[
step
Enter the cave |goto The Ringing Deeps/0 67.99,96.62 < 10 |walk
click Extractor Drill X-78 Safety Guide |q 86569 |goto The Ringing Deeps/0 67.25,98.09 |future
|tip Inside the cave.
]],
},
{
treasure=[[First Half of Noggenfogger's Journal]],
spot="Undermine/0 39.62,26.91",
quest=86572,
steps=[[
step
Complete the {o}Right Where We Want Him{} Quest |q 85780 |future
|tip Use the "Undermine (Story Only)" guide to accomplish this.
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
step
click Sewer Grate |goto Undermine/0 40.50,28.57
|tip Open the sewer grate and jump down inside.
click First Half of Noggenfogger's Journal |q 86572 |goto Undermine/0 39.62,26.91 |future
]],
},
{
treasure=[[Second Half of Noggenfogger's Journal]],
spot="Undermine/0 32.83,58.98",
quest=86571,
steps=[[
step
click Sewer Grate |goto Undermine/0 33.81,57.59
|tip Open the sewer grate and jump down inside.
|tip On the highest shelf.
click Second Half of Noggenfogger's Journal |q 86571 |goto Undermine/0 32.83,58.98 |future
]],
},
{
treasure=[[A Threatening Letter]],
spot="Undermine/0 27.32,70.75",
quest=86567,
steps=[[
step
Complete the {o}Right Where We Want Him{} Quest |q 85780 |future
|tip Use the "Undermine (Story Only)" guide to accomplish this.
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
step
Enter the building |goto Undermine/0 29.02,69.64 < 7 |walk
click A Threatening Letter |q 86567 |goto Undermine/0 27.31,70.78 |future
|tip Downstairs inside the building.
]],
},
{
treasure=[[Gallywix's Notes]],
spot="Undermine/0 60.96,64.39",
quest=86573,
steps=[[
step
Enter the cave |goto Undermine/0 58.79,59.35 < 7 |walk
click Gallywix's Notes |q 86573 |goto Undermine/0 60.96,64.39 |future
|tip Inside the cave.
]],
},
{
treasure=[[Misplaced Work Order]],
spot="Undermine/0 65.63,14.22",
quest=86568,
steps=[[
step
click Misplaced Work Order |q 86568 |goto Undermine/0 65.63,14.22 |future
]],
},
{
treasure=[[Memory Cache]],
spot="Azj-Kahet/1 62.68,88.66",
achieve="40828/69615",
item=225544,
steps=[[
step
Destroy nearby Extractor Storage or walk into a pool of Black Blood |goto Azj-Kahet/1 62.68,88.66
Gain 100 stacks of Unseeming Shift |havebuff 100 420847
|kill Corrupted Memory##223908
|collect Cache Key##223870
click Memory Cache |q 82724 |goto Azj-Kahet/1 62.68,88.66 |future
]],
},
{
treasure=[[Discarded Toolbox]],
spot="The Ringing Deeps/0 45.51,17.45",
quest=82239,
item=224644,
steps=[[
step
click Discarded Toolbox |q 82239 |goto The Ringing Deeps/0 41.35,17.45 |future
]],
},
{
treasure=[[Water Console]],
spot="The Ringing Deeps/0 45.30,46.44",
quest=83475,
steps=[[
step
click Water Console |q 83475 |goto The Ringing Deeps/0 41.14,46.44 |future
|tip By the stairs.
]],
},
{
treasure=[[Varerko]],
spot="The Ringing Deeps/0 49.38,49.04",
achieve="40504/68689",
steps=[[
step
click Varerko |achieve 40504/68689 |goto The Ringing Deeps/0 45.22,49.04 |future
]],
},
{
treasure=[[Venedaz]],
spot="The Ringing Deeps/0 48.58,31.78",
achieve="40504/68687",
steps=[[
step
click Venedaz |achieve 40504/68687 |goto The Ringing Deeps/0 44.42,31.78 |future
|tip By the pipes above the inn.
]],
},
{
treasure=[[Gundrig]],
spot="The Ringing Deeps/0 65.41,83.79",
achieve="40504/68691",
steps=[[
step
click Gundrig |achieve 40504/68691 |goto The Ringing Deeps/0 61.25,83.79 |future
|tip Up on the ledge.
]],
},
{
treasure=[[Waterlogged Refuse]],
spot="The Ringing Deeps/0 66.20,33.42",
quest=83030,
item=213250,
steps=[[
step
click Waterlogged Refuse |q 83030 |goto The Ringing Deeps/0 62.04,33.42 |future
]],
},
{
treasure=[[Uisgaz]],
spot="The Ringing Deeps/0 55.04,30.23",
achieve="40504/68686",
steps=[[
step
click Uisgaz |achieve 40504/68686 |goto The Ringing Deeps/0 50.88,30.23 |future
|tip Up on the ledge.
]],
},
{
treasure=[[Attwogaz]],
spot="The Ringing Deeps/0 62.86,36.37",
achieve="40504/68684",
steps=[[
step
click Attwogaz |achieve 40504/68684 |goto The Ringing Deeps/0 58.70,36.37 |future
|tip Up on the ledge.
]],
},
{
treasure=[[Krattdaz]],
spot="The Ringing Deeps/0 43.14,40.87",
achieve="40504/68685",
steps=[[
step
click Krattdaz |achieve 40504/68685 |goto The Ringing Deeps/0 38.98,40.87 |future
]],
},
{
treasure=[[Merunth]],
spot="The Ringing Deeps/0 59.20,93.71",
achieve="40504/68688",
steps=[[
step
click Merunth |achieve 40504/68688 |goto The Ringing Deeps/0 55.04,93.71 |future
|tip Up on the pipes.
]],
},
{
treasure=[[Earthen Console]],
spot="The Ringing Deeps/0 46.30,14.09",
quest=83483,
steps=[[
step
click Earthen Console |q 83483 |goto The Ringing Deeps/0 42.14,14.09 |future
]],
},
{
treasure=[[Scary Dark Chest]],
spot="The Ringing Deeps/0 58.93,30.28",
quest=82818,
item=224439,
steps=[[
step
click Scary Dark Chest |q 82818 |goto The Ringing Deeps/0 54.77,30.28 |future
]],
},
{
treasure=[[Sathilga]],
spot="The Ringing Deeps/0 64.06,55.73",
achieve="40504/68692",
steps=[[
step
click Sathilga |achieve 40504/68692 |goto The Ringing Deeps/0 59.90,55.73 |future
]],
},
{
treasure=[[Cursed Pickaxe]],
spot="The Ringing Deeps/0 63.08,63.11",
quest=82230,
item=224837,
steps=[[
step
click Cursed Pickaxe |q 82230 |goto The Ringing Deeps/0 58.92,63.11 |future
]],
},
{
treasure=[[Alfritha]],
spot="The Ringing Deeps/0 48.53,70.65",
achieve="40504/68690",
steps=[[
step
click Alfritha |achieve 40504/68690 |goto The Ringing Deeps/0 44.37,70.65 |future
]],
},
{
treasure=[[Dusty Prospector's Chest]],
spot="The Ringing Deeps/0 49.05,31.63",
quest=82464,
item=212495,
steps=[[
step
click Dusty Prospector's Chest |q 82464 |goto The Ringing Deeps/0 44.89,31.63 |future
|tip At the back of the inn.
|tip Gather five shards first.
]],
},
{
treasure=[[Munderut's Forgotten Stash]],
spot="The Ringing Deeps/0 55.40,13.85",
quest=82235,
item=212498,
steps=[[
step
click Munderut's Forgotten Stash |q 82235 |goto The Ringing Deeps/0 51.24,13.85 |future
]],
},
{
treasure=[[Dislodged Blockage]],
spot="The Ringing Deeps/0 48.25,48.96",
quest=82820,
item=221548,
steps=[[
step
click Dislodged Blockage |q 82820 |goto The Ringing Deeps/0 44.09,48.96 |future
|tip Solve a sliding-tiles puzzle.
]],
},
{
treasure=[[Abyssal Console]],
spot="The Ringing Deeps/0 59.00,93.30",
quest=83479,
steps=[[
step
click Abyssal Console |q 83479 |goto The Ringing Deeps/0 54.84,93.30 |future
|tip Inside the building.
]],
},
{
treasure=[[Forgotten Treasure]],
spot="The Ringing Deeps/0 50.48,53.49",
quest=80485,
item=224783,
steps=[[
step
click Forgotten Treasure |q 80485 |goto The Ringing Deeps/0 46.32,53.49 |future
|tip In the cave behind the waterfall
|tip Open chests until you find the key.
]],
},
{
treasure=[[Webbed Knapsack]],
spot="The Ringing Deeps/0 68.70,40.56",
quest=79308,
item=213254,
steps=[[
step
click Webbed Knapsack |q 79308 |goto The Ringing Deeps/0 64.54,40.56 |future
|tip Inside the cave.
]],
},
{
treasure=[[Lost Console]],
spot="The Ringing Deeps/0 56.39,22.50",
quest=83482,
steps=[[
step
click Lost Console |q 83482 |goto The Ringing Deeps/0 52.23,22.50 |future
]],
},
{
treasure=[[Obsidian Console]],
spot="The Ringing Deeps/0 69.10,48.80",
quest=83481,
steps=[[
step
click Obsidian Console |q 83481 |goto The Ringing Deeps/0 64.94,48.80 |future
]],
},
{
treasure=[[Hathlaz]],
spot="The Ringing Deeps/0 44.35,13.54",
achieve="40504/68682",
steps=[[
step
click Hathlaz |achieve 40504/68682 |goto The Ringing Deeps/0 40.19,13.54 |future
]],
},
{
treasure=[[Taelloch Console]],
spot="The Ringing Deeps/0 63.70,61.10",
quest=83480,
steps=[[
step
click Taelloch Console |q 83480 |goto The Ringing Deeps/0 59.54,61.10 |future
|tip On the bridge.
]],
},
{
treasure=[[Kaja'Cola Machine]],
spot="The Ringing Deeps/0 59.01,64.40",
quest=82819,
item=220774,
steps=[[
step
click Kaja'Cola Machine |q 82819 |goto The Ringing Deeps/0 54.85,64.40 |future
]],
},
{
treasure=[[Turtle's Thanks]],
spot="Isle of Dorn/0 40.91,73.77",
quest=82716,
item=224549,
steps=[[
stickystart "Gather_Goldengill_Trout"
step
map Isle of Dorn/0
path bouncet; loop off; dist 30
path	33.27,57.72	33.71,60.02	33.90,62.11	35.20,62.43	36.49,63.35
path	38.33,65.28	40.53,64.74	42.71,62.18	44.03,60.87
Follow the path
collect 5 Dornish Pike##220143
|tip Fish them from Calm Surface Ripples or purchase them from the AH.
|tip They share spawns with other schools of fish along the coast.
step
label "Gather_Goldengill_Trout"
map Isle of Dorn/0 |notinsticky
path bouncet; loop off; dist 30 |notinsticky
path	33.27,57.72	33.71,60.02	33.90,62.11	35.20,62.43	36.49,63.35 |notinsticky
path	38.33,65.28	40.53,64.74	42.71,62.18	44.03,60.87 |notinsticky
Follow the path |notinsticky
collect 1 Goldengill Trout##222533
|tip Fish them from Glimmerpools or Festering Rotpools, or purchase them from the AH.
|tip They share spawns with other schools of fish along the coast. |notinsticky
step
talk Dalaran Sewer Turtle##212928
Select _"<Offer five Dornish Pike.>"_ |gossip 121107
Offer the Dornish Pike |q 79585 |goto Isle of Dorn/0 40.91,73.77 |future
step
talk Dalaran Sewer Turtle##223338
|tip You will likely need to wait between 5 and 10 minutes to interact with the turtle again.
|tip Log out and back in after 10 minutes if the turtle doesn't turn purple again.
Select _"<Offer one Goldengill Trout.>"_ |gossip 122356
Offer the Goldengill Trout |q 79586 |goto Isle of Dorn/0 40.91,73.77 |future
step
talk Dalaran Sewer Turtle##212945
Select _"<Lean in closer.>"_ |gossip 122357
click Turtle's Thanks##444354
Find the "Turtle's Thanks" Treasure |q 82716 |goto Dornogal/0 58.35,30.31 |future
]],
},
{
treasure=[[Shimmering Opal Lily]],
spot="Isle of Dorn/0 48.89,60.86",
quest=82326,
item=213197,
steps=[[
step
Enter the cave |goto Isle of Dorn/0 47.62,61.64 < 15
|tip Fly to the bottom of the cave.
click Shimmering Opal Lily##444894 |q 82326 |goto Isle of Dorn/0 48.90,60.89 |future
|tip Floating in the water inside the cave.
]],
},
{
treasure=[[Mushroom Cap]],
spot="Isle of Dorn/0 55.00,65.64",
quest=83245,
item=210796,
steps=[[
step
click Boskroot Cap##442814
|tip All around this area.
collect Boskroot Cap##221550 |q 82142 |goto Isle of Dorn/0 52.79,66.10 |future
step
talk U'llort the Self-Exiled##222894
Select _"<Hand U'llort a Boskroot Cap.>"_ |gossip 122262
click Mushroom Cap##444233
Find the "Mushroom Cap" Treasure |q 83245 |goto Isle of Dorn/0 55.00,65.64 |future
]],
},
{
treasure=[[Web-Wrapped Axe]],
spot="Isle of Dorn/0 59.12,23.47",
quest=82715,
item=224290,
steps=[[
step
click Web-Wrapped Axe##446476|q 82715 |goto Isle of Dorn/0 59.12,23.47 |future
|tip Inside the building.
]],
},
{
treasure=[[Tree's Treasure]],
spot="Isle of Dorn/0 48.51,30.04",
quest=83242,
item=224585,
steps=[[
step
Enter the cave |goto Isle of Dorn/0 48.70,31.06 < 15
|tip At the base of the waterfall.
talk Freysworn Letitia##222940
|tip Inside the cave.
Select _"How can I help?"_ |gossip 122602
collect Crab-Guiding Branch##224185 |n
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Click Here to Continue |confirm |achieve 40434/1 |goto Isle of Dorn/0 48.59,30.04
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Storm's Watch Pearlescent Shellcrab |q 82756 |goto Isle of Dorn/0 38.28,42.01 |future
step
talk Pearlescent Shellcrab##224548
|tip At the base of the trees.
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |q 82755 |goto Isle of Dorn/0 19.73,58.43 |future
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |q 82751 |goto Isle of Dorn/0 50.71,70.57 |future
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |q 82752 |goto Isle of Dorn/0 74.92,49.39 |future
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |q 82753 |goto Isle of Dorn/0 70.76,20.01 |future
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |q 82754 |goto Isle of Dorn/0 41.85,27.02 |future
step
Enter the cave |goto Isle of Dorn/0 48.70,31.06 < 15
|tip At the base of the waterfall.
talk Freysworn Letitia##222940
|tip Inside the cave.
Select _"What have you discovered?"_ |gossip 122272
click Tree's Treasure##443318
Find the "Tree's Treasure" Treasure |q 83242 |goto Isle of Dorn/0 48.59,30.04 |future
]],
},
{
treasure=[[Infused Cinderbrew]],
spot="Isle of Dorn/0 56.22,60.94",
quest=82714,
item=224263,
steps=[[
step
click Infused Cinderbrew##446473 |q 82714 |goto Isle of Dorn/0 56.22,60.94  |future
]],
},
{
treasure=[[Thak's Treasure]],
spot="Isle of Dorn/0 38.07,43.58",
quest=82246,
item=212498,
steps=[[
step
talk One-Eyed Thak##223227
Select _"You have been here for several days?"_ |gossip 122348 |goto Isle of Dorn/0 38.07,43.58
Select _"Why did the earth people bring you here?"_ |gossip 122347
Select _"Yes, show me."_ |gossip 122346
accept Friendly Thak##82245 |goto Isle of Dorn/0 38.07,43.58
step
Follow Thak |q 82245 |future |goto Isle of Dorn/0 36.87,42.24
step
Watch the Dialogue
click Thak's Treasure##444137 |q 82246 |goto Isle of Dorn/0 36.95,42.20 |future
]],
},
{
treasure=[[Kobold Pickaxe]],
spot="Isle of Dorn/0 62.57,43.27",
quest=82325,
item=223484,
steps=[[
step
click Kobold Pickaxe |q 82325 |goto Isle of Dorn/0 62.57,43.27 |future
|tip It despawns for a while after someone loots it, so you might need to wait.
]],
},
{
treasure=[[Mysterious Orb]],
spot="Isle of Dorn/0 54.00,19.14",
quest=83244,
item=224373,
steps=[[
step
click Elemental Pearl##442718
|tip Underwater.
collect Elemental Pearl##221504 |q 83244 |goto Isle of Dorn/0 53.07,18.54  |future
step
talk Weary Water Elemental##222847
Select _"<Hand the pearl to the water elemental.>"_ |gossip 122226
Give the Pearl to the Weary Water Elemental |q 83244 |goto Isle of Dorn/0 54.00,19.13 |future
step
click Mysterious Orb##444215 |q 83244 |goto Isle of Dorn/0 53.99,19.184 |future
]],
},
{
treasure=[[Mosswool Flower]],
spot="Isle of Dorn/0 59.62,24.59",
quest=83246,
item=224450,
steps=[[
step
click Mosswool Flower##443638
Follow the Mosswool Flower
accept The Lost Mosswool##82145 |goto Isle of Dorn/0 59.60,24.61
step
clicknpc Lost Mosswool##222963
Follow the Mosswool Flower |goto Isle of Dorn/0 59.11,27.07
Click Here to Continue |confirm |achieve 40434/7
step
clicknpc Lost Mosswool##222965
Inspect the Lost Mosswool |q 82145 |future |goto Isle of Dorn/0 59.74,28.70
step
click Mosswool Flower##443638 |q 83246 |goto Isle of Dorn/0 59.74,28.71 |future
]],
},
{
treasure=[[Jade Pearl]],
spot="Isle of Dorn/0 77.23,24.46",
quest=82287,
item=223280,
steps=[[
step
click Jade Pearl##444773 |q 82287 |goto Isle of Dorn/0 77.23,24.46 |future
|tip It despawns for a while after someone loots it, so you might need to wait.
]],
},
{
treasure=[[Magical Treasure Chest]],
spot="Isle of Dorn/0 40.65,59.75",
quest=83243,
item=224579,
steps=[[
step
talk Lionel##223104
Select  _"<Get the fish to the water.>"_ |gossip 122296
accept Weak Lionfish##82212 |goto Isle of Dorn/0 40.62,59.87
step
clicknpc Plump Snapcrab##223159+
|tip They look like tiny crabs near the water around the small island.
collect 5 Plump Snapcrab##222906 |q 83243 |goto Isle of Dorn/0 40.62,59.87 |future
step
talk Lionel##223143
Select _"<Give Lionel the plump crabs.>"_ |gossip 122310
Feed Lionel |q 82212 |goto Isle of Dorn/0 40.69,59.75 |future
step
click Magical Treasure Chest |q 83243 |goto Isle of Dorn/0 40.65,59.75 |future
]],
},
{
treasure=[[Nerubian Offerings]],
spot="Nerub'ar/0 31.64,20.77",
quest=82720,
steps=[[
step
click Nerubian Offerings |q 82720 |goto Nerub'ar/0 31.64,20.77 |future
|tip In a nook beneath the platform.
]],
},
{
treasure=[[Trapped Trove]],
spot="Nerub'ar/0 67.39,74.41",
quest=82727,
item=222966,
steps=[[
step
click Trapped Trove |q 82727 |goto Nerub'ar/0 67.39,74.41 |future
|tip Navigate through the web traps.
]],
},
{
treasure=[[Fuzzy, Furball]],
spot="Hallowfall/0 64.44,18.57",
achieve="40625/11",
steps=[[
step
click Fuzzy, Furball |achieve 40625/11 |goto Hallowfall/0 64.44,18.57 |future
]],
},
{
treasure=[[Moog, Iggy]],
spot="Hallowfall/0 69.27,43.72",
achieve="40625/69001",
steps=[[
step
click Moog, Iggy |achieve 40625/69001 |goto Hallowfall/0 69.27,43.72 |future
]],
},
{
treasure=[[Priory Satchel]],
spot="Hallowfall/0 30.22,38.77",
quest=81972,
item=224578,
steps=[[
step
click Windswept Satchel##441611
|tip Hanging off the ledge of the building.
collect Arathor Courier's Satchel##224578 |q 81972 |goto Hallowfall/0 30.23,38.76 |future
]],
},
{
treasure=[[Offering of Pure Water]],
spot="Hallowfall/0 53.77,19.13",
quest=81880,
item=220122,
steps=[[
step
click Offering of Pure Water |q 81880 |goto Hallowfall/0 53.77,19.13 |future
]],
},
{
treasure=[[Illuminated Footlocker]],
spot="Hallowfall/0 58.39,27.16",
quest=81468,
item=224552,
steps=[[
step
Enter the cave |goto Hallowfall/0 57.61,27.43 < 10
Gain the "Glimmering Illumination" Buff |havebuff  Glimmering Illumination##442529 |only if not achieved(40848,10)
|tip A moth flies around inside the cave.
|tip It will toss out orbs towards circles that appear on the ground.
|tip Try to stand beneath the moth as it moves as you need 5 stacks of "Star Glimmer" in order gain Glimmering Illumination.
|tip Once you have Glimmering Illumination the chest will be revealed.
click Illuminated Footlocker##437211
collect Cave Spelunker's Torch##224552 |q 81468 |goto Hallowfall/0 58.38,27.16 |future
]],
},
{
treasure=[[Offering of Pure Water]],
spot="Hallowfall/0 43.45,14.13",
quest=81880,
item=220122,
steps=[[
step
click Offering of Pure Water |q 81880 |goto Hallowfall/0 43.45,14.13 |future
]],
},
{
treasure=[[Beledar- The Emperor's Vision]],
spot="Hallowfall/0 56.58,65.18",
achieve="40622/68968",
item=225203,
steps=[[
step
click Beledar- The Emperor's Vision
|tip Inside the ship.
collect Beledar - The Emperor's Vision##225203 |q 83312 |goto Hallowfall/0 56.56,65.16 |future
]],
},
{
treasure=[[Emery]],
spot="Hallowfall/0 42.73,53.88",
achieve="40625/68999",
steps=[[
step
]],
},
{
treasure=[[Illusive Kobyss Lure]],
spot="Hallowfall/0 55.36,27.20",
quest=83299,
item=225641,
steps=[[
step
click Illusive Kobyss Lure |q 83299 |goto Hallowfall/0 55.36,27.20 |future
]],
},
{
treasure=[[Dander]],
spot="Hallowfall/0 61.92,20.81",
achieve="40625/13",
steps=[[
step
click Dander |achieve 40625/13 |goto Hallowfall/0 61.92,20.81 |future
]],
},
{
treasure=[[Purrlock]],
spot="Hallowfall/0 63.79,29.32",
achieve="40625/9",
steps=[[
step
click Purrlock |achieve 40625/9 |goto Hallowfall/0 63.79,29.32 |future
|tip Light the blooming keyflame.
]],
},
{
treasure=[[From the Depths They Come]],
spot="Hallowfall/0 57.59,51.80",
achieve="40622/68960",
item=225208,
steps=[[
step
click From the Depths They Come |achieve 40622/68960 |goto Hallowfall/0 57.59,51.80 |future
]],
},
{
treasure=[[Offering of Pure Water]],
spot="Hallowfall/0 34.36,53.57",
quest=81880,
item=220122,
steps=[[
step
click Offering of Pure Water |q 81880 |goto Hallowfall/0 34.36,53.57 |future
]],
},
{
treasure=[[Offering of Pure Water]],
spot="Hallowfall/0 34.18,57.82",
quest=81880,
item=220122,
steps=[[
step
click Offering of Pure Water |q 81880 |goto Hallowfall/0 34.18,57.82 |future
]],
},
{
treasure=[[Illusive Kobyss Lure]],
spot="Hallowfall/0 50.65,50.37",
quest=83299,
item=225641,
steps=[[
step
click Illusive Kobyss Lure |q 83299 |goto Hallowfall/0 50.65,50.37 |future
]],
},
{
treasure=[[Offering of Pure Water]],
spot="Hallowfall/0 28.92,51.20",
quest=81880,
item=220122,
steps=[[
step
click Offering of Pure Water |q 81880 |goto Hallowfall/0 28.92,51.20 |future
]],
},
{
treasure=[[Lost Necklace]],
spot="Hallowfall/0 50.06,13.82",
quest=81978,
item=224575,
steps=[[
step
click Lost Memento##441638
collect Lightbearer's Pendant##224575 |q 81978 |goto Hallowfall/0 50.06,13.84 |future
]],
},
{
treasure=[[Offering of Pure Water]],
spot="Hallowfall/0 55.14,23.44",
quest=81880,
item=220122,
steps=[[
step
click Offering of Pure Water |q 81880 |goto Hallowfall/0 55.14,23.44 |future
]],
},
{
treasure=[[Dark Ritual]],
spot="Hallowfall/0 59.52,59.66",
quest=83284,
item=225693,
steps=[[
step
Enter the cave |goto Hallowfall/0 59.67,60.66 < 10
click Dark Ritual##453359
|tip On the ground surrounded by purple candles inside the cave.
Select _"(Start Ritual) What could possibly go wrong?"_ |gossip 122867
Defeat the waves of enemies
click Shadowed Essence##453374
|tip It spawns after the waves of enemies are defeated.
collect Shadowed Essence##225693|q 83284 |goto Hallowfall/0 59.52,59.66 |future
]],
},
{
treasure=[[Caesper]],
spot="Hallowfall/0 41.77,58.29",
quest=83263,
item=225639,
steps=[[
step
talk Torran Dellain##217645
buy 1 Meaty Haunch##225238 |q 83263 |goto Hallowfall/0 69.25,43.95 |future
step
talk Caesper##225948
Select _"<Place the Meaty Haunch in his mouth, and back up.>"_ |gossip 122845 |goto Hallowfall/0 41.78,58.24
Follow Caesper
click Disturbed Lynx Treasure##453167
collect Exquisitely Eviscerated Muscle##225592 |q 83263 |future
collect Recipe: Exquisitely Eviscerated Muscle##225639 |q 83263 |goto Hallowfall/0 42.12,58.97 |future
]],
},
{
treasure=[[Spore-covered Coffer]],
spot="Hallowfall/0 76.77,53.83",
quest=79275,
steps=[[
step
Enter the cave |goto Hallowfall/0 76.08,53.71 < 10
click Spore-Covered Coffer##419695
Collect the "Spore-Covered Coffer" Treasure |q 79275 |goto Hallowfall/0 76.77,53.84 |future
]],
},
{
treasure=[[Smuggler's Treasure]],
spot="Hallowfall/0 55.13,51.93",
quest=83273,
item=226021,
steps=[[
step
talk Dead Arathi##226025
|tip On the ground near some bushes.
Select _"<Read the note.>"_ |gossip 122856
Select _"<Take the Key.>"_ |gossip 122857
collect Smuggler's Key##225335 |q 83273 |goto Hallowfall/0 55.43,51.64 |future
step
click Smuggler's Treasure
Select _"(Smuggler's Key) Insert the Key."_ |gossip 122853
|tip Up on the cliff above where you found the key.
click Smuggler's Treasure
collect Jar of Pickles##226021 |q 83273 |goto Hallowfall/0 55.13,51.93 |future
]],
},
{
treasure=[[Jewel of the Cliffs]],
spot="Hallowfall/0 55.79,69.54",
quest=81971,
item=224580,
steps=[[
step
click Jewel of the Cliffs##441606
|tip High up on the rocks.
collect Massive Sapphire Chunk##224580 |q 81971 |goto Hallowfall/0 55.78,69.55 |future
]],
},
{
treasure=[[Gobbo]],
spot="Hallowfall/0 42.14,53.71",
achieve="40625/69010",
steps=[[
step
click Gobbo |achieve 40625/69010 |goto Hallowfall/0 42.14,53.71 |future
]],
},
{
treasure=[[Miral Murder-Mittens]],
spot="Hallowfall/0 61.19,30.54",
achieve="40625/10",
steps=[[
step
click Miral Murder-Mittens |achieve 40625/10 |goto Hallowfall/0 61.19,30.54 |future
]],
},
{
treasure=[[Illusive Kobyss Lure]],
spot="Hallowfall/0 47.61,18.54",
quest=83299,
item=225641,
steps=[[
step
kill Kobyss Shadeshaper##215653+
collect Sunless Lure##225554 |q 83299 |goto Hallowfall/0 54.93,27.27 |future
step
kill Ragefin Necromancer##213406+
collect Ragefin Necrostaff##225560 |q 83299 |goto Hallowfall/0 35.71,54.04 |future
step
kill Hungering Shimmerfin##215243+
collect Hungering Shimmerfin##225559 |q 83299 |goto Hallowfall/0 49.15,48.33 |future
step
kill Murkfin Depthstalker##213622+
collect Murkfin Lure##225558 |q 83299 |goto Hallowfall/0 48.23,17.50 |future
step
use the Murkfin Lure##225558
collect Illusive Kobyss Lure##225641 |q 83299 |future
]],
},
{
treasure=[[Shadow Curfew Journal]],
spot="Hallowfall/0 59.80,22.03",
achieve="40622/68965",
item=225205,
steps=[[
step
click Shadow Curfew Journal |achieve 40622/68965 |goto Hallowfall/0 59.80,22.03 |future
]],
},
{
treasure=[[Jar of Mucus]],
spot="Hallowfall/0 48.00,16.68",
quest=81880,
item=220124,
steps=[[
step
click Jar of Mucus |q 81880 |goto Hallowfall/0 48.00,16.68 |future
]],
},
{
treasure=[[Jinx]],
spot="Hallowfall/0 42.30,53.81",
achieve="40625/69000",
steps=[[
step
click Jinx |achieve 40625/69000 |goto Hallowfall/0 42.30,53.81 |future
]],
},
{
treasure=[[The Big Book of Arathi Idioms]],
spot="Hallowfall/0 48.15,39.59",
achieve="40622/68954",
item=225212,
steps=[[
step
click The Big Book of Arathi Idioms |achieve 40622/68954 |goto Hallowfall/0 48.15,39.59 |future
]],
},
{
treasure=[[Arathi Loremaster]],
spot="Hallowfall/0 40.01,51.12",
quest=83298,
item=225659,
steps=[[
step
click Collect Palawltar's Codex of Dimensional Structure
|tip On the bookshelf inside the building.
collect Collect Palawltar's Codex of Dimensional Structure##225216 |q 83298 |goto Hallowfall/0 48.75,64.71 |future
step
click Beledar- The Emperor's Vision
|tip Inside the ship.
collect Beledar - The Emperor's Vision##225203 |q 83298 |goto Hallowfall/0 56.56,65.16 |future
step
click Care and Feeding of the Imperial Lynx
|tip Inside the building.
collect Care and Feeding of the Imperial Lynx##225207 |q 83298 |goto Hallowfall/0 69.35,43.99 |future
step
click The Song of Renilash
|tip Inside the tent.
collect The Song of Renilash##225215 |q 83298 |goto Hallowfall/0 70.20,56.85 |future
step
click Collect Shadow Curfew Guidelines
|tip On a table inside the building.
collect Shadow Curfew Guidelines##225204 |q 83298 |goto Hallowfall/0 64.22,28.11 |future
step
click The Big Book of Arathi Idioms
|tip Inside the building.
collect The Big Book of Arathi Idioms##225212 |q 83298 |goto Hallowfall/0 48.10,39.55 |future
step
Enter the building |goto Hallowfall/0 40.11,51.37 < 10
talk Ryfus Sacredpyr##221630
|tip Inside the building.
Select _"Ask your question."_ |gossip 122882
|tip Ignore the other dialogue that doesn't apear below.
Select _"That the Cosmos consisted of monopole elemental phase spaces."_ |gossip 122886
Select _"Patience and respect."_ |gossip 122892
Select _"Seek shelter and light. Have plans, have backup plans. Find joy while sheltering."_ |gossip 122900
Select _"The third fleet."_ |gossip 122905
Select _"The remains of gods."_ |gossip 122913
Select _"From the letters of Mereldar."_ |gossip 122918
Select _"That's all the questions. What do I win?"_ |gossip 122916
click Loremaster's Reward##453741
|tip Appears on the table next to Ryfus.
collect Arathi Book Collection##225659 |q 83298 |future
]],
},
{
treasure=[[Care and Feeding of the Imperial Lynx]],
spot="Hallowfall/0 69.34,43.94",
achieve="40622/68957",
item=225207,
steps=[[
step
click Care and Feeding of the Imperial Lynx |achieve 40622/68957 |goto Hallowfall/0 69.34,43.94 |future
]],
},
{
treasure=[[The Song of Renilash]],
spot="Hallowfall/0 70.22,56.84",
achieve="40622/68967",
item=225215,
steps=[[
step
click The Song of Renilash |achieve 40622/68967 |goto Hallowfall/0 70.22,56.84 |future
]],
},
{
treasure=[[Evan]],
spot="Hallowfall/0 42.69,53.84",
achieve="40625/68998",
steps=[[
step
click Evan |achieve 40625/68998 |goto Hallowfall/0 42.69,53.84 |future
]],
},
{
treasure=[[Illusive Kobyss Lure]],
spot="Hallowfall/0 34.96,54.65",
quest=83299,
item=225641,
steps=[[
step
kill Kobyss Shadeshaper##215653+
collect Sunless Lure##225554 |q 83299 |goto Hallowfall/0 54.93,27.27 |future
step
kill Ragefin Necromancer##213406+
collect Ragefin Necrostaff##225560 |q 83299 |goto Hallowfall/0 35.71,54.04 |future
step
kill Hungering Shimmerfin##215243+
collect Hungering Shimmerfin##225559 |q 83299 |goto Hallowfall/0 49.15,48.33 |future
step
kill Murkfin Depthstalker##213622+
collect Murkfin Lure##225558 |q 83299 |goto Hallowfall/0 48.23,17.50 |future
step
use the Murkfin Lure##225558
collect Illusive Kobyss Lure##225641 |q 83299 |future
]],
},
{
treasure=[[Offering of Pure Water]],
spot="Hallowfall/0 50.09,49.66",
quest=81880,
item=220122,
steps=[[
step
click Offering of Pure Water |q 81880 |goto Hallowfall/0 50.09,49.66 |future
]],
},
{
treasure=[[Shadow Curfew Guidelines]],
spot="Hallowfall/0 64.18,28.12",
achieve="40622/68963",
item=225204,
steps=[[
step
click Shadow Curfew Guidelines |achieve 40622/68963 |goto Hallowfall/0 64.18,28.12 |future
]],
},
{
treasure=[[Palawltar's Codex of Dimensional Structure]],
spot="Hallowfall/0 48.75,64.72",
achieve="40622/68961",
item=225216,
steps=[[
step
click Palawltar's Codex of Dimensional Structure |achieve 40622/68961 |goto Hallowfall/0 48.75,64.72 |future
]],
},
{
treasure=[[500 Dishes Using Cave Fish and Mushrooms]],
spot="Hallowfall/0 43.90,49.97",
achieve="40622/68955",
item=225217,
steps=[[
step
click 500 Dishes Using Cave Fish and Mushrooms |achieve 40622/68955 |goto Hallowfall/0 43.90,49.97 |future
]],
},
{
treasure=[[Nightclaw]],
spot="Hallowfall/0 63.30,29.40",
achieve="40625/7",
steps=[[
step
click Nightclaw |achieve 40625/7 |goto Hallowfall/0 63.30,29.40 |future
|tip Light the lesser keyflame.
]],
},
{
treasure=[[Shadowpouncer]],
spot="Hallowfall/0 63.26,28.11",
achieve="40625/8",
steps=[[
step
click Shadowpouncer |achieve 40625/8 |goto Hallowfall/0 63.26,28.11 |future
|tip Light the blooming keyflame.
]],
},
{
treasure=[[Light's Gambit Playbook]],
spot="Hallowfall/0 68.68,41.59",
achieve="40622/68958",
item=225206,
steps=[[
step
click Light's Gambit Playbook |achieve 40622/68958 |goto Hallowfall/0 68.68,41.59 |future
]],
},
{
treasure=[[Silk-spun Supplies]],
spot="Azj-Kahet/0 85.00,89.00",
quest=82719,
steps=[[
step
click Silk-spun Supplies |q 82719 |goto Azj-Kahet/0 85.00,89.00 |future
]],
},
{
treasure=[[Missing Scout's Pack]],
spot="Azj-Kahet/0 38.78,37.22",
quest=82722,
steps=[[
step
click Missing Scout's Pack |q 82722 |goto Azj-Kahet/0 38.78,37.22 |future
]],
},
{
treasure=[[Disturbed Soil]],
spot="Azj-Kahet/0 67.44,90.72",
quest=82718,
steps=[[
step
click Disturbed Soil |q 82718 |goto Azj-Kahet/0 67.44,90.72 |future
]],
},
{
treasure=[[Weaving Supplies]],
spot="Azj-Kahet/0 78.62,33.20",
quest=82527,
item=225347,
steps=[[
step
click Weaving Supplies |q 82527 |goto Azj-Kahet/0 78.62,33.20 |future
]],
},
{
treasure=[[Niffen Stash]],
spot="Azj-Kahet/0 89.00,89.00",
quest=82721,
steps=[[
step
click Niffen Stash |q 82721 |goto Azj-Kahet/0 89.00,89.00 |future
]],
},
{
treasure=[[Nest Egg]],
spot="Azj-Kahet/0 49.56,43.70",
quest=82529,
item=221760,
steps=[[
step
click Nest Egg |q 82529 |goto Azj-Kahet/0 49.56,43.70 |future
|tip Webbed to the ceiling.
]],
},
}
