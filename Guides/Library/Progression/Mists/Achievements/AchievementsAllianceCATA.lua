-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Achievement Guides\\Collections\\Mounts\\Get to the Choppa!",{
expansion="mists",
mopready=true,
achieveid={2097},
patch='30002',
description="To earn this achievement, you will have to craft or purchase a Mekgineer's Chopper. "..
"Crafting this mount requires the Northrend Engineering profession. You may also purchase it from "..
"the Auction House.",
},[[
step
Click Here to Craft with Northrend Engineering |next "Craft_Chopper" |confirm |only if skill("Engineering") >= 1 |achieve 2097 |or
|tip You will need a skill of 450 Engineering to craft it.
Click Here to Purchase from the Auction House |confirm |only if skill("Engineering") >= 1 |achieve 2097 |or
'|achieve 2097 |next "End" |or
step
talk Auctioneer Fitch##8719
buy 1 Mekgineer's Chopper##44413 |goto Stormwind City/0 61.17,70.79 |next "Learn_Chopper" |or
'|achieve 2097 |next "End" |or
step
label "Craft_Chopper"
collect 12 Titansteel Bar##37663 |or
|tip These are created via the mining skill.
|tip They require: 3 Titanium Bars, 1 Eternal Fire, Eternal Earth and Eternal Shadow to craft.
|tip You can also buy them from the Auction House.
'|achieve 2097 |or
step
collect 40 Handful of Cobalt Bolts##39681 |or
|tip These are crafted via engineering.
|tip You can also buy them from the Auction House.
'|achieve 2097 |or
step
collect 2 Arctic Fur##44128 |achieve 2097 |future
|tip These are gathered via the skinning profession.
|tip You can also buy them from the Auction House.
step
talk Roxi Ramrocket##31247
buy 1 Salvaged Iron Golem Parts##44499 |goto The Storm Peaks/0 40.60,84.80 |or
|tip It will cost 3,000 gold.
'|achieve 2097 |or
step
talk Roxi Ramrocket##31247
buy 8 Goblin-Machined Piston##44501 |goto The Storm Peaks/0 40.60,84.80 |or
|tip It will cost 8,000 gold.
'|achieve 2097 |or
step
talk Roxi Ramrocket##31247
buy 1 Elementium-Plated Exhaust Pipe##44500 |goto The Storm Peaks/0 40.60,84.80 |or
|tip It costs 1,500 gold.
'|achieve 2097 |or
step
Open Your Northrend Engineering Crafting Panel:
_<Create 1 Mekgineer's Chopper>_
collect 1 Mekgineer's Chopper##44413 |achieve 2097 |future
step
label "Learn_Chopper"
use the Mekgineer's Chopper##44413
|learnmount Mekgineer's Chopper##60867
step
label "End"
Earn the "Get to the Choppa!" Achievement |achieve 2097
]])
QuestCore:RegisterGuide("Achievement Guides\\Collections\\Represent",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(621) end,
achieveid={621},
patch='30001',
description="Collect a tabard slot appearance.",
},[[
step
talk Captain Lancy Revshon##49877
buy 1 Stormwind Tabard##45574 |goto Stormwind City/0 67.74,73.03 |achieve 621 |future
step
use the Stormwind Tabard##45574
Equip a Stormwind Tabard |equipped Stormwind Tabard##45574 |achieve 621 |future
step
|achieve 621
step
_Congratulations!_
You Earned the "Represent" Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Collections\\Ten Tabards",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1020) end,
achieveid={1020},
patch='30001',
description="Collect 10 tabard slot appearances.",
},[[
leechsteps "Achievement Guides\\Collections\\Represent" 1-2
step
talk Old Whitenose##65068 |goto Stormwind City 67.80,18.60
buy Tushui Tabard##83079 |n
Equip Tushui Tabard |use Tushui Tabard##83079
confirm
step
talk Master Tinker Trini##50308 |goto Ironforge 55.30,48.20
buy Gnomeregan Tabard##45578 |n
Equip Gnomeregan Tabard |use Gnomeregan Tabard##45578
confirm
step
talk Captain Stonehelm##50309 |goto Ironforge 55.60,47.30
buy Ironforge Tabard##45577 |n
Equip Ironforge Tabard |use Ironforge Tabard##45577
confirm
step
talk Moon Priestess Lasara##50305 |goto Darnassus 36.20,48.50
buy Darnassus Tabard##45579 |n
Equip Darnassus Tabard |use Darnassus Tabard##45579
confirm
step
talk Lord Candren##50307 |goto Darnassus 37.10,47.50
buy Gilneas Tabard##64882 |n
Equip Gilneas Tabard |use Gilneas Tabard##64882
confirm
step
talk Kadu##50306 |goto The Exodar 54.80,36.80
buy Exodar Tabard##45580 |n
Equip Exodar Tabard |use Exodar Tabard##45580
confirm
step
_Congratulations!_
You Earned the "" Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Pardon Denied",{
expansion="mists",
mopready=true,
achieveid={5503},
patch='40003',
description="This guide will walk you through on how to get the Pardon Denied achievement.",
},[[
step
kill Baron Ashbury##46962
|tip On heroic difficulty, defeat Baron Ashbury without letting him heal with Stay of Executionin Shadowfang Keep.
|tip Use an interrupt as soon as you see him casting Stay of Execution.
Earn the "Pardon Denied" Achievement |achieve 5503 |goto Shadowfang Keep 66.40,73.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\To the Ground!",{
expansion="mists",
mopready=true,
achieveid={5504},
patch='40003',
description="This guide will walk you through on how to get the To the Ground! achievement.",
},[[
step
kill Commander Springvale##4278
|tip On heroic difficulty, defeat Commander Springvale in Shadowfang Keep without allowing him to receive Unholy Empowerment.
|tip Prioritize killing adds as well as interrupting them.
Earn the "To the Ground!" Achievement |achieve 5504 |goto Shadowfang Keep 28.00,59.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\A Void Dance",{
expansion="mists",
mopready=true,
achieveid={2153},
patch='30003',
description="This guide will walk you through getting the A Void Dance achievement.",
},[[
step
kill Zuramat the Obliterator##29314
|tip On Heroic difficulty, defeat Zuramat the Obliterator without killing and Void Sentries.
Earned the "A Void Dance" Achievement |achieve 2153 |goto The Violet Hold 27.10,33.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Abuse the Ooze",{
expansion="mists",
mopready=true,
achieveid={2155},
patch='30002',
description="This guide will walk you through getting the Abuse the Ooze achievement.",
},[[
step
kill Sjonnir the Ironshaper##27978
|tip On Heroic difficulty, kill 5 Iron Sludges before defeating Sjonnir.
Earn the "Abuse the Ooze" Achievement |achieve 2155 |goto Halls of Stone 49.70,13.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Amber Void",{
expansion="mists",
mopready=true,
achieveid={2046},
patch='30002',
description="This guide will walk you through getting the Amber Void achievement.",
},[[
step
kill Ley-Guardian Eregos##27656
|tip Use an Amber Drake on Heroic difficulty.
Earn the "Amber Void" Achievement |achieve 2046 |goto The Oculus 46.90,20.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Better Off Dred",{
expansion="mists",
mopready=true,
achieveid={2039},
patch='30003',
description="This guide will walk you through getting the Better Off Dred achievement.",
},[[
step
kill King Dred##27483
|tip On Heroic difficulty, kill 6 Drakkari Gutrippers or Drakkari Scythclaws during the fight.
|tip When you enter the area, be sure to kill only trolls while making your way to the boss.
Earn the "Better Off Dred" Achievement |achieve 2039 |goto Drak'Tharon Keep 61.20,86.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Brann Spankin' New",{
expansion="mists",
mopready=true,
achieveid={2154},
patch='30002',
description="This guide will walk you through getting the Brann Spankin' New achievement.",
},[[
step
kill Tribunal of Ages##28234
|tip On Heroic difficulty, clear the Tribunal of Ages event without Brann taking any damage.
|tip Stay at the entrance of the room picking up enemies that appear from the left and right immidiately.
Earn the "Brann Spankin' New" Achievement |achieve 2154 |goto Halls of Stone 84.90,76.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Chaos Theory",{
expansion="mists",
mopready=true,
achieveid={2037},
patch='30008',
description="This guide will walk you through getting the Chaos Theory achievement.",
},[[
step
kill Anomalus##26763
|tip On Heroic difficulty, defeat Anomalus without destroying any Chaotic Rifts that he spawns.
Earn the "Chaos Theory" Achievement |achieve 2037 |goto The Nexus 62.00,22.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Consumption Junction",{
expansion="mists",
mopready=true,
achieveid={2151},
patch='30008',
description="This guide will walk you through getting the Consumption Junction achievement.",
},[[
step
kill Trollgore##26630
|tip On Heroic difficulty, kill Trollgore before his Consume buff stacks 10 times.
Earn the "Consumption Junction" Achievement |achieve 2151 |goto Drak'Tharon Keep 56.50,18.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\The Culling of Time",{
expansion="mists",
mopready=true,
achieveid={1817},
patch='30002',
description="This guide will walk you through how to get The Culling of Time achievement.",
},[[
step
kill Infinite Corruptor##32273
|tip Defeat the Infinite Corruptor within 25 minutes of starting the instance.
|tip Use the "/timer" function to keep track of your time.
Earn the "The Culling of Time" Achievement |achieve 1817 |goto The Culling of Stratholme 51.00,42.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Defenseless",{
expansion="mists",
mopready=true,
achieveid={1816},
patch='30003',
description="This guide will walk you through getting the Defenseless achievement.",
},[[
step
kill Cyanigosa##31134
|tip On Heroic difficulty, clear Violet Hold without using Defense Control Crystals.
|tip You must also prevent adds from reducing the Prison Seal Integrity.
Earn the "Defenseless" Achievement |achieve 1816 |goto The Violet Hold 45.00,55.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Dehydration",{
expansion="mists",
mopready=true,
achieveid={2041},
patch='30003',
description="This guide will walk you through getting the Dehydration achievement.",
},[[
step
kill Ichoron##29313
|tip On Heroic difficulty, defeat Ichoron without allowing any Ichor Globules to merge.
|tip When Ichorons Protective Bubble gets close to 0, use the Activation Crystals in the room to accomplish this.
Earn the "Dehydration" Achievement |achieve 2041 |goto The Violet Hold 55.60,40.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Emerald Void",{
expansion="mists",
mopready=true,
achieveid={2045},
patch='30002',
description="This guide will walk you through getting the Emerald Void achievement.",
},[[
step
kill Ley-Guardian Eregos##27656
|tip Use an Emerald Drake on Heroic difficulty.
Earn the "Emerald Void" Achievement |achieve 2045 |goto The Oculus 46.90,20.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Experienced Drake Rider",{
expansion="mists",
mopready=true,
achieveid={1871},
patch='30008',
description="This guide will walk you through getting the Experienced Drake Rider achievement.",
},[[
step
kill Ley-Guardian Eregos##27656
Earn the "Amber Drake" Portion of the "My Girl Loves to Skadi All the Time" Achievement |achieve 1871/1 |goto The Oculus 46.90,20.90
Earn the "Emerald Drake" Portion of the "My Girl Loves to Skadi All the Time" Achievement |achieve 1871/2 |goto The Oculus 46.90,20.90
Earn the "Ruby Drake" Portion of the "My Girl Loves to Skadi All the Time" Achievement |achieve 1871/3 |goto The Oculus 46.90,20.90
|tip Use all 3 drakes on 3 separate runs on Heroic Difficulty to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Glory of the Hero",{
expansion="mists",
mopready=true,
achieveid={2136},
patch='30002',
description="This guide will walk you through getting the Glory of the Hero achievement.",
},[[
step
Load the "On The Rocks" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\On The Rocks"
|tip Click the line above to load the guide.
Earn the "On The Rocks" Achievement |achieve 2136/1
step
Load the "Split Personality" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Split Personality"
|tip Click the line above to load the guide.
Earn the "Split Personality" Achievement |achieve 2136/2
step
Load the "Intense Cold" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Intense Cold"
|tip Click the line above to load the guide.
Earn the "Intense Cold" Achievement |achieve 2136/3
step
Load the "Chaos Theory" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Chaos Theory"
|tip Click the line above to load the guide.
Earn the "Chaos Theory" Achievement |achieve 2136/4
step
Load the "Watch Him Die" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Watch Him Die"
|tip Click the line above to load the guide.
Earn the "Watch Him Die" Achievement |achieve 2136/5
step
Load the "Hadronox Denied" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Hadronox Denied"
|tip Click the line above to load the guide.
Earn the "Hadronox Denied" Achievement |achieve 2136/6
step
Load the "Gotta Go!" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Gotta Go!"
|tip Click the line above to load the guide.
Earn the "Gotta Go!" Achievement |achieve 2136/7
step
Load the "Volazj's Quick Demise" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Volazj's Quick Demise"
|tip Click the line above to load the guide.
Earn the "Volazj's Quick Demise" Achievement |achieve 2136/8
step
Load the "Respect Your Elders" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Respect Your Elders"
|tip Click the line above to load the guide.
Earn the "Respect Your Elders" Achievement |achieve 2136/9
step
Load the "Volunteer Work" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Volunteer Work"
|tip Click the line above to load the guide.
Earn the "Volunteer Work" Achievement |achieve 2136/10
step
Load the "Consumption Junction" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Consumption Junction"
|tip Click the line above to load the guide.
Earn the "Consumption Junction" Achievement |achieve 2136/11
step
Load the "Better Off Dred" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Better Off Dred"
|tip Click the line above to load the guide.
Earn the "Better Off Dred" Achievement |achieve 2136/12
step
Load the "Oh Novos!" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Oh Novos!"
|tip Click the line above to load the guide.
Earn the "Oh Novos!" Achievement |achieve 2136/13
step
Load the "Defenseless" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Defenseless"
|tip Click the line above to load the guide.
Earn the "Defenseless" Achievement |achieve 2136/14
step
Load the "Lockdown!" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Lockdown!"
|tip Click the line above to load the guide.
Earn the "Lockdown!" Achievement |achieve 2136/15
step
Load the "Dehydration" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Dehydration"
|tip Click the line above to load the guide.
Earn the "Dehydration" Achievement |achieve 2136/16
step
Load the "A Void Dance" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\A Void Dance"
|tip Click the line above to load the guide.
Earn the "A Void Dance" Achievement |achieve 2136/17
step
Load the "What the Eck?" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\What the Eck?"
|tip Click the line above to load the guide.
Earn the "What the Eck?" Achievement |achieve 2136/18
step
Load the "Less-rabi" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Less-rabi"
|tip Click the line above to load the guide.
Earn the "Less-rabi" Achievement |achieve 2136/19
step
Load the "Snakes. Why'd It Have To Be Snakes?" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Snakes. Why'd It Have To Be Snakes?"
|tip Click the line above to load the guide.
Earn the "Snakes. Why'd It Have To Be Snakes?" Achievement |achieve 2136/20
step
Load the "Good Grief" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Good Grief"
|tip Click the line above to load the guide.
Earn the "Good Grief" Achievement |achieve 2136/21
step
Load the "Brann Spankin' New" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Brann Spankin' New"
|tip Click the line above to load the guide.
Earn the "Brann Spankin' New" Achievement |achieve 2136/22
step
Load the "Abuse the Ooze" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Abuse the Ooze"
|tip Click the line above to load the guide.
Earn the "Abuse the Ooze" Achievement |achieve 2136/23
step
Load the "Timely Death" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Timely Death"
|tip Click the line above to load the guide.
Earn the "Timely Death" Achievement |achieve 2136/24
step
Load the "Lightning Struck" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Lightning Struck"
|tip Click the line above to load the guide.
Earn the "Lightning Struck" Achievement |achieve 2136/25
step
Load the "Shatter Resistant" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Shatter Resistant"
|tip Click the line above to load the guide.
Earn the "Shatter Resistant" Achievement |achieve 2136/26
step
Load "The Culling of Time" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\The Culling of Time"
|tip Click the line above to load the guide.
Earn "The Culling of Time" Achievement |achieve 2136/27
step
Load the "Zombiefest!" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Zombiefest!"
|tip Click the line above to load the guide.
Earn the "Zombiefest!" Achievement |achieve 2136/28
step
Load the "The Incredible Hulk" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\The Incredible Hulk"
|tip Click the line above to load the guide.
Earn the "The Incredible Hulk" Achievement |achieve 2136/29
step
Load the "Lodi Dodi We Loves the Skadi" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Lodi Dodi We Loves the Skadi"
|tip Click the line above to load the guide.
Earn the "Lodi Dodi We Loves the Skadi" Achievement |achieve 2136/30
step
Load the "My Girl Loves to Skadi All the Time" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\My Girl Loves to Skadi All the Time"
|tip Click the line above to load the guide.
Earn the "My Girl Loves to Skadi All the Time" Achievement |achieve 2136/31
step
Load the "King's Bane" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\King's Bane"
|tip Click the line above to load the guide.
Earn the "King's Bane" Achievement |achieve 2136/32
step
Load the "Experienced Drake Rider" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Experienced Drake Rider"
|tip Click the line above to load the guide.
Earn the "Experienced Drake Rider" Achievement |achieve 2136/33
step
Load the "Make It Count" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Make It Count"
|tip Click the line above to load the guide.
Earn the "Make It Count" Achievement |achieve 2136/34
step
Load the "Ruby Void" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Ruby Void"
|tip Click the line above to load the guide.
Earn the "Ruby Void" Achievement |achieve 2136/35
step
Load the "Emerald Void" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Emerald Void"
|tip Click the line above to load the guide.
Earn the "Emerald Void" Achievement |achieve 2136/36
step
Load the "Amber Void" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Amber Void"
|tip Click the line above to load the guide.
Earn the "Amber Void" Achievement |achieve 2136/37
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Good Grief",{
expansion="mists",
mopready=true,
achieveid={1866},
patch='30008',
description="This guide will walk you through getting the Good Grief achievement.",
},[[
step
kill Maiden of Grief##27975
|tip On Heroic difficulty, defeat the Maiden of Grief within a minute or less.
|tip Use the "/timer" function to keep track of your time.
Earn the "Good Grief" Achievement |achieve 1866 |goto Halls of Stone 50.20,86.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Gotta Go!",{
expansion="mists",
mopready=true,
achieveid={1860},
patch='30008',
description="This guide will walk you through getting the Gotta Go! achievement.",
},[[
step
kill Anub'arak##29120
|tip On Heroic difficulty, defeat Anub'arak in 4 minutes or less.
|tip Use the "/timer" function to keep track of your time.
Earn the "Gotta Go!" Achievement |achieve 1860 |goto Azjol-Nerub 62.10,48.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Hadronox Denied",{
expansion="mists",
mopready=true,
achieveid={1297},
patch='30008',
description="This guide will walk you through getting the Hadronox Denied achievement.",
},[[
step
kill Hadronox##28921
|tip On Heroic difficulty, defeat Hadronox before it tunnels up to the main room.
|tip As soon as you enter the boss room, run down the ramp and kill Hadronox as fast as possible.
Earn the "Hadronox Denied" Achievement |achieve 1297 |goto Azjol-Nerub/2 43.10,59.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Intense Cold",{
expansion="mists",
mopready=true,
achieveid={2036},
patch='30003',
description="This guide will walk you through getting the Intense Cold achievement.",
},[[
step
kill Keristrasza##26723
|tip On Heroic difficulty, defeat Kerinstrasza without allowing Intense cold to reach more than two stacks.
|tip Be sure to jump around to shake off Intense Cold.
Earn the "Intense Cold" Achievement |achieve 2036 |goto The Nexus 36.20,67.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\The Incredible Hulk",{
expansion="mists",
mopready=true,
achieveid={2043},
patch='30002',
description="This guide will walk you through getting The Incredible Hulk achievement.",
},[[
step
kill Svala Sorrowgrave##26668
|tip Set the dungeon to Heroic difficulty.
|tip Pull a Scourge Hulk from the side room.
|tip Damage the Scourge Hulk enough to bring it close to death.
|tip Attack Svala Sorrowgrave enough for her to cast Ritual of the Sword.
|tip Position the Scourge Hulk on the altar so it dies when the sword strikes.
Earn "The Incredible Hulk" Achievement |achieve 2043 |goto Utgarde Pinnacle 36.30,70.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\King's Bane",{
expansion="mists",
mopready=true,
achieveid={2157},
patch='30003',
description="This guide will walk you through getting the King's Bane achievement.",
},[[
step
kill King Ymiron##26861
|tip Interrupt his Bane casts when possible.
|tip Use any damage increasing cooldowns to burn him as fast as possible.
Earn the "King's Bane" Achievement |achieve 2157 |goto Utgarde Pinnacle/1 41.50,53.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Less-rabi",{
expansion="mists",
mopready=true,
achieveid={2040},
patch='30003',
description="This guide will walk you through getting the Less-rabi achievement.",
},[[
step
kill Moorabi##29305
|tip On Heroic difficulty, defeat Moorabi without him finishing his Transformation spell.
|tip Interrupt it to accomplish this.
|tip Each time it is interrupted, the next cast time will be faster.
Earn the "Less-rabi" Achievement |achieve 2040 |goto Gundrak 39.30,48.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Lightning Struck",{
expansion="mists",
mopready=true,
achieveid={1834},
patch='30008',
description="This guide will walk you through getting the Lightning Struck achievement.",
},[[
step
kill General Bjarngrim##28586
|tip On Heroic difficulty, kill General Bjarngrim while he's under the affect of Temporary Electrical Charge.
Earn the "Lightning Struck" Achievement |achieve 1834 |goto Halls of Lightning 43.50,37.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Lockdown!",{
expansion="mists",
mopready=true,
achieveid={1865},
patch='30008',
description="This guide will walk you through getting the Lockdown! achievement.",
},[[
step
kill Xevozz##29266 |achieve 1865/1
kill Lavanthor##29312 |achieve 1865/2
kill Ichoron##29313 |achieve 1865/3
kill Zuramat the Obliterator##29314 |achieve 1865/4
kill Erekem##29315 |achieve 1865/5
kill Moragg##29316 |achieve 1865/6
|tip Kill each of the bosses in The Violet Hold on Heroic difficulty.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Lodi Dodi We Loves the Skadi",{
expansion="mists",
mopready=true,
achieveid={1873},
patch='30002',
description="This guide will walk you through getting the Lodi Dodi We Loves the Skadi achievement.",
},[[
step
kill Skadi the Ruthless##26693
|tip Start the gauntlet encounter, collecting 5 Harpoons.
|tip Run back to the start of the gauntlet to reset it.
|tip Run the Gauntlet again after it resets, shooting Skadi the Ruthless down and killing him.
|tip Use the "/timer" function to keep track of how long you have before failure.
Earn the "Lodi Dodi We Loves the Skadi" Achievement |achieve 1873 |goto Utgarde Pinnacle/1 68.40,36.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Make It Count",{
expansion="mists",
mopready=true,
achieveid={1868},
patch='30008',
description="This guide will walk you through getting the Make It Count achievement.",
},[[
step
This achievement is gained by defeating Ley-Guardian Eregos in The Oculus on _Heroic_ mode within 20 minutes of killing Drakos the Interrogator
kill Drakos the Interrogator##27654
kill Ley-Guardian Eregos##27656
Kill Ley-Guardian Eregos |achieve 1868 |goto The Oculus 46.90,20.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\My Girl Loves to Skadi All the Time",{
expansion="mists",
mopready=true,
achieveid={2156},
patch='30002',
description="This guide will walk you through getting the My Girl Loves to Skadi All the Time achievement.",
},[[
step
kill Grauf##26893
|tip Use 3 Harpoons to kill Grauf during its first pass.
|tip If you fail to do so, you will need to try again.
kill Skadi the Ruthless##26693
Earn the "My Girl Loves to Skadi All the Time" Achievement |achieve 2156 |goto Utgarde Pinnacle/1 68.40,36.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Oh Novos!",{
expansion="mists",
mopready=true,
achieveid={2057},
patch='30003',
description="This guide will walk you through getting the Oh Novos! achievement.",
},[[
step
kill Novos the Summoner##26631
|tip On Heroic difficulty, kill the adds that appear on the steps before they reach the main room.
Earn the "Oh Novos!" Achievement |achieve 2057 |goto Drak'Tharon Keep/1 70.20,47.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\On The Rocks",{
expansion="mists",
mopready=true,
achieveid={1919},
patch='30002',
description="This guide will walk you through getting the On The Rocks achievement.",
},[[
step
|tip Enter from the _south_ or _east_ side, on the lower level of the building, to reach Utgarde Keep.
kill Prince Keleseth##23953
|tip On Heroic difficulty, defeat Prince Keleseth without breaking any players out of Frosts Tomb.
Earn the "On The Rocks" Achievement |achieve 1919 |goto Utgarde Keep 28.90,62.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Respect Your Elders",{
expansion="mists",
mopready=true,
achieveid={2038},
patch='30008',
description="This guide will walk you through how to get the Respect Your Elders achievement.",
},[[
step
kill Elder Nadox##29309
|tip On Heroic difficulty, defeat Elder Nadox without killing any Ahn'kahar Guardians that spawn.
Earn the "Respect Your Elders" Achievement |achieve 2038 |goto Ahn'kahet: The Old Kingdom 69.60,27.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Ruby Void",{
expansion="mists",
mopready=true,
achieveid={2044},
patch='30002',
description="This guide will walk you through getting the Ruby Void achievement.",
},[[
step
kill Ley-Guardian Eregos##27656
|tip Use an Ruby Drake on Heroic difficulty.
Earn the "Ruby Void" Achievement |achieve 2044 |goto The Oculus 46.90,20.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Share the Love",{
expansion="mists",
mopready=true,
achieveid={2152},
patch='30003',
description="This guide will walk you through getting the Share the Love achievement.",
},[[
step
Get the Impale Debuff |havebuff Puncture##55276
|tip Every member of the party must get this buff before you kill Gal'darah.
|tip Wait for each party member to be charge and Impaled before downing the boss.
kill Gal'darah##29306
Earned the "Share the Love" Achievement |achieve 2152 |goto Gundrak 46.50,27.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Shatter Resistant",{
expansion="mists",
mopready=true,
achieveid={2042},
patch='30003',
description="This guide will walk you through how to get the Shatter Resistant achievement.",
},[[
step
kill Volkhan##28587
|tip On Heroic difficulty, defeat Volkhan without allowing him to shatter more than 4 Brittle Golems.
Earn the "Shatter Resistant" Achievement |achieve 2042 |goto Halls of Lightning/1 37.70,20.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Snakes. Why'd It Have To Be Snakes?",{
expansion="mists",
mopready=true,
achieveid={2058},
patch='30002',
description="This guide will walk you through getting the Snakes. Why'd It Have To Be Snakes? achievement.",
},[[
step
kill Slad'ran##29304
|tip On Heroic difficulty, defeat Slad'ran without anyone getting Snake Wrapped.
|tip Kill any snake add that appears during the fight.
Earn the "Snakes. Why'd It Have To Be Snakes?" Achievement |achieve 2058 |goto Gundrak 53.90,48.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Split Personality",{
expansion="mists",
mopready=true,
achieveid={2150},
patch='30008',
description="This guide will walk you through getting the Split Personality achievement.",
},[[
step
This achievement is gained by defeating Grand Magus Telestra in The Nexus on _Heroic_ mode after having killed her images within 5 seconds of the first one dying during each split
kill Grand Magus Telestra##26731
|tip
Kill Grand Magus Telestra |achieve 2150 |goto The Nexus 27.50,39.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Timely Death",{
expansion="mists",
mopready=true,
achieveid={1867},
patch='30008',
description="This guide will walk you through getting the Timely Death achievement.",
},[[
step
kill Loken##28923
|tip On Heroic difficulty, defeat Loken within two minutes of starting the encounter.
|tip Use the "/timer" function to track your time.
Earn the "Timely Death" Achievement |achieve 1867 |goto Halls of Lightning/1 18.90,52.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Volazj's Quick Demise",{
expansion="mists",
mopready=true,
achieveid={1862},
patch='30008',
description="This guide will walk you through how to get the Volazj's Quick Demise achievement.",
},[[
step
kill Herald Volazj##29311
|tip On Heroic difficulty, defeat Herald Volazj in 2 minutes.
|tip Use the "/timer" function to keep track of your time.
Earn the "Volazj's Quick Demise" Achievement|achieve 1862 |goto Ahn'kahet: The Old Kingdom 23.60,50.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Volunteer Work",{
expansion="mists",
mopready=true,
achieveid={2056},
patch='30008',
description="This guide will walk you through getting the Volunteer Work achievement.",
},[[
step
kill Jedoga Shadowseeker##29310
|tip On Heroic difficulty, defeat Jedoga Shadowseeker without killing any adds that spawn during the fight.
Earn the "Volunteer Work" Achievement|achieve 2056 |goto Ahn'kahet: The Old Kingdom 48.20,72.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Watch Him Die",{
expansion="mists",
mopready=true,
achieveid={1296},
patch='30008',
description="This guide will walk you through getting the Watch Him Die achievement.",
},[[
step
kill Krik'thir the Gatewatcher##28684
|tip On Heroic difficulty, defeat Krik'thir while Watcher Gashra, Watcher Narji and Watcher Silthik are still alive.
Earn the "Watch Him Die" Achievement |achieve 1296 |goto Azjol-Nerub/2 50.10,45.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\What the Eck?",{
expansion="mists",
mopready=true,
achieveid={1864},
patch='30003',
description="This guide will walk you through getting the What the Eck? achievement.",
},[[
step
kill Eck the Ferocious##29932
|tip On Heroic difficulty, stand in front of Eck the Ferocious when it uses the Eck Spit ability.
Get the Eck Residue Buff |havebuff Eck Residue##55817 |goto Gundrak 25.10,70.40 < 15
|tip You will lose the buff if you die.
kill Gal'darah##29306
|tip Defeat Gal'darah while under the affects of Eck Residue.
Earned the "What the Eck?" Achievement |achieve 1864 |goto Gundrak 46.50,27.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Zombiefest!",{
expansion="mists",
mopready=true,
achieveid={1872},
patch='30002',
description="This guide will walk you through getting the Zombiefest! achievement.",
},[[
step
kill 100 Risen Zombie##27737+
|tip One Heroic difficulty, round up all enemies without killing them.
|tip Kill enemies that aren't Risen Zombies.
|tip Continue gathering Risen Zombies until Wave 10, repeating above instructions.
|tip Kill all zombies once Wave 10 arrives.
Earn the "Zombiefest!" Achievement |achieve 1872 |goto The Culling of Stratholme 51,63
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\All You Can Eat (10 player)",{
expansion="mists",
mopready=true,
achieveid={4580},
patch='30300',
description="Defeat Sindragosa in 10-player mode without any member of your raid receiving more than 5 stacks of Mystic Buffet.",
},[[
step
This achievement is basically a DPS race
You will need to defeat Sidnragosa before anyone gets more than 5 stacks of Mystic Buffet
Defeat Sindragosa without gaining more than 5 stacks of Mystic Buffet |achieve 4580 |goto Icecrown Citadel/4 36.58,20.10
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\All You Can Eat (25 player)",{
expansion="mists",
mopready=true,
achieveid={4620},
patch='30300',
description="Defeat Sindragosa in 25-player mode without any member of your raid receiving more than 5 stacks of Mystic Buffet.",
},[[
step
This achievement is basically a DPS race
You will need to defeat Sidnragosa before anyone gets more than 5 stacks of Mystic Buffet
Defeat Sindragosa without gaining more than 5 stacks of Mystic Buffet |achieve 4620 |goto Icecrown Citadel/4 36.58,20.10
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Been Waiting a Long Time for This (10 player)",{
expansion="mists",
mopready=true,
achieveid={4601},
patch='30300',
description="Allow Necrotic Plague to stack to 30 before defeating the Lich King in 10-player mode.",
},[[
step
_You need a pet or another player in order to earn this achievement!_
To start, begin the Lich King encounter, but be sure _not_ to damage him to 70 percent health or below
Eventually, you will notice Necrotic Plague on you
Being hit will stop the plague from building, so you will need to run away from adds
The Lich King will get a buff called Plague Siphon
Once he gets 30 stacks of Plague Siphon, Burn him down to Earn the achievmeent
Defeat the Lich King having allowed a stack of Necrotic Plague to reach 30 |achieve 4601 |goto Icecrown Citadel/7 48.15,60.23
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Been Waiting a Long Time for This (25 player)",{
expansion="mists",
mopready=true,
achieveid={4621},
patch='30300',
description="Allow Necrotic Plague to stack to 30 before defeating the Lich King in 25-player mode.",
},[[
step
_You need a pet or another player in order to earn this achievement!_
To start, begin the Lich King encounter, but be sure _not_ to damage him to 70 percent health or below
Eventually, you will notice Necrotic Plague on you
Being hit will stop the plague from building, so you will need to run away from adds
The Lich King will get a buff called Plague Siphon
Once he gets 30 stacks of Plague Siphon, Burn him down to Earn the achievmeent
Defeat the Lich King having allowed a stack of Necrotic Plague to reach 30 |achieve 4621 |goto Icecrown Citadel/7 48.15,60.23
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Boned (10 player)",{
expansion="mists",
mopready=true,
achieveid={4534},
patch='30300',
description="Defeat Lord Marrowgar without any raid member remaining impaled for more than 8 seconds in 10-player mode.",
},[[
step
map Icecrown Citadel/1
path loop off
path	38.90,29.20	38.90,36.30	39.00,52.40
Follow the path, clearing trash as you make your way to the first boss, Lord Marrowgar |goto Icecrown Citadel/1 39.00,52.40 < 20 |noway |c
step
In order to not be impaled, you should be sure to get hit by it's Bone Slice ability
People who have been hit by that will not be able to be impaled
|achieve 4534 |goto Icecrown Citadel/1 39.00,52.40
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Boned (25 player)",{
expansion="mists",
mopready=true,
achieveid={4610},
patch='30300',
description="Defeat Lord Marrowgar without any raid member remaining impaled for more than 8 seconds in 25-player mode.",
},[[
step
map Icecrown Citadel/1
path loop off
path	38.90,29.20	38.90,36.30	39.00,52.40
Follow the path, clearing trash as you make your way to the first boss, Lord Marrowgar |goto Icecrown Citadel/1 39.00,52.40 <5 |noway |c
step
In order to not be impaled, you should be sure to get hit by it's Bone Slice ability
People who have been hit by that will not be able to be impaled |achieve 4610 |goto Icecrown Citadel/1 39.00,52.40
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Champion of the Frozen Wastes",{
expansion="mists",
mopready=true,
achieveid={1658},
patch='30002',
description="This guide will walk you through how to get the Champion of the Frozen Wastes achievement.",
},[[
step
Complete the following Northrend dungeons and raids:
|tip Use the dungeon and raid guides to accomplish this.
Sartharion the Onyx Guardian |achieve 1658/1
Kel'Thuzad |achieve 1658/2
Malygos |achieve 1658/3
Heroic: Anub'arak |achieve 1658/4
Heroic: Sjonnir the Ironshaper |achieve 1658/5
Heroic: Keristrasza |achieve 1658/6
Heroic: Herald Volazj |achieve 1658/7
Heroic: Loken |achieve 1658/8
Heroic: Key-Guardian Eregos |achieve 1658/9
Heroic: Ingvar the Plunderer |achieve 1658/10
Heroic: King Ymiron |achieve 1658/11
Heroic: Mal'Ganis |achieve 1658/12
Heroic: The Prophet Tharon'ja |achieve 1658/13
Heroic: Cyanigosa |achieve 1658/14
Heroic: Gal'darah |achieve 1658/15
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Crazy Cat Lady",{
expansion="mists",
mopready=true,
achieveid={12341},
patch='70305',
description="Defeat Auriaya without destroying her Sanctum Sentries.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter##194569
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
'|achieve 12341
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15
Follow the path to Auriaya |goto Ulduar/3 52.90,74.15 |noway |c
'|achieve 12341
step
kill Auriaya##33515
|tip To earn this achievement, avoid using any AoE abilities and kill Auriaya.
|tip She must die with her sentries alive.
|tip If you accidentally kill one, you will need to die and start the fight again.
Earn the _Crazy Cat Lady_ achievement |achieve 12341 |goto Ulduar/3 52.90,74.15
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Crimson Hall (10 player)",{
expansion="mists",
mopready=true,
achieveid={4529},
patch='unknown',
description="This guide will walk you through how to get The Crimson Hall (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Crimson Hall in Icecrown Citadel in 10-player mode
kill Prince Valanar##37970
Defeat the Blood Prince Council |achieve 4529/1 |goto Icecrown Citadel/5 52.00,14.10
kill Blood-Queen Lana'thel##37955
Defeat Blood-Queen Lana'thel |achieve 4529/2 |goto Icecrown Citadel/6 51.10,43.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Crimson Hall (25 player)",{
expansion="mists",
mopready=true,
achieveid={4606},
patch='unknown',
description="This guide will walk you through how to get The Crimson Hall (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Crimson Hall in Icecrown Citadel in 10-player mode
kill Prince Valanar##37970
Defeat the Blood Prince Council |achieve 4606/1 |goto Icecrown Citadel/5 52.00,14.10
kill Blood-Queen Lana'thel##37955
Defeat Blood-Queen Lana'thel |achieve 4606/2 |goto Icecrown Citadel/6 51.10,43.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Dances with Oozes(10 player)",{
expansion="mists",
mopready=true,
achieveid={4538},
patch='30300',
description="Defeat Rotface without a Big Ooze casting Unstable Ooze Explosion in 10-player mode.",
},[[
step
To start, you will need to maximize dps against Rotface to earn this achievement
If you are with multiple people, you can have the additional members kite the oozes away from each other as the spawn
Otherwise, you will have to use all cooldowns available and just burn the boss
|achieve 4538 |goto Icecrown Citadel/5 19.88,42.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Dances with Oozes(25 player)",{
expansion="mists",
mopready=true,
achieveid={4614},
patch='30302',
description="Defeat Rotface without a Big Ooze casting Unstable Ooze Explosion in 25-player mode.",
},[[
step
To start, you will need to maximize dps against Rotface to earn this achievement
If you are with multiple people, you can have the additional members kite the oozes away from each other as the spawn
Otherwise, you will have to use all cooldowns available and just burn the boss
|achieve 4614 |goto Icecrown Citadel/5 19.88,42.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Dedicated Few (10 player)",{
expansion="mists",
mopready=true,
achieveid={578},
patch='30001',
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
Kill the following Naxxramas raid bosses while in a group of 8 or less:
|tip Note that this achievement is soloable!
Kel'Thuzad |achieve 578/1
Gothik the Harvestor |achieve 578/2
Anub'Rekhan |achieve 578/3
Grobbulus |achieve 578/4
Heigan the Unclean |achieve 578/5
Grand Widow Faerlina |achieve 578/6
Maexxna |achieve 578/7
Sapphiron |achieve 578/8
Loatheb |achieve 578/9
Gluth |achieve 578/10
Thaddius |achieve 578/11
Patchwerk |achieve 578/12
Instructor Razuvious |achieve 578/13
Noth the Plaguebringer |achieve 578/14
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Dedicated Few (25 player)",{
expansion="mists",
mopready=true,
achieveid={579},
patch='30001',
description="Defeat the bosses of Naxxramas with less than 21 people in the zone in 25-player mode.",
},[[
step
Kill the following bosses while in a raid group of 21 or less:
|tip Note that this achievement is soloable!
Anub'Rekhan |achieve 579/1
Heigan the Unclean |achieve 579/2
Instructor Razuvious |achieve 579/3
Gothik the Harvester |achieve 579/4
Sapphiron |achieve 579/5
Gluth |achieve 579/6
Thaddius |achieve 579/7
Noth the Plaguebringer |achieve 579/8
Laotheb |achieve 579/9
Kel'thuzad |achieve 579/10
Patchwerk |achieve 579/11
Grabbulus |achieve 579/12
Grand Widow Faerlina |achieve 579/13
Maexxna |achieve 579/14
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Deforestation",{
expansion="mists",
mopready=true,
achieveid={12362},
patch='70305',
description="This guide will walk you through how to get the Deforestation achievement.",
},[[
step
This achievement is gained by defeating 2 Ancient Water Spirits, 2 Storm Lashers and 2 Snaplashers within 10 seconds, while fighting Freya in Ulduar
|tip Freya spawns a random assortment of adds during the fight. Wait until she's spawned at least 2 of each type and then kill them together.
kill Ancient Water Spirit##33202
kill Storm Lasher##32919
kill Snaplasher##32916
Deforestation |achieve 12362 |goto Ulduar/3 53.30,22.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Denyin' the Scion (10 player)",{
expansion="mists",
mopready=true,
achieveid={2148},
patch='30003',
description="This guide will walk you through how to get the Denyin' the Scion (10 player) achievement.",
},[[
step
This achievement is gained by delivering a killing blow to a Scion of Eternity _while riding on a hover disk_ in The Eye of Eternity in 10 player mode
kill Nexus Lord##30245
|tip Kill a Nexus Lord and then click the disk to ride it.
kill Scion of Eternity##30249
Defeat a Scion of Eternity While Riding Hover Disk (10 player) |achieve 2148 |goto The Eye of Eternity 45.00,56.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Denyin' the Scion (25 player)",{
expansion="mists",
mopready=true,
achieveid={2149},
patch='30002',
description="This guide will walk you through how to get the Denyin' the Scion (25 player) achievement.",
},[[
step
This achievement is gained by delivering a killing blow to a Scion of Eternity _while riding on a hover disk_ in The Eye of Eternity in 25 player mode
kill Nexus Lord##30245
|tip Kill a Nexus Lord and then click the disk to ride it.
kill Scion of Eternity##30249
Defeat a Scion of Eternity While Riding Hover Disk (25 player) |achieve 2149 |goto The Eye of Eternity 45.00,56.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Descent into Madness",{
expansion="mists",
mopready=true,
achieveid={12310},
patch='70305',
description="This guide will walk you through how to get The Descent into Madness achievement.",
},[[
step
This achievement is gained by defeating the bosses of the Descent into Madness area of Ulduar
kill General Vezax##33271 |achieve 12310/1 |goto Ulduar/4 56.70,60.20
kill Yogg-Saron##33288 |achieve 12310/2 |goto Ulduar/4 68.30,39.90
Clear the Antechamber of Ulduar |achieve 12310
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Disarmed",{
expansion="mists",
mopready=true,
achieveid={12338},
patch='70305',
description="Destroy both of Kologarn's arms and then Kologarn himself within 12 seconds.",
},[[
step
kill Kologarn##32930
|tip To start, DPS Kologarn's body until he's at about 25 percent health.
|tip Make sure not to attack his arms at all while you do this!
|tip Once his body is at the 25 percent mark, kill his Left Arm, then his Right Arm.
|tip Kill his body immidiately after.
Earn the Disarmed Achievement |achieve 12338 |goto Ulduar/2 37.30,14.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Don't Stand in the Lightning",{
expansion="mists",
mopready=true,
achieveid={12348},
patch='70305',
description="This guide will walk you through how to get the Don't Stand in the Lightning achievement.",
},[[
step
This achievement is gained by defeating Thorim in Ulduar _without any raid member being struck by Lightning Charge_
kill Thorim##32865
|tip It is a cone attack that he will cast every 15 seconds.
Defeat Thorim |achieve 12348 |goto Ulduar/3 72.20,48.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Drive Me Crazy",{
expansion="mists",
mopready=true,
achieveid={12395},
patch='70305',
description="This guide will walk you through how to get the Drive Me Crazy achievement.",
},[[
step
This achievement is gained by defeating Yogg-Saron in Ulduar _without any raid member going insane_
|tip You will go Insane after losing too many stacks of Sanity. Stand in the green pillars of light to regain Sanity and prevent it from getting too low.
kill Yogg-Saron##33288
Defeat Yogg-Saron |achieve 12395 |goto Ulduar/4 68.30,39.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Dwarfageddon",{
expansion="mists",
mopready=true,
achieveid={12312},
patch='70305',
description="This guide will walk you through how to get the Dwarfageddon achievement.",
},[[
step
This achievement is gained by defeating 100 Steelforged Defenders in 10 seconds on the Ulduar gauntlet in _10 player mode_
kill 100 Steelforged Defender##33572
|tip Run around the room to gather up a very large group, and then kill them all at once with the vehicle abilities.
Defeat 100 Steelforged Defenders in Ulduar |achieve 12312 |goto Ulduar 49.00,46.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Earth, Wind & Fire (10 player)",{
expansion="mists",
mopready=true,
achieveid={4016},
patch='30200',
description="This guide will walk you through how to get the Earth, Wind & Fire (10 player) achievement.",
},[[
step
This achievement is gained by defeating Archavon the Stone Watcher, Emalon the Storm Watcher, and Koralon the Flame Watcher _within 60 seconds of each other_ in 10 player mode
|tip Aggro them all at once and then kill them together.
kill Archavon the Stone Watcher##31125 |goto Vault of Archavon 49.20,17.00
kill Emalon the Storm Watcher##33993 |goto Vault of Archavon 62.60,55.40
kill Koralon the Flame Watcher##35013 |goto Vault of Archavon 36.00,55.40
Earth, Wind & Fire (10 player) |achieve 4016
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Earth, Wind & Fire (25 player)",{
expansion="mists",
mopready=true,
achieveid={4017},
patch='30200',
description="This guide will walk you through how to get the Earth, Wind & Fire (25 player) achievement.",
},[[
step
This achievement is gained by defeating Archavon the Stone Watcher, Emalon the Storm Watcher, and Koralon the Flame Watcher _within 60 seconds of each other_ in 25 player mode
|tip Aggro them all at once and then kill them together.
kill Archavon the Stone Watcher##31125 |goto Vault of Archavon 49.20,17.00
kill Emalon the Storm Watcher##33993 |goto Vault of Archavon 62.60,55.40
kill Koralon the Flame Watcher##35013 |goto Vault of Archavon 36.00,55.40
Earth, Wind & Fire (25 player) |achieve 4017
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Fall of Naxxramas (10 player)",{
expansion="mists",
mopready=true,
achieveid={576},
patch='30100',
description="This guide will walk you through how to get The Fall of Naxxramas (10 player) achievement.",
},[[
step
This achievement is gained by defeating all the bosses of Naxxramas in 10 player mode
|tip Use our achievement or raid guides to complete this.
The Arachnid Quarter (10 player) |achieve 576/1
The Construct Quarter (10 player) |achieve 576/2
The Plague Quarter (10 player) |achieve 576/3
The Military Quarter (10 player) |achieve 576/4
Sapphiron's Demise (10 player) |achieve 576/5
Kel'Thuzad's Defeat (10 player) |achieve 576/6
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Fall of Naxxramas (25 player)",{
expansion="mists",
mopready=true,
achieveid={577},
patch='30001',
description="This guide will walk you through how to get The Fall of Naxxramas (25 player) achievement.",
},[[
step
This achievement is gained by defeating all the bosses of Naxxramas in 25 player mode
|tip Use our achievement or raid guides to complete this.
The Arachnid Quarter (25 player) |achieve 577/1
The Construct Quarter (25 player) |achieve 577/2
The Plague Quarter (25 player) |achieve 577/3
The Military Quarter (25 player) |achieve 577/4
Sapphiron's Demise (25 player) |achieve 577/5
Kel'Thuzad's Defeat (25 player) |achieve 577/6
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Firefighter",{
expansion="mists",
mopready=true,
achieveid={12369},
patch='70305',
description="Defeat Mimiron after activating his Self-Destruct mechanism.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/5
path	43.65,62.19
click Ulduar Teleporter##194569
Teleport to The Spark of Imaginations |goto Ulduar/5 43.65,62.19 |noway |c
'|achieve 12369
step
map Ulduar/5
path loop off; dist 20
path	43.63,59.52	43.59,54.10	43.67,45.36
Follow the path to Mimiron |goto Ulduar/5 43.67,45.36 |noway |c
'|achieve 12369
step
kill Mimiron##33350
|tip To earn this achievement, you will have to press a big red button at the back of the room before engaging Mimiron.
|tip Once you've clicked it, wait for his dialogue to finish and then kill him.
|tip This makes the fight mechanics significantly more difficult!
Earn the _Firefighter_ achievement |achieve 12369 |goto Ulduar/5 43.60,41.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Flu Shot Shortage (10 player)",{
expansion="mists",
mopready=true,
achieveid={4577},
patch='30300',
description="Defeat Festergut while none of the players in your raid group ever had 3 stacks of Inoculated in 10-player mode.",
},[[
step
To earn this achievement, you will to defeat Festergut without allowing Inoculated to raise above 2 stacks
When Festergut uses Gas Spore, run away from him until it explodes to avoid being Inoculated, then DPS him down
Defeat Festergut without being Inoculated twice |achieve 4577 |goto Icecrown Citadel/5 19.79,65.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Flu Shot Shortage (25 player)",{
expansion="mists",
mopready=true,
achieveid={4615},
patch='30300',
description="Defeat Festergut while none of the players in your raid group ever had 3 stacks of Inoculated in 25-player mode.",
},[[
step
To earn this achievement, you will to defeat Festergut without allowing Inoculated to raise above 3 stacks
When Festergut uses Gas Spore, run away from him until it explodes to avoid being Inoculated, then DPS him down
Defeat Festergut without being Inoculated twice |achieve 4615 |goto Icecrown Citadel/5 19.79,65.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Frostwing Halls (10 player)",{
expansion="mists",
mopready=true,
achieveid={4527},
patch='unknown',
description="This guide will walk you through how to get The Frostwing Halls (10 player) achievement.",
},[[
step
This achievement is gained by defeating _all the the bosses of The Frostwing Halls_ in Icecrown Citadel in 10 player mode
|tip Use our raid guides to complete this.
kill Valithria Dreamwalker##36789 |achieve 4527/1 |goto Icecrown Citadel/5 76.60,73.70
kill Sindragosa##36853 |achieve 4527/2 |goto Icecrown Citadel/4 36.60,23.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Frostwing Halls (25 player)",{
expansion="mists",
mopready=true,
achieveid={4607},
patch='unknown',
description="This guide will walk you through how to get The Frostwing Halls (25 player) achievement.",
},[[
step
This achievement is gained by defeating _all the the bosses of The Frostwing Halls_ in Icecrown Citadel in 25 player mode
|tip Use our raid guides to complete this.
kill Valithria Dreamwalker##36789 |achieve 4607/1 |goto Icecrown Citadel/5 76.60,73.70
kill Sindragosa##36853 |achieve 4607/2 |goto Icecrown Citadel/4 36.60,23.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Frozen Throne (10 player)",{
expansion="mists",
mopready=true,
achieveid={4530},
patch='30300',
description="This guide will walk you through how to get The Frozen Throne (10 player) achievement.",
},[[
step
This achievement is gained by defeating _the Lich King_ in Icecrown Citadel in 10 player mode
kill The Lich King##36597
The Frozen Throne (10 player) |achieve 4530 |goto Icecrown Citadel/7 49.80,52.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Frozen Throne (25 player)",{
expansion="mists",
mopready=true,
achieveid={4597},
patch='30300',
description="This guide will walk you through how to get The Frozen Throne (25 player) achievement.",
},[[
step
This achievement is gained by defeating _the Lich King_ in Icecrown Citadel in 25 player mode
kill The Lich King##36597
The Frozen Throne (25 player) |achieve 4597 |goto Icecrown Citadel/7 49.80,52.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Full House (10 player)",{
expansion="mists",
mopready=true,
achieveid={4535},
patch='30300',
description="Defeat Lady Deathwhisper with at least five different types of Cultists active at the time of her demise in 10-player mode.",
},[[
step
To earn this achievement, you will need to defeat lady Deathwhisper with 5 specifc mobs active:
Deformed Fanatic
Reanimated Fanatic
Reanimated Adherent
Cult Fanatic
Cult Adherent
She will spawn adds every minute from when you begin the encounter, so don't dps her until you see what you need have spawned
If you dps her and send her to phase 2 without having the mobs up, you will not be able to earn the achievement
Defeat Lady Deathwhisper while 5 different type of cultists are active |achieve 4535 |goto Icecrown Citadel/1 38.96,86.68
|tip Set the duneong difficulty to Heroic to earn the Heroic: Lady Deathwhisper Achievement.
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Full House (25 player)",{
expansion="mists",
mopready=true,
achieveid={4611},
patch='30300',
description="Defeat Lady Deathwhisper with at least five different types of Cultists active at the time of her demise in 25-player mode.",
},[[
step
To earn this achievement, you will need to defeat lady Deathwhisper with 5 specifc mobs active:
Deformed Fanatic
Reanimated Fanatic
Reanimated Adherent
Cult Fanatic
Cult Adherent
She will spawn adds every minute from when you begin the encounter, so don't dps her until you see what you need have spawned
If you dps her and send her to phase 2 without having the mobs up, you will not be able to earn the achievement
Defeat Lady Deathwhisper while 5 different type of cultists are active |achieve 4611 |goto Icecrown Citadel/1 38.96,86.68
|tip Set the duneong difficulty to Heroic to earn the Heroic: Lady Deathwhisper Achievement.
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Getting Back to Nature",{
expansion="mists",
mopready=true,
achieveid={12363},
patch='70305',
description="This guide will walk you through how to get the Getting Back to Nature achievement.",
},[[
step
This achievement is gained by defeating Freya in Ulduar _while she is affected by at least 25 stacks of Attuned to Nature_
|tip Freya spawns a random assortment of adds during the fight, killing these adds will slowly remove her stacks of Attuned to Nature, so kill her as fast as possible.
kill Freya##32906
Defeat Freya |achieve 12363 |goto Ulduar/3 53.30,22.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Getting Cold in Here",{
expansion="mists",
mopready=true,
achieveid={12345},
patch='70305',
description="This guide will walk you through how to get the Getting Cold in Here achievement.",
},[[
step
This achievement is gained by defeating Hodir in Ulduar _without any raid member having more than 2 stacks of Biting Cold_
|tip The Toasty Fires created by the mage adds will lower the amount of stacks.
kill Hodir##32845
Defeat Hodir |achieve 12345 |goto Ulduar/3 67.00,63.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Gonna Go When the Volcano Blows (10 player)",{
expansion="mists",
mopready=true,
achieveid={2047},
patch='30002',
description="This guide will walk you through how to get the Gonna Go When the Volcano Blows (10 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian in The Obsidian Sanctum _without getting hit by Lava Strike_ in 10 player mode
kill Sartharion <The Onyx Guardian>##28860
Defeat Sartharion |achieve 2047 |goto The Obsidian Sanctum 50.50,47.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Gonna Go When the Volcano Blows (25 player)",{
expansion="mists",
mopready=true,
achieveid={2048},
patch='30002',
description="This guide will walk you through how to get the Gonna Go When the Volcano Blows (25 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian in The Obsidian Sanctum _without getting hit by Lava Strike_ in 25 player mode
kill Sartharion <The Onyx Guardian>##28860
Defeat Sartharion |achieve 2048 |goto The Obsidian Sanctum 50.50,47.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\He's Not Getting Any Older",{
expansion="mists",
mopready=true,
achieveid={12396},
patch='70305',
description="This guide will walk you through how to get the He's Not Getting Any Older achievement.",
},[[
step
This achievement is gained by defeating Yogg-Saron in Ulduar _within 7 minutes_
kill Yogg-Saron##33288
Defeat Yogg-Saron |achieve 12396 |goto Ulduar/4 68.30,39.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heartbreaker",{
expansion="mists",
mopready=true,
achieveid={12330},
patch='70305',
description="Defeat XT-002 Deconstructor after destroying his heart.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter##194569
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
'|achieve 12330
step
kill XT-002 Deconstructor##33293
|tip First, engage XT-002.
|tip Be sure to do very slow dps at first.
|tip Avoid using DoTs as you can accidentally kill it.
|tip Once you take it down to 75 percent of it's health, the heart will pop out.
|tip Kill the heart, then XT-002.
Earn the _Heartbreaker_ achievement |achieve 12330 |goto Ulduar/1 48.50,13.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: The Crimson Hall (10 player)",{
expansion="mists",
mopready=true,
achieveid={4630},
patch='unknown',
description="This guide will walk you through how to get the Heroic: The Crimson Hall (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Crimson Hall in Icecrown Citadel in 10-player _Heroic_ mode
kill Prince Valanar##37970
Defeat the Blood Prince Council |achieve 4630/1 |goto Icecrown Citadel/5 52.00,14.10
kill Blood-Queen Lana'thel##37955
Defeat Blood-Queen Lana'thel |achieve 4630/2 |goto Icecrown Citadel/6 51.10,43.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: The Crimson Hall (25 player)",{
expansion="mists",
mopready=true,
achieveid={4634},
patch='unknown',
description="This guide will walk you through how to get the Heroic: The Crimson Hall (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Crimson Hall in Icecrown Citadel in 25-player _Heroic_ mode
kill Prince Valanar##37970
Defeat the Blood Prince Council |achieve 4634/1 |goto Icecrown Citadel/5 52.00,14.10
kill Blood-Queen Lana'thel##37955
Defeat Blood-Queen Lana'thel |achieve 4634/2 |goto Icecrown Citadel/6 51.10,43.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: The Plagueworks (10 player)",{
expansion="mists",
mopready=true,
achieveid={4629},
patch='unknown',
description="This guide will walk you through how to get the Heroic: The Plagueworks (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plagueworks in Icecrown Citadel in 10-player _Heroic_ mode
kill Festergut##36626
Defeat Festergut |achieve 4629/1 |goto Icecrown Citadel/5 19.80,65.40
kill Rotface##36627
Defeat Rotface |achieve 4629/2 |goto Icecrown Citadel/5 19.80,41.90
kill Professor Putricide##36678
Defeat Professor Putricide |achieve 4629/3 |goto Icecrown Citadel/5 13.30,53.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: The Plagueworks (25 player)",{
expansion="mists",
mopready=true,
achieveid={4633},
patch='unknown',
description="This guide will walk you through how to get the Heroic: The Plagueworks (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plagueworks in Icecrown Citadel in 25-player _Heroic_ mode
kill Festergut##36626
Defeat Festergut |achieve 4633/1 |goto Icecrown Citadel/5 19.80,65.40
kill Rotface##36627
Defeat Rotface |achieve 4633/2 |goto Icecrown Citadel/5 19.80,41.90
kill Professor Putricide##36678
Defeat Professor Putricide |achieve 4633/3 |goto Icecrown Citadel/5 13.30,53.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: Storming the Citadel (10 player)",{
expansion="mists",
mopready=true,
achieveid={4628},
patch='30305',
description="This guide will walk you through how to get the Heroic: Storming the Citadel (10 player) achievement.",
},[[
step
This achievement is gained by defeating the first four bosses in Icecrown Citadel in 10-player _Heroic_ mode
kill Lord Marrowgar##36612
Defeat Lord Marrowgar |achieve 4628/1 |goto Icecrown Citadel/1 39.10,59.30
kill Lady Deathwhisper##36855
Defeat Lady Deathwhisper |achieve 4628/2 |goto Icecrown Citadel/1 39.10,86.90
Complete the Gunship Battle |achieve 4628/3 |goto Icecrown Citadel/3 48.70,76.40
kill Deathbringer Saurfang##37813
Defeat Deathbringer Saurfang |achieve 4628/4 |goto Icecrown Citadel/3 51.10,21.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heroic: Storming the Citadel (25 player)",{
expansion="mists",
mopready=true,
achieveid={4632},
patch='50200',
description="This guide will walk you through how to get the Heroic: Storming the Citadel (25 player) achievement.",
},[[
step
This achievement is gained by defeating the first four bosses in Icecrown Citadel in 25-player _Heroic_ mode
kill Lord Marrowgar##36612
Defeat Lord Marrowgar |achieve 4632/1 |goto Icecrown Citadel/1 39.10,59.30
kill Lady Deathwhisper##36855
Defeat Lady Deathwhisper |achieve 4632/2 |goto Icecrown Citadel/1 39.10,86.90
Complete the Gunship Battle |achieve 4632/3 |goto Icecrown Citadel/3 48.70,76.40
kill Deathbringer Saurfang##37813
Defeat Deathbringer Saurfang |achieve 4632/4 |goto Icecrown Citadel/3 51.10,21.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Hot Pocket",{
expansion="mists",
mopready=true,
achieveid={12324},
patch='70305',
description="This guide will walk you through how to get the Hot Pocket achievement.",
},[[
step
This achievement is gained by surviving being thrown into Ignis the Furnace Master's Slag Pot in Ulduar
_You will need a tank to hold aggro_ so Ignis will toss you into the Slag Pot
|tip This can be done solo with your pet if you are a hunter.
kill Ignis the Furnace Master##33118
|tip Engage the boss, let the tank/hunter pet gain aggro and wait for him to throw you in the Slag Pot.
Survivie Being Thrown Into the Slag Pot |achieve 12324 |goto Ulduar 38.30,26.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Hundred Club (10 player)",{
expansion="mists",
mopready=true,
achieveid={2146},
patch='30002',
description="Defeat Sapphiron in Naxxramas without any member of the raid having a frost resist value over 100 in 10-player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas##202278
Enter Sapphiron's Lair |goto Naxxramas 73.64,72.79 < 20 |noway |c
only if not achieved(2146)
step
With the resistance stat being removed, you will earn this achievement no matter what simply by killing Sapphiron
|achieve 2146 |goto Naxxramas 60.10,68.33
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Hundred Club (25 player)",{
expansion="mists",
mopready=true,
achieveid={2147},
patch='30008',
description="Defeat Sapphiron in Naxxramas without any member of the raid having a frost resist value over 100 in 25-player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas##202278
Enter Sapphiron's Lair |goto Naxxramas 73.64,72.79 < 20 |noway |c
only if not achieved(2147)
step
With the resistance stat being removed, you will earn this achievement no matter what simply by killing Sapphiron
|achieve 2147 |goto Naxxramas 60.10,68.33
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Runemaster Molgeim",{
expansion="mists",
mopready=true,
achieveid={12332},
patch='70305',
description="This guide will walk you through how to get the I Choose You, Runemaster Molgeim achievement.",
},[[
step
This achievement is gained by defeating the Assembly of Iron in Ulduar _by killing Runemaster Molgeim last_
kill Stormcaller Brundir##32857
kill Steelbreaker##32867
kill Runemaster Molgeim##32927
|tip Be sure to kill Runemaster Molgeim last.
I Choose You, Runemaster Molgeim |achieve 12332 |goto Ulduar/2 15.60,56.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Steelbreaker",{
expansion="mists",
mopready=true,
achieveid={12334},
patch='70305',
description="Defeat the Assembly of Iron with Steelbreaker as the last member alive.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter##194569
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
'|achieve 12334
step
map Ulduar/2
path loop off; dist 20
path	37.20,48.71	27.66,30.15	17.15,30.68
path	15.51,41.96
Enter the Assembly of Iron |goto Ulduar/2 15.51,41.96 |noway |c
'|achieve 12334
step
Kill the Assembly of Iron
|tip To earn this achievement, kill Stormcaller Brundir, then Runemaster Molgeim, then Steelbreaker.
|tip Steelbreaker will become more powerful each time you kill one of them.
Earn the _I Choose You, Steelbreaker_ achievement |achieve 12334 |goto Ulduar/2 15,56
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Stormcaller Brundir",{
expansion="mists",
mopready=true,
achieveid={12333},
patch='70305',
description="This guide will walk you through how to get the I Choose You, Stormcaller Brundir achievement.",
},[[
step
This achievement is gained by defeating the Assembly of Iron in Ulduar _by killing Stormcaller Brundir last_
kill Steelbreaker##32867
kill Runemaster Molgeim##32927
kill Stormcaller Brundir##32857
|tip Be sure to kill Stormcaller Brundir last.
I Choose You, Stormcaller Brundir |achieve 12333 |goto Ulduar/2 15.60,56.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Could Say That This Cache Was Rare",{
expansion="mists",
mopready=true,
achieveid={12347},
patch='70305',
description="Defeat Hodir before he shatters his rare cache.",
},[[
step
kill Hodir##32845
|tip To earn this achievement, you need to kill Hodir within 3 minutes.
|tip Pop all cooldowns that increase your damage and defeat Hodir.
Earn the I Could Say That This Cache Was Rare Achievement |achieve 12347 |goto Ulduar/3 66.00,63.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Have the Coolest Friends",{
expansion="mists",
mopready=true,
achieveid={12344},
patch='70305',
description="This guide will walk you through how to get the I Have the Coolest Friends achievement.",
},[[
step
This achievement is gained by defeating Hodir in Ulduar _without any friendly NPC dying_
|tip The 4 adds are frozen in ice at the beginning of the fight. Break them out of the ice and then keep them from dying.
kill Hodir##32845
Defeat Hodir |achieve 12344 |goto Ulduar/3 67.00,63.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Love the Smell of Saronite in the Morning",{
expansion="mists",
mopready=true,
achieveid={12373},
patch='70305',
description="Defeat General Vezax after defeating the Saronite Animus.",
},[[
step
kill General Vezax##33271
|tip To start, engage General Vezax with light damage.
|tip He will spawn Saronite Vapors. Eventually he will absorb them when there are enough.
|tip When that happens, a Saronite Animus will spawn.
|tip Kill the Saronite Animus, then General Vazax.
Earn the I Love the Smell of Saronite in the Morning Achievement |achieve 12373 |goto Ulduar/4 52.60,57.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I'll Take You All On",{
expansion="mists",
mopready=true,
achieveid={12349},
patch='70305',
description="This guide will walk you through how to get the I'll Take You All On achievement.",
},[[
step
This achievement is gained by defeating Thorim, the Ancient Rune Giant and the Runic Colossus in Ulduar
kill Thorim##32865
kill Ancient Rune Giant##32873
kill Runic Colossus##32872
|tip The Ancient Rune Giant and Runic Colossus are trash mobs you'll find on the way to Thorim.
Defeat Thorim |achieve 12349 |goto Ulduar/3 72.20,48.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I'm on a Boat (10 player)",{
expansion="mists",
mopready=true,
achieveid={4536},
patch='30300',
description="Claim victory in the Gunship Battle without any raid member visiting the enemy gunship more than twice in 10-player mode.",
},[[
step
To start, hope in the gun ship as soon as you're able and shoot the horde ship
This achievement is still currently bugged, so as you spam 1 and 2 while in the cannon, you should earn this achievement
|achieve 4536 |goto Icecrown Citadel/2 24.66,55.30
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I'm on a Boat (25 player)",{
expansion="mists",
mopready=true,
achieveid={4612},
patch='30300',
description="Claim victory in the Gunship Battle without any raid member visiting the enemy gunship more than twice in 25-player mode.",
},[[
step
To start, hope in the gun ship as soon as you're able and shoot the horde ship
This achievement is still currently bugged, so as you spam 1 and 2 while in the cannon, you should earn this achievement
|achieve 4612 |goto Icecrown Citadel/2 66.50,55.34
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I've Gone and Made a Mess (10 player)",{
expansion="mists",
mopready=true,
achieveid={4537},
patch='30300',
description="Defeat the Deathbringer before Mark of the Fallen Champion is cast three times in 10-player mode.",
},[[
step
To earn this achievement, you will need to defeat the Deathbring beofre Mark of the Fallen Champion is cast 3 times
Just dps him down as it's a race
Defeat the Deathbringer before Mark of the Fallen Champion is cast three times |achieve 4537 |goto Icecrown Citadel/3 51.67,33.35
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I've Gone and Made a Mess (25 player)",{
expansion="mists",
mopready=true,
achieveid={4613},
patch='30300',
description="Defeat the Deathbringer before Mark of the Fallen Champion is cast five times in 25-player mode.",
},[[
step
To earn this achievement, you will need to defeat the Deathbring beofre Mark of the Fallen Champion is cast 3 times
Just dps him down as it's a race
Defeat the Deathbringer before Mark of the Fallen Champion is cast three times |achieve 4613 |goto Icecrown Citadel/3 51.67,33.35
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\If Looks Could Kill",{
expansion="mists",
mopready=true,
achieveid={12339},
patch='70305',
description="This guide will walk you through how to get the If Looks Could Kill achievement.",
},[[
step
This achievement is gained by defeating Kologarn in Ulduar _without any raid member being hit by Focused Eyebeams_
kill Kologarn##32930
Defeat Kologarn |achieve 12339 |goto Ulduar/2 37.20,13.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\In His House He Waits Dreaming",{
expansion="mists",
mopready=true,
achieveid={12398},
patch='70305',
description="This guide will walk you through how to get the In His House He Waits Dreaming achievement.",
},[[
step
This achievement is gained by experiencing all 3 visions of Yogg-Saron's mind
kill Yogg-Saron##33288
|tip Yogg-Saron will open portals during Phase 2. You'll have 60 seconds to go into each portal and kill the illusion adds and then also a brain that spawns.
|tip This can be done over multiple raids or all at once if you are fast enough.
The Assassination of King Llane |achieve 12398/1 |goto Ulduar/4 68.30,39.90
The Forging of the Demon Soul |achieve 12398/2 |goto Ulduar/4 68.30,39.90
The Tortured Champion |achieve 12398/3 |goto Ulduar/4 68.30,39.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Iron Dwarf, Medium Rare",{
expansion="mists",
mopready=true,
achieveid={12322},
patch='70305',
description="Defeat 25 Dark Rune Guardian Dwarves with Razorscale's Flame Breath.",
},[[
step
kill Razorscale##33186
|tip To start, ignore the Harpoon guns.
|tip You will need a powerful AoE.
|tip You can kill the large enemies, but leave the smaller ones alone for now.
|tip Once you have at least 25, use the Harpoon Gun on Razorscale.
|tip Wait for Razorscale to start casting Flame Breath and as soon as it hits, use your AoE attack.
Earn the Iron Dwarf, Medium Rare Achievement |achieve 12322 |goto Ulduar/1 54.10,26.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Just Can't Get Enough (10 player)",{
expansion="mists",
mopready=true,
achieveid={2184},
patch='30008',
description="Defeat Kel'Thuzad in Naxxramas while killing at least 18 abominations in his chamber in 10 player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas##202278
Enter Sapphiron's Lair |goto Naxxramas 73.64,72.79 < 20 |noway |c
only if not achieved(2184)
step
map Naxxramas
path loop off;dist 20
path	45.36,64.29	36.29,56.32	34.06,42.13
Follow the path to Kel'Thuzad's Chamber |goto Naxxramas 34.06,42.13 < 10 |noway |c
only if not achieved(2184)
step
To start, don't dps Kel'Thuzad
Instead, stand at the center of the room
Kill 18 Unstoppable Abomination before even touching Kel'Thuzad
Keep in mind, if you leave the green circle, it could cause Kel'Thuzad to despawn
That said, _you absolutely NEED ranged dps_ in order to pull the Abominations or they will despawn near the time Kel'Thuzad attacks
|achieve 2184 |goto Naxxramas 36.64,22.76
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Just Can't Get Enough (25 player)",{
expansion="mists",
mopready=true,
achieveid={2185},
patch='30008',
description="Defeat Kel'Thuzad in Naxxramas while killing at least 18 abominations in his chamber in 25 player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas##202278
Enter Sapphiron's Lair |goto Naxxramas 73.64,72.79 < 20 |noway |c
only if not achieved(2185)
step
map Naxxramas
path loop off;dist 20
path	45.36,64.29	36.29,56.32	34.06,42.13
Follow the path to Kel'Thuzad's Chamber |goto Naxxramas 34.06,42.13 < 10 |noway |c
only if not achieved(2185)
step
To start, don't dps Kel'Thuzad
Instead, stand at the center of the room
Kill 18 Unstoppable Abomination before even touching Kel'Thuzad
Keep in mind, if you leave the green circle, it could cause Kel'Thuzad to despawn
That said, _you absolutely NEED ranged dps_ in order to pull the Abominations or they will despawn near the time Kel'Thuzad attacks
|achieve 2185 |goto Naxxramas 36.64,22.76
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Keepers of Ulduar",{
expansion="mists",
mopready=true,
achieveid={12309},
patch='70305',
description="This guide will walk you through how to get The Keepers of Ulduar achievement.",
},[[
step
This achievement is gained by defeating the Keeper bosses of Ulduar
kill Hodir##32845 |achieve 12309/1 |goto Ulduar/3 67.00,63.80
kill Thorim##32865 |achieve 12309/2 |goto Ulduar/3 72.20,48.50
kill Freya##32906 |achieve 12309/3 |goto Ulduar/3 53.30,22.80
kill Mimiron##33350 |achieve 12309/4 |goto Ulduar/5 43.60,41.20
Clear the Keepers of Ulduar |achieve 12309
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Kel'Thuzad's Defeat (10 player)",{
expansion="mists",
mopready=true,
achieveid={574},
patch='unknown',
description="This guide will walk you through how to get the Kel'Thuzad's Defeat (10 player) achievement.",
},[[
step
This achievement is gained by defeating Kel'Thuzad in Naxxramas in 10 player mode
kill Kel'Thuzad##15990
Defeat Kel'Thuzad (10 player) |achieve 574 |goto Naxxramas 36.50,22.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Kel'Thuzad's Defeat (25 player)",{
expansion="mists",
mopready=true,
achieveid={575},
patch='30200',
description="This guide will walk you through how to get the Kel'Thuzad's Defeat (25 player) achievement.",
},[[
step
This achievement is gained by defeating Kel'Thuzad in Naxxramas in 25 player mode
kill Kel'Thuzad##15990
Defeat Kel'Thuzad (25 player) |achieve 575 |goto Naxxramas 36.50,22.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Kiss and Make Up",{
expansion="mists",
mopready=true,
achieveid={12384},
patch='70305',
description="This guide will walk you through how to get the Kiss and Make Up achievement.",
},[[
step
This achievement is gained by doing "/kiss" on Sara in Ulduar while she is angry with you
|tip This is done during the Yogg-Saron fight. During Phase 2, target Sara and do /kiss.
clicknpc Sara##33134
|tip You can do this easily by tying "/tar Sara".
Kiss Sara |script DoEmote("LOVE")
Kiss and Make Up |achieve 12384 |goto Ulduar/4 68.30,39.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Knock, Knock, Knock on Wood",{
expansion="mists",
mopready=true,
achieveid={12366},
patch='70305',
description="Defeat Freya while leaving all 3 Elders alive.",
},[[
step
kill Freya##32906
|tip To earn this achievement, Kill Freya directly without killing any of the Elders in her room.
Earn the Knock, Knock, Knock on Wood Achievement |achieve 12366 |goto Ulduar/3 53.00,23.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Knock on Wood",{
expansion="mists",
mopready=true,
achieveid={12364},
patch='70305',
description="This guide will walk you through how to get the Knock on Wood achievement.",
},[[
step
This achievement is gained by defeating Freya in Ulduar _while leaving at least 1 Elder alive_
|tip Leave at least Elder Brightleaf, Elder Ironbranch, or Elder Stonebark alive before Freya is killed.
kill Freya##32906
Defeat Freya |achieve 12364 |goto Ulduar/3 53.30,22.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Less Is More (10 player)",{
expansion="mists",
mopready=true,
achieveid={624},
patch='30001',
description="This guide will walk you through how to get the Less Is More (10 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian and the Twilight Drakes in The Obsidian Sanctum _with fewer than 9 players_ in 10 player mode
kill Vesperon##30449
kill Tenebron##30452
kill Shadron##30451
kill Sartharion the Onyx Guardian##28860
Defeat Sartharion the Onyx Guardian (10 player) |achieve 624 |goto The Obsidian Sanctum 50.50,47.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Less Is More (25 player)",{
expansion="mists",
mopready=true,
achieveid={1877},
patch='30009',
description="This guide will walk you through how to get the Less Is More (25 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian and the Twilight Drakes in The Obsidian Sanctum _with fewer than 9 players_ in 25 player mode
kill Vesperon##30449
kill Tenebron##30452
kill Shadron##30451
kill Sartharion the Onyx Guardian##28860
Defeat Sartharion the Onyx Guardian (25 player) |achieve 1877 |goto The Obsidian Sanctum 50.50,47.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Light of Dawn",{
expansion="mists",
mopready=true,
achieveid={4584},
patch='30300',
description="This guide will walk you through how to get the The Light of Dawn achievement.",
},[[
step
This achievement is gained by defeating the Lich King in 25-player _Heroic_ mode
kill The Lich King##36597
Defeat The Lich King in 25-player Heroic Mode |achieve 4584 |goto Icecrown Citadel/7 49.80,52.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Lose Your Illusion",{
expansion="mists",
mopready=true,
achieveid={12352},
patch='70305',
description="Defeat Thorim while Sif is present.",
},[[
step
map Ulduar/3
path	loop off; dist 20
path	69.04,43.15	69.21,38.08	75.23,38.11
path	81.65,38.20	82.21,43.61	81.44,48.29
path	78.03,50.41	74.00,50.19	71.46,48.60
path	70.32,48.82
kill Thorim##32865
|tip First, kill the enemies inside of the room.
|tip After killing the initial enemies, click the lever.
click Lever##245102
|tip Run down the corridor, killing mobs quickly.
|tip Reach the end of the hallway and jump down fast quickly to force Sif to join the fight.
|tip Ignore Sif and kill Thorim.
Earn the Lose Your Illusion Achievement |achieve 12352
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Lumberjacked",{
expansion="mists",
mopready=true,
achieveid={12360},
patch='70305',
description="This guide will walk you through how to get the Lumberjacked achievement.",
},[[
step
This achievement is gained by defeating Elder Brightleaf, Elder Ironbranch and Elder Stonebark _within 15 seconds of each other_ in Ulduar
|tip They are found around the large boss room. Pull them together and kill them all at once. Avoid pulling Freya or the Elders will become unattackable.
kill Elder Brightleaf##32915 |goto Ulduar/3 40.00,19.00
kill Elder Ironbranch##32913 |goto Ulduar/3 61.00,21.00
kill Elder Stonebark##32914 |goto Ulduar/3 56.00,40.00
Defeat the Three Elders |achieve 12360
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Make Quick Werk of Him (10 player)",{
expansion="mists",
mopready=true,
achieveid={1856},
patch='30008',
description="Defeat Patchwerk in Naxxramas in 3 minutes or less in 10-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61
Follow the path through the Construct Quarter |goto Naxxramas/1 53.61,76.61 < 20 |noway |c
only if not achieved(1856)
step
To earn this achievement, defeat Patchwerk within the 3 mintue mark
|achieve 1856 |goto Naxxramas/1 45.88,70.09
|tip Patchwerk patrols along the path here.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Make Quick Werk of Him (25 player)",{
expansion="mists",
mopready=true,
achieveid={1857},
patch='30008',
description="Defeat Patchwerk in Naxxramas in 3 minutes or less in 25-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61
Follow the path through the Construct Quarter |goto Naxxramas/1 53.61,76.61 < 20 |noway |c
only if not achieved(1857)
step
To earn this achievement, defeat Patchwerk within the 3 mintue mark
|achieve 1857 |goto Naxxramas/1 45.88,70.09
|tip Patchwerk patrols along the path here.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Many Whelps! Handle It! (10 player)",{
expansion="mists",
mopready=true,
achieveid={4403},
patch='30202',
description="This guide will walk you through how to get the Many Whelps! Handle It! (10 player) achievement.",
},[[
step
This achievement is gained by _causing 50 Onyxia Whelplings to hatch within 10 seconds_ of Onyxia's liftoff and then defeat her in 10 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4403 |goto Onyxia's Lair 67.20,30.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Many Whelps! Handle It! (25 player)",{
expansion="mists",
mopready=true,
achieveid={4406},
patch='30202',
description="This guide will walk you through how to get the Many Whelps! Handle It! (25 player) achievement.",
},[[
step
This achievement is gained by _causing 50 Onyxia Whelplings to hatch within 10 seconds_ of Onyxia's liftoff and then defeat her in 25 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4406 |goto Onyxia's Lair 67.20,30.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Military Quarter (10 player)",{
expansion="mists",
mopready=true,
achieveid={568},
patch='30008',
description="This guide will walk you through how to get The Military Quarter (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Military Quarter in Naxxramas in 10 player mode
kill Instructor Razuvious##16061 |achieve 568/1 |goto Naxxramas/3 42.70,45.90
kill Gothik the Harvester##16060 |achieve 568/2 |goto Naxxramas/3 67.50,59.60
Defeat the Four Horsemen |achieve 568/3 |goto Naxxramas/3 30.60,77.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Military Quarter (25 player)",{
expansion="mists",
mopready=true,
achieveid={569},
patch='30008',
description="This guide will walk you through how to get The Military Quarter (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Military Quarter in Naxxramas in 25 player mode
kill Instructor Razuvious##16061 |achieve 569/1 |goto Naxxramas/3 42.70,45.90
kill Gothik the Harvester##16060 |achieve 569/2 |goto Naxxramas/3 67.50,59.60
Defeat the Four Horsemen |achieve 569/3 |goto Naxxramas/3 30.60,77.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Momma Said Knock You Out (10 player)",{
expansion="mists",
mopready=true,
achieveid={1997},
patch='30003',
description="This guide will walk you through how to get the Momma Said Knock You Out (10 player) achievement.",
},[[
step
This achievement is gained by defeating Grand Widow Faerlina in Naxxramas _without dispelling or preventing Frenzy_ in 10 player mode
kill Grand Widow Faerlina##15953
Defeat Grand Widow Faerlina (10 player) |achieve 1997 |goto Naxxramas/2 44.10,36.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Momma Said Knock You Out (25 player)",{
expansion="mists",
mopready=true,
achieveid={2140},
patch='30003',
description="This guide will walk you through how to get the Momma Said Knock You Out (25 player) achievement.",
},[[
step
This achievement is gained by defeating Grand Widow Faerlina in Naxxramas _without dispelling or preventing Frenzy_ in 25 player mode
kill Grand Widow Faerlina##15953
Defeat Grand Widow Faerlina (25 player) |achieve 2140 |goto Naxxramas/2 44.10,36.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\More Dots! (10 player)",{
expansion="mists",
mopready=true,
achieveid={4402},
patch='30202',
description="This guide will walk you through how to get the More Dots! (10 player) achievement.",
},[[
step
This achievement is gained by defeating Onyxia _within 5 minutes_ in 10 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4402 |goto Onyxia's Lair 67.20,30.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\More Dots! (25 player)",{
expansion="mists",
mopready=true,
achieveid={4405},
patch='30202',
description="This guide will walk you through how to get the More Dots! (25 player) achievement.",
},[[
step
This achievement is gained by defeating Onyxia _within 5 minutes_ in 25 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4405 |goto Onyxia's Lair 67.20,30.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Must Deconstruct Faster",{
expansion="mists",
mopready=true,
achieveid={12329},
patch='70305',
description="This guide will walk you through how to get the Must Deconstruct Faster achievement.",
},[[
step
This achievement is gained by defeating XT-002 Deconstructor in Ulduar _within 205 seconds_
kill XT-002 Deconstructor##33293
Defeat XT-002 Deconstructor |achieve 12329 |goto Ulduar 48.80,14.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nausea, Heartburn, Indigestion... (10 player)",{
expansion="mists",
mopready=true,
achieveid={4578},
patch='30300',
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 10-player mode.",
},[[
step
To earn this achievement, don't drink any of the Ooze provided for the encounter as it will cause you to fail this achievement
|achieve 4578 |goto Icecrown Citadel/5 10.07,53.65
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nausea, Heartburn, Indigestion... (25 player)",{
expansion="mists",
mopready=true,
achieveid={4616},
patch='30300',
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 25-player mode.",
},[[
step
To earn this achievement, don't drink any of the Ooze provided for the encounter as it will cause you to fail this achievement
|achieve 4616 |goto Icecrown Citadel/5 10.07,53.65
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Neck-Deep in Vile (10 Player)",{
expansion="mists",
mopready=true,
achieveid={4581},
patch='30300',
description="This guide will walk you through how to get the Neck-Deep in Vile (10 Player) achievement.",
},[[
step
This achievement is gained by killing _every Vile Spirit that spawns before it explodes_ and then defeating the Lich King in 10-player mode
kill Vile Spirit##37799+
kill The Lich King##36597
Kill the Vile Spirits Before They Explode (10-player) |achieve 4581 |goto Icecrown Citadel/7 49.80,52.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Neck-Deep in Vile (25 Player)",{
expansion="mists",
mopready=true,
achieveid={4622},
patch='30302',
description="This guide will walk you through how to get the Neck-Deep in Vile (25 Player) achievement.",
},[[
step
This achievement is gained by killing _every Vile Spirit that spawns before it explodes_ and then defeating the Lich King in 25-player mode
kill Vile Spirit##37799+
kill The Lich King##36597
Kill the Vile Spirits Before They Explode (25-player) |achieve 4622 |goto Icecrown Citadel/7 49.80,52.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nerf Engineering",{
expansion="mists",
mopready=true,
achieveid={12326},
patch='70305',
description="This guide will walk you through how to get the Nerf Engineering achievement.",
},[[
step
This achievement is gained by defeating XT-002 Deconstructor in Ulduar _without him recovering any health from XS-013 Scrapbots_
|tip Kill the XS-013 Scrapbots that spawn and don't allow them to get to the boss. They spawn every 25% of the boss' health and can be slowed and rooted.
kill XT-002 Deconstructor##33293
Defeat XT-002 Deconstructor |achieve 12326 |goto Ulduar 48.80,14.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nerf Gravity Bombs",{
expansion="mists",
mopready=true,
achieveid={12328},
patch='70305',
description="This guide will walk you through how to get the Nerf Gravity Bombs achievement.",
},[[
step
This achievement is gained by defeating XT-002 Deconstructor in Ulduar _without any raid member dying from a Gravity Bomb_
kill XT-002 Deconstructor##33293
Defeat XT-002 Deconstructor |achieve 12328 |goto Ulduar 48.80,14.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nerf Scrapbots",{
expansion="mists",
mopready=true,
achieveid={12327},
patch='70305',
description="This guide will walk you through how to get the Nerf Scrapbots achievement.",
},[[
step
This achievement is gained by defeating _20 XS-013 Scrapbots within 12 seconds_ using XE-321 Boombots in Ulduar
|tip Weaken the boss to 50% health to trigger two Heart phases. This will cause Scrapbots to spawn from the junk piles. Run through to adds so the boss follows you. If there were at least 20 Scrapbots you'll get the achievement.
kill XT-002 Deconstructor##33293
Defeat XT-002 Deconstructor |achieve 12327 |goto Ulduar 48.80,14.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Nine Lives",{
expansion="mists",
mopready=true,
achieveid={12342},
patch='70305',
description="This guide will walk you through how to get the Nine Lives achievement.",
},[[
step
This achievement is gained by _defeating the Feral Defender_ in Ulduar while defeating Auriaya
kill Sanctum Sentry##34014+
|tip Kill the Sentries to spawn the Feral Defender.
kill Feral Defender##34035
|tip You must kill it 9 times, then kill Auriaya. It will spawn again after each death after about 30 seconds.
kill Auriaya##33515
Defeat Feral Defender |achieve 12342 |goto Ulduar/3 51.20,57.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Not-So-Friendly Fire",{
expansion="mists",
mopready=true,
achieveid={12368},
patch='70305',
description="This guide will walk you through how to get the Not-So-Friendly Fire achievement.",
},[[
step
This achievement is gained by forcing Mimiron in Ulduar to _kill an Assault Bot with a Rocket Strike_
kill Mimiron##33350
|tip During Mimiron's third phase (Aerial Command Unit form), Assault Bots spawn, leave at least 1 of them alive for the next phase.
|tip In the fourth phase (V0-L7R-0N form), Mimiron casts Rocket Strike at a targeted location. Kite the Assault Bot into that spot.
Not-So-Friendly Fire |achieve 12368 |goto Ulduar/5 43.60,41.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Not One, But Two Jormungars (10 player)",{
expansion="mists",
mopready=true,
achieveid={3936},
patch='30200',
description="This guide will walk you through how to get the Not One, But Two Jormungars (10 player) achievement.",
},[[
step
This achievement is gained by defeating Acidmaw and Dreadscale _within 10 seconds of each other_ in 10 player mode
kill Acidmaw##35144, Dreadscale##34799
|tip These spawn during the first encounter of Trial of the Crusader, the Northrend Beast.
Not One, But Two Jormungars (10 player) |achieve 3936 |goto Trial of the Crusader 51.10,52.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Not One, But Two Jormungars (25 player)",{
expansion="mists",
mopready=true,
achieveid={3937},
patch='30200',
description="This guide will walk you through how to get the Not One, But Two Jormungars (25 player) achievement.",
},[[
step
This achievement is gained by defeating Acidmaw and Dreadscale _within 10 seconds of each other_ in 25 player mode
kill Acidmaw##35144, Dreadscale##34799
|tip These spawn during the first encounter of Trial of the Crusader, the Northrend Beast.
Not One, But Two Jormungars (25 player) |achieve 3937 |goto Trial of the Crusader 51.10,52.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Observed",{
expansion="mists",
mopready=true,
achieveid={12399},
patch='70305',
description="This guide will walk you through how to get the Observed achievement.",
},[[
step
This achievement is gained by defeating Algalon the Observer in Ulduar
kill Algalon the Observer##32871
Defeat Algalon the Observer |achieve 12399 |goto Ulduar/2 79.20,46.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Once Bitten, Twice Shy (10 player)",{
expansion="mists",
mopready=true,
achieveid={4539},
patch='30300',
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 10-player mode.",
},[[
step
To earn this achievement, you will need to defeat Blood-Queen Lana'thel twice:
It will take around 15 seconds for her to activate the Essence of the Blood-Queen debuff
So wait to DPS her if you are looking to get the debuff
|achieve 4539/2 |goto Icecrown Citadel/6 51.13,32.44
If you are wanting to defeat her without becoming a vampire, you may want to bring additional dps to burn her quickly
|achieve 4539/1	|goto Icecrown Citadel/6 51.13,32.44
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Once Bitten, Twice Shy (25 player)",{
expansion="mists",
mopready=true,
achieveid={4618},
patch='30300',
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 25-player mode.",
},[[
step
To earn this achievement, you will need to defeat Blood-Queen Lana'thel twice:
It will take around 15 seconds for her to activate the Essence of the Blood-Queen debuff
So wait to DPS her if you are looking to get the debuff
|achieve 4618/2 |goto Icecrown Citadel/6 51.13,32.44
If you are wanting to defeat her without becoming a vampire, you may want to bring additional dps to burn her quickly
|achieve 4618/1	|goto Icecrown Citadel/6 51.13,32.44
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\One Light in the Darkness",{
expansion="mists",
mopready=true,
achieveid={12387},
patch='70305',
description="Defeat Yogg-Saron with the assistance of one or fewer Keepers.",
},[[
step
map Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/4
path	66.62,60.05
Teleport to the Prison of Yogg-Saron |goto Ulduar/4 66.62,60.05 |noway |c
'|achieve 12387
step
kill Yogg-Saron##33288
|tip To earn this achievement, defeat Yogg-Saron with the aid of one keeper or none.
|tip If you do use a keeper, we would suggest that you speak with Freya.
Earn the _One Light in the Darkness_ achievement |achieve 12387 |goto Ulduar/4 68,40.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Orb Whisperer (10 player)",{
expansion="mists",
mopready=true,
achieveid={4582},
patch='30300',
description="Defeat the Blood Council without anyone in the raid taking more than 23,000 spell damage in a single hit in 10-player mode.",
},[[
step
_Prince Valanar_ casts Empowered Shock Vortex
If you're with multiple people, have someone attack the Kinetic Bombs if you have dots available
_Prince Taldaram_ casts Conjure Empowered Flame, which you will have to run away from if you're the target
If you are with multiple people, stand together with your group members to mitigate some damage
_Prince Keleseth_ casts Empowered Shadow Lance, which damage can be negated by killing Dark Nuclei around the room
Keep around _4 Stacks_ of Shadow Resonance if possible
Defeat the Blood Council without anyone in the raid taking 23,000 or more in one hit |achieve 4582 |goto Icecrown Citadel/5 51.93,12.00
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Orb Whisperer (25 player)",{
expansion="mists",
mopready=true,
achieveid={4617},
patch='30302',
description="Defeat the Blood Council without anyone in the raid taking more than 25,000 spell damage in a single hit in 25-player mode.",
},[[
step
_Prince Valanar_ casts Empowered Shock Vortex
If you're with multiple people, have someone attack the Kinetic Bombs if you have dots available
_Prince Taldaram_ casts Conjure Empowered Flame, which you will have to run away from if you're the target
If you are with multiple people, stand together with your group members to mitigate some damage
_Prince Keleseth_ casts Empowered Shadow Lance, which damage can be negated by killing Dark Nuclei around the room
Keep around _4 Stacks_ of Shadow Resonance if possible
Defeat the Blood Council without anyone in the raid taking 25,000 or more in one hit |achieve 4617 |goto Icecrown Citadel/5 51.93,12.00
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Orbit-uary",{
expansion="mists",
mopready=true,
achieveid={12320},
patch='70305',
description="Defeat Flame Leviathan with all 4 Orbital Defense Systems active.",
},[[
step
talk Lore Keeper of Norgannon##33686 |goto Ulduar/1 52.64,88.26
Tell him "Activate the second defense system."
map Ulduar/1
path loop off; dist 20
path	50.03,71.16	49.73,56.07	49.00,42.60
Make your way through the Iron Concourse and reach the Flame Leviathan |goto Ulduar/1 49.00,42.60 |noway |c
'|achieve 12320
step
kill Flame Leviathan##33113
|tip To earn this achievement, you will need to defeat the Flame Leviathan with all defense systems active.
|tip Climb into a Salvaged Demolisher and head towards the boss, destroying a few standard towers on the path towards him.
|tip Once you get to the boss, spam your siege attacks.
|tip If your vehicle is destroyed, it shouldn't be too much of a problem, though you may end up needing sufficient self healing.
|tip If your vehicle ends up being destroyed, make sure that you never stand still or you'll be stunned.
Earn the _Orbit-uary_ achievement |achieve 12320 |goto Ulduar/1 49,40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Orbital Bombardment",{
expansion="mists",
mopready=true,
achieveid={12317},
patch='70305',
description="This guide will walk you through how to get the Orbital Bombardment achievement.",
},[[
step
This achievement is gained by defeating Flame Leviathan in Ulduar _with at least 1 Orbital Defense System active_
|tip There are three towers on the map on the way to the Flame Leviathan. Defeat Flame Leviathan without destroying at least one of them.
kill Flame Leviathan##33113
Defeat Flame Leviathan |achieve 12317 |goto Ulduar 49.30,38.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Plague Quarter (10 player)",{
expansion="mists",
mopready=true,
achieveid={566},
patch='30008',
description="This guide will walk you through how to get The Plague Quarter (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plague Quarter in Naxxramas in 10 player mode
kill Noth the Plaguebringer##15954 |achieve 566/1 |goto Naxxramas/4 34.60,56.40
kill Heigan the Unclean##15936 |achieve 566/2 |goto Naxxramas/4 49.80,45.60
kill Loatheb##16011 |achieve 566/3 |goto Naxxramas/4 76.00,28.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Plague Quarter (25 player)",{
expansion="mists",
mopready=true,
achieveid={567},
patch='30008',
description="This guide will walk you through how to get The Plague Quarter (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plague Quarter in Naxxramas in 25 player mode
kill Noth the Plaguebringer##15954 |achieve 567/1 |goto Naxxramas/4 34.60,56.40
kill Heigan the Unclean##15936 |achieve 567/2 |goto Naxxramas/4 49.80,45.60
kill Loatheb##16011 |achieve 567/3 |goto Naxxramas/4 76.00,28.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Plagueworks (10 player)",{
expansion="mists",
mopready=true,
achieveid={4528},
patch='30302',
description="This guide will walk you through how to get The Plagueworks (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plagueworks in Icecrown Citadel in 10 player mode
kill Festergut##36626 |achieve 4528/1 |goto Icecrown Citadel/5 19.80,65.40
kill Rotface##36627 |achieve 4528/2 |goto Icecrown Citadel/5 19.80,41.90
kill Professor Putricide##36678 |achieve 4528/3 |goto Icecrown Citadel/5 13.30,53.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Portal Jockey (10 player)",{
expansion="mists",
mopready=true,
achieveid={4579},
patch='30300',
description="Enter every portal spawned by Valithria Dreamwalker before healing her to full health in 10-player mode.",
},[[
step
To start, you will need to be a healer for this achievement
You will need to heal up Valithria Dreamwalker before any Portals appear during the encounter
Enter every portal spawned during the encounter |achieve 4579 |goto Icecrown Citadel/5 76.62,73.26
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Portal Jockey (25 player)",{
expansion="mists",
mopready=true,
achieveid={4619},
patch='30303',
description="Enter every portal spawned by Valithria Dreamwalker before healing her to full health in 25-player mode.",
},[[
step
To start, you will need to be a healer for this achievement
You will need to heal up Valithria Dreamwalker before any Portals appear during the encounter
Enter every portal spawned during the encounter |achieve 4619 |goto Icecrown Citadel/5 76.62,73.26
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Resilience Will Fix It (10 player)",{
expansion="mists",
mopready=true,
achieveid={3798},
patch='30200',
description="This guide will walk you through how to get the Resilience Will Fix It (10 player) achievement.",
},[[
step
This achievement is gained by all the enemy heroes _within 60 seconds of the first one dying_ in 10 player mode
|tip It is the third encounter of the raid.
Kill the big group of enemies that spawn
Resilience Will Fix It (10 player) |achieve 3798 |goto Trial of the Crusader 42.80,52.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Rubble and Roll",{
expansion="mists",
mopready=true,
achieveid={12340},
patch='70305',
description="This guide will walk you through how to get the Rubble and Roll achievement.",
},[[
step
This achievement is gained by defeating Kologarn in Ulduar _after causing at least 25 Rubble creatures to spawn_
|tip Killing his arms will cause Rubble elementals to spawn. Do this a few times until enough Rubble elementals have spawned, then kill Kologarn himself.
kill Kologarn##32930
Defeat Kologarn |achieve 12340 |goto Ulduar/2 37.20,13.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Saftey Dance(10 player)",{
expansion="mists",
mopready=true,
achieveid={1996},
patch='30002',
description="Defeat Heigan the Unclean in Naxxramas without anyone in the raid dying in 10 player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto Naxxramas/4 35.02,57.17 < 15 |noway |c
only if not achieved(1996)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Follow the path to Heigan the Unclean |goto Naxxramas/4 49.88,39.52 < 15 |noway |c
only if not achieved(1996)
step
For this achievement, simply jump up onto the platform Heigan is standing on and kill him
|achieve 1996 |goto Naxxramas/4 51.46,42.98
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Safety Dance(25 player)",{
expansion="mists",
mopready=true,
achieveid={2139},
patch='30002',
description="Defeat Heigan the Unclean in Naxxramas without anyone in the raid dying in 25 player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto Naxxramas/4 35.02,57.17 < 15 |noway |c
only if not achieved(2139)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Follow the path to Heigan the Unclean |goto Naxxramas/4 49.88,39.52 < 15 |noway |c
only if not achieved(2139)
step
For this achievement, simply jump up onto the platform Heigan is standing on and kill him
|achieve 2139 |goto Naxxramas/4 51.46,42.98
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Salt and Pepper (10 player)",{
expansion="mists",
mopready=true,
achieveid={3799},
patch='30202',
description="This guide will walk you through how to get the Salt and Pepper (10 player) achievement.",
},[[
step
This achievement is gained by defeating the Twin Val'kyr in 3 minutes or less in the Trial of the Crusader in 10 player mode
kill Fjola Lightbane##34497
kill Eydis Darkbane##34496
Defeat the Twin Val'kyr in 3 Minutes or Less (10 player) |achieve 3799 |goto Trial of the Crusader 46.30,64.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Salt and Pepper (25 player)",{
expansion="mists",
mopready=true,
achieveid={3815},
patch='30202',
description="This guide will walk you through how to get the Salt and Pepper (25 player) achievement.",
},[[
step
This achievement is gained by defeating the Twin Val'kyr in 3 minutes or less in the Trial of the Crusader in 25 player mode
kill Fjola Lightbane##34497
kill Eydis Darkbane##34496
Defeat the Twin Val'kyr in 3 Minutes or Less (25 player) |achieve 3815 |goto Trial of the Crusader 46.30,64.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Sapphiron's Demise (10 player)",{
expansion="mists",
mopready=true,
achieveid={572},
patch='unknown',
description="This guide will walk you through how to get the Sapphiron's Demise (10 player) achievement.",
},[[
step
This achievement is gained by defeating Sapphiron in Naxxramas in 10 player mode
kill Sapphiron##15989
Defeat Sapphiron (10 player) |achieve 572 |goto Naxxramas 56.50,67.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Sapphiron's Demise (25 player)",{
expansion="mists",
mopready=true,
achieveid={573},
patch='30200',
description="This guide will walk you through how to get the Sapphiron's Demise (25 player) achievement.",
},[[
step
This achievement is gained by defeating Sapphiron in Naxxramas in 25 player mode
kill Sapphiron##15989
Defeat Sapphiron (25 player) |achieve 573 |goto Naxxramas 56.50,67.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Set Up Us the Bomb",{
expansion="mists",
mopready=true,
achieveid={12367},
patch='70305',
description="This guide will walk you through how to get the Set Up Us the Bomb achievement.",
},[[
step
This achievement is gained by defeating Mimiron in Ulduar _without anyone in the raid being hit by:_
|tip These can be done over multiple raid attempts.
A Proximity Mine |achieve 12367/1
A Rocket Strike |achieve 12367/2
A Bomb Bot |achieve 12367/3
kill Mimiron##33350 |achieve 12367 |goto Ulduar/5 43.60,41.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shadowdodger",{
expansion="mists",
mopready=true,
achieveid={12372},
patch='70305',
description="This guide will walk you through how to get the Shadowdodger achievement.",
},[[
step
This achievement is gained by defeating General Vezax in Ulduar _without any raid member being hit by Shadow Crash_
kill General Vezax##33271
Defeat General Vezax |achieve 12372 |goto Ulduar 38.30,26.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shattered",{
expansion="mists",
mopready=true,
achieveid={12323},
patch='70305',
description="This guide will walk you through how to get the Shattered achievement.",
},[[
step
This achievement is gained by defeating Ignis the Furnace Master _after shattering 2 Iron Constructs within 5 seconds_
|tip Wait for two of the Iron Construct adds to spawn and walk them into the area where Ignis Scorched the ground. They will get 10 stacks of Heat and then become Molten.
|tip After they become Molten walk them into the nearby pool of water to make them Brittle. Then kill the two Iron Constructs and kill the boss.
kill 2 Iron Construct##33121
kill Ignis the Furnace Master##33118
Defeat Ignis the Furnace Master |achieve 12323 |goto Ulduar 38.30,26.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\She Deep Breaths More (10 player)",{
expansion="mists",
mopready=true,
achieveid={4404},
patch='30202',
description="This guide will walk you through how to get the She Deep Breaths More (10 player) achievement.",
},[[
step
This achievement is gained by defeating Onyxia _without anyone taking damage from Deep Breath_ in 10 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4404 |goto Onyxia's Lair 67.20,30.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\She Deep Breaths More (25 player)",{
expansion="mists",
mopready=true,
achieveid={4407},
patch='30202',
description="This guide will walk you through how to get the She Deep Breaths More (25 player) achievement.",
},[[
step
This achievement is gained by defeating Onyxia _without anyone taking damage from Deep Breath_ in 25 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4407 |goto Onyxia's Lair 67.20,30.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shocking! (10 player)",{
expansion="mists",
mopready=true,
achieveid={2178},
patch='30002',
description="This guide will walk you through how to get the Shocking! (10 player) achievement.",
},[[
step
This achievement is gained by defeating Thaddius in Naxxramas _without anyone crossing the negative and positive charges_ in 10 player mode
kill Thaddius##15928
Defeat Thaddius (10 player) |achieve 2178 |goto Naxxramas 26.50,14.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shocking! (25 player)",{
expansion="mists",
mopready=true,
achieveid={2179},
patch='30002',
description="This guide will walk you through how to get the Shocking! (25 player) achievement.",
},[[
step
This achievement is gained by defeating Thaddius in Naxxramas _without anyone crossing the negative and positive charges_ in 25 player mode
kill Thaddius##15928
Defeat Thaddius (25 player) |achieve 2179 |goto Naxxramas 26.50,14.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Shutout",{
expansion="mists",
mopready=true,
achieveid={12316},
patch='70305',
description="This guide will walk you through how to get the Shutout achievement.",
},[[
step
This achievement is gained by defeating Flame Leviathan in Ulduar _without causing a System Shutdown_
|tip Just simply kill Flame Leviathan (without boarding it and destroying its two defense turrets).
kill Flame Leviathan##33113
Defeat Flame Leviathan |achieve 12316 |goto Ulduar 49.30,38.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Siege of Ulduar",{
expansion="mists",
mopready=true,
achieveid={12297},
patch='70305',
description="This guide will walk you through how to get The Siege of Ulduar achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Siege area of Ulduar
kill Flame Leviathan##33113 |achieve 12297/1 |goto Ulduar 49.30,38.60
kill Razorscale##33186 |achieve 12297/2 |goto Ulduar 54.50,26.40
kill XT-002 Deconstructor##33293 |achieve 12297/3 |goto Ulduar 48.80,14.10
kill Ignis the Furnace Master##33118 |achieve 12297/4 |goto Ulduar 38.30,26.60
Clear the Siege of Ulduar |achieve 12297
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Siffed",{
expansion="mists",
mopready=true,
achieveid={12351},
patch='70305',
description="This guide will walk you through how to get the Siffed achievement.",
},[[
step
This achievement is gained by forcing Thorim to enter the arena while Sif is present in Ulduar
|tip This is done by reaching Thorim within 3 minutes of starting the gauntlet.
kill Thorim##32865
Defeat Thorim |achieve 12351 |goto Ulduar/3 72.20,48.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Spellweaver's Downfall (10 player)",{
expansion="mists",
mopready=true,
achieveid={622},
patch='30001',
description="This guide will walk you through how to get The Spellweaver's Downfall (10 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity in 10 player mode
kill Malygos##28859
Defeat Malygos (10 player) |achieve 622 |goto The Eye of Eternity 38.40,49.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Spellweaver's Downfall (25 player)",{
expansion="mists",
mopready=true,
achieveid={623},
patch='30001',
description="This guide will walk you through how to get The Spellweaver's Downfall (25 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity in 25 player mode
kill Malygos##28859
Defeat Malygos (25 player) |achieve 623 |goto The Eye of Eternity 38.40,49.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Spore Loser(10 player)",{
expansion="mists",
mopready=true,
achieveid={2182},
patch='30008',
description="Defeat Loatheb in Naxxramas without killing any spores in 10-player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto Naxxramas/4 35.02,57.17 < 15 |noway |c
only if not achieved(2182)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Kill Heigan the Unclean |goto Naxxramas/4 51.46,42.98 < 15 |noway |c
only if not achieved(2182)
step
map Naxxramas/4
path loop off;dist 20
path	54.60,45.74	57.24,36.98	60.47,28.42
path	71.73,28.44
Follow the path into the  Necrotic Vault |goto Naxxramas/4 71.73,28.44 < 15 |noway |c
only if not achieved(2182)
step
To earn this achievement, simply dps Loatheb, ignoring any spores that may spawn
_Avoid using AoE_
|achieve 2182 |goto Naxxramas/4 75.40,28.38
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Spore Loser (25 player)",{
expansion="mists",
mopready=true,
achieveid={2183},
patch='30008',
description="Defeat Loatheb in Naxxramas without killing any spores in 25-player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto Naxxramas/4 35.02,57.17 < 15 |noway |c
only if not achieved(2183)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Kill Heigan the Unclean |goto Naxxramas/4 51.46,42.98 < 15 |noway |c
only if not achieved(2183)
step
map Naxxramas/4
path loop off;dist 20
path	54.60,45.74	57.24,36.98	60.47,28.42
path	71.73,28.44
Follow the path into the  Necrotic Vault |goto Naxxramas/4 71.73,28.44 < 15 |noway |c
only if not achieved(2183)
step
To earn this achievement, simply dps Loatheb, ignoring any spores that may spawn
_Avoid using AoE_
|achieve 2183 |goto Naxxramas/4 75.40,28.38
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Staying Buffed All Winter",{
expansion="mists",
mopready=true,
achieveid={12346},
patch='70305',
description="This guide will walk you through how to get the Staying Buffed All Winter achievement.",
},[[
step
This achievement is gained by gaining the _effects of Toasty Fire, Storm Power and Starlight at the same time_ during the Hodir fight in Ulduar
This achievement cannot be done solo unless you have a pet, as Storm Power is cast on a secondary target
|tip Storm Power is cast on a random player that isn't Hodir's target. Toasty Fire is gained by standing by one of the small fires the mage NPC's make. Starlight is gained by standing in the white starlight beams created by the moonkin NPCs.
kill Hodir##32845
Gain All Three Buffs Simultaneously |achieve 12346 |goto Ulduar/3 67.00,63.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Stokin' the Furnace",{
expansion="mists",
mopready=true,
achieveid={12325},
patch='70305',
description="Defeat Ignis the Furnace Master in 4 minutes.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter##194569
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
'|achieve 12325
step
kill Ignis the Furnace Master##33118
|tip To earn this achievement, burn down Ignis within 4 minutes.
Earn the _Stokin' the Furnace_ achievement |achieve 12325 |goto Ulduar/1 37.50,26.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Storming the Citadel (10 player)",{
expansion="mists",
mopready=true,
achieveid={4531},
patch='30302',
description="This guide will walk you through how to get the Storming the Citadel (10 player) achievement.",
},[[
step
This achievement is gained by defeating the first four bosses in Icecrown Citadel in 10-player mode
kill Lord Marrowgar##36612
Defeat Lord Marrowgar |achieve 4531/1 |goto Icecrown Citadel/1 39.10,59.30
kill Lady Deathwhisper##36855
Defeat Lady Deathwhisper |achieve 4531/2 |goto Icecrown Citadel/1 39.10,86.90
Complete the Gunship Battle |achieve 4531/3 |goto Icecrown Citadel/3 48.70,76.40
kill Deathbringer Saurfang##37813
Defeat Deathbringer Saurfang |achieve 4531/4 |goto Icecrown Citadel/3 51.10,21.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Subtraction (10 player)",{
expansion="mists",
mopready=true,
achieveid={2180},
patch='30003',
description="Defeat Thaddius in Naxxramas with less than 9 players in 10-player mode.",
},[[
step
Defeat Thaddius while in a raid group consisting of 8 or less players
|achieve 2180
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Subtraction (25 player)",{
expansion="mists",
mopready=true,
achieveid={2181},
patch='30008',
description="Defeat Thaddius in Naxxramas with less than 21 players in 25-player mode.",
},[[
step
Defeat Thaddius while in a raid group consisting of 21 or less players
|achieve 2181 |goto Naxxramas/1 26.38,14.66
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Supermassive",{
expansion="mists",
mopready=true,
achieveid={12400},
patch='70305',
description="This guide will walk you through how to get the Supermassive achievement.",
},[[
step
This achievement is gained by defeating Algalon the Observer in Ulduar _after closing 3 Black Holes within 10 seconds_
|tip Kill 2 black holes close to each other, and the last one as close to them as possible. Wait for the Living Constellations to spawn.
|tip Don't move into the black holes, as you will get teleported and Algalon will reset.
kill Algalon the Observer##32871
Defeat Algalon the Observer |achieve 12400 |goto Ulduar/2 79.20,46.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Take Out Those Turrets",{
expansion="mists",
mopready=true,
achieveid={12315},
patch='70305',
description="This guide will walk you through how to get the Take Out Those Turrets achievement.",
},[[
step
This achievement is gained by defeating a Flame Leviathan Defense Turret in Ulduar
This achievement _requires at least two people_ and the Demolisher vehicle to complete
|tip Engage the Flame Leviathan but don't kill it. Use a Demolisher and use its skill to launch the passenger onto the Flame Leviathan.
|tip You must be in the passenger seat to be launched, and it takes 1 second to cast. Don't move while using it or it will interrupt the cast.
|tip Once on the Flame Leviathan the Defense Turrets will become targetable.
kill Flame Leviathan Defense Turret##33142
Defeat a Flame Leviathan Defense Turret |achieve 12315 |goto Ulduar 49.30,38.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\They're Coming Out of the Walls",{
expansion="mists",
mopready=true,
achieveid={12397},
patch='70305',
description="This guide will walk you through how to get the They're Coming Out of the Walls achievement.",
},[[
step
This achievement is gained by defeating 9 Guardians of Yogg-Saron in Ulduar
kill 9 Guardian of Yogg-Saron##33136
|tip Engage Yogg-Saron and wait for him to spawn 9 Guardians, then kill them.
They're Coming Out of the Walls |achieve 12397 |goto Ulduar/4 68.30,39.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Three Car Garage",{
expansion="mists",
mopready=true,
achieveid={12314},
patch='70305',
description="This guide will walk you through how to get the Three Car Garage achievement.",
},[[
step
This achievement is gained by defeating Flame Leviathan in Ulduar _while in each of the following vehicles_
kill Flame Leviathan##33113
Defeat Flame Leviathan with Salvaged Chopper |achieve 12314/1 |goto Ulduar 49.30,38.60
Defeat Flame Leviathan with Salvaged Siege Engine |achieve 12314/2 |goto Ulduar 49.30,38.60
Defeat Flame Leviathan with Salvaged Demolisher |achieve 12314/3 |goto Ulduar 49.30,38.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Three Lights in the Darkness",{
expansion="mists",
mopready=true,
achieveid={12385},
patch='70305',
description="This guide will walk you through how to get the Three Lights in the Darkness achievement.",
},[[
step
This achievement is gained by defeating Yogg-Saron in Ulduar _with the assistance of three or fewer Keepers_
kill Yogg-Saron##33288
Defeat Yogg-Saron |achieve 12385 |goto Ulduar/4 68.30,39.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Three Sixty Pain Spike (10 player)",{
expansion="mists",
mopready=true,
achieveid={3996},
patch='30200',
description="This guide will walk you through how to get the Three Sixty Pain Spike (10 player) achievement.",
},[[
step
This achievement is gained by defeating Lord Jaraxxus _while at least two Mistresses of Pain are alive_ in 10 player mode
|tip Jaraxxus will open a portal to bring them in. Wait for two of them to spawn, then kill Jaraxxus. Don't use AoE as it can also kill the Mistresses of Pain.
kill Lord Jaraxxus##34780
Three Sixty Pain Spike (10 player) |achieve 3996 |goto Trial of the Crusader 46.30,40.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Three Sixty Pain Spike (25 player)",{
expansion="mists",
mopready=true,
achieveid={3997},
patch='30200',
description="This guide will walk you through how to get the Three Sixty Pain Spike (25 player) achievement.",
},[[
step
This achievement is gained by defeating Lord Jaraxxus _while at least two Mistresses of Pain are alive_ in 25 player mode
|tip Jaraxxus will open a portal to bring them in. Wait for two of them to spawn, then kill Jaraxxus. Don't use AoE as it can also kill the Mistresses of Pain.
kill Lord Jaraxxus##34780
Three Sixty Pain Spike (25 player) |achieve 3997 |goto Trial of the Crusader 46.30,40.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Traitor King (10 player)",{
expansion="mists",
mopready=true,
achieveid={3800},
patch='30200',
description="This guide will walk you through how to get The Traitor King (10 player) achievement.",
},[[
step
This achievement is gained by defeating _25 Swarm Scarabs within 30 seconds_ in 10 player mode
kill Anub'arak##34564
|tip Wait for Anub'arak to submerge and then collect the Swarm Scarabs that spawn. Do this twice and then kill the scarabs all at once.
kill 25 Swarm Scarab##34605
The Traitor King (10 player) |achieve 3800 |goto Trial of the Crusader/1 53.20,35.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Traitor King (25 player)",{
expansion="mists",
mopready=true,
achieveid={3816},
patch='40001',
description="This guide will walk you through how to get The Traitor King (25 player) achievement.",
},[[
step
This achievement is gained by defeating _25 Swarm Scarabs within 30 seconds_ in 25 player mode
kill Anub'arak##34564
|tip Wait for Anub'arak to submerge and then collect the Swarm Scarabs that spawn. Do this twice and then kill the scarabs all at once.
kill 25 Swarm Scarab##34605
The Traitor King (25 player) |achieve 3816 |goto Trial of the Crusader/1 53.20,35.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Twilight Assist (10 player)",{
expansion="mists",
mopready=true,
achieveid={2049},
patch='30008',
description="This guide will walk you through how to get the Twilight Assist (10 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian in The Obsidian Sanctum _with at least one Twilight Drake still alive_ in 10 player mode
|tip Pull the Drake and then kill Sartharion.
kill Sartharion the Onyx Guardian##28860
Defeat Sartharion the Onyx Guardian |achieve 2049 |goto The Obsidian Sanctum 50.50,47.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Twilight Assist (25 player)",{
expansion="mists",
mopready=true,
achieveid={2052},
patch='30008',
description="This guide will walk you through how to get the Twilight Assist (25 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian in The Obsidian Sanctum _with at least one Twilight Drake still alive_ in 25 player mode
|tip Pull the Drake and then kill Sartharion.
kill Sartharion the Onyx Guardian##28860
Defeat Sartharion the Onyx Guardian |achieve 2052 |goto The Obsidian Sanctum 50.50,47.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Twilight Zone (10 player)",{
expansion="mists",
mopready=true,
achieveid={2051},
patch='30008',
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
To earn this achievement, ignore the Twilight Drakes and kill Sartharion
If he lasts long enough to do Lava Strike, avoid the area he casts it in
|achieve 2051 |goto The Obsidian Sanctum/0 50.26,47.34
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\The Twilight Zone (25 player)",{
expansion="mists",
mopready=true,
achieveid={2054},
patch='30002',
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
To earn this achievement, ignore the Twilight Drakes and kill Sartharion
If he lasts long enough to do Lava Strike, avoid the area he casts it in
|achieve 2054 |goto The Obsidian Sanctum/0 50.26,47.34
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Unbroken",{
expansion="mists",
mopready=true,
achieveid={12313},
patch='70305',
description="This guide will walk you through how to get the Unbroken achievement.",
},[[
step
This achievement is gained by defeating Flame Leviathan in Ulduar _on the first try without anyone repairing their vehicle_
kill Flame Leviathan##33113
Defeat the Flame Leviathan |achieve 12313 |goto Ulduar 49.30,38.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Upper Back Pain (10 player)",{
expansion="mists",
mopready=true,
achieveid={3797},
patch='30200',
description="This guide will walk you through how to get the Upper Back Pain (10 player) achievement.",
},[[
step
This achievement is gained by defeating Icehowl _while at least 2 Snobolds remain alive_ in 10 player mode
|tip Don't kill anything in this area until Icehowl comes out, and then kill just him.
kill Icehowl##34797
Upper Back Pain (10 player) |achieve 3797 |goto Trial of the Crusader 51.10,52.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Upper Back Pain (25 player)",{
expansion="mists",
mopready=true,
achieveid={3813},
patch='30200',
description="This guide will walk you through how to get the Upper Back Pain (25 player) achievement.",
},[[
step
This achievement is gained by defeating Icehowl _while at least 4 Snobolds remain alive_ in 25 player mode
|tip Don't kill anything in this area until Icehowl comes out, and then kill just him.
kill Icehowl##34797
Upper Back Pain (25 player) |achieve 3813 |goto Trial of the Crusader 51.10,52.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Who Needs Bloodlust?",{
expansion="mists",
mopready=true,
achieveid={12350},
patch='70305',
description="This guide will walk you through how to get the Who Needs Bloodlust? achievement.",
},[[
step
This achievement is gained by defeating Thorim in Ulduar _while under the effect of Aura of Celerity_
kill Thorim##32865
Defeat Thorim |achieve 12350 |goto Ulduar/3 72.20,48.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\With Open Arms",{
expansion="mists",
mopready=true,
achieveid={12337},
patch='70305',
description="This guide will walk you through how to get the With Open Arms achievement.",
},[[
step
This achievement is gained by defeating Kologarn in Ulduar _without destroying either of his arms_
|tip Be careful using AoE's as they may destroy his arms.
kill Kologarn##32930
Defeat Kologarn |achieve 12337 |goto Ulduar/2 37.20,13.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\You Don't Have an Eternity (10 player)",{
expansion="mists",
mopready=true,
achieveid={1874},
patch='30008',
description="This guide will walk you through how to get the You Don't Have an Eternity (10 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity _in 6 minutes or less_ in 10 player mode
kill Malygos##28859
Defeat Malygos (10 player) |achieve 1874 |goto The Eye of Eternity 38.40,49.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\You Don't Have an Eternity (25 player)",{
expansion="mists",
mopready=true,
achieveid={1875},
patch='30002',
description="This guide will walk you through how to get the You Don't Have an Eternity (25 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity _in 6 minutes or less_ in 25 player mode
kill Malygos##28859
Defeat Malygos (25 player) |achieve 1875 |goto The Eye of Eternity 38.40,49.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Acrocalypse Now",{
expansion="mists",
mopready=true,
achieveid={5291},
patch='40003',
description="This guide will walk you through how to get the Acrocalypse Now achievement.",
},[[
step
kill 20 Frenzied Crocolisk##43658+
kill Lockmaw##43614
|tip Defeat 20 Frenzied Crocolisks within 10 seconds during the Lockmaw encounter in Lost City of the Tol'vir on heroic difficulty.
|tip Each time Lockmaw casts Scent of Blood it will spawn 4 adds.
|tip Wait for 5 casts to spawn the 20 adds.
|tip Kill the adds and then Lockmaw.
Earn the "Acrocalypse Now" Achievement |achieve 5291 |goto Lost City of the Tol'vir 67.40,72.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Arrested Development",{
expansion="mists",
mopready=true,
achieveid={5282},
patch='40003',
description="This guide will walk you through how to get the Arrested Development achievement.",
},[[
step
kill Corla Herald of Twilight##39679
|tip On Heroic difficulty, wait for the Twilight Zealots to gain 100 stacks of Evolution.
|tip Once they evolve, kill them and Corla, Herald of Twilight.
Earn the "Arrested Development" Achievement |achieve 5282 |goto Blackrock Caverns/1 27.00,16.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ascendant Descending",{
expansion="mists",
mopready=true,
achieveid={5284},
patch='40003',
description="This guide will walk you through how to get the Ascendant Descending achievement.",
},[[
step
kill Ascendant Lord Obsidius##39705
|tip On Heroic difficulty, defeat Ascendant Lord Obsidius without a party member reaching 4 stacks of Crepuscular Veil.
|tip The adds give this debuff.
|tip Assign someone to kite the adds to accomplish this.
Earn the "Ascendant Descending" Achievement |achieve 5284 |goto Blackrock Caverns/1 68.90,50.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Bear-ly Made It",{
expansion="mists",
mopready=true,
achieveid={5858},
patch='40200',
description="This guide will walk you through how to get the Bear-ly Made It achievement.",
},[[
step
This achievement is gained by _saving all four prisoners before they are sacrificed_ in Zul'Aman on Heroic mode
|tip Before the time runs out you must defeat the first four dungeon bosses and then save a prisoner after each boss.
|confirm |only if not achieved(5858)
step
talk Blood Guard Hakkuz##52933
accept The Captive Scouts##29217 |goto Zul'Aman 14.52,54.40
|only if not achieved(5858)
step
kill Akil'zon##23574 |scenariogoal 1/24846 |goto Zul'Aman 35.50,23.00
step
talk Bakkalzu##52941
Select _"The coast is clear. You're free!"_
Rescue Bakkalzu |q 29217/2 |goto Zul'Aman 30.83,31.10 |only if haveq(29217)
step
kill Nalorakk##23576 |scenariogoal 1/24847 |goto Zul'Aman 40.50,77.30
step
talk Hazlek##52939
Select _"Nalorakk is dead, you're free to go."_
Rescue Hazlek |q 29217/1 |goto Zul'Aman 40.75,83.35 |only if haveq(29217)
step
kill Jan'alai##23578 |scenariogoal 1/24848 |goto Zul'Aman 55.40,70.90
step
talk Norkani##52943
Select _"We've killed your captors. You're free to go."_
Rescue Norkani |q 29217/3 |goto Zul'Aman 55.02,75.88 |only if haveq(29217)
step
kill Halazzi##23577 |scenariogoal 1/24849 |goto Zul'Aman 58.40,23.80
step
talk Kasha##52945
Select _"They must've drugged you. It's safe now."_
Rescue Kasha |q 29217/4 |goto Zul'Aman 61.12,22.86 |only if haveq(29217)
step
Follow Kasha and click the items that appear on the ground
|tip She will walk around and break a bunch of vases.
click Kasha's Bag##3365
use Amani Battle Bear##69747
learnmount Amani Battle Bear##98204 |goto Zul'Aman 60.49,17.31
step
Bear-ly Made It |achieve 5858 |goto Zul'Aman 38.27,55.47
step
kill Hex Lord Malacrass##24239 |scenariogoal 1/24850 |goto Zul'Aman 71.40,52.90
step
kill Daakara##23863 |scenariogoal 1/34419 |goto Zul'Aman 90.40,52.90
step
talk Blood Guard Hakkuz##52933
turnin The Captive Scouts##29217 |goto Zul'Aman 92.98,50.38
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Bullet Time",{
expansion="mists",
mopready=true,
achieveid={5505},
patch='40003',
description="This guide will walk you through how to get the Bullet Time achievement.",
},[[
step
kill 12 Bloodthirsty Ghoul##50561+ |achieve 5505/1
kill Lord Godfrey##46964
|tip On heroic difficulty, defeat 12 Bloodthirsty Ghouls with Pistol Barrage, then kill Lord Godfrey in Shadowfang Keep.
|tip Aggro Lord Godfrey and wait for Bloodthirsty Ghouls to spawn.
|tip Move away from Lord Godfrey slightly so when he uses Pistol Barrage it hits the ghouls around you.
Earn the "Bullet Time" Achievement |achieve 5505 |goto Shadowfang Keep/6 68.40,33.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Crushing Bones and Cracking Skulls",{
expansion="mists",
mopready=true,
achieveid={5281},
patch='40003',
description="This guide will walk you through how to get the Crushing Bones and Cracking Skulls achievement.",
},[[
step
kill Rom'ogg Bonecrusher##39665
|tip On Heroic difficulty, weaken the boss to 75% and he will start casting Quake.
|tip Usually he will spawn an Angered Earth after each Quake, but not always.
|tip Doing /sit as he casts it can help spawn the Angered Earth more consistently.
|tip Once there is a group of 5 adds hit the boss to weaken him again and he will cast Chains of Woe and kill the adds.
|tip After he kills the 5 adds weaken him to about 40% and do the same thing again.
|tip After he has killed the second set of 5 adds you can kill him.
Earn the "Crushing Bones and Cracking Skulls" Achievement |achieve 5281 |goto Blackrock Caverns 50.00,70.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Don't Need to Break Eggs to Make an Omelet",{
expansion="mists",
mopready=true,
achieveid={5298},
patch='40003',
description="This guide will walk you through how to get the Don't Need to Break Eggs to Make an Omelet achievement.",
},[[
step
kill Erudax##40484
|tip On heroic difficulty, defeat Erudax without letting a Faceless Corruptor begin to cast Twilight Corruption on any of Alexstrasza's Eggs in Grim Batol.
|tip Use snare mechanics to slow adds and burn them quickly as soon as they spawn.
Earn the "Don't Need to Break Eggs to Make an Omelet" Achievement |achieve 5298 |goto Grim Batol 85.60,74.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Eclipse",{
expansion="mists",
mopready=true,
achieveid={6132},
patch='40300',
description="This guide will walk you through how to get the Eclipse achievement.",
},[[
step
This achievement is gained by defeating _10 Twilight Sparks and then defeat Archbishop Benedictus_ in Hour of Twilight on Heroic mode
|tip Weaken the boss to 50% and he'll go into Shadow mode by casting Twilight Epiphany. Move to the edge of the circular platform and kill 10 Twilight Sparks when they spawn, then kill Archbishop Benedictus.
kill 10 Twilight Spark##55466+ |achieve 6132/1
kill Archbishop Benedictus##54938
Eclipse |achieve 6132 |goto Hour of Twilight/1 47.30,51.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Extra Credit Bonus Stage",{
expansion="mists",
mopready=true,
achieveid={5289},
patch='40003',
description="This guide will walk you through how to get the Extra Credit Bonus Stage achievement.",
},[[
step
map The Vortex Pinnacle
path follow strict;loop off;ants straight
path	63.92,35.69	57.60,47.75	56.91,68.24
path	55.30,70.40	49.28,81.41
clicknpc Golden Orb##51157
|tip On heroic difficulty, collect 5 Golden Orbs in theVortex Pinnacle.
|tip This must be done in a single instance.
|tip Follow the path, collecting the Golden Orbs at each location.
Earn the "Extra Credit Bonus Stage" Achievement |achieve 5289
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Faster Than the Speed of Light",{
expansion="mists",
mopready=true,
achieveid={5296},
patch='40003',
description="This guide will walk you through how to get the Faster Than the Speed of Light achievement.",
},[[
step
kill Flame Warden##39800 |goto Halls of Origination 48.33,32.28
kill Air Warden##39803 |goto Halls of Origination 64.35,32.28
kill Water Warden##39802 |goto Halls of Origination 64.35,21.56
kill Earth Warden##39801 |goto Halls of Origination 48.46,21.46
|tip On heroic difficulty, complete the Vault of Lights within 5 minutes of entering in the Halls of Origination.
|tip Just kill the wardens in each of the rooms.
Earn the "Faster Than the Speed of Light" Achievement |achieve 5296
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Glory of the Cataclysm Hero",{
expansion="mists",
mopready=true,
achieveid={4845},
patch='40003',
description="This guide will walk you through getting the Glory of the Cataclysm Hero achievement.",
},[[
step
Load the "Cataclysm Dungeon Hero" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Cataclysm Dungeon Hero"
|tip Click the line above to load the guide.
Earn the "Cataclysm Dungeon Hero" Achievement |achieve 4845/1
step
Load the "Crushing Bones and Cracking Skulls" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Crushing Bones and Cracking Skulls"
|tip Click the line above to load the guide.
Earn the "Crushing Bones and Cracking Skulls" Achievement |achieve 4845/2
step
Load the "Arrested Development" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Arrested Development"
|tip Click the line above to load the guide.
Earn the "Arrested Development" Achievement |achieve 4845/3
step
Load the "Too Hot to Handle" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Too Hot to Handle"
|tip Click the line above to load the guide.
Earn the "Too Hot to Handle" Achievement |achieve 4845/4
step
Load the "Ascendant Descending" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ascendant Descending"
|tip Click the line above to load the guide.
Earn the "Ascendant Descending" Achievement |achieve 4845/5
step
Load the "Old Faithful" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Old Faithful"
|tip Click the line above to load the guide.
Earn the "Old Faithful" Achievement |achieve 4845/6
step
Load the "Prince of Tides" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Prince of Tides"
|tip Click the line above to load the guide.
Earn the "Prince of Tides" Achievement |achieve 4845/7
step
Load the "Rotten to the Core" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Rotten to the Core"
|tip Click the line above to load the guide.
Earn the "Rotten to the Core" Achievement |achieve 4845/8
step
Load the "No Static at All" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\No Static at All"
|tip Click the line above to load the guide.
Earn the "No Static at All" Achievement |achieve 4845/9
step
Load the "Extra Credit Bonus Stage" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Extra Credit Bonus Stage"
|tip Click the line above to load the guide.
Earn the "Extra Credit Bonus Stage" Achievement |achieve 4845/10
step
Load the "Kill It With Fire!" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Kill It With Fire!"
|tip Click the line above to load the guide.
Earn the "Killing It With Fire!" Achievement |achieve 4845/11
step
Load the "Acrocalypse Now" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Acrocalypse Now"
|tip Click the line above to load the guide.
Earn the "Acrocalypse Now" Achievement |achieve 4845/12
step
Load the "Headed South" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Headed South"
|tip Click the line above to load the guide.
Earn the "Headed South" Achievement |achieve 4845/13
step
Load the "I Hate That Song" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\I Hate That Song"
|tip Click the line above to load the guide.
Earn the "I Hate That Song" Achievement |achieve 4845/14
step
Load the "Straw That Broke the Camel's Back" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Straw That Broke the Camel's Back"
|tip Click the line above to load the guide.
Earn the "Straw That Broke the Camel's Back" Achievement |achieve 4845/15
step
Load the "Sun of a...." guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Sun of a...."
|tip Click the line above to load the guide.
Earn the "Sun of a...." Achievement |achieve 4845/16
step
Load the "Faster Than the Speed of Light" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Faster Than the Speed of Light"
|tip Click the line above to load the guide.
Earn the "Faster Than the Speed of Light" Achievement |achieve 4845/17
step
Load the "Umbrage for Umbriss" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Umbrage for Umbriss"
|tip Click the line above to load the guide.
Earn the "Umbrage for Umbriss" Achievement |achieve 4845/18
step
Load the "Ready for Raiding" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ready for Raiding"
|tip Click the line above to load the guide.
Earn the "Ready for Raiding" Achievement |achieve 4845/19
step
Load the "Rat Pack" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Rat Pack"
|tip Click the line above to load the guide.
Earn the "Rat Pack" Achievement |achieve 4845/20
step
Load the "Prototype Prodigy" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Prototype Prodigy"
|tip Click the line above to load the guide.
Earn the "Prototype Prodigy" Achievement |achieve 4845/21
step
Load the "It's Frost Damage" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\It's Frost Damage"
|tip Click the line above to load the guide.
Earn the "It's Frost Damage" Achievement |achieve 4845/22
step
Load the "I'm on a Diet" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\I'm on a Diet"
|tip Click the line above to load the guide.
Earn the "I'm on a Diet" Achievement |achieve 4845/23
step
Load the "Vigorous VanCleef Vindicator" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Vigorous VanCleef Vindicator"
|tip Click the line above to load the guide.
Earn the "Vigorous VanCleef Vindicator" Achievement |achieve 4845/24
step
Load the "Pardon Denied" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Pardon Denied"
|tip Click the line above to load the guide.
Earn the "Pardon Denied" Achievement |achieve 4845/25
step
Load the "To the Ground!" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\To the Ground!"
|tip Click the line above to load the guide.
Earn the "To the Ground!" Achievement |achieve 4845/26
step
Load the "Bullet Time" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Bullet Time"
|tip Click the line above to load the guide.
Earn the "Bullet Time" Achievement |achieve 4845/27
step
Load the "Don't Need to Break Eggs to Make an Omelet" guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Don't Need to Break Eggs to Make an Omelet"
|tip Click the line above to load the guide.
Earn the "Don't Need to Break Eggs to Make an Omelet" Achievement |achieve 4845/28
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Gurubashi Headhunter",{
expansion="mists",
mopready=true,
achieveid={5744},
patch='40100',
description="This guide will walk you through how to get the Gurubashi Headhunter achievement.",
},[[
step
This achievement is gained by _defeating the following bosses_ in Zul'Gurub on Heroic mode:
kill Gub##52440 |achieve 5744/1 |goto Zul'Gurub 43.20,45.60
kill Mortaxx##52438 |achieve 5744/2 |goto Zul'Gurub 62.60,33.60
kill Kaulema the Mover##52422 |achieve 5744/3 |goto Zul'Gurub 55.20,63.00
kill Mor'Lek the Dismantler##52405 |achieve 5744/4 |goto Zul'Gurub 54.40,55.80
kill Florawing Hive Queen##52442 |achieve 5744/5 |goto Zul'Gurub 32.80,39.40
kill Lost Offspring of Gahz'ranka##52418 |achieve 5744/6 |goto Zul'Gurub 38.80,40.60
kill Gurubashi Master Chef##52392 |achieve 5744/7 |goto Zul'Gurub 57.60,27.60
kill Tor-Tun##52414 |achieve 5744/8 |goto Zul'Gurub 46.00,56.40
Gurubashi Headhunter |achieve 5744
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Headed South",{
expansion="mists",
mopready=true,
achieveid={5292},
patch='40003',
description="This guide will walk you through how to get the Headed South achievement.",
},[[
step
kill Siamat Lord of the South Wind##44819
|tip Defeat Siamat, Lord of the South Wind with 3 stacks of Lightning Charge in Lost City of the Tol'vir on heroic difficulty.
|tip Engage the boss and wait for adds to spawn.
|tip When you have 3 of the melee adds hitting you kill them and stand in the cloud that spawns. This will give you the Lightning Charge buff you need, then kill the boss.
Earn the "Headed South" Achievement |achieve 5292 |goto Lost City of the Tol'vir 41.50,55.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Here, Kitty Kitty...",{
expansion="mists",
mopready=true,
achieveid={5765},
patch='40100',
description="This guide will walk you through how to get the Here, Kitty Kitty... achievement.",
},[[
step
This achievement is gained by defeating High Priestess Kilnara in Zul'Gurub _after having fed Temple Rats to 4 of Bethekk's Pride_ on Heroic mode
You will need to bind 'Interact With Target' to a key for this achievement. This setting can be found under Keybindings -> Targeting -> Interact With Target
collect 1 Temple Rat##69724 |only if not achieved(5765)
|tip They are found throughout the pyramid. You can only hold one at a time.
|tip Engage the boss and weaken her slightly. Wait for her to wake up her cats, then use the Temple Rat to "feed" one.
|tip Another rat can be found in northwestern room, behind the green barrier. It will respawn every 30-60 seconds. Click the rat and move behind the wall to the left of the barrier, by the lit brazier. Spam the 'Interact With Target' key until you pick up the rat through the wall.
|tip Feed another of her cat pets after you collect it. Repeat until you have 4 fed, then kill High Priestess Kilnara.
use Temple Rat##69724
kill High Priestess Kilnara##52059
|tip She is down inside the pyramid.
Here, Kitty Kitty... |achieve 5765 |goto Zul'Gurub 48.00,20.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Blackrock Caverns",{
expansion="mists",
mopready=true,
achieveid={5060},
patch='40003',
description="This guide will walk you through how to get the Heroic: Blackrock Caverns achievement.",
},[[
step
This achievement is gained by defeating Ascendant Lord Obsidius in Blackrock Caverns on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Ascendant Lord Obsidius##39705
Complete Blackrock Caverns |achieve 5060 |goto Blackrock Caverns/1 68.90,50.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Deadmines",{
expansion="mists",
mopready=true,
achieveid={5083},
patch='40003',
description="This guide will walk you through how to get the Heroic: Deadmines achievement.",
},[[
step
This achievement is gained by defeating Vanessa VanCleef in Deadmines on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Vanessa VanCleef##49541
Complete Heroic: Deadmines |achieve 5083 |goto The Deadmines/1 65.40,40.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Grim Batol",{
expansion="mists",
mopready=true,
achieveid={5062},
patch='40003',
description="This guide will walk you through how to get the Heroic: Grim Batol achievement.",
},[[
step
This achievement is gained by defeating Erudax in Grim Batol on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Erudax##40484
Complete Heroic: Grim Batol |achieve 5062 |goto Grim Batol 85.60,74.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Halls of Origination",{
expansion="mists",
mopready=true,
achieveid={5065},
patch='40003',
description="This guide will walk you through how to get the Heroic: Halls of Origination achievement.",
},[[
step
This achievement is gained by defeating Rajh in the Halls of Origination on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Rajh##39378
Complete Heroic: Halls of Origination |achieve 5065 |goto Halls of Origination/2 47.50,25.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Lost City of the Tol'vir",{
expansion="mists",
mopready=true,
achieveid={5066},
patch='40003',
description="This guide will walk you through how to get the Heroic: Lost City of the Tol'vir achievement.",
},[[
step
This achievement is gained by defeating Siamat, Lord of the South Wind in Lost City of the Tol'vir on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Siamat Lord of the South Wind##44819
Complete Lost City of the Tol'vir |achieve 5066 |goto Lost City of the Tol'vir 41.50,55.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Shadowfang Keep",{
expansion="mists",
mopready=true,
achieveid={5093},
patch='40003',
description="This guide will walk you through how to get the Heroic: Shadowfang Keep achievement.",
},[[
step
This achievement is gained by defeating Lord Godfrey in Shadowfang Keep on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Lord Godfrey##46964
Complete Heroic: Shadowfang Keep |achieve 5093 |goto Shadowfang Keep/6 68.40,33.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: The Stonecore",{
expansion="mists",
mopready=true,
achieveid={5063},
patch='40003',
description="This guide will walk you through how to get the Heroic: The Stonecore achievement.",
},[[
step
This achievement is gained by defeating High Priestess Azil in the Stonecore on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill High Priestess Azil##42333
Complete Heroic: The Stonecore |achieve 5063 |goto The Stonecore 57.40,38.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: The Vortex Pinnacle",{
expansion="mists",
mopready=true,
achieveid={5064},
patch='40003',
description="This guide will walk you through how to get the Heroic: The Vortex Pinnacle achievement.",
},[[
step
This achievement is gained by defeating Asaad in The Vortex Pinnacle on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Asaad##43875
Complete The Vortex Pinnacle |achieve 5064 |goto The Vortex Pinnacle 30.00,38.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Heroic: Throne of the Tides",{
expansion="mists",
mopready=true,
achieveid={5061},
patch='40003',
description="This guide will walk you through how to get the Heroic: Throne of the Tides achievement.",
},[[
step
This achievement is gained by defeating Ozumat in Throne of the Tides on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Ozumat##44566
Complete Throne of the Tides |achieve 5061 |goto Throne of the Tides 32.50,19.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Hex Mix",{
expansion="mists",
mopready=true,
achieveid={5761},
patch='40100',
description="This guide will walk you through how to get the Hex Mix achievement.",
},[[
step
This achievement is gained by _un-hexing all of the potential hex victims_ in Zul'Aman on Heroic mode
|tip You will need Amani Hex Sticks to un-hex the NPC's. These drop randomly from trash in the dungeon. Clear the entire dungeon except for the bosses to maximize the amount of hex sticks you get, and then reset the dungeon and do it again.
|tip The Forest Frogs can be found around the pools of water. The NPC they turn into after being un-hexed is random.
clicknpc Forest Frog##24396
use Amani Hex Stick##33865
Save Rosa |achieve 5761/1
Save Eulinda |achieve 5761/2
Save Lenzo |achieve 5761/3
Save Melasong |achieve 5761/4
Save Herald |achieve 5761/5
Save Relissa |achieve 5761/6
Save Kaldrick |achieve 5761/7
Save Arinoth |achieve 5761/8
Save Micah |achieve 5761/9
Save Tyllan |achieve 5761/10
Save Mawago |achieve 5761/11
Save Melissa |achieve 5761/12
Hex Mix |achieve 5761 |goto Zul'Aman 38.27,55.47
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\I Hate That Song",{
expansion="mists",
mopready=true,
achieveid={5293},
patch='40003',
description="This guide will walk you through how to get the I Hate That Song achievement.",
},[[
step
kill Temple Guardian Anhuur##39425
|tip On heroic difficulty, defeat Temple Guardian Anhuur without allowing him to sing Reverberating Hymn for more than 15 seconds.
|tip To accomplish this, you must interrupt the spell whenever it is cast.
Earn the "I Hate That Song" Achievement |achieve 5293 |goto Halls of Origination 58.40,62.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\I'm on a Diet",{
expansion="mists",
mopready=true,
achieveid={5370},
patch='40003',
description="This guide will walk you through how to get the I'm on a Diet achievement.",
},[[
step
kill "Captain" Cookie##47739
|tip On heroic difficulty, avoid gaining more than one stack of the Nauseated debuff while fighting Cookie in Deadmines.
|tip If Cookie doesn't do anything and just sits in the pot you can just kill him.
|tip If he is throwing food at you, grab one of the pieces of food and then kill him.
Earn the "I'm on a Diet" Achievement |achieve 5370 |goto The Deadmines/1 60.40,45.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\It's Frost Damage",{
expansion="mists",
mopready=true,
achieveid={5369},
patch='40003',
description="This guide will walk you through how to get the It's Frost Damage achievement.",
},[[
step
kill Admiral Ripsnarl##47626
|tip On heroic difficulty, allow three Freezing Vapors to cast Coalesce in Deadmines.
|tip Weaken Admiral Ripsnarl to get to the Vapor phase, then wait for the Freezing Vapors to cast Coalesce.
Earn the "It's Frost Damage" Achievement |achieve 5369 |goto The Deadmines/1 60.40,38.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\It's Not Easy Being Green",{
expansion="mists",
mopready=true,
achieveid={5743},
patch='40100',
description="This guide will walk you through how to get the It's Not Easy Being Green achievement.",
},[[
step
This achievement is gained by _not getting hit by Bloodvenom, Pool of Acrid Tears, or Venomous Effusion_ in the High Priest Venoxis encounter in Zul'Gurub on Heroic mode
|tip Try to pull him, wait a few seconds until he starts moving and then kill him.
kill High Priest Venoxis##52059
It's Not Easy Being Green |achieve 5743 |goto Zul'Gurub 50.90,53.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Kill It With Fire!",{
expansion="mists",
mopready=true,
achieveid={5290},
patch='40003',
description="This guide will walk you through how to get the Kill It With Fire! achievement.",
},[[
step
kill 3 Burning Soul##49219+
kill High Prophet Barim##43612
|tip On heroic difficulty, kill 3 Burning Souls during the High Prophet Barim encounter in the Lost City of the Tol'vir.
|tip Pull the boss and wait for a red pheonix to spawn.
|tip Kite it around until it leaves fire on the ground.
|tip Damage High Prophet Barim to 50% health.
|tip A purple pheonix will spawn.
|tip It will spawn fragment adds that move towards you.
|tip Position yourself so the fragments walk through the fire from the previous phase.
|tip This will cause them to turn into Burning Souls, kill 3 of them before killing the boss.
Earn the "Kill It With Fire!" Achievement |achieve 5290 |goto Lost City of the Tol'vir 27.00,65.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Lazy Eye",{
expansion="mists",
mopready=true,
achieveid={6127},
patch='40300',
description="This guide will walk you through how to get the Lazy Eye achievement.",
},[[
step
This achievement is gained by defeating Peroth'arn _without any party member being detected by an Eye of Peroth'arn_ in Well of Eternity on Heroic mode
|tip Kill Peroth'arn as fast as possible. One-shotting him will grant the achievement.
kill Peroth'arn##55085
Lazy Eye |achieve 6127 |goto Well of Eternity 23.70,48.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Moon Guard",{
expansion="mists",
mopready=true,
achieveid={5995},
patch='40300',
description="This guide will walk you through how to get the Moon Guard achievement.",
},[[
step
This achievement is gained by engaging the Echo of Tyrande after surviving her Shadow Gauntlet _without allowing the party's healer to take any damage_ in End Time on Heroic mode
|tip Stay in the beams of light and fight the Nightsaber and Sentinel adds until the boss appears.
kill Echo of Tyrande##54544
Moon Guard |achieve 5995 |goto End Time/5 51.50,43.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\No Static at All",{
expansion="mists",
mopready=true,
achieveid={5288},
patch='40003',
description="This guide will walk you through how to get the No Static at All achievement.",
},[[
step
kill Asaad##43875
|tip On Heroic difficulty, defeat Asaad's Static Cling ability.
|tip When he casts it, simply jump away from the spot on the ground.
|tip Keep jumping to avoid the Static Cling effect.
Earn the "No Static at All" Achievement |achieve 5288 |goto The Vortex Pinnacle 30.00,38.00
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ohganot So Fast!",{
expansion="mists",
mopready=true,
achieveid={5762},
patch='40100',
description="This guide will walk you through how to get the Ohganot So Fast! achievement.",
},[[
step
This achievement is gained by defeating Bloodlord Mandokir _without killing Ohgan_ in Zul'Gurub on Heroic mode
|tip One shotting Bloodlord Mandokir will grant the achievement.
kill Bloodlord Mandokir##52151
Ohganot So Fast! |achieve 5762 |goto Zul'Gurub 60.40,79.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Old Faithful",{
expansion="mists",
mopready=true,
achieveid={5285},
patch='40003',
description="This guide will walk you through how to get the Old Faithful achievement.",
},[[
step
kill Lady Naz'jar##40586
|tip On Heroic difficulty, defeat lady Naz'jar after she has killed a Naz'Jar Honor Guard with Geyser.
|tip Weaken Lady Naz'jar and she will spawn adds.
|tip Kill the two Naz'jar Tempest Witches and wait for the phase to end.
|tip She will start casting Geyser again, stay stacked on her and wait for it to kill the Naz'jar Honor Guard.
Earn the "Old Faithful" Achievement |achieve 5285 |goto Throne of the Tides/1 50.40,21.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Prince of Tides",{
expansion="mists",
mopready=true,
achieveid={5286},
patch='40003',
description="This guide will walk you through how to get the Prince of Tides achievement.",
},[[
step
kill Unyielding Behemoth##44648
|tip On Heroic difficulty, defeat the Unyielding Behemoth wtih the Tidal Surge effect during the Ozumat encounter.
|tip Start the fight and kill the adds, but leave the Unyielding Behemoth.
|tip Kill it once you have the Tidal Surge buff.
Earn the "Prince of Tides" Achievement |achieve 5286 |goto Throne of the Tides 32.50,19.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Prototype Prodigy",{
expansion="mists",
mopready=true,
achieveid={5368},
patch='40003',
description="This guide will walk you through how to get the Prototype Prodigy achievement.",
},[[
step
kill Foe Reaper 5000##43778
|tip On heroic difficulty, keep the Prototype Reaper from falling below 90% health during the encounter in Deadmines.
Earn the "Prototype Prodigy" Achievement |achieve 5368 |goto The Deadmines/1 12.40,75.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Rat Pack",{
expansion="mists",
mopready=true,
achieveid={5367},
patch='40003',
description="This guide will walk you through how to get the Rat Pack achievement.",
},[[
step
kill 20 Mine Rat##51462+
kill Helix Gearbreaker##47296
|tip On heroic difficulty, defeat 20 Mine Rats during the Helix Gearbreaker encounte  in the Deadmines.
|tip Engage the boss and the two adds.
|tip They will throw bombs and then take control of your character.
|tip Mine Rats will then begin to spawn.
|tip You can complete this achievement over multiple dungeon runs.
Earn the "Rat Pack" Achievement |achieve 5367 |goto The Deadmines 50.10,86.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ready for Raiding",{
expansion="mists",
mopready=true,
achieveid={5366},
patch='40003',
description="This guide will walk you through how to get the Ready for Raiding achievement.",
},[[
step
kill Glubtok##47162
|tip On heroic difficulty, avoid the Fire Wall ability in the Glubtok encounter in Deadmines.
Earn the "Ready for Raiding" Achievement |achieve 5366 |goto The Deadmines 36.50,61.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Ring Out!",{
expansion="mists",
mopready=true,
achieveid={5760},
patch='40100',
description="This guide will walk you through how to get the Ring Out! achievement.",
},[[
step
This achievement is gained by defeating Daakara in Zul'Aman on Heroic mode _without any player leaving the rectangular turquoise stonework_ in the center of his area
kill Daakara##23863
Ring Out! |achieve 5760 |goto Zul'Aman 90.40,52.90
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Rotten to the Core",{
expansion="mists",
mopready=true,
achieveid={5287},
patch='40003',
description="This guide will walk you through how to get the Rotten to the Core achievement.",
},[[
step
This achievement is gained by defeating _60 Disciples within 10 seconds_ during the High Priestess Azil encounter in the Stonecore on Heroic mode
kill Devout Follower##42428+
|tip On Heroic difficulty, gather all of the Devout Followers in the boss room.
|tip Once gathered, engage the boss, then kill 60 Devout followers in a 10 second time window.
kill High Priestess Azil##42333
Earn the "Rotten to the Core" Achievement |achieve 5287 |goto The Stonecore 57.40,38.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Severed Ties",{
expansion="mists",
mopready=true,
achieveid={6130},
patch='40300',
description="This guide will walk you through how to get the Severed Ties achievement.",
},[[
step
This achievement is gained by defeating _two Risen Ghouls during Echo of Sylvanas' Calling of the Highborne phase_, then defeat the Echo of Sylvanas in End Time on Heroic mode
|tip Pull the boss and wait for her to spawn Risen Ghouls. Kill at least 2 and then kill Echo of Sylvanas.
kill 2 Risen Ghoul##54191+
kill Echo of Sylvanas##54123
Severed Ties |achieve 6130 |goto End Time/3 55.90,39.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Spirit Twister",{
expansion="mists",
mopready=true,
achieveid={5759},
patch='40100',
description="This guide will walk you through how to get the Spirit Twister achievement.",
},[[
step
This achievement is gained by defeating _20 Twisted Spirits within 15 seconds_ during the Jin'do encounter in Zul'Gurub on Heroic mode
|tip You must defeat Venoxis to gain access to Jin'do.
kill 20 Twisted Spirit##52624+
|tip Engage the boss and weaken him to 70%. Wait for him to spawn 20 Twisted Spirits and then kill them all at once.
kill Jin'do the Godbreaker##52148
Spirit Twister |achieve 5759 |goto Zul'Gurub 48.50,39.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Straw That Broke the Camel's Back",{
expansion="mists",
mopready=true,
achieveid={5294},
patch='40003',
description="This guide will walk you through how to get the Straw That Broke the Camel's Back achievement.",
},[[
step
clicknpc Camel##39443 |goto Halls of Origination/1 35.14,44.28
kill Earthrager Ptah##39428
|tip On heroic difficulty, defeat Earthrager Ptah while mounted on a camel in the Halls of Origination.
|tip Mount up on the camels in the room and then defeat Earthrager Ptah.
Earn the "Straw That Broke the Camel's Back" Achievement |achieve 5294 |goto Halls of Origination/1 50.00,49.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Sun of a....",{
expansion="mists",
mopready=true,
achieveid={5295},
patch='40003',
description="This guide will walk you through how to get the Sun of a.... achievement.",
},[[
step
kill Rajh##39378
|tip On heroic difficulty, defeat Rajh in the Halls of Origination before he completes an entire recharging phase.
|tip Kill him as fast as possible.
Earn the "Sun of a...." Achievement |achieve 5295 |goto Halls of Origination/2 47.50,25.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\That's Not Canon!",{
expansion="mists",
mopready=true,
achieveid={6070},
patch='40300',
description="This guide will walk you through how to get the That's Not Canon! achievement.",
},[[
step
This achievement is gained by defeating Mannoroth in Well of Eternity _after dealing enough damage to Mannoroth to cause him to sacrifice Varo'then to heal himself_ on Heroic mode
|tip Slowly damage Mannoroth to about 90% and he will yell 'Your blood is MINE, elf!' and sacrifice Varo'then, then kill Mannoroth
kill Mannoroth##54969
That's Not Canon! |achieve 6070 |goto Well of Eternity 87.30,48.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Too Hot to Handle",{
expansion="mists",
mopready=true,
achieveid={5283},
patch='40003',
description="This guide will walk you through how to get the Too Hot to Handle achievement.",
},[[
step
kill Karsh Steelbender##39698
|tip On Heroic difficulty, let him stand there until he gets the 15 stacks of Superheated Quicksilver Armor, then kill him.
|tip Draw him to the center of the room with the circle of fire.
Earn the "Too Hot to Handle" Achievement |achieve 5283 |goto Blackrock Caverns/1 47.00,66.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Tunnel Vision",{
expansion="mists",
mopready=true,
achieveid={5750},
patch='40100',
description="This guide will walk you through how to get the Tunnel Vision achievement.",
},[[
step
This achievement is gained by defeating Halazzi _without killing any of his totems_ in Zul'Aman on Heroic mode
kill Halazzi##23577
|tip Just kill him as quickly as possible.
Tunnel Vision |achieve 5750 |goto Zul'Aman 58.40,23.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Umbrage for Umbriss",{
expansion="mists",
mopready=true,
achieveid={5297},
patch='40003',
description="This guide will walk you through how to get the Umbrage for Umbriss achievement.",
},[[
step
kill Malignant Trogg##39984
kill General Umbriss##39625
|tip On heroic difficulty, defeat General Umbriss while he is affected with Modgud's Malice in Grim Batol.
|tip Weaken General Umbriss to about 60% and he will spawn a Malignant Trogg.
|tip Pull the Trogg to the boss and kill it.
|tip This will debuff General Umbriss and then you can kill him.
Earn the "Umbrage for Umbriss" Achievement |achieve 5297 |goto Grim Batol 40.50,68.70
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Vigorous VanCleef Vindicator",{
expansion="mists",
mopready=true,
achieveid={5371},
patch='40003',
description="This guide will walk you through how to get the Vigorous VanCleef Vindicator achievement.",
},[[
step
kill Vanessa VanCleef##49541
|tip On heroic difficulty, defeat Vanessa VanCleef within 5 minutes of being inflicted with the Nightmare Elixir in Deadmines.
Earn the "Vigorous VanCleef Vindicator" Achievement |achieve 5371 |goto The Deadmines/1 65.40,40.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Aberrant Behavior",{
expansion="mists",
mopready=true,
achieveid={5310},
patch='40003',
description="Kill 12 Aberrations within 10 seconds on the Maloriak encounter in Blackwing Descent and then defeat Maloriak.",
},[[
step
map Blackwing Descent/1
path loop off
path	47.03,44.38
map Blackwing Descent/1
path	47.40,88.10	57.60,69.50	65.50,69.70
Follow the path to Maloriak |goto Blackwing Descent/1 65.50,69.70 < 20 |noway |c
Note that you will have had to kill Magmaw and the Omnotron Defense System to reach this boss
step
For this achievement, you will need to DPS Maloriak down to 25% health
Once you do that, enough Aberrations will should spawn to earn the achievement
Gather all that have spawned, and AoE them down in _under 10 seconds_
Earn the Aberrant Behavior Achievement |achieve 5310 |goto Blackwing Descent/1 71.40,70.20
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Maloriak Achievement as well.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\The Abyss Will Gaze Back Into You",{
expansion="mists",
mopready=true,
achieveid={5312},
patch='40003',
description="Defeat Cho'gall in the Bastion of Twilight before any raid member earns more than 30% Corrupted Blood.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.60,42.70	39.60,19.80	46.60,19.40
path	53.70,29.10	53.70,48.90	53.70,68.30
path	53.60,86.70	47.10,92.80
map The Bastion of Twilight/1
path	42.40,18.20	43.90,75.30	56.60,75.10
Follow the path Cho'gall |goto The Bastion of Twilight/1 56.60,75.10 < 15 |noway |c
step
For this achievement, you will need to defeat Cho'gall before any raid member earns more than 30% Corrupted Blood
The easiest way to do this is to just quickly burn him down
If you have multiple raid members, beware of mind control (This applies to pets as well)
Earn The Abyss Will Gaze Back Into You Achievement |achieve 5312 |goto The Bastion of Twilight/1 73.40,75.40
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Cho'gall Achievement as well.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Achieve-a-tron",{
expansion="mists",
mopready=true,
achieveid={5307},
patch='40003',
description="Defeat the Omnotron Defense System in Blackwing Descent while neutralizing the following attacks.",
},[[
step
map Blackwing Descent/1
path loop off
path	51.20,59.90	58.30,59.70	61.00,57.30
Follow the path, clearing trash as you make your way to the next boss, the Omnotron Defense System |goto Blackwing Descent/1 61.00,57.30 < 5 |noway |c
step
You will be able to earn this achievement over the course of multiple lock outs
To earn the portion of the achievement needed, you will need to engage the boss that uses the ability that you are to avoid
_Be sure not to kill them before you fight each of them_
No player hit by Static Shock (Electron) |achieve 5307/1
No player hit by Arcane Annihilator (Arcanotron) |achieve 5307/2
No player hit by Poison Bomb (Toxitron) |achieve 5307/3
No more than one player hit by each Flamthrower (Magmatron) |achieve 5307/4
Earn the Achieve-a-Tron Achievement |achieve 5307 |goto Blackwing Descent/1 65.40,57.40
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Omnotron Defense System Achievement as well.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Bucket List",{
expansion="mists",
mopready=true,
achieveid={5829},
patch='40200',
description="During a single engagement, bring Shannox to each of the following locations in the Firelands before dispatching him.",
},[[
step
map Firelands/0
path loop off
path	33.10,29.30	32.90,52.80	41.70,70.40
path	56.70,62.50
Follow the path to Shannox |goto Firelands/0 56.70,62.50 < 15 |noway |c
only if achieved(5829)
step
For Shannox to appear, you need to kill trash in the dungeon
He will eventually spawn and patrol the instance
In order to earn this achievement, draw aggro on Shannox while mounted and kite Shannox to the provided locations:
Beth'tilac's Lair |achieve 5829/4 |goto Firelands/0 29.10,62.30
Flamebreach |achieve 5829/1 |goto Firelands/0 34.10,75.10
The Ridge of Ancient Flame |achieve 5829/5 |goto Firelands/0 61.60,55.90
Shattershow |achieve 5829/3 |goto Firelands/0 61.20,45.40
Path of Corruuption |achieve 5829/2 |goto Firelands/0 34.00,30.80
_Note:_ If you can change to a tank spec, you won't be affected by the stun from the dogs
Earn the Bucket List Achievement |achieve 5829 |goto Firelands/0 49.20,46
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Shannox Achievement as well.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Chromatic Champion",{
expansion="mists",
mopready=true,
achieveid={6180},
patch='40300',
description="Destroy Deathwing in Dragon Soul on Normal or Heroic Difficulty after beginning the encounter on each Aspect's platform and allowing Deathwing to assault that Aspect:",
},[[
step
Note that it will take 4 lockouts to earn this achievement if you haven't done this before
confirm
step
To earn this achievement, start by jumping between the 2 platforms and gaining 2 stacks of the speed buff
Then, talk to Thrall and start the encounter
_Move as fast as you can to the fourth platform where Alexstrasza is!_ |only if not achieved(6180,1)
If you made it in time, you will see a message about Deathwing Assaulting Alexstrazsa |only if not achieved(6180,1)
Wait for the Mutation to case Impale at least 2 times |only if not achieved(6180,1)
Destroy the arm and move on |only if not achieved(6180,1)
Jump to Nozdomu's platform and repeat the process, only attacking after Deathwing has began assaulting Ysera |only if not achieved(6180,3)
Destroy the arm then move to Ysera's platform |only if not achieved(6180,4)
Wait for Deathwing to assault Ysera, wait for impale, then destroy the arm |only if not achieved(6180,4)
Finally, jump to Kalecgos' platform|only if not achieved(6180,2)
Wait for impale, then destroy the arm|only if not achieved(6180,2)
Once you have done so, kill Deathwing for the achievement
|achieve 6180/1
|achieve 6180/2
|achieve 6180/3
|achieve 6180/4
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Death From Above",{
expansion="mists",
mopready=true,
achieveid={5821},
patch='40200',
description="Only kill Cinderweb Drones while they are atop the web canopy during the Beth'tilac encounter in Firelands.",
},[[
step
map Firelands/0
path loop off
path	33.20,77.00	41.70,70.40	26.00,58.85
path	23.66,51.27	16.23,50.40	16.42,46.26
path	26.20,47.00
Follow the path Beth'tilac |goto Firelands/0 26.20,47.00 < 15 |noway |c
only if not achieved(5821)
step
To start, kill a Cinder Web Spider that's hanging from the roof
Click the web it leaves behind to climb up to the boss
DPS Beth'tilac until it drops down
Avoid using AoE Attacks during the final phase
Kill the boss and earn the achievement
Earn the Death From Above Achievement |achieve 5821 |goto Firelands/0 20.80,32
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Beth'tilac Achievement as well.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Deck Defender",{
expansion="mists",
mopready=true,
achieveid={6105,6114},
patch='40300',
description="Defeat Warmaster Blackhorn on Normal or Heroic Difficulty without allowing any Twilight Barrages to damage the Skyfire.",
},[[
step
talk Nethestrasz##57287 |goto Dragon Soul/1 50.28,57.66
Fly to the top of the temple |goto Dragon Soul/1 49.30,59.92 < 5 |noway |c
step
Follow the path to the Battleship
talk Sky Captain Swayze##55870 |goto Dragon Soul/1 48.94,54.79 < 20
|tip You will have to have cleared the previous bosses in order to access the Battleship encounter.
Board the ship
|confirm
step
talk Sky Captain Swayze##55870
Find the achievement in your list and track it immidiately
It is important to watch the text to see if it turns red
If the text is red you have failed and should reset the fight
_To start, kill drakes as they come into range_, this is the most important part!
When a giant swirl appears on the ship, stand in it to absorb the damage
When Blackhorn lands on the ship, burn him down as fast as possible
|achieve 6105
|achieve 6114
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Do a Barrel Roll!",{
expansion="mists",
mopready=true,
achieveid={5813},
patch='40200',
description="Defeat Alysrazor in the Firelands without any raid member getting hit by the following attacks.",
},[[
step
map Firelands/0
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	62.48,51.39
Follow the path to Alysrazor |goto Firelands/0 62.48,51.39 < 15 |noway |c
only if achieved(5813)
step
For this achievement, you will want to gather feathers after Majordomo Staghelms dialogue
Once you gather enough you will start to fly
Follow Alysrazor closely once you take flight
Avoid Incendiary Clouds and kill Alysrazor quickly to earn the achievement
Earn the Do a Barrel Roll! Achievement |achieve 5813 |goto Firelands/0 64,39
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Alysrazor Achievement as well.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Don't Stand So Close To Me",{
expansion="mists",
mopready=true,
achieveid={6174},
patch='40300',
description="Defeat Morchok in Dragon Soul on Normal or Heroic Difficulty without any two players (three players on 25-player mode) ever being within 5 yards of each other while Morchok is channeling Black Blood of the Earth.",
},[[
step
If you go in solo on this encounter, you will earn the achievement upon killing the boss
If you are playing with others, stand 6 yards apart
If you kill the boss within a minute, you will be able to earn the achievement before he casts Black Blood of the Earth
|achieve 6174 |goto Dragon Soul/1 50.69,69.90
|tip Set the Raid Difficulty to Heroic to earn the Heroic: Morchok Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Double Dragon",{
expansion="mists",
mopready=true,
achieveid={4852},
patch='40003',
description="Kill 6 Twilight Fiends in the Twilight Realm and then defeat Valiona and Theralion in the Bastion of Twilight.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.60,42.70	39.60,19.80	46.60,19.40
path	53.70,29.10	53.70,48.90	53.70,68.30
Follow the path to Valiona and Theralion |goto The Bastion of Twilight/1 53.70,68.30 < 15 |noway |c
Note that you will have to have defeated Halfus the Wyrmbreaker to reach this boss
step
For this achievement, you will have to defeat 6 Twilight Fiends within the Twilight Realm
To start, pull Valiona and wait for her to cast Blackout Twice
_Don't damage the boss too much_
Theralion will cast Dazzling Destruction soon after
After Dazzling Destruction, stand in the Shadow Pool that appears, as it will take you into the Shadow Realm
Kill 6 Twilight Fiends as the appear
clicknpc Collapsing Twilight Portal##46301
Kill Valiona and Theralion
Earn the Double Dragon Achievement |achieve 4852 |goto The Bastion of Twilight/1 53.90,78.40
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Valiona and Theralion Achievement as well.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Elementary",{
expansion="mists",
mopready=true,
achieveid={5311},
patch='40003',
description="Defeat the Elementium Monstrosity in the Bastion of Twilight while only allowing it to create a single Liquid Ice patch.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.60,42.70	39.60,19.80	46.60,19.40
path	53.70,29.10	53.70,48.90	53.70,68.30
path	53.60,86.70	47.10,92.80
map The Bastion of Twilight/1
path	42.40,18.20
Follow the path to the Twilight Ascendant Council |goto The Bastion of Twilight/1 42.40,18.20 < 15 |noway |c
step
For this achievement, you will need the Elementium Monstrosity to only create one Ice Patch
To start, stand at the center of the room close to the purple area on the floor
Then, pull the boss, damaging both as much as possible
_Note_ that if you defeat one of the bosses both will despawn, so spread your damage as equal as possible
Soon after you defeat the first two, the next two will spawn, repeat the same process
_STAY AT THE CENTER OF THE ROOM!_
Once you defeat the second pair, the final boss will spawn
Once the Elementium Monstrosity appears it will spawn an Ice Patch underneath it
_DO NOT MOVE!_ Kill the boss from where you are standing
Earn the Elementary Achievement |achieve 5311 |goto The Bastion of Twilight/1 42.50,45.50
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Ascendant Council Achievement as well.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Fall of Deathwing",{
expansion="mists",
mopready=true,
achieveid={6107},
patch='40300',
description="This guide will walk you through how to get the Fall of Deathwing achievement.",
},[[
step
This achievement is gained by defeating the bosses leading up to the Fall of Deathwing in Dragon Soul
|tip Use our raid guides to accomplish this.
|confirm |only if not achieved(6107)
step
kill Ultraxion##55294 |achieve 6107/1 |goto Dragon Soul 50.00,45.80
step
kill Warmaster Blackhorn##56427 |achieve 6107/2 |goto Dragon Soul/4 48.30,16.80
step
Complete the Spine of Deathwing Encounter |achieve 6107/3 |goto Dragon Soul/5 33.20,85.20
step
Complete the Madness of Deathwing Encounter |achieve 6107/4 |goto Dragon Soul/6 47.80,53.80
step
|achieve 6107
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Full of Sound and Fury",{
expansion="mists",
mopready=true,
achieveid={5309},
patch='40003',
description="Defeat Chimaeron in Blackwing Descent with no more than 2 raid member deaths.",
},[[
step
Inside the Blackwing Descent (Heroic) Raid:
kill Chimaeron##43296
|tip Basically a DPS race.
|tip You MUST resurrect pets before defeating Chimaeron or you won't earn the achievement.
Earn the "Full of Sound and Fury" Achievement |achieve 5309
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Al'Akir",{
expansion="mists",
mopready=true,
achieveid={5123},
patch='40003',
description="This guide will walk you through how to get the Heroic: Al'Akir achievement.",
},[[
step
Inside the Throne of the Four Winds (Heroic) Raid:
kill Al'Akir##46753
Earn the "Heroic: Al'Akir" Achievement |achieve 5123
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Alysrazor",{
expansion="mists",
mopready=true,
achieveid={5809},
patch='40200',
description="This guide will walk you through how to get the Heroic: Alysrazor achievement.",
},[[
step
Inside the Firelands (Heroic) Raid:
kill Alysrazor##52530
Earn the "Heroic: Alysrazor" Achievement |achieve 5809
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Ascendant Council",{
expansion="mists",
mopready=true,
achieveid={5119},
patch='40003',
description="This guide will walk you through how to get the Heroic: Ascendant Council achievement.",
},[[
step
Inside the Bastion of Twilight (Heroic) Raid:
Defeat the Ascendant Council |kill Feludius##43687, Ignacious##43686, Arion##43688, Terrastra##43689, Elementium Monstrosity##43735
Earn the "Heroic: Ascendant Council" Achievement |achieve 5119
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Atramedes",{
expansion="mists",
mopready=true,
achieveid={5109},
patch='40003',
description="This guide will walk you through how to get the Heroic: Atramedes achievement.",
},[[
step
Inside the Blackwing Descent (Heroic) Raid:
kill Atramedes##41442
Earn the "Heroic: Atramedes" Achievement |achieve 5109
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Baleroc",{
expansion="mists",
mopready=true,
achieveid={5805},
patch='40200',
description="This guide will walk you through how to get the Heroic: Baleroc achievement.",
},[[
step
Inside the Firelands (Heroic) Raid:
kill Baleroc##53494
Earn the "Heroic: Baleroc" Achievement |achieve 5805
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Beth'tilac",{
expansion="mists",
mopready=true,
achieveid={5807},
patch='40200',
description="This guide will walk you through how to get the Heroic: Beth'tilac achievement.",
},[[
step
Inside the Firelands (Heroic) Raid:
kill Beth'tilac##52498
Earn the "Heroic: Beth'tilac" Achievement |achieve 5807
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Chimaeron",{
expansion="mists",
mopready=true,
achieveid={5115},
patch='40003',
description="This guide will walk you through how to get the Heroic: Chimaeron achievement.",
},[[
step
Inside the Blackwing Descent (Heroic) Raid:
kill Chimaeron##43296
Earn the "Heroic: Chimaeron" Achievement |achieve 5115
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Cho'gall",{
expansion="mists",
mopready=true,
achieveid={5120},
patch='40003',
description="This guide will walk you through how to get the Heroic: Cho'gall achievement.",
},[[
step
Inside the Bastion of Twilight (Heroic) Raid:
kill Cho'gall##43324
Earn the "Heroic: Cho'gall" Achievement |achieve 5120
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Conclave of Wind",{
expansion="mists",
mopready=true,
achieveid={5122},
patch='40003',
description="This guide will walk you through how to get the Heroic: Conclave of Wind achievement.",
},[[
step
Inside the Throne of the Four Winds (Heroic) Raid:
kill Nezir##45871 |goto Throne of the Four Winds 47.50,26.00
kill Rohash##45872 |goto Throne of the Four Winds 63.65,50.11
kill Anshal##45870 |goto Throne of the Four Winds 31.16,49.54
Earn the "Heroic: Conclave of Wind" Achievement |achieve 5122
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Fandral Staghelm",{
expansion="mists",
mopready=true,
achieveid={5975},
patch='40200',
description="Activate both of Fandral's Flames at once in Firelands without any raid member getting hit by Kneel to the Flame!",
},[[
step
Inside the Firelands (Heroic) Raid:
kill Majordomo Staghelm##52571
Earn the "Heroic: Fandral Staghelm" Achievement |achieve 5975
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Hagara the Stormbinder",{
expansion="mists",
mopready=true,
achieveid={6112},
patch='40300',
description="Defeat Hagara the Stormbinder in Dragon Soul on Heroic Difficulty.",
},[[
step
Inside the Bastion of Twilight (Heroic) Raid:
kill Hagara the Stormbinder##55689
Earn the "Heroic: Hagara the Stormbinder" Achievement |achieve 6112
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Ultraxion",{
expansion="mists",
mopready=true,
achieveid={6113},
patch='40300',
description="Defeat Ultraxion in Dragon Soul on Heroic Difficulty.",
},[[
step
Inside the Bastion of Twilight (Heroic) Raid:
kill Ultraxion##55294
Earn the "Heroic: Ultraxion" Achievement |achieve 6113
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Halfus Wyrmbreaker",{
expansion="mists",
mopready=true,
achieveid={5118},
patch='40003',
description="This guide will walk you through how to get the Heroic: Halfus Wyrmbreaker achievement.",
},[[
step
Inside the Bastion of Twilight (Heroic) Raid:
kill Halfus Wyrmbreaker##44600
Earn the "Heroic: Halfus Wyrmbreaker" Achievement |achieve 5118
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Keeping it in the Family",{
expansion="mists",
mopready=true,
achieveid={4849},
patch='40003',
description="Damage Nefarian below 50% health before he lands for the final confrontation and then defeat Nefarian in Blackwing Descent.",
},[[
step
Inside the Blackwing Descent (Heroic) Raid:
kill Onyxia##41270
|tip Enter the arena and ignore Onyxia.
|tip Damage Nefarion to 60% of his health then stop DPS.
|tip When the magma rises, jump onto a column and kill the adds that spawn.
|tip After, attack Nefarian, bringing his health to 49% to 25%.
|tip DO NOT kill him or damage him further than 25% health.
|tip Allow him to finish his speech and land, then kill him.
Earn the "Keeping it in the Family" Achievement |achieve 4849
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Lord Rhyolith",{
expansion="mists",
mopready=true,
achieveid={5808},
patch='40200',
description="This guide will walk you through how to get the Heroic: Lord Rhyolith achievement.",
},[[
step
Inside the Firelands (Heroic) Raid:
kill Lord Rhyolith##52558
Earn the "Heroic: Lord Rhyolith" Achievement |achieve 5808
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Madness of Deathwing",{
expansion="mists",
mopready=true,
achieveid={6116},
patch='40300',
description="Defeat Deathwing in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
Inside the Dragon Soul (Heroic) Raid:
kill Deathwing##53879
Earn the "Heroic: Madness of Deathwing" Achievement |achieve 6116
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Magmaw",{
expansion="mists",
mopready=true,
achieveid={5094},
patch='40003',
description="This guide will walk you through how to get the Heroic: Magmaw achievement.",
},[[
step
Inside the Blackwing Descent (Heroic) Raid:
kill Magmaw##41570
Earn the "Heroic: Magmaw" Achievement |achieve 5094
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Maloriak",{
expansion="mists",
mopready=true,
achieveid={5108},
patch='40003',
description="This guide will walk you through how to get the Heroic: Maloriak achievement.",
},[[
step
Inside the Blackwing Descent (Heroic) Raid:
kill Maloriak##41378
Earn the "Heroic: Maloriak" Achievement |achieve 5108
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Morchok",{
expansion="mists",
mopready=true,
achieveid={6109},
patch='40300',
description="Defeat Morchok in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
Inside the Dragon Soul (Heroic) Raid:
kill Morchok##55265
Earn the "Heroic: Morchok" Achievement |achieve 6109
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Nefarian",{
expansion="mists",
mopready=true,
achieveid={5116},
patch='40003',
description="This guide will walk you through how to get the Heroic: Nefarian achievement.",
},[[
step
Inside the Blackwing Descent (Heroic) Raid:
kill Nefarian##41376
Earn the "Heroic: Nefarian" Achievement |achieve 5116 |goto Blackwing Descent/1 48.00,70.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Omnotron Defense System",{
expansion="mists",
mopready=true,
achieveid={5107},
patch='40003',
description="This guide will walk you through how to get the Heroic: Omnotron Defense System achievement.",
},[[
step
Inside the Blackwing Descent (Heroic) Raid:
Defeat the Omnotron Defense System |kill Arcanotron##42166, Electron##42179, Magmatron##42178, Toxitron##42180
Earn the "Heroic: Omnotron Defense System" Achievement |achieve 5107 |goto Blackwing Descent 65.40,57.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Shannox",{
expansion="mists",
mopready=true,
achieveid={5806},
patch='40200',
description="This guide will walk you through how to get the Heroic: Shannox achievement.",
},[[
step
Inside the Firelands (Heroic) Raid:
kill Shannox##53691
Earn the "Heroic: Shannox" Achievement  |achieve 5806 |goto Firelands 49.30,44.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Sinestra",{
expansion="mists",
mopready=true,
achieveid={5121},
patch='40003',
description="This guide will walk you through how to get the Heroic: Sinestra achievement.",
},[[
step
Inside the Bastion of Twilight (Heroic) Raid:
|tip Sinestra will start with low health and then regenerate back to full health after taking some damage, which triggers phase 2.
|tip During phase 2, dealing damage will cause her to lose Mana.
|tip After dealing some damage she will cast "Twilight Extinction".
|tip After the cast, deal more damage to lower her Mana once again and then kill the two Pulsing Twilight Eggs that spawn to each side of her.
|tip After the eggs are destroyed you can finish off Sinestra.
kill Sinestra##45213
Earn the "Heroic: Sinestra" Achievement |achieve 5121
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Spine of Deathwing",{
expansion="mists",
mopready=true,
achieveid={6115},
patch='40300',
description="Complete the Spine of Deathwing encounter in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
Inside the Dragon Soul (Heroic) Raid:
|tip During the Spine of Deathwing encounter.
kill Deathwing##53879
Earn the "Heroic: Spine of Deathwing" Achievement |achieve 6115
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Ultraxion",{
expansion="mists",
mopready=true,
achieveid={6113},
patch='40300',
description="Defeat Ultraxion in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
Inside the Dragon Soul (Heroic) Raid:
kill Ultraxion##55294
Earn the "Heroic: Ultraxion" Achievement |achieve 6113
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Valiona and Theralion",{
expansion="mists",
mopready=true,
achieveid={5117},
patch='40003',
description="This guide will walk you through how to get the Heroic: Valiona and Theralion achievement.",
},[[
step
Inside the Bastion of Twilight (Heroic) Raid:
kill Valiona##45992, Theralion##45993
Earn the "Heroic: Valiona and Theralion" Achievement |achieve 5117
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Warlord Zon'ozz",{
expansion="mists",
mopready=true,
achieveid={6110},
patch='40300',
description="Defeat Warlord Zon'ozz in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
Inside the Dragon Soul (Heroic) Raid:
kill Warlord Zon'ozz##55308
Earn the "Heroic: Warlord Zon'ozz" Achievement |achieve 6110
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Warmaster Blackhorn",{
expansion="mists",
mopready=true,
achieveid={6114},
patch='40300',
description="Defeat Warmaster Blackhorn in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
Inside the Dragon Soul (Heroic) Raid:
kill Warmaster Blackhorn##56427
Earn the "Heroic: Warmaster Blackhorn" Achievement |achieve 6114
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Yor'sahj the Unsleeping",{
expansion="mists",
mopready=true,
achieveid={6111},
patch='40300',
description="Defeat Yor'sahj the Unsleeping in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
Inside the Dragon Soul (Heroic) Raid:
kill Yor'sahj the Unsleeping##55312
Earn the "Heroic: Yor'sahj the Unsleeping" Achievement |achieve 6111
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Holding Hands",{
expansion="mists",
mopready=true,
achieveid={6175},
patch='40300',
description="Destroy the final Crystal Conductor during Hagara's lightning phase on Normal or Heroic Difficulty, while all players are part of the final Lightning Conduit.",
},[[
step
Inside the Bastion of Twilight Raid:
|tip Weaken Hagara to 85% and wait for the Lightning Phase to start.
|tip A Bound Lightning Elemental will spawn, kill it near one of the Crystal Conductors to charge it.
|tip Have the group stand between two conductors so the lightning channels through you and moves to the next conductor.
|tip Repeat this process until all conductors are changed and you'll get the achievement.
kill Hagara the Stormbinder##55689
Holding Hands |achieve 6175
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Maybe He'll Get Dizzy...",{
expansion="mists",
mopready=true,
achieveid={6133},
patch='40300',
description="Defeat the Spine of Deathwing encounter on Normal or Heroic Difficulty after tricking Deathwing into performing the following roll sequence: Left, Right, Left, Right.",
},[[
step
Inside the Dragon Soul Raid:
kill Deathwing##53879
|tip To earn this Achievement, you will have to make Deathwing roll Left, Right, Left, then Right again.
|tip Kill all tentacles in the lava pools to cause Corrupted Blood to spawn.
|tip Using your map, move to the lower left pool.
|tip Stand in the pool so that you don't get flung off of Deathwing during the roll.
|tip Next, move to the top right pool on the map.
|tip Stand in the pool so that you don't get flung off of Deathwing during the roll.
|tip Repeat the process again.
|tip Once he has rolled left right left right, move to the literal left side of the map.
|tip For this portion you will need him to stop rolling.
|tip When you see the yellow text appear, immidiatelly move to the other Lava Pool, staying on the left side.
|tip You won't have much time to move from one to the other.
|tip Stack corrupted blood as usual, so that the Abberations have 9 counts of Corrupted Blood before killing them against the wall on the left
Earn the "Maybe He'll Get Dizzy..." Achievement |achieve 6133
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Minutes to Midnight",{
expansion="mists",
mopready=true,
achieveid={6084},
patch='40300',
description="Defeat Ultraxion in Dragon Soul on Normal or Heroic Difficulty without any raid member being hit by Hour of Twilight more than once.",
},[[
step
Inside the Dragon Soul Raid:
kill Ultraxion##5529
|tip To earn the achievement, defeat Ultraxion {r}without{} taking damage from Hour of Twilight.
|tip Essentially a DPS race.
|tip {y}Normal (10){}: One player must stay in the Twilight Realm.
|tip {y}Normal (25){}: Three players must stay in the Twilight Realm.
|tip {y}Heroic (10){}: Two players must stay in the Twilight Realm.
|tip {y}Heroic (25){}: Five players must stay in the Twilight Realm.
Earn the "Minutes to Midnight" Achievement |achieve 6084
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Not an Ambi-Turner",{
expansion="mists",
mopready=true,
achieveid={5810},
patch='40200',
description="Defeat Lord Rhyolith in the Firelands without ever causing him to turn left while his armor is intact.",
},[[
step
Inside the Firelands Raid:
kill Lord Rhyolith##52558
|tip Focus down the right leg.
|tip Burst him down as fast as you can to earn the achievement.
Earn the "Not an Ambi-Turner" Achievement |achieve 5810
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\The Only Escape",{
expansion="mists",
mopready=true,
achieveid={5300},
patch='40003',
description="Defeat Halfus Wyrmbreaker after defeating two drakes within 10 seconds of each other. The Emerald Whelp pack counts as one drake for this purpose.",
},[[
step
kill Halfus Wyrmbreaker##44600
|tip You need to kill two of the dragons that are in the room with Halfus before defeating Halfus himself.
|tip Pull Halfus, then release a dragon of your choice (There will be 3 of 5 possible present).
|tip Avoid choosing the Whelps if possible unless you have strong AoE damage.
|tip Release a second dragon of your choice.
|tip Then, pull the two dragons together, killing both within 10 seconds of the other.
|tip Then defeat Halfus for the achievement.
Earn "The Only Escape" Achievement |achieve 5300
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Parasite Evening",{
expansion="mists",
mopready=true,
achieveid={5306},
patch='40003',
description="Defeat Magmaw in Blackwing Descent without anyone in the raid becoming infected with a parasite.",
},[[
step
Inside the Blackwing Descent Raid:
kill Magmaw##41570
|tip Magmaw uses Pillar of Flame which spawns the parasites, if you can't kill it fast enough, you will need to kite them and DPS them down at range.
Earn the "Parasite Evening" Achievement |achieve 5306 |goto Blackwing Descent/1 27.50,53.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Ping Pong Champion",{
expansion="mists",
mopready=true,
achieveid={6128},
patch='40300',
description="Bounce the Void of the Unmaking 10 times off of players, and then defeat Warlord Zon'ozz on Normal or Heroic Difficulty.",
},[[
step
Inside the Dragon Soul (Heroic) Raid:
kill Warlord Zon'ozz##55308
|tip Have player or your pet gain aggro on Warlord Zon'ozz, doing very little damage to it.
|tip Once they have gathered sufficient aggro, stop all dps or set your pet to passive.
|tip If you aren't tanking the boss, be sure to move to the direction the boss is facing.
|tip Eventually, Zon'ozz will cast "Void of the Unmaking", causing a ball to spawn.
|tip You will need to bounce the ball 10 times, while avoiding sending it towards the boss.
|tip Hitting the boss with it causes it to vanish and you'll need to try again.
Earn the "Ping Pong Champion" Achievement |achieve 6128
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Warlod Zon'ozz",{
expansion="mists",
mopready=true,
achieveid={6110},
patch='40300',
description="Heroic: Warlod Zon'ozz",
},[[
step
Inside the Dragon Soul (Heroic) Raid:
kill Warlord Zon'ozz##55308
Earn the "Heroic: Warlod Zon'ozz" Achievement |achieve 6110
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Share the Pain",{
expansion="mists",
mopready=true,
achieveid={5830},
patch='40200',
description="Defeat Baleroc in the Firelands without allowing any member of your raid to suffer Torment more than three times.",
},[[
step
Inside the Firelands Raid:
kill Baleroc##53494
|tip To earn the achievement, defeat Baleroc without {r}any{} of the raid memebers gaining  "Torment" more than three times.
|tip When you see Baleroc casting torment, be on the lookout for a large purple pillar.
|tip Move at least 15 yards away from it to, avoiding the shard that will give you the debuff.
|tip DPS Baleroc down quickly to avoid any chance of gaining the debuff.
Earn the "Share the Pain" Achievement |achieve 5830
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Siege of Wyrmrest Temple",{
expansion="mists",
mopready=true,
achieveid={6106},
patch='40300',
description="This guide will walk you through how to get the Siege of Wyrmrest Temple achievement.",
},[[
step
Only Bosses You Haven't Defeated Will Appear |only if not achieved(6106)
kill Morchok##55265 |achieve 6106/1 |only if not achieved(6106,1)
|tip
kill Warlord Zon'ozz##55308 |achieve 6106/2 |only if not achieved(6106,2)
|tip
kill Yor'sahj the Unsleeping##55312 |achieve 6106/3 |only if not achieved(6106,3)
|tip
kill Hagara the Stormbinder##55689 |achieve 6106/4 |only if not achieved(6106,4)
Earn the "Siege of Wyrmrest Temple" Achievement |achieve 6106 |only if achieved(6106)
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Silence is Golden",{
expansion="mists",
mopready=true,
achieveid={5308},
patch='40003',
description="Defeat Atramedes in Blackwing Descent without any raid member's sound bar going over 50%.",
},[[
step
Inside the Blackwing Descent Raid:
kill Atramedes##41442
|tip Avoid getting sound by avoiding Atramedes' Area of Effect Abilities.
|tip Each will cause your {y}Sound Bar{} to fill.
|tip The goal is to defeat the boss without anyone in the raid going over 50%.
|tip There are Gongs on the side of the room that serve to reset your "Sound" bar.
|tip Hitting them will also interrupt powerful AoE abilitis from the boss.
|tip Use it as needed.
Earn the "Silence is Golden" Achievement |achieve 5308
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Taste the Rainbow!",{
expansion="mists",
mopready=true,
achieveid={6129},
patch='40300',
description="Experience the following color combinations, and then defeat Yor'sahj the Unsleeping on Normal or Heroic Difficulty.",
},[[
step
Inside the Dragon Soul Raid:
kill Yor'sahj the Unsleeping##55312
|tip Every couple of minutes, Yor'sahj will summon 4 Globules.
|tip There are 4 combinations that you wil need to keep an eye out for, listed below.
|tip The game won't properly track which color combinations you have seen.
|tip You will need to keep track of which buffs he gains yourself.
Experience the following Globule Combinations:
Black and Yellow |achieve 6129/1
Red and Green |achieve 6129/2
Black and Blue |achieve 6129/3
Purple and Yellow |achieve 6129/4
Earn the "Taste the Rainbow!" Achievement |achieve 6129
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Throne of the Four Winds",{
expansion="mists",
mopready=true,
achieveid={4851},
patch='40003',
description="This guide will walk you through how to get the Throne of the Four Winds achievement.",
},[[
step
Inside the Throne of the Four Winds Raid:
kill Nezir##45871
kill Rohash##45872
kill Anshal##45870
Defeat the Conclave of Wind |achieve 4851/1
step
kill Al'Akir##46753 |achieve 4851/2
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeons\\Cataclysm Dungeon Hero",{
expansion="mists",
mopready=true,
achieveid={4844},
patch='40003',
description="This guide will walk you through how to get the Cataclysm Dungeon Hero achievement.",
},[[
step
Complete Heroic: Blackrock Caverns |achieve 4844/1 |only if not achieved(4844,1)
Complete Heroic: Throne of the Tides |achieve 4844/2 |only if not achieved(4844,2)
Complete Heroic: The Stonecore |achieve 4844/3 |only if not achieved(4844,3)
Complete Heroic: The Vortex Pinnacle |achieve 4844/4 |only if not achieved(4844,4)
Complete Heroic: Grim Batol |achieve 4844/5 |only if not achieved(4844,5)
Complete Heroic: Halls of Origination |achieve 4844/6 |only if not achieved(4844,6)
Complete Heroic: Lost City of the Tol'vir |achieve 4844/7 |only if not achieved(4844,7)
Complete Heroic: Deadmines |achieve 4844/8 |only if not achieved(4844,8)
Complete Heroic: Shadowfang Keep |achieve 4844/9 |only if not achieved(4844,9)
|tip Refer to our dungeon guides to accomplish this.
Earn the "Cataclysm Dungeon Hero" Achievement |achieve 4844
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Classic Raids\\Classic Raider",{
expansion="mists",
mopready=true,
achieveid={1285},
patch='30001',
description="This guide will walk you through how to get the Classic Raider achievement.",
},[[
step
Complete the following Classic raids:
Blackwing Lair |achieve 1285/1
Molten Core |achieve 1285/2
Temple of Ahn'Qiraj |achieve 1285/3
Ruins of Ahn'Qiraj |achieve 1285/4
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Glory of the Cataclysm Raider",{
expansion="mists",
mopready=true,
achieveid={4853},
patch='40003',
description="This guide will walk you through earning the Glory of the Cataclysm Raider achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Magmaw |achieve 4853/1
Heroic: Omnotron Defense System |achieve 4853/2
Heroic: Maloriak |achieve 4853/3
Heroic: Atramedes |achieve 4853/4
Heroic: Chimaeron |achieve 4853/5
Heroic: Nefarian |achieve 4853/6
Heroic: Halfus Wyrmbreaker |achieve 4853/7
Heroic: Valiona and Theralion |achieve 4853/8
Heroic: Ascendant Council |achieve 4853/9
Heroic: Cho'gall |achieve 4853/10
Heroic: Conclave of Wind |achieve 4853/11
Heroic: Al'Akir |achieve 4853/12
Parasite Evening |achieve 4853/13
Achieve-a-tron |achieve 4853/14
Silence is Golden |achieve 4853/15
Full of Sound and Fury |achieve 4853/16
Aberrant Behavior |achieve 4853/17
Keeping it in the Family |achieve 4853/18
The Only Escape |achieve 4853/19
Double Dragon |achieve 4853/20
Elementary |achieve 4853/21
The Abyss Will Gaze Back Into You |achieve 4853/22
Stay Chill |achieve 4853/23
Four Play |achieve 4853/24
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Glory of the Dragon Soul Raider",{
expansion="mists",
mopready=true,
achieveid={6169},
patch='40300',
description="This guide will walk you through earning the Glory of the Dragon Soul Raider achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Morchok |achieve 6169/1
Heroic: Warlord Zon'ozz |achieve 6169/2
Heroic: Yor'sahj the Unsleeping |achieve 6169/3
Heroic: Hagara the Stormbinder |achieve 6169/4
Heroic: Ultraxion |achieve 6169/5
Heroic: Warmaster Blackhorn |achieve 6169/6
Don't Stand So Close to Me |achieve 6169/7
Taste the Rainbow! |achieve 6169/8
Ping Pong Champion |achieve 6169/9
Minutes to Midnight |achieve 6169/10
Deck Defender |achieve 6169/11
Maybe He'll Get Dizzy... |achieve 6169/12
Chiromatic Champion |achieve 6169/13
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Glory of the Firelands Raider",{
expansion="mists",
mopready=true,
achieveid={5828},
patch='40200',
description="This guide will walk you through earning the Glory of the Firelands Raider achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Beth'tilac |achieve 5828/1
Heroic: Lord Rhyolith |achieve 5828/2
Heroic: Shannox |achieve 5828/3
Heroic: Alysrazor |achieve 5828/4
Heroic: Baleroc |achieve 5828/5
Heroic: Majordomo Fandral Staghelm |achieve 5828/6
Death from Above |achieve 5828/7
Not an Ambi-Turner |achieve 5828/8
Do a Barrel Roll! |achieve 5828/9
Bucket List |achieve 5828/10
Share the Pain |achieve 5828/11
Only the Penitent... |achieve 5828/12
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Fangs of the Father",{
expansion="mists",
mopready=true,
achieveid={6181},
patch='40300',
condition_valid=function() return raceclass('Rogue') end,
condition_valid_msg="Rogue only.",
description="This guide will walk you through how to acquire the legendary rogue daggers.",
},[[
step
talk Lord Devrestrasz##55476
|tip He will be on the right after entering a fresh Dragon Soul raid..
|tip If your raid group has already killed Morchok, he will be in the center of Wymrest Temple.
accept Proving Your Worth##29801 |goto Dragon Soul/1 0.00,0.00
step
collect Cryptomancer's Decoder Ring##74246 |q 29801 |goto Dragon Soul/4 0.00,0.00
|tip Proceed through the Dragon Soul raid until you reach Hagara the Stormbinder.
|tip Try to be stealthed when the encounter begins then cast Pickpocket on her to loot the ring.
|tip If you are out of stealth, you can vanish and then still pickpocket her during the encounter.
step
talk Lord Devrestrasz##55476
|tip He will be on the right after entering a fresh Dragon Soul raid.
|tip If your raid group has already killed Morchok, he will be in the center of Wymrest Temple.
turnin Proving Your Worth##29801 |goto Dragon Soul/1 0.00,0.00
accept A Hidden Message##29802 |goto Dragon Soul/1 0.00,0.00
step
talk Thaumaturge Rafir##57800
|tip Inside the building.
|tip This step will cost 10,000g to complete.
Select _"Can you charge my Cryptomancer's Decoder Ring?"_ |gossip 40249
Select _"<Pay the 10,000 gold.>"_ |gossip 39265
collect Charging Decoder Ring##74749 |q 29802 |goto Stormwind City/0 50.62,61.05
step
talk Corastrasza##55488 |goto Twilight Highlands/0 28.97,25.04
|tip Inside the tree.
Select _"Lord Devrestrasz sent me. He said you have a message to decode?"_ |gossip 39548
Acquire the Singed Cipher |q 29802/2 |goto Twilight Highlands/0 28.97,25.04
step
use Charged Decoder Ring##74748
Solve the Sipher |q 29802/3 |goto Twilight Highlands/0 28.97,25.04
|tip It will take 12 real life hours for the ring to be fully charged. You do not have to be logged in during this time.
step
talk Corastrasza##55488
turnin A Hidden Message##29802 |goto Twilight Highlands/0 29.01,25.07
accept To Ravenholdt##29934 |goto Twilight Highlands/0 29.01,25.07
step
talk Mostrasz##56314 |goto Twilight Highlands/0 29.54,26.04
Select _"I'm ready! Let's go to Ravenholdt."_ |gossip 41443
Fly with Mostrasz to Ravenholdt |q 29934/1 |goto Twilight Highlands/0 29.11,26.74
step
talk Mostrasz##56375 |goto Hillsbrad Foothills/0 67.82,45.15
|tip Wait for the flight sequence to end then enter the cave.
turnin To Ravenholdt##29934 |goto Hillsbrad Foothills/0 67.82,45.15
accept To Catch a Thief##29847 |goto Hillsbrad Foothills/0 67.82,45.15
step
Enter Stealth
|tip You will have to navigate through multiple guards that can spot you.
|tip The red ring around you is your detection radius.
|tip Use distract and sap to your advantage to make this easier.
|tip If you are knocked out of stealth, use vanish.
|tip We will route you through a safe passage to the egg, but there are multiple ways in if you want to test your skills.
Proceed to the house |goto Hillsbrad Foothills/0 70.52,46.14 < 20
Go around the house |goto Hillsbrad Foothills/0 71.78,45.92 < 20
Click the Convenient Rope |goto Hillsbrad Foothills/0 71.85,45.32 < 10
Click the Vent, it looks like a box in the tower |goto Hillsbrad Foothills/0 71.15,45.39 < 5
Enter the basement |goto Hillsbrad Foothills/0 71.61,45.10 < 10
Egg Located |q 29847/1 |goto Hillsbrad Foothills/0 71.54,45.57
step
talk Wrathion##57777
turnin To Catch a Thief##29847 |goto Hillsbrad Foothills/0 71.42,45.57
accept Our Man in Gilneas##30092 |goto Hillsbrad Foothills/0 71.42,45.57
step
talk Zazzo Twinklefingers##57770
turnin Our Man in Gilneas##30092 |goto Ruins of Gilneas/0 70.07,40.74
accept Assassinate Creed##30093 |goto Ruins of Gilneas/0 70.07,40.74
step
Enter Stealth
|tip You will have to navigate through multiple guards that can spot you, take your time and study each area.
|tip The red ring around you is your detection radius.
|tip Use distract and sap to your advantage to make this easier.
|tip If you are knocked out of stealth, use vanish.
|tip Be mindful of the dogs in the area, they move fast and can easily detect you.
|tip We are routing you through an easier path but there are multiple ways to do this quest if you wish to test your skills.
Proceed down the road |goto Ruins of Gilneas/0 66.58,42.78 < 20
Proceed down the road |goto Ruins of Gilneas/0 67.46,49.58 < 20
Head down the alley |goto Ruins of Gilneas/0 67.48,55.13 < 15
Enter the courtyard |goto Ruins of Gilneas/0 65.24,57.13 < 20 |c
only if haveq(30093)
step
kill Lord Hiram Creed##57802  |q 30093/1 |goto Ruins of Gilneas/0 64.19,55.67
|tip Creed has two phases and will require a full usage of your rogue kit to defeat. Combat is the easiest spec to defeat him with.
|tip You do not need to be in a group with other rogues to get credit.
|tip Save your CDs for Phase 2 and make heavy use of your CC abilities to prevent him from out DPSing you.
_Phase 1:_
|tip Run out of the Consuming Darkness AoE. Creed can be stunned or gouged to cancel this cast, but not kicked.
|tip Interrupt Blackhowl's Will at any cost, whether with kick or a stun or gouge. Save Cloak of Shadows for this if you have no other options.
|tip Do not use Smoke Bomb at any point, it will cause him to deal more damage.
_Phase 2:_
|tip When he uses Shadow Breath move behind him. Do not waste CC or an interrupt on it.
|tip He will continue to use the abilities from phase 1.
step
talk Zazzo Twinklefingers##57770
turnin Assassinate Creed##30093 |goto Ruins of Gilneas/0 70.07,40.72
accept The Deed is Done##30106 |goto Ruins of Gilneas/0 70.07,40.72
step
talk Wrathion##57777
turnin The Deed is Done##30106 |goto Hillsbrad Foothills/0 71.42,45.57
accept Cluster Clutch##30107 |goto Hillsbrad Foothills/0 71.42,45.57
step
Enter the Dragon Soul raid
collect 333 Shadowy Gem##77951 |q 30107 |goto Dragon Soul/1 0.00,0.00
|tip These are looted from Elementium Gem Clusters that drop off each boss in the raid.
|tip This will likely take you multiple weeks to do.
step
talk Wrathion##57777
turnin Cluster Clutch##30107 |goto Hillsbrad Foothills/0 71.42,45.57
accept Our Man in Karazhan##30108 |goto Hillsbrad Foothills/0 71.42,45.57
step
talk Zazzo Twinklefingers##57770
turnin Our Man in Karazhan##30108 |goto Deadwind Pass/0 52.56,77.64
accept Blood of the Betrayer##30109 |goto Deadwind Pass/0 52.56,77.64
step
Enter Stealth
|tip You will have to navigate through multiple guards that can spot you, take your time and study each area.
|tip The red ring around you is your detection radius.
|tip Use distract and sap to your advantage to make this easier.
|tip If you are knocked out of stealth, use vanish.
|tip We are routing you through an easier path but there are multiple ways to do this quest if you wish to test your skills.
Go around the town |goto Deadwind Pass/0 50.36,74.51 < 20
Head towards Karazhan |goto Deadwind Pass/0 47.72,74.01 < 20
Cross the road 	|goto Deadwind Pass/0 46.51,78.95 < 20
Go around the house |goto Deadwind Pass/0 47.81,80.81 < 10
Enter the cellar |goto Deadwind Pass/0 48.66,78.87 < 10 |c
|only if haveq(30109)
step
_Note_
|tip We are currently unable to provide arrow data once you are inside the crypt.
|tip Follow the instructions as best as you can, then proceed once you've reached Nalice.
_Instructions_
|tip Head down the crypt to the center crevice where a single Dragonkin is patrolling. Keep him sapped while you plan your next move.
|tip Head to the fallen support beam, you may need to wait for patrols to reach the right side of the room.
|tip Continue past the support beam to Nalice.
Click Here Once You Reach Nalice |confirm
|only if haveq(30109)
step
kill Nalice##57910
collect Vial of Black Dragonsblood##77954 |q 30109
|tip She has three phases and is easier to beat as Combat.
|tip She is similar to Creed in that you will need to keep her CC'd at different intervals.
_Phase 1_:
|tip When she Enrages be sure you use Shiv to cancel it.
|tip Interrupt or Cloak of Shadows when she uses Arcane Missiles.
|tip Use Expose Armor when she has Arcane Infused Armor.
|tip Disarm or Stun her when she has Arcane Infused Weapon.
_Phase 2_:
|tip You will be teleported away. Immediately use Sprint and head towards the Arcane Devices in the room and right click them.
|tip You only have 30 seconds to disarm them.
|tip Avoid getting hit by AoE on the floor, they look like arcane patterns.
_Phase 3_:
|tip She uses all phase 1 abilities.
|tip She also now uses Blazing Shadows, leaving an area of shadow under you.
|tip Try to keep the shadows orderly so you have more floor space to work with.
step
talk Zazzo Twinklefingers##57770
turnin Blood of the Betrayer##30109 |goto Deadwind Pass/0 52.56,77.64
accept Victory in the Depths##30113 |goto Deadwind Pass/0 52.56,77.64
step
talk Wrathion##57777
turnin Victory in the Depths##30113 |goto Hillsbrad Foothills/0 71.42,45.57
accept Sharpening Your Fangs##30116 |goto Hillsbrad Foothills/0 71.42,45.57
step
Enter the Dragon Soul raid
collect 60 Elementium Gem Cluster##77952 |q 30116 |goto Dragon Soul/1 0.00,0.00
|tip These are looted from bosses in the Dragon Soul raid.
|tip This will likely take you multiple weeks to do.
step
talk Wrathion##57777
turnin Sharpening Your Fangs##30116 |goto Hillsbrad Foothills/0 71.42,45.57
accept Patricide##30118 |goto Hillsbrad Foothills/0 71.42,45.57
step
kill Deathwing##56173
|tip Inside the Dragon Soul raid.
collect Fragment of Deathwing's Jaw##78352 |q 30118 |goto Dragon Soul/1 0.00,0.00
step
talk Wrathion##57777
turnin Patricide##30118 |goto Hillsbrad Foothills/0 71.42,45.57
step
Earn the "Fangs of the Father" Achievement |achieve 6181
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Icecrown Raider (10 Player)",{
expansion="mists",
mopready=true,
achieveid={4602},
patch='30300',
description="This guide will walk you through obtaining the Glory of the Icecrown Raider (10 Player) achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Storming the Citadel (10 player) |achieve 4602/1
Heroic: The Plagueworks (10 player) |achieve 4602/2
Heroic: The Crimson Hall (10 player) |achieve 4602/3
Heroic: The Frostwing Halls (10 player) |achieve 4602/4
Boned (10 player) |achieve 4602/5
Full House (10 player) |achieve 4602/6
I'm on a Boat (10 player) |achieve 4602/7
I've Gone and Made a Mess (10 player) |achieve 4602/8
Dances with Oozes (10 player) |achieve 4602/9
Flu Shot Shortage (10 player) |achieve 4602/10
Nausea, Heartburn, Indigestion... (10 player) |achieve 4602/11
The Orb Whisperer (10 player) |achieve 4602/12
Once Bitten, Twice Shy (10 player) |achieve 4602/13
Portal Jockey (10 player) |achieve 4602/14
All You Can Eat (10 player) |achieve 4602/15
Been Waiting a Long Time for This (10 player) |achieve 4602/16
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Icecrown Raider (25 Player)",{
expansion="mists",
mopready=true,
achieveid={4603},
patch='30300',
description="This guide will walk you through obtaining the Glory of the Icecrown Raider (25 Player) achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Storming the Citadel (25 player) |achieve 4603/1
Heroic: The Plagueworks (25 player) |achieve 4603/2
Heroic: The Crimson Hall (25 player) |achieve 4603/3
Heroic: The Frostwing Halls (25 player) |achieve 4603/4
Boned (25 player) |achieve 4603/5
Full House (25 player) |achieve 4603/6
I'm on a Boat (25 player) |achieve 4603/7
I've Gone and Made a Mess (25 player) |achieve 4603/8
Dances with Oozes (25 player) |achieve 4603/9
Flu Shot Shortage (25 player) |achieve 4603/10
Nausea, Heartburn, Indigestion... (25 player) |achieve 4603/11
The Orb Whisperer (25 player) |achieve 4603/12
Once Bitten, Twice Shy (25 player) |achieve 4603/13
Portal Jockey (25 player) |achieve 4603/14
All You Can Eat (25 player) |achieve 4603/15
Been Waiting a Long Time for This (25 player) |achieve 4603/16
Neck-Deep in Vile (25 player) |achieve 4603/17
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Raider (10 player)",{
expansion="mists",
mopready=true,
achieveid={2137},
patch='30002',
description="This guide will walk you through earning the Glory of the Raider (10 player) achievement.",
},[[
step
This achievement is earned by completing the following raid achievements:
|tip Use our achievement guides to accomplish this.
The Dedicated Few (10 player) |achieve 2137/1
Arachnophobia (10 player) |achieve 2137/2
Make Quick Werk of Him (10 player) |achieve 2137/3
The Safety Dance (10 player) |achieve 2137/4
Momma Said Knock You Out (10 player) |achieve 2137/5
Shocking! (10 player) |achieve 2137/6
Subtraction (10 player) |achieve 2137/7
The Spellweaver's Downfall (10 player) |achieve 2137/8
You Don't Have an Eternity (10 player) |achieve 2137/9
A Poke in the Eye (10 player) |achieve 2137/10
Gonna Go When the Volcano Blows (10 player) |achieve 2137/11
The Twilight Zone (10 player) |achieve 2137/12
The Hundred Club  (10 player) |achieve 2137/13
And They Would All Go Down Together (10 player) |achieve 2137/14
Denyin' the Scion (10 player) |achieve 2137/15
Just Can't Get Enough  (10 player) |achieve 2137/16
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Raider (25 player)",{
expansion="mists",
mopready=true,
achieveid={2138},
patch='30002',
description="This guide will walk you through earning the Glory of the Raider (25 player) achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use our achievement guides to accomplish this.
The Dedicated Few (25 player) |achieve 2138/1
Arachnophobia (25 player) |achieve 2138/2
Make Quick Werk of Him (25 player) |achieve 2138/3
The Safety Dance (25 player) |achieve 2138/4
Momma Said Knock You Out (25 player) |achieve 2138/5
Shocking! (25 player) |achieve 2138/6
And They Would All Go Down Together (25 player) |achieve 2138/7
Subtraction (25 player) |achieve 2138/8
The Spellweaver's Downfall (25 player) |achieve 2138/9
You Don't Have an Eternity (25 player) |achieve 2138/10
A Poke in the Eye (25 player) |achieve 2138/11
Gonna Go When the Volcano Blows (25 player) |achieve 2138/12
Denyin' the Scion (25 player) |achieve 2138/13
The Twilight Zone (25 player) |achieve 2138/14
The Hundred Club (25 player) |achieve 2138/15
Just Can't Get Enough (25 player) |achieve 2138/16
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Glory of the Ulduar Raider",{
expansion="mists",
mopready=true,
condition_end="achieved(12401)",
description="This guide will walk you through earning the \"Glory of the Ulduar Raider\" achievement.",
},[[
step
Complete the Following Ulduar Achievements:
|tip Refer to the appropriate guides to accomplish this.
Earn the "Orbit-uary" Achievement |achieve 12401/1
Earn the "Stokin' the Furnace" Achievement |achieve 12401/2
Earn the "Iron Dwarf, Medium Rare" Achievement |achieve 12401/3
Earn the "Heartbreaker" Achievement |achieve 12401/4
Earn the "I Choose You, Steelbreaker" Achievement |achieve 12401/5
Earn the "Disarmed" Achievement |achieve 12401/6
Earn the "Crazy Cat Lady" Achievement |achieve 12401/7
Earn the "I Could Say That This Cache Was Rare" Achievement |achieve 12401/8
Earn the "Lose Your Illusion" Achievement |achieve 12401/9
Earn the "Knock, Knock, Knock on Wood" Achievement |achieve 12401/10
Earn the "Firefighter" Achievement |achieve 12401/11
Earn the "I Love the Smell of Saronite in the Morning" Achievement |achieve 12401/12
Earn the "One Light in the Darkness" Achievement |achieve 12401/13
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Looking For Many",{
expansion="mists",
mopready=true,
achieveid={4477},
patch='30300',
description="This guide will walk you through earning the Looking For Many achievement.",
},[[
step
Earn the "Looking For Many" Achievement |achieve 4477
|tip Use the LFG Group Finder tool to group with 50 random players.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Looking For More",{
expansion="mists",
mopready=true,
achieveid={4476},
patch='30300',
description="This guide will walk you through earning the Looking For More achievement.",
},[[
step
Earn the "Looking For More" Achievement |achieve 4476
|tip Use the LFG Group Finder tool to group with 10 random players.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Looking For Multitudes",{
expansion="mists",
mopready=true,
achieveid={4478},
patch='30300',
description="This guide will walk you through earning the Looking For Multitudes achievement.",
},[[
step
Earn the "Looking For Multitudes" Achievement |achieve 4478/1
|tip Use the LFG Group Finder tool to group with 100 random players.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Northrend Dungeon Hero",{
expansion="mists",
mopready=true,
achieveid={1289},
patch='30001',
description="This guide will walk you through how to get the Northrend Dungeon Hero achievement.",
},[[
step
Clear the Following Northrend Dungeons on Heroic Difficulty:
Complete the "Heroic: Utgarde Keep" Dungeon |achieve 1289/1
Complete the "Heroic: The Nexus" Dungeon |achieve 1289/2
Complete the "Heroic: The Culling of Stratholme" Dungeon |achieve 1289/3
Complete the "Heroic: Azjol-Nerub" Dungeon |achieve 1289/4
Complete the "Heroic: Ahn'kahet: The Old Kingdom" Dungeon |achieve 1289/5
Complete the "Heroic: Drak'Tharon Keep" Dungeon |achieve 1289/6
Complete the "Heroic: The Violet Hold" Dungeon |achieve 1289/7
Complete the "Heroic: Gundrak" Dungeon |achieve 1289/8
Complete the "Heroic: Halls of Stone" Dungeon |achieve 1289/9
Complete the "Heroic: Halls of Lightning" Dungeon |achieve 1289/10
Complete the "Heroic: The Oculus" Dungeon |achieve 1289/11
Complete the "Heroic: Utgarde Pinnacle" Dungeon |achieve 1289/12
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Northrend Dungeons\\Northrend Dungeonmaster",{
expansion="mists",
mopready=true,
achieveid={1288},
patch='30008',
description="This guide will walk you through how to get the Northrend Dungeonmaster achievement.",
},[[
step
Clear the Following Northrend Dungeons:
Complete the "Utgarde Keep" Dungeon |achieve 1288/1
Complete the "The Nexus" Dungeon |achieve 1288/2
Complete the "The Culling of Stratholme" Dungeon |achieve 1288/3
Complete the "Azjol-Nerub" Dungeon |achieve 1288/4
Complete the "Ahn'kahet: The Old Kingdom" Dungeon |achieve 1288/5
Complete the "Drak'Tharon Keep" Dungeon |achieve 1288/6
Complete the "The Violet Hold" Dungeon |achieve 1288/7
Complete the "Gundrak" Dungeon |achieve 1288/8
Complete the "Halls of Stone" Dungeon |achieve 1288/9
Complete the "Halls of Lightning" Dungeon |achieve 1288/10
Complete the "The Oculus" Dungeon |achieve 1288/11
Complete the "Utgarde Pinnacle" Dungeon |achieve 1288/12
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Outland Dungeons\\Outland Dungeon Hero",{
expansion="mists",
mopready=true,
achieveid={1287},
patch='30001',
description="This guide will walk you through how to get the Outland Dungeon Hero achievement.",
},[[
step
Clear the Following Burning Crusade Dungeons on Heroic Difficulty:
Complete the "Heroic: Hellfire Ramparts" Dungeon |achieve 1287/1
Complete the "Heroic: The Blood Furnace" Dungeon |achieve 1287/2
Complete the "Heroic: The Slave Pens" Dungeon |achieve 1287/3
Complete the "Heroic: Underbog" Dungeon |achieve 1287/4
Complete the "Heroic: Mana-Tombs" Dungeon |achieve 1287/5
Complete the "Heroic: The Escape From Durnholde" Dungeon |achieve 1287/6
Complete the "Heroic: Sethekk Halls" Dungeon |achieve 1287/7
Complete the "Heroic: Shadow Labyrinth" Dungeon |achieve 1287/8
Complete the "Heroic: Opening of the Dark Portal" Dungeon |achieve 1287/9
Complete the "Heroic: The Steamvault" Dungeon |achieve 1287/10
Complete the "Heroic: The Shattered Halls" Dungeon |achieve 1287/11
Complete the "Heroic: The Mechanar" Dungeon |achieve 1287/12
Complete the "Heroic: The Botanica" Dungeon |achieve 1287/13
Complete the "Heroic: The Arcatraz" Dungeon |achieve 1287/14
Complete the "Heroic: Magister's Terrace" Dungeon |achieve 1287/15
Complete the "Heroic: Auchenai Crypts" Dungeon |achieve 1287/16
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Outland Dungeons\\Outland Dungeonmaster",{
expansion="mists",
mopready=true,
achieveid={1284},
patch='30001',
description="This guide will walk you through how to get the Outland Dungeonmaster achievement.",
},[[
step
Clear the Following Burning Crusade Dungeons:
Complete the "Hellfire Ramparts" Dungeon |achieve 1284/1
Complete the "The Blood Furnace" Dungeon |achieve 1284/2
Complete the "The Slave Pens" Dungeon |achieve 1284/3
Complete the "Underbog" Dungeon |achieve 1284/4
Complete the "Mana-Tombs" Dungeon |achieve 1284/5
Complete the "Escape From Durnholde" Dungeon |achieve 1284/6
Complete the "Sethekk Halls" Dungeon |achieve 1284/7
Complete the "Shadow Labyrinth" Dungeon |achieve 1284/8
Complete the "Opening of the Dark Portal" Dungeon |achieve 1284/9
Complete the "The Steamvault" Dungeon |achieve 1284/10
Complete the "The Shattered Halls" Dungeon |achieve 1284/11
Complete the "The Mechanar" Dungeon |achieve 1284/12
Complete the "The Botanica" Dungeon |achieve 1284/13
Complete the "The Arcatraz" Dungeon |achieve 1284/14
Complete the "Magister's Terrace" Dungeon |achieve 1284/15
Complete the "Auchenai Crypts" Dungeon |achieve 1284/16
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Outland Raids\\Outland Raider",{
expansion="mists",
mopready=true,
achieveid={1286},
patch='30002',
description="This guide will walk you through how to get the Outland Raider achievement.",
},[[
step
Clear the Following Burning Crusade Raids:
Karazhan |achieve 1286/1
Gruul's Lair |achieve 1286/2
Magtheridon's Lair |achieve 1286/3
Serpentshrine Cavern |achieve 1286/4
The Battle for Mount Hyjal |achieve 1286/5
Tempest Keep |achieve 1286/6
The Black Temple |achieve 1286/7
Sunwell Plateau |achieve 1286/8
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Eastern Kingdoms and Cataclysm Explorer",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(42) end,
achieveid={42},
patch='30002',
description="Earn the following Eastern Kingdoms exploration achievements:\n\nExplore Elwynn Forest\nExplore "..
"Badlands\nExplore Burning Steppes\nExplore Duskwood\nExplore Loch Modan\nExplore Tirisfal Glades\n"..
"Explore Searing Gorge\nExplore Ghostlands\nExplore the Cape of Stranglethorn\nExplore The Hinterlands\n"..
"Explore Wetlands\nExplore Western Plaguelands\nExplore Isle of Quel'Danas\nExplore Arathi Highlands\n"..
"Explore Blasted Lands\nExplore Dun Morogh\nExplore Hillsbrad Foothills\nExplore Redridge Mountains\n"..
"Explore Eversong Woods\nExplore Silverpine Forest\nExplore Northern Stranglethorn\nExplore Swamp of Sorrows\n"..
"Explore Westfall\nExplore Deadwind Pass\nExplore Eastern Plaguelands",
},[[
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore the Cape of Stranglethorn" 1-10
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Northern Stranglethorn" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Westfall" 1-13
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Duskwood" 1-13
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Deadwind Pass" 1-3
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Blasted Lands" 1-14
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Swamp of Sorrows" 1-12
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Redridge Mountains" 1-13
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Elwynn Forest" 1-11
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Vashj'ir" 1-57
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Deepholm" 1-12
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Burning Steppes" 1-10
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Badlands" 1-10
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Searing Gorge" 1-8
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Dun Morogh" 1-15
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Loch Modan" 1-11
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Twilight Highlands" 1-28
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Wetlands" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Arathi Highlands" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Hillsbrad Foothills" 1-26
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Silverpine Forest" 1-15
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Tirisfal Glades" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Western Plaguelands" 1-14
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore The Hinterlands" 1-14
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eastern Plaguelands" 1-23
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Ghostlands" 1-16
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eversong Woods" 1-25
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Isle of Quel'Danas" 1-1
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Arathi Highlands",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(761) end,
achieveid={761},
patch='30003',
description="Explore Arathi Highlands, revealing the following covered areas of the world map:\n\nBoulder'gor\n"..
"Circle of West Binding\nStromgarde Keep\nCircle of Inner Binding\nBoulderfist Hall\nCircle of Outer Binding\n"..
"Go'Shek Farm\nCircle of East Binding\nNorthfold Manor\nGalen's Fall\nFaldir's Cove\nThandol Span\n"..
"Refuge Pointe\nWitherbark Village\nDabyrie's Farmstead\nHammerfall",
},[[
step
Discover Thandol Span |achieve 761/8 |goto Arathi Highlands 41.30,91.00
step
Discover Boulderfist Hall |achieve 761/9 |goto Arathi Highlands 49.10,78.90
step
Discover Witherbark Village |achieve 761/12 |goto Arathi Highlands 61.60,70.30
step
Discover Go'Shek Farm |achieve 761/13 |goto Arathi Highlands 56.40,57.60
step
Discover Hammerfall |achieve 761/16 |goto Arathi Highlands 69.30,37.20
step
Discover Circle of East Binding |achieve 761/15 |goto Arathi Highlands 59.30,32.80
step
Discover Dabyrie's Farmstead |achieve 761/14 |goto Arathi Highlands 49.90,41.30
step
Discover Circle of Outer Binding |achieve 761/11 |goto Arathi Highlands 47.30,51.40
step
Discover Refuge Pointe |achieve 761/10 |goto Arathi Highlands 39.80,46.40
step
Discover Circle of Inner Binding |achieve 761/7 |goto Arathi Highlands 30.10,59.30
step
Discover Faldir's Cove |achieve 761/6 |goto Arathi Highlands 23.80,81.80
step
Discover Stromgarde Keep |achieve 761/5 |goto Arathi Highlands 16.50,64.10
step
Discover Boulder'gor |achieve 761/3 |goto Arathi Highlands 27.50,44.20
step
Discover Northfold Manor |achieve 761/2 |goto Arathi Highlands 27.00,27.10
step
Discover Circle of West Binding |achieve 761/1 |goto Arathi Highlands 18.97,30.99
step
Discover Galen's Fall |achieve 761/4 |goto Arathi Highlands 13.00,36.40
step
|achieve 761
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Badlands",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(765) end,
achieveid={765},
patch='30003',
description="Explore Badlands, revealing the following covered areas of the world map:\n\nLethlor Ravine\n"..
"Uldaman\nScar of the Worldbreaker\nAngor Fortress\nBloodwatcher Point\nAgmond's End\n"..
"Camp Cagg\nThe Dustbowl\nCamp Kosh\nNew Kargath",
},[[
step
Discover Lethlor Ravine |achieve 765/1 |goto Badlands 68.00,48.20
step
Discover Camp Kosh |achieve 765/8 |goto Badlands 60.10,20.70
step
Discover Uldaman |achieve 765/3 |goto Badlands 38.30,11.60
step
Discover Angor Fortress |achieve 765/7 |goto Badlands 41.10,26.50
step
Discover The Dustbowl |achieve 765/6 |goto Badlands 27.40,38.00
step
Discover New Kargath |achieve 765/10 |goto Badlands 17.70,41.70
step
Discover Camp Cagg |achieve 765/4 |goto Badlands 17.20,63.00
step
Discover Scar of the Worldbreaker |achieve 765/5 |goto Badlands 31.70,54.60
step
Discover Agmond's End |achieve 765/2 |goto Badlands 46.50,57.40
step
Discover Bloodwatcher Point |achieve 765/9 |goto Badlands 52.30,51.20
step
|achieve 765
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Blasted Lands",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(766) end,
achieveid={766},
patch='30003',
description="Explore Blasted Lands, revealing the following covered areas of the world map:\n\nDreadmaul Hold\n"..
"Nethergarde Keep\nThe Dark Portal\nDreadmaul Post\nRise of the Defiler\nSunveil Excursion\nThe Red "..
"Reaches\nNethergarde Supply Camps\nSerpent's Coil\nAltar of Storms\nThe Tainted Scar\nShattershore\n"..
"Surwich\nThe Tainted Forest",
},[[
step
Discover Dreadmaul Hold |achieve 766/1 |goto Blasted Lands 39.50,12.90
step
Discover Rise of the Defiler |achieve 766/9 |goto Blasted Lands 45.10,26.70
step
Discover the Altar of Storms |achieve 766/6 |goto Blasted Lands 39,32
step
Discover Dreadmaul Post |achieve 766/7 |goto Blasted Lands 47.10,40.10
step
Discover The Tainted Scar |achieve 766/8 |goto Blasted Lands 32.30,45.70
step
Discover The Tainted Forest |achieve 766/14 |goto Blasted Lands 34.20,72.30
step
Discover Surwich |achieve 766/12 |goto Blasted Lands 44.50,86.10
step
Discover Sunveil Excursion |achieve 766/11 |goto Blasted Lands 50.70,70.90
step
Discover The Red Reaches |achieve 766/13 |goto Blasted Lands 65.80,78.00
step
Discover The Dark Portal |achieve 766/5 |goto Blasted Lands 54.40,52.90
step
Discover Shattershore |achieve 766/10 |goto Blasted Lands 69.10,33.50
step
Discover Serpent's Coil |achieve 766/4 |goto Blasted Lands 60.30,28.40
step
Discover Nethergarde Keep |achieve 766/3 |goto Blasted Lands 64.30,15.80
step
Discover Nethergarde Supply Camps |achieve 766/2 |goto Blasted Lands 52.61,18.63
step
|achieve 766
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Burning Steppes",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(775) end,
achieveid={775},
patch='30002',
description="Explore Burning Steppes, revealing the following covered areas of the world map:\n\nDreadmaul Rock\n"..
"Terror Wing Path\nRuins of Thaurissan\nBlackrock Stronghold\nAltar of Storms\nMorgan's Vigil\n"..
"Blackrock Pass\nBlack Tooth Hovel\nThe Whelping Downs\nBlackrock Mountain",
},[[
step
Discover Blackrock Pass |achieve 775/4 |goto Burning Steppes 66.70,77.50
step
Discover Morgan's Vigil |achieve 775/2 |goto Burning Steppes 73.50,68.00
step
Discover Terror Wing Path |achieve 775/3 |goto Burning Steppes 73.90,53.40
step
Discover Dreadmaul Rock |achieve 775/1 |goto Burning Steppes 69.70,40.50
step
Discover Ruins of Thaurissan |achieve 775/5 |goto Burning Steppes 56.60,37.40
step
Discover Black Tooth Hovel |achieve 775/6 |goto Burning Steppes 36.10,53.50
step
Discover The Whelping Downs |achieve 775/8 |goto Burning Steppes 24.30,57.70
step
Discover Blackrock Stronghold |achieve 775/7 |goto Burning Steppes 32.30,36.50
step
Discover Blackrock Mountain |achieve 775/10 |goto Burning Steppes 20.70,29.20
step
Discover Altar of Storms |achieve 775/9 |goto Burning Steppes 9.40,27.50
step
|achieve 775
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore the Cape of Stranglethorn",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(4995) end,
achieveid={4995},
patch='40003',
description="Explore the Cape of Stranglethorn, revealing the following covered areas of the world map:\n\nBooty Bay\n"..
"Gurubashi Arena\nJaquero Isle\nNek'mani Wellspring\nRuins of Jubuwal\nCrystalvein Mine\nHardwrench Hideaway"..
"\nMistvale Valley\nRuins of Aboraz\nThe Wild Shore",
},[[
step
Discover Booty Bay |achieve 4995/1 |goto The Cape of Stranglethorn 39.70,71.00
step
Discover The Wild Shore |achieve 4995/10 |goto The Cape of Stranglethorn 43.50,81.40
step
Discover Jaquero Isle |achieve 4995/5 |goto The Cape of Stranglethorn 60.80,81.60
step
Discover Mistvale Valley |achieve 4995/6 |goto The Cape of Stranglethorn 50.50,58.10
step
Discover Nek'mani Wellspring |achieve 4995/7 |goto The Cape of Stranglethorn 43.00,49.10
step
Discover Hardwrench Hideaway |achieve 4995/4 |goto The Cape of Stranglethorn 34.10,32.40
step
Discover Gurubashi Arena |achieve 4995/3 |goto The Cape of Stranglethorn 46.30,22.50
step
Discover Ruins of Jubuwal |achieve 4995/9 |goto The Cape of Stranglethorn 54.40,30.30
step
Discover Ruins of Aboraz |achieve 4995/8 |goto The Cape of Stranglethorn 62.20,43.70
step
Discover Crystalvein Mine |achieve 4995/2 |goto The Cape of Stranglethorn 62.40,28.10
step
|achieve 4995
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Deadwind Pass",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(777) end,
achieveid={777},
patch='30002',
description="Explore Deadwind Pass, revealing the following covered areas of the world map:\n\nKarazhan\n"..
"Deadman's Crossing\nThe Vice",
},[[
step
Discover Deadman's Crossing |achieve 777/1 |goto Deadwind Pass 45.10,35.80
step
Discover Karazhan |achieve 777/3 |goto Deadwind Pass 42.60,68.80
step
Discover The Vice |achieve 777/2 |goto Deadwind Pass 58.60,64.70
step
|achieve 777
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Dun Morogh",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(627) end,
achieveid={627},
patch='30002',
description="Explore Dun Morogh, revealing the following covered areas of the world map:\n\nColdridge Pass\n"..
"Frostmane Front\nIronforge Airfield\nKharanos\nAmberstill Ranch\nGol'Bolar Quarry\nFrostmane Hold\n"..
"Gates of Ironforge\nColdridge Valley\nNew Tinkertown\nShimmer Ridge\nThe Tundrid Hills\nIceflow Lake"..
"\nHelm's Bed Lake\nNorth Gate Outpost",
},[[
step
Discover Helm's Bed Lake |achieve 627/10 |goto Dun Morogh 84.10,51.80
step
Discover Gol'Bolar Quarry |achieve 627/11 |goto Dun Morogh 76.50,57.20
step
Discover Amberstill Ranch |achieve 627/9 |goto Dun Morogh 71.50,46.20
step
Discover The Tundrid Hills |achieve 627/8 |goto Dun Morogh 67.20,53.90
step
Discover Frostmane Front |achieve 627/3 |goto Dun Morogh 58.60,57.70
step
Discover Kharanos |achieve 627/7 |goto Dun Morogh 53.60,50.50
step
Discover Coldridge Pass |achieve 627/1 |goto Dun Morogh 43.90,64.50
step
Discover Coldridge Valley |achieve 627/2 |goto Dun Morogh 34.60,75.60
step
Discover Frostmane Hold |achieve 627/13 |goto Dun Morogh 31.50,51.90
step
Discover New Tinkertown |achieve 627/4 |goto Dun Morogh 33.80,37.50
step
Discover Iceflow Lake |achieve 627/14 |goto Dun Morogh 41.40,40.20
step
Discover Shimmer Ridge |achieve 627/6 |goto Dun Morogh 48.30,37.90
step
Discover Gates of Ironforge |achieve 627/15 |goto Dun Morogh 59.60,33.80
step
Discover Ironforge Airfield |achieve 627/5 |goto Dun Morogh 78.00,24.20
step
Discover North Gate Outpost |achieve 627/12 |goto Dun Morogh 90.30,37.60
step
|achieve 627
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Duskwood",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(778) end,
achieveid={778},
patch='30002',
description="Explore Duskwood, revealing the following covered areas of the world map:\n\nThe Hushed Bank\n"..
"Raven Hill\nVul'Gol Ogre Mound\nThe Yorgen Farmstead\nThe Rotting Orchard\nDarkshire\nThe "..
"Darkened Bank\nAddle's Stead\nRaven Hill Cemetery\nTwilight Grove\nBrightwood Grove\nTranquil "..
"Gardens Cemetery\nManor Mistmantle",
},[[
step
Discover The Hushed Bank |achieve 778/1 |goto Duskwood 10.10,44.30
step
Discover Raven Hill Cemetery |achieve 778/4 |goto Duskwood 19.60,41.30
step
Discover Raven Hill |achieve 778/3 |goto Duskwood 19.80,55.20
step
Discover Addle's Stead |achieve 778/2 |goto Duskwood 21.40,69.90
step
Discover Vul'Gol Ogre Mound |achieve 778/5 |goto Duskwood 35.80,72.70
step
Discover The Yorgen Farmstead |achieve 778/7 |goto Duskwood 51.00,74.00
step
Discover The Rotting Orchard |achieve 778/9 |goto Duskwood 63.80,71.90
step
Discover Twilight Grove |achieve 778/6 |goto Duskwood 46.80,38.60
step
Discover The Darkened Bank |achieve 778/13 |goto Duskwood 54.60,21.20
step
Discover Brightwood Grove |achieve 778/8 |goto Duskwood 64.70,37.70
step
Discover Manor Mistmantle |achieve 778/12 |goto Duskwood 77.10,35.90
step
Discover Darkshire |achieve 778/11 |goto Duskwood 74.50,46.20
step
Discover Tranquil Gardens Cemetery |achieve 778/10 |goto Duskwood 79.70,66.10
step
|achieve 778
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eastern Plaguelands",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(771) end,
achieveid={771},
patch='30100',
description="Explore Eastern Plaguelands, revealing the following covered areas of the world map:\n\nThondroril River\n"..
"The Undercroft\nThe Fungal Vale\nPestilent Scar\nLake Mereldar\nLight's Hope Chapel\nThe Noxious Glade\n"..
"Blackwood Lake\nZul'Mashar\nQuel'Lithien Lodge\nPlaguewood\nRuins of the Scarlet Enclave\nThe Marris Stead\n"..
"Crown Guard Tower\nDarrowshire\nCorin's Crossing\nTyr's Hand\nThe Infectis Scar\nEastwall Tower\nNorthdale\n"..
"Northpass Tower\nTerrordale\nStratholme",
},[[
step
Discover Darrowshire |achieve 771/6 |goto Eastern Plaguelands 35.10,84.20
step
Discover The Undercroft |achieve 771/3 |goto Eastern Plaguelands 24.00,78.80
step
Discover The Marris Stead |achieve 771/2 |goto Eastern Plaguelands 22.60,66.00
step
Discover Thondroril River |achieve 771/1 |goto Eastern Plaguelands 08.63,66.20
step
Discover Terrordale |achieve 771/20 |goto Eastern Plaguelands 12.50,26.30
step
Discover Statholme |achieve 771/22 |goto Eastern Plaguelands 26.80,9.80
step
Discover Plaguewood |achieve 771/21 |goto Eastern Plaguelands 33.60,24.40
step
Discover The Fungal Vale |achieve 771/5 |goto Eastern Plaguelands 36.10,44.80
step
Discover Crown Guard Tower |achieve 771/4 |goto Eastern Plaguelands 35.70,68.50
step
Discover Lake Mereldar |achieve 771/9 |goto Eastern Plaguelands 57.40,74.10
step
Discover Corin's Crossing |achieve 771/8 |goto Eastern Plaguelands 55.60,62.90
step
Discover The Infectis Scar |achieve 771/12 |goto Eastern Plaguelands 48.90,62.25
step
Discover Blackwood Lake |achieve 771/15 |goto Eastern Plaguelands 46.30,43.50
step
Discover Quel'Lithien Lodge |achieve 771/19 |goto Eastern Plaguelands 48.10,13.10
step
Discover Northpass Tower |achieve 771/18 |goto Eastern Plaguelands 50.50,20.50
step
Discover Eastwall Tower |achieve 771/14 |goto Eastern Plaguelands 62.40,41.70
step
Discover Pestilent Scar |achieve 771/7 |goto Eastern Plaguelands 68.70,56.50
step
Discover Tyr's Hand |achieve 771/10 |goto Eastern Plaguelands 75.60,75.20
step
Discover Ruins of the Scarlet Enclave |achieve 771/23 |goto Eastern Plaguelands 87.10,78.50
step
Discover Light's Hope Chapel |achieve 771/11 |goto Eastern Plaguelands 76.80,53.90
step
Discover The Noxious Glade |achieve 771/13 |goto Eastern Plaguelands 78.10,35.80
step
Discover Northdale |achieve 771/16 |goto Eastern Plaguelands 66.10,25.00
step
Discover Zul'Mashar |achieve 771/17 |goto Eastern Plaguelands 66.40,10.30
step
|achieve 771
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Elwynn Forest",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(776) end,
achieveid={776},
patch='30002',
description="Explore Elwynn Forest, revealing the following covered areas of the world map:\n\nNorthshire Valley\n"..
"Goldshire\nJerod's Landing\nBrackwell Pumpkin Patch\nRidgepoint Tower\nStone Cairn Lake\nWestbrook Garrison\n"..
"Fargodeep Mine\nTower of Azora\nEastvale Logging Camp\nCrystal Lake",
},[[
step
Discover Eastvale Logging Camp |achieve 776/8 |goto Elwynn Forest 83.50,66.90
step
Discover Ridgepoint Tower |achieve 776/9 |goto Elwynn Forest 84.80,79.40
step
Discover Brackwell Pumpkin Patch |achieve 776/7 |goto Elwynn Forest 69.40,79.40
step
Discover Tower of Azora |achieve 776/6 |goto Elwynn Forest 64.60,69.30
step
Discover Crystal Lake |achieve 776/10 |goto Elwynn Forest 52.90,66.20
step
Discover Jerod's Landing |achieve 776/5 |goto Elwynn Forest 48.50,85.80
step
Discover Fargodeep Mine |achieve 776/4 |goto Elwynn Forest 39.50,80.30
step
Discover Westbrook Garrison |achieve 776/2 |goto Elwynn Forest 24.50,73.30
step
Discover Goldshire |achieve 776/3 |goto Elwynn Forest 42.10,64.70
step
Discover Northshire Valley |achieve 776/1 |goto Elwynn Forest 50.40,42.50
step
Discover Stone Cairn Lake |achieve 776/11 |goto Elwynn Forest 74.00,51.50
step
|achieve 776
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eversong Woods",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(859) end,
achieveid={859},
patch='30002',
description="Explore Eversong Woods, revealing the following covered areas of the world map:\n\nSunstrider Isle\n"..
"West Sanctum\nNorth Sanctum\nFarstrider Retreat\nDuskwither Grounds\nThe Living Wood\nThe Scorched Grove"..
"\nAzurebreeze Coast\nGoldenbough Pass\nRunestone Falithas\nSaltheril's Haven\nThuron's Livery\nZeb'Watha\n"..
"Ruins of Silvermoon\nSunsail Anchorage\nEast Sanctum\nStillwhisper Pond\nFairbreeze Village\nTor'Watha\n"..
"Silvermoon City\nElrendar Falls\nLake Elrendar\nRunestone Shan'dor\nGolden Strand\nTranquil Shore",
},[[
step
Discover The Scorched Grove |achieve 859/13 |goto Eversong Woods 36.20,86.00
step
Discover Runestone Falithas |achieve 859/19 |goto Eversong Woods 44.10,85.80
step
Discover Rusestone Shan'dor |achieve 859/20 |goto Eversong Woods 55.80,84.20
step
Discover Zeb'Watha |achieve 859/25 |goto Eversong Woods 62.20,79.30
step
Discover Lake Elrendar |achieve 859/18 |goto Eversong Woods 65.90,78.60
step
Discover Tor'Watha |achieve 859/12 |goto Eversong Woods 72.00,79.30
step
Discover Elreandar Falls |achieve 859/16 |goto Eversong Woods 64.60,73.10
step
Discover Farstrider Rereat |achieve 859/7 |goto Eversong Woods 61.20,63.70
step
Discover Stillwhisper Pond |achieve 859/8 |goto Eversong Woods 55.70,56.40
step
Discover Thuron's Livery |achieve 859/23 |goto Eversong Woods 60.60,54.20
step
Discover Duskwither Grounds |achieve 859/9 |goto Eversong Woods 69.27,46.54
step
Discover Azurebreeze Coast |achieve 859/15 |goto Eversong Woods 71.60,45.30
step
Discover Silvermoon City |achieve 859/14 |goto Eversong Woods 52.40,39.40
step
Discover Sunstrider Isle |achieve 859/1 |goto Eversong Woods 31.30,16.00
step
Discover Ruins of Silvermoon |achieve 859/2 |goto Eversong Woods 42.90,39.30
step
Discover North Sanctum |achieve 859/5 |goto Eversong Woods 42.70,50.40
step
Discover West Sanctum |achieve 859/3 |goto Eversong Woods 35.30,57.60
step
Discover Tranquil Shore |achieve 859/24 |goto Eversong Woods 28.50,57.80
step
Discover Sunsail Anchorage |achieve 859/4 |goto Eversong Woods 29.40,69.30
step
Discover Golden Strand |achieve 859/22 |goto Eversong Woods 23.50,74.80
step
Discover Goldenbough Pass |achieve 859/17 |goto Eversong Woods 33.40,77.60
step
Discover Saltheril's Haven |achieve 859/21 |goto Eversong Woods 38.30,73.50
step
Discover Fairbreeze Village |achieve 859/10 |goto Eversong Woods 43.90,73.70
step
Discover East Sanctum |achieve 859/6 |goto Eversong Woods 52.30,73.10
step
Discover The Living Wood |achieve 859/11 |goto Eversong Woods 54.20,71.90
step
|achieve 859
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Ghostlands",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(858) end,
achieveid={858},
patch='30002',
description="Explore Ghostlands, revealing the following covered areas of the world map:\n\nTranquillien\n"..
"Goldenmist Village\nSanctum of the Moon\nDawnstar Spire\nHowling Ziggurat\nZeb'Nowa\nWindrunner Spire"..
"\nElrendar Crossing\nSuncrown Village\nWindrunner Village\nSanctum of the Sun\nFarstrider Enclave\n"..
"Deatholme\nAmani Pass\nBleeding Ziggurat\nThalassian Pass",
},[[
step
Discover Thalassian Pass |achieve 858/16 |goto Ghostlands 48.20,84.30
step
Discover Deatholme |achieve 858/10 |goto Ghostlands 33.10,79.90
step
Discover Windrunner Spire |achieve 858/13 |goto Ghostlands 12.40,57.00
step
Discover Windrunner Village |achieve 858/4 |goto Ghostlands 17.90,41.40
step
Discover Goldenmist Village |achieve 858/3 |goto Ghostlands 25.00,15.00
step
Discover Sanctum of the Moon |achieve 858/5 |goto Ghostlands 33.40,32.20
step
Discover Bleeding Ziggurat |achieve 858/14 |goto Ghostlands 34.30,47.60
step
Discover Howling Ziggurat |achieve 858/9 |goto Ghostlands 40.40,49.80
step
Discover Tranquillien |achieve 858/1 |goto Ghostlands 47.12,32.80
step
Discover Sanctum of the Sun |achieve 858/6 |goto Ghostlands 54.70,49.70
step
Discover Zeb'Nowa |achieve 858/11 |goto Ghostlands 66.60,58.90
step
Discover Amani Pass |achieve 858/12 |goto Ghostlands 77.30,64.40
step
Discover Farstrider Enclave |achieve 858/8 |goto Ghostlands 77.20,32.10
step
Discover Dawnstar Spire |achieve 858/7 |goto Ghostlands 78.60,18.70
step
Discover Suncrown Village |achieve 858/2 |goto Ghostlands 60.46,11.70
step
Discover Elrendar Crossing |achieve 858/15 |goto Ghostlands 48.39,11.51
step
|achieve 858
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Hillsbrad Foothills",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(772) end,
achieveid={772},
patch='30008',
description="Explore Hillsbrad Foothills, revealing the following covered areas of the world map:\n\nAzurelode Mine\n"..
"Corrahn's Dagger\nChillwind Point\nDandred's Fold\nDun Garok\nGallows' Corner\nGrowless Cave\nNethander Stead"..
"\nRuins of Alterac\nSlaughter Hollow\nSouthpoint Gate\nTarren Mill\nThe Sludge Fields\nBrazie Farmstead\n"..
"Crushridge Hold\nDalaran Crater\nDarrow Hill\nDurnholde Keep\nGavin's Naze\nMisty Shore\nPurgation Isle\n"..
"Ruins of Southshore\nSofera's Naze\nStrahnbrad\nThe Headland\nThe Uplands",
},[[
step
Discover Durnholde Keep |achieve 772/10 |goto Hillsbrad Foothills 68.30,60.00
step
Discover Chillwind Point |achieve 772/5 |goto Hillsbrad Foothills 68.10,32.90
step
Discover Sofera's Naze |achieve 772/20 |goto Hillsbrad Foothills 55.60,38.50
step
Discover Strahnbrad |achieve 772/22 |goto Hillsbrad Foothills 58.30,23.40
step
Discover Crushridge Hold |achieve 772/4 |goto Hillsbrad Foothills 50.16,24.37
step
Discover Slaughter Hollow |achieve 772/19 |goto Hillsbrad Foothills 49.43,18.88
step
Discover The Uplands |achieve 772/26 |goto Hillsbrad Foothills 52.40,12.60
step
Discover Dandred's Fold |achieve 772/7 |goto Hillsbrad Foothills 44.90,9.10
step
Discover Ruins of Alterac |achieve 772/17 |goto Hillsbrad Foothills 45.30,29.00
step
Discover Growless Cave |achieve 772/13 |goto Hillsbrad Foothills 43.20,38.50
step
Discover Gallows' Corner |achieve 772/11 |goto Hillsbrad Foothills 49.88,32.59
step
Discover Tarren Mill |achieve 772/23 |goto Hillsbrad Foothills 56.70,46.90
step
Discover Corrahn's Dagger |achieve 772/3 |goto Hillsbrad Foothills 49.60,46.70
step
Discover Nethander Stead |achieve 772/15 |goto Hillsbrad Foothills 57.51,74.96
step
Discover Dun Garok |achieve 772/9 |goto Hillsbrad Foothills 62.83,84.80
step
Discover Ruins of Southshore |achieve 772/18 |goto Hillsbrad Foothills 48.97,71.89
step
Discover Darrow Hill |achieve 772/8 |goto Hillsbrad Foothills 46.30,54.10
step
Discover The Headland |achieve 772/24 |goto Hillsbrad Foothills 44.20,48.60
step
Discover Gavin's Naze |achieve 772/12 |goto Hillsbrad Foothills 40.00,47.60
step
Discover Misty Shore |achieve 772/14 |goto Hillsbrad Foothills 35.06,26.14
step
Discover Brazie Farmstead |achieve 772/2 |goto Hillsbrad Foothills 33.80,46.50
step
Discover Dalaran Crater |achieve 772/6 |goto Hillsbrad Foothills 30.40,36.20
step
Discover Southpoint Gate |achieve 772/21 |goto Hillsbrad Foothills 29.50,63.60
step
Discover The Sludge Fields |achieve 772/25 |goto Hillsbrad Foothills 36.56,58.04
step
Discover Azurelode Mine |achieve 772/1 |goto Hillsbrad Foothills 34.00,73.80
step
Discover Purgation Isle |achieve 772/16 |goto Hillsbrad Foothills 27.00,85.60
step
|achieve 772
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore The Hinterlands",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(773) end,
achieveid={773},
patch='30002',
description="Explore The Hinterlands, revealing the following covered areas of the world map:\n\nAerie Peak\n"..
"Zun'watha\nShadra'Alor\nAgol'watha\nThe Altar of Zul\nSkulk Rock\nJintha'Alor\nPlaguemist Ravine\n"..
"Quel'Danil Lodge\nValorwind Lake\nThe Creeping Ruin\nSeradane\nShaol'watha\nThe Overlook Cliffs",
},[[
step
Discover Aerie Peak |achieve 773/1 |goto The Hinterlands 13.90,45.00
step
Discover Plaguemist Ravine |achieve 773/2 |goto The Hinterlands 23.10,33.50
step
Discover Zun'watha |achieve 773/3 |goto The Hinterlands 23.46,58.21
step
Discover Quel'Danil Lodge |achieve 773/4 |goto The Hinterlands 33.30,45.60
step
Discover Shadra'Alor |achieve 773/5 |goto The Hinterlands 34.60,72.00
step
Discover Valorwind Lake |achieve 773/6 |goto The Hinterlands 40.50,59.30
step
Discover The Altar of Zul |achieve 773/9 |goto The Hinterlands 48.40,66.90
step
Discover The Creeping Ruin |achieve 773/8 |goto The Hinterlands 49.00,52.10
step
Discover Agol'watha |achieve 773/7 |goto The Hinterlands 46.59,39.68
step
Discover Jintha'Alor |achieve 773/13 |goto The Hinterlands 63.10,74.70
step
Discover The Overlook Cliffs |achieve 773/14 |goto The Hinterlands 72.70,66.10
step
Discover Shaol'watha |achieve 773/12 |goto The Hinterlands 73.20,54.20
step
Discover Skulk Rock |achieve 773/11 |goto The Hinterlands 57.60,42.60
step
Discover Seradane |achieve 773/10 |goto The Hinterlands 62.70,24.10
step
|achieve 773
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Isle of Quel'Danas",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(868) end,
achieveid={868},
patch='30003',
description="Explore Isle of Quel'Danas, revealing the covered areas of the world map.",
},[[
step
Explore Isle of Quel'Danas |achieve 868 |goto Isle of Quel'Danas 47.40,30.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Loch Modan",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(779) end,
achieveid={779},
patch='30002',
description="Explore Loch Modan, revealing the following covered areas of the world map:\n\nThe Loch\n"..
"Mo'grosh Stronghold\nNorth Gate Pass\nIronband's Excavation Site\nThelsamar\nValley of Kings\n"..
"Stonewrought Dam\nSilver Stream Mine\nThe Farstrider Lodge\nGrizzlepaw Ridge\nStonesplinter Valley",
},[[
step
Discover Valley of Kings |achieve 779/11 |goto Loch Modan 20.30,78.50
step
Discover Stonesplinter Valley |achieve 779/10 |goto Loch Modan 32.50,78.30
step
Discover Grizzlepaw Ridge |achieve 779/8 |goto Loch Modan 38.00,60.70
step
Discover Thelsamar |achieve 779/9 |goto Loch Modan 35.20,47.60
step
Discover Ironband's Excavation Site |achieve 779/7 |goto Loch Modan 69.40,65.30
step
Discover The Farstrider Lodge |achieve 779/6 |goto Loch Modan 82.30,65.00
step
Discover Mo'grosh Stronghold |achieve 779/3 |goto Loch Modan 71.00,23.80
step
Discover The Loch |achieve 779/1 |goto Loch Modan 48.40,17.55
step
Discover Stonewrought Dam |achieve 779/2 |goto Loch Modan 48.00,11.40
step
Discover Silver Stream Mine |achieve 779/4 |goto Loch Modan 34.80,21.50
step
Discover North Gate Pass |achieve 779/5 |goto Loch Modan 20.20,17.10
step
|achieve 779
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Northern Stranglethorn",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(781) end,
achieveid={781},
patch='30003',
description="Explore Northern Stranglethorn, revealing the following covered areas of the world map:\n\nZuuldaia Ruins\n"..
"Grom'gol Base Camp\nBambala\nRebel Camp\nKal'ai Ruins\nMosh'Ogg Ogre Mound\nBal'lal Ruins\nBalia'mah Ruins\n"..
"Ruins of Zul'Kunda\nFort Livingston\nNesingwary's Expedition\nKurzen's Compound\nMizjah Ruins\nThe Vile Reef\n"..
"Lake Nazferiti\nZul'Gurub",
},[[
step
Discover Lake Nazferiti |achieve 781/12 |goto Northern Stranglethorn 51.48,34.05
step
Discover Fort Livingston |achieve 781/4 |goto Northern Stranglethorn 53.20,66.00
step
Discover Balia'mah Ruins |achieve 781/2 |goto Northern Stranglethorn 59.00,55.20
step
Discover Mosh'Ogg Ogre Mound |achieve 781/11 |goto Northern Stranglethorn 66.90,50.90
step
Discover Bambala |achieve 781/3 |goto Northern Stranglethorn 64.70,39.70
step
Discover Zul'Gurub |achieve 781/16 |goto Northern Stranglethorn 83.90,32.50
step
Discover Kurzen's Compound |achieve 781/8 |goto Northern Stranglethorn 60.20,19.90
step
Discover Rebel Camp |achieve 781/7 |goto Northern Stranglethorn 46.70,9.50
step
Discover Nesingwary's Expedition |achieve 781/6 |goto Northern Stranglethorn 44.10,19.80
step
Discover Kal'ai Ruins |achieve 781/9 |goto Northern Stranglethorn 42.20,38.40
step
Discover Mizjah Ruins |achieve 781/10 |goto Northern Stranglethorn 46.10,52.90
step
Discover Grom'gol Base Camp |achieve 781/1 |goto Northern Stranglethorn 37.80,48.40
step
Discover The Vile Reef |achieve 781/14 |goto Northern Stranglethorn 33.00,42.50
step
Discover Bal'lal Ruins |achieve 781/13 |goto Northern Stranglethorn 34.30,36.20
step
Discover Zuuldaia Ruins |achieve 781/5 |goto Northern Stranglethorn 19.20,25.60
step
Discover Ruins of Zul'Kunda |achieve 781/15 |goto Northern Stranglethorn 26.40,20.20
step
|achieve 781
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Redridge Mountains",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(780) end,
achieveid={780},
patch='30002',
description="Explore Redridge Mountains, revealing the following covered areas of the world map:\n\nLakeshire\n"..
"Three Corners\nRedridge Canyons\nStonewatch Falls\nRender's Camp\nGalardell Valley\nCamp Everstill\n"..
"Lake Everstill\nLakeridge Highway\nAlther's Mill\nRender's Valley\nStonewatch Keep\nShalewind Canyon",
},[[
step
Discover Lakeridge Highway |achieve 780/4 |goto Redridge Mountains 38.20,68.50
step
Discover Lake Everstill |achieve 780/2 |goto Redridge Mountains 41.90,52.60
step
Discover Camp Everstill |achieve 780/13 |goto Redridge Mountains 53.40,54.70
step
Discover Stonewatch Keep |achieve 780/10 |goto Redridge Mountains 60.90,52.50
step
Discover Render's Valley |achieve 780/8 |goto Redridge Mountains 64.70,71.30
step
Discover Shalewind Canyon |achieve 780/12 |goto Redridge Mountains 81.00,62.40
step
Discover Stonewatch Falls |achieve 780/7 |goto Redridge Mountains 71.25,54.57
step
Discover Galardell Valley |achieve 780/11 |goto Redridge Mountains 70.28,34.66
step
Discover Alther's Mill |achieve 780/6 |goto Redridge Mountains 47.20,39.20
step
Discover Render's Camp |achieve 780/9 |goto Redridge Mountains 35.10,12.80
step
Discover Redridge Canyons |achieve 780/5 |goto Redridge Mountains 30.20,26.10
step
Discover Lakeshire |achieve 780/1 |goto Redridge Mountains 25.50,43.40
step
Discover Three Corners |achieve 780/3 |goto Redridge Mountains 19.70,59.10
step
|achieve 780
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Searing Gorge",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(774) end,
achieveid={774},
patch='30002',
description="Explore Searing Gorge, revealing the following covered areas of the world map:\n\nFirewatch Ridge\n"..
"Blackchar Cave\nGrimesilt Dig Site\nThorium Point\nThe Cauldron\nThe Sea of Cinders\nDustfire Valley"..
"\nBlackrock Mountain",
},[[
step
Discover Blackrock Mountain |achieve 774/8 |goto Searing Gorge 39.90,82.90
step
Discover The Sea of Cinders |achieve 774/4 |goto Searing Gorge 48,70
step
Discover Blackchar Cave |achieve 774/3 |goto Searing Gorge 21.20,80.10
step
Discover Firewatch Ridge |achieve 774/1 |goto Searing Gorge 23.80,31.80
step
Discover Thorium Point |achieve 774/7 |goto Searing Gorge 37.70,29.90
step
Discover The Cauldron |achieve 774/2 |goto Searing Gorge 52.70,49.60
step
Discover Dustfire Valley |achieve 774/6 |goto Searing Gorge 71.80,26.80
step
Discover Grimesilt Dig Site |achieve 774/5 |goto Searing Gorge 62,62.30
step
|achieve 774
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Silverpine Forest",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(769) end,
achieveid={769},
patch='30002',
description="Explore Silverpine Forest, revealing the following covered areas of the world map:\n\nThe Battlefront\n"..
"The Forsaken Front\nNorth Tide's Beachhead\nValgan's Field\nDeep Elem Mine\nForsaken High Command\n"..
"Ambermill\nForsaken Rear Guard\nThe Decrepit Fields\nThe Skittering Dark\nFenris Isle\nThe Sepulcher\n"..
"Olsen's Farthing\nShadowfang Keep\nNorth Tide's Run",
},[[
step
Discover The Battlefront |achieve 769/1 |goto Silverpine Forest 46.10,79.50
step
Discover Shadowfang Keep |achieve 769/12 |goto Silverpine Forest 42.20,63.20
step
Discover The Forsaken Front |achieve 769/3 |goto Silverpine Forest 50.90,66.60
step
Discover Ambermill |achieve 769/11 |goto Silverpine Forest 61.20,62.40
step
Discover Olsen's Farthing |achieve 769/10 |goto Silverpine Forest 46.10,51.00
step
Discover The Sepulcher |achieve 769/8 |goto Silverpine Forest 45.00,40.00
step
Discover North Tide's Beachead |achieve 769/5 |goto Silverpine Forest 37.30,28.00
step
Discover The Skittering Dark |achieve 769/4 |goto Silverpine Forest 34.80,12.40
step
Discover Forsaken Rear Guard |achieve 769/15 |goto Silverpine Forest 44.90,18.80
step
Discover North Tide's Run |achieve 769/14 |goto Silverpine Forest 37.90,44.70
step
Discover Valgan's Field |achieve 769/7 |goto Silverpine Forest 53.20,25.60
step
Discover The Decrepit Fields |achieve 769/2 |goto Silverpine Forest 56.50,34.70
step
Discover Deep Elem Mine |achieve 769/9 |goto Silverpine Forest 59.30,45.40
step
Discover Fenris Isle |achieve 769/6 |goto Silverpine Forest 69.10,26.80
step
Discover Forsaken High Command |achieve 769/13 |goto Silverpine Forest 62.00,8.70
step
|achieve 769
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Swamp of Sorrows",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(782) end,
achieveid={782},
patch='30002',
description="Explore Swamp of Sorrows, revealing the following covered areas of the world map:\n\nMisty Valley\n"..
"Splinterspear Junction\nStonard\nStagalbog\nBogpaddle\nPurespring Cavern\nThe Harborage\nSorrowmurk\n"..
"The Shifting Mire\nPool of Tears\nMisty Reed Strand\nMarshtide Watch",
},[[
step
Discover Stagalbog |achieve 782/7 |goto Swamp of Sorrows 67.80,74.90
step
Discover Sorrowmurk |achieve 782/8 |goto Swamp of Sorrows 84.20,38.90
step
Discover Misty Reed Strand |achieve 782/10 |goto Swamp of Sorrows 77.30,13.70
step
Discover Bogpaddle |achieve 782/9 |goto Swamp of Sorrows 72.30,12.80
step
Discover Marshtide Watch |achieve 782/12 |goto Swamp of Sorrows 68.40,35.80
step
Discover Pool of Tears |achieve 782/6 |goto Swamp of Sorrows 62.60,50.00
step
Discover The Shifting Mire |achieve 782/4 |goto Swamp of Sorrows 48.80,42.10
step
Discover Stonard |achieve 782/5 |goto Swamp of Sorrows 47.10,54.20
step
Discover Purespring Cavern |achieve 782/11 |goto Swamp of Sorrows 18.60,68.10
step
Discover Splinterspear Junction |achieve 782/3 |goto Swamp of Sorrows 22.30,49.40
step
Discover Misty Valley |achieve 782/1 |goto Swamp of Sorrows 14.70,35.80
step
Discover The Harborage |achieve 782/2 |goto Swamp of Sorrows 28.80,32.10
step
|achieve 782
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Tirisfal Glades",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(768) end,
achieveid={768},
patch='30002',
description="Explore Tirisfal Glades, revealing the following covered areas of the world map:\n\nDeathknell\n"..
"Agamand Mills\nCold Hearth Manor\nGarren's Haunt\nBalnir Farmstead\nScarlet Watch Post\nThe Bulwark\n"..
"Ruins of Lordaeron\nSolliden Farmstead\nNightmare Vale\nBrill\nBrightwater Lake\nCrusader Outpost\n"..
"Venomweb Vale\nScarlet Monastery Entrance\nCalston Estate",
},[[
step
Discover Deathknell |achieve 768/1 |goto Tirisfal Glades 32.20,63.80
step
Discover Nightmare Vale |achieve 768/4 |goto Tirisfal Glades 45.10,65.40
step
Discover Cold Hearth Manor |achieve 768/5 |goto Tirisfal Glades 53.80,58.70
step
Discover Calston Estate |achieve 768/16 |goto Tirisfal Glades 46.20,51.40
step
Discover Solliden Farmstead |achieve 768/2 |goto Tirisfal Glades 38.40,48.90
step
Discover Agamand Mills |achieve 768/3 |goto Tirisfal Glades 45.60,32.90
step
Discover Garren's Haunt |achieve 768/7 |goto Tirisfal Glades 56.90,35.60
step
Discover Brill |achieve 768/6 |goto Tirisfal Glades 59.70,50.90
step
Discover Brightwater Lake |achieve 768/8 |goto Tirisfal Glades 68.30,45.00
step
Discover Scarlet Watch Post |achieve 768/11 |goto Tirisfal Glades 78.40,26.90
step
Discover Scarlet Monastery Entrance |achieve 768/14 |goto Tirisfal Glades 85.08,31.34
step
Discover Venomweb Vale |achieve 768/12 |goto Tirisfal Glades 87.00,47.20
step
Discover Crusader Outpost |achieve 768/10 |goto Tirisfal Glades 79.10,54.70
step
Discover Balnir Farmstead |achieve 768/9 |goto Tirisfal Glades 73.70,60.00
step
Discover Ruins of Lordaeron |achieve 768/13 |goto Tirisfal Glades 61.87,67.55
step
Discover The Bulwark |achieve 768/15 |goto Tirisfal Glades 84.90,69.40
step
|achieve 768
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Western Plaguelands",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(770) end,
achieveid={770},
patch='30002',
description="Explore Western Plaguelands, revealing the following covered areas of the world map:\n\nDarrowmere Lake\n"..
"Sorrow Hill\nThe Bulwark\nDalson's Farm\nNorthridge Lumber Camp\nRedpine Dell\nThe Weeping Cave\nCaer Darrow"..
"\nAndorhal\nFelstone Field\nThe Writhing Haunt\nHearthglen\nGahrron's Withering\nThondroril River",
},[[
step
Discover The Bulwark |achieve 770/5 |goto Western Plaguelands 27.00,57.70
step
Discover Felstone Field |achieve 770/6 |goto Western Plaguelands 36.50,54.60
step
Discover Dalson's Farm |achieve 770/7 |goto Western Plaguelands 45.10,51.20
step
Discover Redpine Dell |achieve 770/11 |goto Western Plaguelands 46.00,45.50
step
Discover Northridge Lumber Camp |achieve 770/9 |goto Western Plaguelands 47.20,33.40
step
Discover Hearthglen |achieve 770/10 |goto Western Plaguelands 44.90,17.00
step
Discover The Weeping Cave |achieve 770/13 |goto Western Plaguelands 64.40,40.10
step
Discover Thondroril River |achieve 770/14 |goto Western Plaguelands 69.60,50.70
step
Discover Gahrron's Withering |achieve 770/12 |goto Western Plaguelands 63.90,58.20
step
Discover The Writhing Haunt |achieve 770/8 |goto Western Plaguelands 54.90,66.20
step
Discover Andorhal |achieve 770/4 |goto Western Plaguelands 47.63,67.18
step
Discover Sorrow Hill |achieve 770/3 |goto Western Plaguelands 54.60,85.50
step
Discover Darrowmere Lake |achieve 770/1 |goto Western Plaguelands 60.03,74.66
step
Discover Caer Darrow |achieve 770/2 |goto Western Plaguelands 68.30,81.10
step
|achieve 770
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Westfall",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(802) end,
achieveid={802},
patch='30002',
description="Explore Westfall, revealing the following covered areas of the world map:\n\nSentinel Hill\n"..
"Furlbrow's Pumpkin Farm\nJangolode Mine\nThe Dead Acre\nAlexston Farmstead\nThe Dust Plains\n"..
"The Dagger Hills\nSaldean's Farm\nThe Jansen Stead\nThe Molsen Farm\nDemont's Place\nMoonbrook\n"..
"The Raging Chasm",
},[[
step
Discover The Dagger Hills |achieve 802/11 |goto Westfall 44.90,82.00
step
Discover Demont's Place |achieve 802/10 |goto Westfall 33.90,73.60
step
Discover Moonbrook |achieve 802/8 |goto Westfall 42.40,65.50
step
Discover Alexston Farmstead |achieve 802/9 |goto Westfall 38.20,52.30
step
Discover The Raging Chasm |achieve 802/12 |goto Westfall 39.20,43.20
step
Discover the Molsen Farm |achieve 802/6 |goto Westfall 45.30,34.90
step
Discover Jangolode Mine |achieve 802/5 |goto Westfall 44.90,23.90
step
Discover Furlbrow's Pumpkin Farm |achieve 802/3 |goto Westfall 51.00,21.40
step
Discover The Jansen Stead |achieve 802/4 |goto Westfall 57.70,15.80
step
Discover Saldean's Farm |achieve 802/2 |goto Westfall 54.40,32.30
step
Discover Sentinel Hill |achieve 802/1 |goto Westfall 55.90,49.30
step
Discover The Dead Acre |achieve 802/7 |goto Westfall 61.50,59.20
step
Discover The Dust Plains |achieve 802/13 |goto Westfall 64,72
step
|achieve 802
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Wetlands",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(841) end,
achieveid={841},
patch='30001',
description="Explore Wetlands, revealing the following covered areas of the world map:\n\nMenethil Harbor\n"..
"Bluegill Marsh\nSundown Marsh\nIronbeard's Tomb\nAngerfang Encampment\nGreenwarden's Grove\n"..
"Direforge Hill\nSlabchisel's Survey\nBlack Channel Marsh\nWhelgar's Excavation Site\nSaltspray Glen\n"..
"Dun Modr\nThelgen Rock\nMosshide Fen\nDun Algaz\nRaptor Ridge",
},[[
step
Discover Raptor Ridge |achieve 841/16 |goto Wetlands 67.90,34.90
step
Discover Direforge Hill |achieve 841/13 |goto Wetlands 60.87,25.46
step
Discover Greenwarden's Grove |achieve 841/11 |goto Wetlands 57.90,40.60
step
Discover Mosshide Fen |achieve 841/12 |goto Wetlands 61.90,56.60
step
Discover Slabchisel's Survey |achieve 841/15 |goto Wetlands 58.40,71.00
step
Discover Dun Algaz |achieve 841/14 |goto Wetlands 50.00,76.40
step
Discover Thelgen Rock |achieve 841/10 |goto Wetlands 52.20,61.40
step
Discover Angerfang Encampment |achieve 841/9 |goto Wetlands 48.50,48.00
step
Discover Whelgar's Excavation Site |achieve 841/4 |goto Wetlands 35.80,48.90
step
Discover Menethil Harbor |achieve 841/1 |goto Wetlands 10.20,58.20
step
Discover Black Channel Marsh |achieve 841/2 |goto Wetlands 19.30,46.90
step
Discover Bluegill Marsh |achieve 841/3 |goto Wetlands 18.90,36.00
step
Discover Sundown Marsh |achieve 841/5 |goto Wetlands 24.50,24.30
step
Discover Saltspray Glen |achieve 841/6 |goto Wetlands 32.50,17.60
step
Discover Ironbeard's Tomb |achieve 841/7 |goto Wetlands 43.60,25.90
step
Discover Dun Modr |achieve 841/8 |goto Wetlands 46.90,16.50
step
|achieve 841
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Ashenvale",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(845) end,
achieveid={845},
patch='30003',
description="Explore Ashenvale, revealing the following covered areas of the world map:\n\nLake Falathim\n"..
"The Zoram Strand\nSilverwind Refuge\nThistlefur Village\nAstranaar\nThe Howling Vale\nSatyrnaar\n"..
"Fallen Sky Lake\nWarsong Lumber Camp\nOrendil's Retreat\nThunder Peak\nThe Shrine of Aessina\n"..
"Maestra's Post\nThe Ruins of Stardust\nRaynewood Retreat\nSplintertree Post\nBough Shadow\nFelfire Hill",
},[[
step
Discover Silverwind Refuge |achieve 845/3 |goto Ashenvale 50.15,67.08
step
Discover Fallen Sky Lake |achieve 845/13 |goto Ashenvale 66,82
step
Discover The Ruins of Stardust |achieve 845/10 |goto Ashenvale 32.60,65.60
step
Discover Astranaar |achieve 845/9 |goto Ashenvale 35.90,50.20
step
Discover The Shrine of Aessina |achieve 845/8 |goto Ashenvale 21.40,55.30
step
Discover Lake Falathim |achieve 845/5 |goto Ashenvale 20.20,41.10
step
Discover Maestra's Post |achieve 845/6 |goto Ashenvale 27.50,37.70
step
Discover The Zoram Strand |achieve 845/1 |goto Ashenvale 14,23
step
Discover Orendil's Retreat |achieve 845/2 |goto Ashenvale 26.00,19.70
step
Discover Thistlefur Village |achieve 845/7 |goto Ashenvale 37.00,32.90
step
Discover Thunder Peak |achieve 845/4 |goto Ashenvale 48.90,46.40
step
Discover The Howling Vale |achieve 845/11 |goto Ashenvale 53.20,32.60
step
Discover Raynewood Retreat |achieve 845/12 |goto Ashenvale 59.70,50.00
step
Discover Splintertree Post |achieve 845/14 |goto Ashenvale 68.20,47.90
step
Discover Satyrnaar |achieve 845/15 |goto Ashenvale 80.40,49.70
step
Discover Felfire Hill |achieve 845/18 |goto Ashenvale 83.10,65.30
step
Discover Warsong Lumber Camp |achieve 845/17 |goto Ashenvale 87.40,58.60
step
Discover Bough Shadow |achieve 845/16 |goto Ashenvale 93.40,39.20
step
|achieve 845
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Azshara",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(852) end,
achieveid={852},
patch='30003',
description="Explore Azshara, revealing the following covered areas of the world map:\n\nBear's Head\n"..
"Gallywix Pleasure Palace\nBilgewater Harbor\nTower of Eldara\nDarnassian Base Camp\nOrgrimmar "..
"Rear Gate\nSouthridge Beach\nLake Mennar\nStorm Cliffs\nThe Shattered Strand\nBitter Reaches\n"..
"Ruins of Arkkoran\nThe Secret Lab\nBlackmaw Hold\nRuins of Eldarath\nRavencrest Monument\n"..
"The Ruined Reaches",
},[[
step
Discover Darnassian Base Camp |achieve 852/7 |goto Azshara 52.25,26.95
step
Discover Bitter Reaches |achieve 852/4 |goto Azshara 73.69,20.98
step
Discover Tower of Eldara |achieve 852/5 |goto Azshara 80.90,32.34
step
Discover Ruins of Arkkoran |achieve 852/6 |goto Azshara 69.89,34.83
step
Discover Bilgewater Harbor |achieve 852/3 |goto Azshara 58.29,51.00
step
Discover Southridge Beach |achieve 852/13 |goto Azshara 68.41,75.62
step
Discover Ravencrest Monument |achieve 852/14 |goto Azshara 64.65,79.31
step
Discover Storm Cliffs |achieve 852/17 |goto Azshara 56.99,76.50
step
Discover The Secret Lab |achieve 852/8 |goto Azshara 46.54,76.25
step
Discover The Ruined Reaches |achieve 852/16 |goto Azshara 39.83,84.67
step
Discover Lake Mennar |achieve 852/15 |goto Azshara 35.72,73.99
step
Discover Orgrimmar Rear Gate |achieve 852/11 |goto Azshara 26.75,77.96
step
Discover Gallywix Pleasure Palace |achieve 852/1 |goto Azshara 21.04,57.10
step
Discover The Shattered Strand |achieve 852/2 |goto Azshara 39.21,55.46
step
Discover Ruins of Eldarath |achieve 852/12 |goto Azshara 31.95,50.02
step
Discover Bear's Head |achieve 852/9 |goto Azshara 25.47,38.00
step
Discover Blackmaw Hold |achieve 852/10 |goto Azshara 33.06,32.76
step
|achieve 852
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Azuremyst Isle",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(860) end,
achieveid={860},
patch='30003',
description="Explore Azuremyst Isle, revealing the following covered areas of the world map:\n\nAmmen Vale\n"..
"Azure Watch\nEmberglade\nGeezle's Camp\nOdesyus' Landing\nPod Wreckage\nSilvermyst Isle\nThe Exodar\n"..
"Wrathscale Point\nAmmen Ford\nBristlelimb Village\nFairbridge Strand\nMoongraze Woods\nPod Cluster\n"..
"Silting Shore\nStillpine Hold\nValaar's Berth",
},[[
step
Discover Valaar's Berth |achieve 860/16 |goto Azuremyst Isle 23.70,54.00
step
Discover Bristlelimb Village |achieve 860/4 |goto Azuremyst Isle 26.50,65.10
step
Discover Silvermyst Isle |achieve 860/13 |goto Azuremyst Isle 12.70,78.60
step
Discover Wrathscale Point |achieve 860/17 |goto Azuremyst Isle 32.00,79.30
step
Discover Pod Cluster |achieve 860/10 |goto Azuremyst Isle 37.00,58.40
step
Discover Azure Watch |achieve 860/3 |goto Azuremyst Isle 49.30,50.70
step
Discover Odesyus' Landing |achieve 860/9 |goto Azuremyst Isle 46.60,72.40
step
Discover Pod Wreckage |achieve 860/11 |goto Azuremyst Isle 52.70,61.30
step
Discover Geezle's Camp |achieve 860/7 |goto Azuremyst Isle 58.30,67.00
step
Discover Ammen Ford |achieve 860/2 |goto Azuremyst Isle 61.30,53.60
step
Discover Ammen Vale |achieve 860/1 |goto Azuremyst Isle 77.60,43.70
step
Discover Moongraze Woods |achieve 860/8 |goto Azuremyst Isle 52.70,41.80
step
Discover The Exodar |achieve 860/15 |goto Azuremyst Isle 29.20,35.10
step
Discover Silting Shore |achieve 860/12 |goto Azuremyst Isle 35.30,12.40
step
Discover Stillpine Hold |achieve 860/14 |goto Azuremyst Isle 46.00,20.00
step
Discover Emberglade |achieve 860/5 |goto Azuremyst Isle 58.80,17.60
step
Discover Fairbridge Strand |achieve 860/6 |goto Azuremyst Isle 47.70,6.60
step
|achieve 860
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Bloodmyst Isle",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(861) end,
achieveid={861},
patch='30002',
description="Explore Bloodmyst Isle, revealing the following covered areas of the world map:\n\nAmberweb Pass\n"..
"Blacksilt Shore\nBloodcurse Isle\nBristlelimb Enclave\nMiddenvale\nNazzivian\nRuins of Loreth'Aran\n"..
"Tel'athion's Camp\nThe Bloodwash\nThe Cryo-Core\nThe Hidden Reef\nThe Vector Coil\nVeridian Point\n"..
"Wrathscale Lair\nAxxarien\nBladewood\nBlood Watch\nKessel's Crossing\nMystwood\nRagefeather Ridge\n"..
"Talon Stand\nThe Bloodcursed Reef\nThe Crimson Reach\nThe Foul Pool\nThe Lost Fold\nThe Warp Piston\n"..
"Vindicator's Rest\nWyrmscar Island",
},[[
step
Discover Kessel's Crossing |achieve 861/8 |goto Bloodmyst Isle 61.90,90.00
step
Discover The Lost Fold |achieve 861/22 |goto Bloodmyst Isle 57.40,81.00
step
Discover Bristlelimb Enclave |achieve 861/7 |goto Bloodmyst Isle 67.00,78.20
step
Discover Wrathscale Lair |achieve 861/27 |goto Bloodmyst Isle 69.00,66.60
step
Discover Bloodcurse Isle |achieve 861/5 |goto Bloodmyst Isle 85.40,52.80
step
Discover Wyrmscar Island |achieve 861/28 |goto Bloodmyst Isle 72.00,29.60
step
Discover Talon Stand |achieve 861/14 |goto Bloodmyst Isle 73.40,20.90
step
Discover The Bloodcursed Reef |achieve 861/16 |goto Bloodmyst Isle 81.00,20.10
step
Discover Veridian Point |achieve 861/25 |goto Bloodmyst Isle 74.40,7.50
step
Discover The Crimson Reach |achieve 861/18 |goto Bloodmyst Isle 62.60,25.40
step
Discover The Warp Piston |achieve 861/24 |goto Bloodmyst Isle 54.20,17.10
step
Discover Ragefeather Ridge |achieve 861/12 |goto Bloodmyst Isle 56.10,34.90
step
Discover Ruins of Loreth'Aran |achieve 861/13 |goto Bloodmyst Isle 61.60,45.20
step
Discover Blood Watch |achieve 861/6 |goto Bloodmyst Isle 54.60,55.40
step
Discover Middenvale |achieve 861/9 |goto Bloodmyst Isle 51.70,76.60
step
Discover Mystwood |achieve 861/10 |goto Bloodmyst Isle 43.90,84.70
step
Discover Blacksilt Shore |achieve 861/3 |goto Bloodmyst Isle 33.20,90.30
step
Discover Nazzivian |achieve 861/11 |goto Bloodmyst Isle 37.90,75.70
step
Discover The Cryo-Core |achieve 861/19 |goto Bloodmyst Isle 38.50,59.50
step
Discover Bladewood |achieve 861/4 |goto Bloodmyst Isle 45.90,45.10
step
Discover Axxarien |achieve 861/2 |goto Bloodmyst Isle 40.80,33.00
step
Discover The Bloodwash |achieve 861/17 |goto Bloodmyst Isle 38.70,21.90
step
Discover The Hidden Reef |achieve 861/21 |goto Bloodmyst Isle 32.70,19.80
step
Discover The Foul Pool |achieve 861/20 |goto Bloodmyst Isle 29.20,36.80
step
Discover Vindicator's Rest |achieve 861/26 |goto Bloodmyst Isle 30.20,46.20
step
Discover Tel'athion's Camp |achieve 861/15 |goto Bloodmyst Isle 24.40,41.20
step
Discover Amberweb Pass |achieve 861/1 |goto Bloodmyst Isle 18.80,30.90
step
Discover The Vector Coil |achieve 861/23 |goto Bloodmyst Isle 18.00,53.40
step
|achieve 861
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Darkshore",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(844) end,
achieveid={844},
patch='30003',
description="Explore Darkshore, revealing the following covered areas of the world map:\n\nLor'danel\n"..
"Ruins of Auberdine\nShatterspear War Camp\nWithering Thicket\nThe Eye of the Vortex\nNazj'vel\n"..
"The Master's Glaive\nShatterspear Vale\nWildbend River\nRuins of Mathystra\nAmeth'Aran",
},[[
step
Discover The Master's Glaive |achieve 844/11 |goto Darkshore 40.30,86.20
step
Discover Nazj'vel |achieve 844/10 |goto Darkshore 32.00,84.00
step
Discover Wildbend River |achieve 844/4 |goto Darkshore 42.50,69.50
step
Discover Ameth'Aran |achieve 844/8 |goto Darkshore 43.70,60.50
step
Discover Withering Thicket |achieve 844/5 |goto Darkshore 43.96,39.82
step
Discover The Eye of the Vortex |achieve 844/7 |goto Darkshore 42.90,54.90
step
Discover Ruins of Auberdine |achieve 844/1 |goto Darkshore 37.90,44.10
step
Discover Lor'danel |achieve 844/9 |goto Darkshore 51.20,19.20
step
Discover Ruins of Mathystra |achieve 844/6 |goto Darkshore 63.90,21.90
step
Discover Shatterspear Vale |achieve 844/2 |goto Darkshore 72.50,17.30
step
Discover Shatterspear War Camp |achieve 844/3 |goto Darkshore 65.90,7.00
step
|achieve 844
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Desolace",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(848) end,
achieveid={848},
patch='30003',
description="Explore Desolace, revealing the following covered areas of the world map:\n\nTethris Aran\n"..
"Nijel's Point\nThunder Axe Fortress\nMagram Territory\nValley of Spears\nShadowprey Village\n"..
"Mannoroc Coven\nShadowbreak Ravine\nThargad's Camp\nSargeron\nCenarion Wildlands\nRanazjar Isle\n"..
"Kodo Graveyard\nGelkis Village\nShok'Thokar\nSlitherblade Shore",
},[[
step
Discover Gelkis Village |achieve 848/12 |goto Desolace 36.10,88.60
step
Discover Mannoroc Coven |achieve 848/13 |goto Desolace 51.30,78.50
step
Discover Thargad's Camp |achieve 848/2 |goto Desolace 36.50,69.90
step
Discover Shadowprey Village |achieve 848/11 |goto Desolace 24.20,70.90
step
Discover Valley of Spears |achieve 848/9 |goto Desolace 35.34,57.20
step
Discover Slitherblade Shore |achieve 848/16 |goto Desolace 29.90,29.40
step
Discover Ranazjar Isle |achieve 848/8 |goto Desolace 28.70,9.01
step
Discover Tethris Aran |achieve 848/1 |goto Desolace 51.50,10.00
step
Discover Thunder Axe Fortress |achieve 848/5 |goto Desolace 54.50,25.20
step
Discover Nijel's Point |achieve 848/3 |goto Desolace 66.70,8.70
step
Discover Sargeron |achieve 848/4 |goto Desolace 78.20,21.60
step
Discover Magram Territory |achieve 848/7 |goto Desolace 74.70,45.60
step
Discover Cenarion Wildlands |achieve 848/6 |goto Desolace 56.10,47.30
step
Discover Kodo Graveyard |achieve 848/10 |goto Desolace 50.70,59.00
step
Discover Shok'Thokar |achieve 848/14 |goto Desolace 70.60,74.80
step
Discover Shadowbreak Ravine |achieve 848/15 |goto Desolace 80.30,79.30
step
|achieve 848
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Dustwallow Marsh",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(850) end,
achieveid={850},
patch='30003',
description="Explore Dustwallow Marsh, revealing the following covered areas of the world map:\n\nTheramore Isle\n"..
"Direhorn Post\nShady Rest Inn\nBrackenwall Village\nAlcaz Island\nBlackhoof Village\nDreadmurk Shore\n"..
"Mudsprocket\nWyrmbog",
},[[
step
Discover Shady Rest Inn |achieve 850/5 |goto Dustwallow Marsh 29.70,49.00
step
Discover Brackenwall Village |achieve 850/7 |goto Dustwallow Marsh 36.30,30.40
step
Discover Blackhoof Village |achieve 850/2 |goto Dustwallow Marsh 41.40,12.40
step
Discover Alcaz Island |achieve 850/9 |goto Dustwallow Marsh 76.00,17.50
step
Discover Dreadmurk Shore |achieve 850/6 |goto Dustwallow Marsh 61.50,30.20
step
Discover Theramore Isle |achieve 850/1 |goto Dustwallow Marsh 67.10,49.80
step
Discover Direhorn Post |achieve 850/3 |goto Dustwallow Marsh 46.60,46.10
step
Discover Mudsprocket |achieve 850/4 |goto Dustwallow Marsh 41.40,75.10
step
Discover Wyrmbog |achieve 850/8 |goto Dustwallow Marsh 43.40,75.50
step
|achieve 850
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Durotar",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(728) end,
achieveid={728},
patch='30003',
description="Explore Durotar, revealing the following covered areas of the world map:\n\nValley of Trials\n"..
"Southfury Watershed\nEcho Isles\nRazor Hill\nThunder Ridge\nSkull Rock\nNorthwatch Foothold\n"..
"Sen'jin Village\nTiragarde Keep\nRazormane Grounds\nDrygulch Ravine\nOrgrimmar",
},[[
step
Discover Orgrimmar |achieve 728/12 |goto Orgrimmar 45.40,8.50
step
Discover Skull Rock |achieve 728/11 |goto Durotar 54.00,9.00
step
Discover Drygulch Ravine |achieve 728/10 |goto Durotar 52.40,24.20
step
Discover Razor Hill |achieve 728/7 |goto Durotar 53.50,43.40
step
Discover Tiragarde Keep |achieve 728/6 |goto Durotar 58.10,60.20
step
Discover Echo Isles |achieve 728/5 |goto Durotar 66.60,82.90
step
Discover Sen'jin Village |achieve 728/4 |goto Durotar 56.10,75.80
step
Discover Northwatch Foothold |achieve 728/2 |goto Durotar 48.50,79.10
step
Discover Valley of Trials |achieve 728/1 |goto Durotar 44.50,62.20
step
Discover Razormane Grounds |achieve 728/8 |goto Durotar 44.60,50.60
step
Discover Southfury Watershed |achieve 728/3 |goto Durotar 40.50,40.00
step
Discover Thunder Ridge |achieve 728/9 |goto Durotar 40.30,24.70
step
|achieve 728
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Felwood",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(853) end,
achieveid={853},
patch='30003',
description="Explore Felwood, revealing the following covered areas of the world map:\n\nFelpaw Village\n"..
"Irontree Woods\nShatter Scar Vale\nJaedenar\nJadefire Glen\nDeadwood Village\nTalonbranch Glade\n"..
"Jadefire Run\nBloodvenom Falls\nRuins of Constellas\nEmerald Sanctuary\nMorlos'Aran",
},[[
step
Discover Felpaw Village |achieve 853/1 |goto Felwood 61.20,11.50
step
Discover Talonbranch Glade |achieve 853/2 |goto Felwood 62.60,26.70
step
Discover Irontree Woods |achieve 853/3 |goto Felwood 50.30,26.00
step
Discover Jadefire Run |achieve 853/4 |goto Felwood 43.60,18.60
step
Discover Shatter Scar Vale |achieve 853/5 |goto Felwood 43.10,41.90
step
Discover Bloodvenom Falls |achieve 853/6 |goto Felwood 41,47
step
Discover Emerald Sanctuary |achieve 853/10 |goto Felwood 52.20,78.20
step
Discover Morlos'Aran |achieve 853/12 |goto Felwood 56.60,86.80
step
Discover Deadwood Village |achieve 853/11 |goto Felwood 48.00,89.20
step
Discover Jadefire Glen |achieve 853/9 |goto Felwood 41.80,85.40
step
Discover Ruins of Constellas |achieve 853/8 |goto Felwood 38.00,72.30
step
Discover Jaedenar |achieve 853/7 |goto Felwood 37.00,59.10
step
|achieve 853
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Feralas",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(849) end,
achieveid={849},
patch='30003',
description="Explore Feralas, revealing the following covered areas of the world map:\n\nLower Wilds\n"..
"The Twin Colossals\nDire Maul\nRuins of Isildien\nCamp Mojache\nGordunni Outpost\nFeral Scar Vale"..
"\nFeathermoon Stronghold\nRuins of Feathermoon\nThe Forgotten Coast\nThe Writhing Deep\nGrimtotem "..
"Compound\nDarkmist Ruins",
},[[
step
Discover The Writhing Deep |achieve 849/8 |goto Feralas 75.90,62.40
step
Discover Lower Wilds |achieve 849/1 |goto Feralas 83.00,40.90
step
Discover Camp Mojache |achieve 849/9 |goto Feralas 76.50,44.40
step
Discover Gordunni Outpost |achieve 849/11 |goto Feralas 75.60,29.80
step
Discover Grimtotem Compound |achieve 849/10 |goto Feralas 68.70,40.30
step
Discover Dire Maul |achieve 849/5 |goto Feralas 60.40,35.60
step
Discover Darkmist Ruins |achieve 849/12 |goto Feralas 67.70,58.50
step
Discover Ruins of Isildien |achieve 849/7 |goto Feralas 58.60,73.00
step
Discover Feral Scar Vale |achieve 849/6 |goto Feralas 55.40,56.20
step
Discover The Forgotten Coast |achieve 849/4 |goto Feralas 49.70,49.20
step
Discover Feathermoon Stronghold |achieve 849/13 |goto Feralas 45.80,49.60
step
Discover Ruins of Feathermoon |achieve 849/2 |goto Feralas 28.50,49.10
step
Discover The Twin Colossals |achieve 849/3 |goto Feralas 46.30,17.90
step
|achieve 849
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Moonglade",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(855) end,
achieveid={855},
patch='30001',
description="Explore Moonglade, revealing the following covered areas of the world map:\n\nNighthaven\n"..
"Lake Elune'ara\nShrine of Remulos\nStormrage Barrow Dens",
},[[
step
Discover Stormrage Barrow Dens |achieve 855/4 |goto Moonglade 67.80,53.80
step
Discover Lake Elune'ara |achieve 855/1 |goto Moonglade 52.50,55.40
step
Discover Nighthaven |achieve 855/2 |goto Moonglade 48.20,37.90
step
Discover Shrine of Remulos |achieve 855/3 |goto Moonglade 36.30,38.80
step
|achieve 855
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Mulgore",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(736) end,
achieveid={736},
patch='30003',
description="Explore Mulgore, revealing the following covered areas of the world map:\n\nRed Cloud Mesa\n"..
"Bloodhoof Village\nThe Rolling Plains\nRavaged Caravan\nThunderhorn Water Well\nRed Rocks\n"..
"Wildmane Water Well\nPalemane Rock\nWinterhoof Water Well\nThe Venture Co. Mine\nWindfury Ridge\n"..
"The Golden Plains\nBael'dun Digsite",
},[[
step
Discover Bael'dun Digsite |achieve 736/10 |goto Mulgore 32.30,50.60
step
Discover Palemane Rock |achieve 736/2 |goto Mulgore 35.50,61.30
step
Discover Red Cloud Mesa |achieve 736/1 |goto Mulgore 53.80,85.80
step
Discover Winterhoof Water Well |achieve 736/4 |goto Mulgore 53.70,66.70
step
Discover Bloodhoof Village |achieve 736/3 |goto Mulgore 47.80,58.40
step
Discover The Rolling Plains |achieve 736/5 |goto Mulgore 61.10,60.50
step
Discover The Venture Co. Mine |achieve 736/6 |goto Mulgore 62.70,42.60
step
Discover Ravaged Caravan |achieve 736/7 |goto Mulgore 54.20,47.90
step
Discover Thunderhorn Water Well |achieve 736/9 |goto Mulgore 44.90,43.50
step
Discover Red Rocks |achieve 736/11 |goto Mulgore 59.82,19.90
step
Discover The Golden Plains |achieve 736/8 |goto Mulgore 54.20,20.90
step
Discover Windfury Ridge |achieve 736/12 |goto Mulgore 51.14,09.25
step
Discover Wildmane Water Well |achieve 736/13 |goto Mulgore 43.10,14.20
step
|achieve 736
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Northern Barrens",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(750) end,
achieveid={750},
patch='30008',
description="Explore Northern Barrens, revealing the following covered areas of the world map:\n\nRatchet\n"..
"Boulder Lode Mine\nThe Mor'shan Rampart\nDreadmist Peak\nThe Forgotten Pools\nFar Watch Post\n"..
"The Crossroads\nLushwater Oasis\nThe Sludge Fen\nThe Dry Hills\nGrol'dom Farm\nThorn Hill\n"..
"The Stagnant Oasis\nThe Merchant Coast",
},[[
step
Discover Boulder Lode Mine |achieve 750/1 |goto The Barrens 67.20,12.10
step
Discover The Sludge Fen |achieve 750/4 |goto The Barrens 55.70,18.50
step
Discover The Mor'shan Rampart |achieve 750/3 |goto The Barrens 39.60,14.10
step
Discover The Dry Hills |achieve 750/6 |goto The Barrens 25.50,31.70
step
Discover The Forgotten Pools |achieve 750/7 |goto The Barrens 36.80,45.90
step
Discover Dreadmist Peak |achieve 750/5 |goto The Barrens 43.10,35.40
step
Discover Grol'dom Farm |achieve 750/8 |goto The Barrens 54.90,41.10
step
Discover Far Watch Post |achieve 750/9 |goto The Barrens 67.00,41.30
step
Discover Thorn Hill |achieve 750/10 |goto The Barrens 58.80,50.00
step
Discover The Crossroads |achieve 750/11 |goto The Barrens 50.20,57.30
step
Discover Lushwater Oasis |achieve 750/2 |goto The Barrens 40.30,73.90
step
Discover The Stagnant Oasis |achieve 750/12 |goto The Barrens 55.70,78.60
step
Discover Ratchet |achieve 750/13 |goto The Barrens 67.90,72.40
step
Discover The Merchant Coast |achieve 750/14 |goto The Barrens 70.30,84.10
step
|achieve 750
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Silithus",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(856) end,
achieveid={856},
patch='30008',
description="Explore Silithus, revealing the following covered areas of the world map:\n\nHive'Regal\n"..
"The Crystal Vale\nCenarion Hold\nSouthwind Village\nHive'Ashi\nHive'Zora\nThe Scarab Wall\n"..
"Valor's Rest",
},[[
step
Discover Hive'Regal |achieve 856/5 |goto Silithus 60.00,71.70
step
Discover The Scarab Wall |achieve 856/6 |goto Silithus 32.00,78.90
step
Discover Hive'Zora |achieve 856/4 |goto Silithus 31.40,53.80
step
Discover The Crystal Vale |achieve 856/1 |goto Silithus 30.90,16.00
step
Discover Hive'Ashi |achieve 856/7 |goto Silithus 49.40,22.40
step
Discover Cenarion Hold |achieve 856/3 |goto Silithus 54.40,34.20
step
Discover Southwind Village |achieve 856/2 |goto Silithus 65.30,47.40
step
Discover Valor's Rest |achieve 856/8 |goto Silithus 81.30,17.80
step
|achieve 856
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Southern Barrens",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(4996) end,
achieveid={4996},
patch='40003',
description="Explore Southern Barrens, revealing the following covered areas of the world map:\n\nBael Modan\n"..
"Forward Command\nHonor's Stand\nNorthwatch Hold\nRuins of Taurajo\nVendetta Point\nFrazzlecraz Motherlode\n"..
"Battlescar\nHunter's Hill\nRazorfen Kraul\nThe Overgrowth",
},[[
step
Discover Northwatch Hold |achieve 4996/7 |goto Southern Barrens 68.80,49.10
step
Discover Forward Command |achieve 4996/3 |goto Southern Barrens 52.20,48.60
step
Discover The Overgrowth |achieve 4996/10 |goto Southern Barrens 47.80,33.68
step
Discover Hunter's Hill |achieve 4996/6 |goto Southern Barrens 39.30,22.30
step
Discover Honor's Stand |achieve 4996/5 |goto Southern Barrens 36.50,11.10
step
Discover Vendetta Point |achieve 4996/11 |goto Southern Barrens 42.40,44.00
step
Discover Ruins of Taurajo |achieve 4996/9 |goto Southern Barrens 44.90,54.30
step
Discover Battlescar |achieve 4996/2 |goto Southern Barrens 46.17,68.15
step
Discover Frazzlecraz Motherlode |achieve 4996/4 |goto Southern Barrens 41.00,78.20
step
Discover Razorfen Kraul |achieve 4996/8 |goto Southern Barrens 38.51,88.95
step
Discover Bael Modan |achieve 4996/1 |goto Southern Barrens 50.70,84.00
step
|achieve 4996
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Stonetalon Mountains",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(847) end,
achieveid={847},
patch='30003',
description="Explore Stonetalon Mountains, revealing the following covered areas of the world map:\n\nBattlescar Valley\n"..
"Ruins of Eldre'thar\nUnearthed Grounds\nWindshear Hold\nMalaka'jin\nBoulderslide Ravine\nWindshear Crag\n"..
"The Charred Vale\nStonetalon Peak\nKrom'gar Fortress\nThal'darah Overlook\nWebwinder Hollow\nCliffwalker Post\n"..
"Webwinder Path\nGreatwood Vale\nSun Rock Retreat\nMirkfallon Lake",
},[[
step
Discover Malaka'jin |achieve 847/9 |goto Stonetalon Mountains 72.60,92.40
step
Discover Unearthed Grounds |achieve 847/5 |goto Stonetalon Mountains 76.70,75.80
step
Discover Greatwood Vale |achieve 847/12 |goto Stonetalon Mountains 69.60,85.10
step
Discover Boulderslide Ravine |achieve 847/11 |goto Stonetalon Mountains 63.40,88.70
step
Discover Webwinder Path |achieve 847/10 |goto Stonetalon Mountains 59.60,78.90
step
Discover Webwinder Hollow |achieve 847/6 |goto Stonetalon Mountains 57.20,72.70
step
Discover Ruins of Eldre'thar |achieve 847/3 |goto Stonetalon Mountains 48.80,76.30
step
Discover Sun Rock Retreat |achieve 847/14 |goto Stonetalon Mountains 49.30,63.40
step
Discover The Charred Vale |achieve 847/15 |goto Stonetalon Mountains 31.60,71.50
step
Discover Battlescar Valley |achieve 847/1 |goto Stonetalon Mountains 37.00,54.30
step
Discover Thal'darah Overlook |achieve 847/4 |goto Stonetalon Mountains 35.80,31.50
step
Discover Stonetalon Peak |achieve 847/17 |goto Stonetalon Mountains 40.90,19.90
step
Discover Cliffwalker Post |achieve 847/8 |goto Stonetalon Mountains 45.10,30.20
step
Discover Mirkfallon Lake |achieve 847/16 |goto Stonetalon Mountains 51.60,47.30
step
Discover Windshear Hold |achieve 847/7 |goto Stonetalon Mountains 59.10,57.70
step
Discover Krom'gar Fortress |achieve 847/2 |goto Stonetalon Mountains 66.90,66.20
step
Discover Windshear Crag |achieve 847/13 |goto Stonetalon Mountains 66.90,49.30
step
|achieve 847
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Tanaris",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(851) end,
achieveid={851},
patch='30003',
description="Explore Tanaris, revealing the following covered areas of the world map:\n\nAbyssal Sands\n"..
"Gadgetzan\nValley of the Watchers\nThe Noxious Lair\nSouthbreak Shore\nEastmoon Ruins\nZul'Farrak\n"..
"Southmoon Ruins\nSandsorrow Watch\nLost Rigger Cove\nBroken Pillar\nDunemaul Compound\nThe Gaping Chasm"..
"\nLand's End Beach\nThistleshrub Valley\nCaverns of Time",
},[[
step
Discover Zul'Farrak |achieve 851/15 |goto Tanaris 37.30,14.30
step
Discover Sandsorrow Watch |achieve 851/2 |goto Tanaris 40.90,27.30
step
Discover Gadgetzan  |achieve 851/1 |goto Tanaris 50,28
step
Discover Broken Pillar |achieve 851/6 |goto Tanaris 52.30,45.40
step
Discover Abyssal Sands |achieve 851/5 |goto Tanaris 55.10,40.90
step
Discover Caverns of Time |achieve 851/16 |goto Tanaris 64.20,50.00
step
Discover Lost Rigger Cove |achieve 851/4 |goto Tanaris 71.60,49.40
step
Discover Southbreak Shore |achieve 851/9 |goto Tanaris 63.00,59.20
step
Discover The Gaping Chasm |achieve 851/10 |goto Tanaris 53.70,67.60
step
Discover Land's End Beach |achieve 851/12 |goto Tanaris 53.60,91.70
step
Discover Valley of the Watchers |achieve 851/3 |goto Tanaris 37.80,77.70
step
Discover Southmoon Ruins |achieve 851/13 |goto Tanaris 40.80,70.60
step
Discover Eastmoon Ruins |achieve 851/11 |goto Tanaris 47.20,64.90
step
Discover Thistleshrub Valley |achieve 851/14 |goto Tanaris 30.40,66.40
step
Discover Dunemaul Compound |achieve 851/8 |goto Tanaris 41.00,55.50
step
Discover The Noxious Lair |achieve 851/7 |goto Tanaris 34.30,45.30
step
|achieve 851
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Teldrassil",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(842) end,
achieveid={842},
patch='30003',
description="Explore Teldrassil, revealing the following covered areas of the world map:\n\nShadowglen\n"..
"Dolanaar\nGnarlpine Hold\nPools of Arlithrien\nThe Oracle Glade\nDarnassus\nThe Cleft\n"..
"Ban'ethil Hollow\nLake Al'Ameth\nStarbreeze Village\nWellspring Lake\nRut'theran Village",
},[[
step
Discover Lake Al'Ameth |achieve 842/6 |goto Teldrassil 55.00,61.00
step
Discover Dolanaar |achieve 842/3 |goto Teldrassil 55.60,51.20
step
Discover Starbreeze Village |achieve 842/8 |goto Teldrassil 64.70,49.10
step
Discover Rut'theran Village |achieve 842/12 |goto Teldrassil 55.00,91.00
step
Discover Shadowglen |achieve 842/1 |goto Teldrassil 58.40,33.00
step
Discover The Cleft |achieve 842/2 |goto Teldrassil 50.70,38.00
step
Discover Ban'ethil Hollow |achieve 842/4 |goto Teldrassil 46.16,50.68
step
Discover Wellspring Lake |achieve 842/10 |goto Teldrassil 44.40,34.40
step
Discover The Oracle Glade |achieve 842/9 |goto Teldrassil 40.00,26.70
step
Discover Darnassus |achieve 842/11 |goto Teldrassil 30.40,50.10
step
Discover Pools of Arlithrien |achieve 842/7 |goto Teldrassil 41.90,56.90
step
Discover Gnarlpine Hold |achieve 842/5 |goto Teldrassil 44.80,67.40
step
|achieve 842
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Thousand Needles",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(846) end,
achieveid={846},
patch='30003',
description="Explore Thousand Needles, revealing the following covered areas of the world map:\n\nThe Great Lift\n"..
"Sunken Dig Site\nThe Twilight Withering\nWestreach Summit\nFreewind Post\nThe Shimmering Deep\nHighperch\n"..
"Razorfen Downs\nSouthsea Holdfast\nTwilight Bulwark\nDarkcloud Pinnacle\nSplithoof Heights",
},[[
step
Discover Razorfen Downs |achieve 846/2 |goto Thousand Needles 51.70,30.00
step
Discover The Great Lift |achieve 846/1 |goto Thousand Needles 32.10,18.30
step
Discover Darkcloud Pinnacle |achieve 846/8 |goto Thousand Needles 33.60,38.60
step
Discover Westreach Summit |achieve 846/7 |goto Thousand Needles 13.40,10.30
step
Discover Highperch |achieve 846/12 |goto Thousand Needles 13.10,37.50
step
Discover Twilight Bulwark |achieve 846/6 |goto Thousand Needles 31.10,58.80
step
Discover Freewind Post |achieve 846/9 |goto Thousand Needles 47.00,50.70
step
Discover The Twilight Withering |achieve 846/5 |goto Thousand Needles 54.90,63.20
step
Discover Sunken Dig Site |achieve 846/3 |goto Thousand Needles 67.10,85.70
step
Discover The Shimmering Deep |achieve 846/11 |goto Thousand Needles 70.44,61.19
step
Discover Splithoof Heights |achieve 846/10 |goto Thousand Needles 88.40,47.80
step
Discover Southsea Holdfast |achieve 846/4 |goto Thousand Needles 92.40,78.80
step
|achieve 846
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Un'Goro Crater",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(854) end,
achieveid={854},
patch='30003',
description="Explore Un'Goro Crater, revealing the following covered areas of the world map:\n\nMossy Pile\n"..
"Fire Plume Ridge\nMarshal's Stand\nThe Roiling Gardens\nGolakka Hot Springs\nThe Slithering Scar\n"..
"Ironstone Plateau\nFungal Rock\nThe Screaming Reaches\nTerror Run\nThe Marshlands\nLakkari Tar Pits",
},[[
step
Discover Ironstone Plateau |achieve 854/11 |goto Un'Goro Crater 77.10,39.20
step
Discover The Roiling Gardens |achieve 854/5 |goto Un'Goro Crater 39.20,34.30
step
Discover Fungal Rock |achieve 854/2 |goto Un'Goro Crater 65.70,14.30
step
Discover Lakkari Tar Pits |achieve 854/12 |goto Un'Goro Crater 51.40,25.60
step
Discover Mossy Pile |achieve 854/4 |goto Un'Goro Crater 42.20,41.70
step
Discover The Screaming Reaches |achieve 854/6 |goto Un'Goro Crater 29.00,35.80
step
Discover Golakka Hot Springs |achieve 854/7 |goto Un'Goro Crater 34.40,54.00
step
Discover Terror Run |achieve 854/8 |goto Un'Goro Crater 33.20,70.70
step
Discover Fire Plume Ridge |achieve 854/1 |goto Un'Goro Crater 54.50,48.00
step
Discover Marshal's Stand |achieve 854/3 |goto Un'Goro Crater 54.00,60.90
step
Discover The Marshlands |achieve 854/10 |goto Un'Goro Crater 67.90,54.80
step
Discover The Slithering Scar |achieve 854/9 |goto Un'Goro Crater 51.10,77.50
step
|achieve 854
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Explore Winterspring",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(857) end,
achieveid={857},
patch='30003',
description="Explore Winterspring, revealing the following covered areas of the world map:\n\nLake Kel'Theril\n"..
"Frostfire Hot Springs\nMazthoril\nOwl Wing Thicket\nWinterfall Village\nFrostsaber Rock\nEverlook\n"..
"Timbermaw Post\nStarfall Village\nIce Thistle Hills\nThe Hidden Grove\nFrostwhisper Gorge",
},[[
step
Discover Frostwhisper Gorge |achieve 857/12 |goto Winterspring 59.80,85.50
step
Discover Owl Wing Thicket |achieve 857/7 |goto Winterspring 64.50,77.20
step
Discover Ice Thistle Hills |achieve 857/8 |goto Winterspring 67.80,64.40
step
Discover Winterfall Village |achieve 857/9 |goto Winterspring 68.10,48.50
step
Discover Everlook |achieve 857/6 |goto Winterspring 59.90,48.90
step
Discover The Hidden Grove |achieve 857/10 |goto Winterspring 62.70,24.70
step
Discover Frostsaber Rock |achieve 857/11 |goto Winterspring 45.30,15.40
step
Discover Starfall Village |achieve 857/4 |goto Winterspring 47.70,39.10
step
Discover Lake Kel'Theril |achieve 857/3 |goto Winterspring 51.10,55.10
step
Discover Mazthoril |achieve 857/5 |goto Winterspring 54.80,62.90
step
Discover Timbermaw Post |achieve 857/2 |goto Winterspring 36.40,56.70
step
Discover Frostfire Hot Springs |achieve 857/1 |goto Winterspring 31.90,49.30
step
|achieve 857
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Kalimdor\\Kalimdor and Cataclysm Explorer",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(43) end,
achieveid={43},
patch='30003',
description="Earn the following Kalimdor exploration achievements:\n\nExplore Durotar\nExplore Teldrassil\n"..
"Explore Northern Barrens\nExplore Southern Barrens\nExplore Bloodmyst Isle\nExplore Thousand Needles\n"..
"Explore Desolace\nExplore Feralas\nExplore Azshara\nExplore Un'Goro Crater\nExplore Silithus\nExplore "..
"Mulgore\nExplore Azuremyst Isle\nExplore Winterspring\nExplore Darkshore\nExplore Stonetalon Mountains\n"..
"Explore Ashenvale\nExplore Dustwallow Marsh\nExplore Tanaris\nExplore Felwood\nExplore Moonglade",
},[[
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Durotar" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Northern Barrens" 1-14
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Southern Barrens" 1-11
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Dustwallow Marsh" 1-9
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Thousand Needles" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Tanaris" 1-16
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Uldum" 1-22
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Un'Goro Crater" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Silithus" 1-8
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Feralas" 1-13
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Desolace" 1-16
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Mulgore" 1-13
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Stonetalon Mountains" 1-17
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Ashenvale" 1-18
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Hyjal" 1-11
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Winterspring" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Azshara" 1-17
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Moonglade" 1-4
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Felwood" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Darkshore" 1-11
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Teldrassil" 1-12
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Azuremyst Isle" 1-17
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Explore Bloodmyst Isle" 1-28
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Bloody Rare/Medium Rare",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1312) end,
achieveid={1311,1312},
patch='30002',
description="Kill all of the Rare enemies in Outlands",
},[[
step
kill Mekthorg the Wild##18677 |goto Hellfire Peninsula/0 69.00,71.40
Mekthorg can also spawn at the locations below:
[Hellfire Peninsula/0 41.60,71.60]
[Hellfire Peninsula/0 47.20,58.40]
[Hellfire Peninsula/0 52.00,51.20]
[Hellfire Peninsula/0 46.60,43.00]
|achieve 1312/14
step
kill Fulgorge##18678 |goto Hellfire Peninsula/0 57.20,71.80
Fulgorge can also spawn at the locations below:
[Hellfire Peninsula/0 42.80,71.80]
[Hellfire Peninsula/0 43.60,50.60]
[Hellfire Peninsula/0 30.80,63.00]
[Hellfire Peninsula/0 27.60,42.60]
|achieve 1312/9
step
kill Vorakem Doomspeaker##18679 |goto Hellfire Peninsula/0 41.00,32.80
Vorakem Doomspeaker can also spawn at the locations below:
[Hellfire Peninsula/0 54.40,28.60]
[Hellfire Peninsula/0 65.40,31.40]
[Hellfire Peninsula/0 73.60,40.20]
[Hellfire Peninsula/0 70.00,45.60]
[Hellfire Peninsula/0 72.60,56.80]
|achieve 1312/20
step
kill Hemathion##18692 |goto Blade's Edge Mountains/0 30.60,67.20
Hemathion can also spawn at the locations below:
[Blade's Edge Mountains/0 30.60,48.40]
|achieve 1312/11
step
kill Morcrush##18690 |goto Blade's Edge Mountains/0 68.80,70.00
Morcrush can also spawn at the locations below:
[Blade's Edge Mountains/0 62.60,52.60]
[Blade's Edge Mountains/0 65.80,47.80]
[Blade's Edge Mountains/0 71.00,42.00]
[Blade's Edge Mountains/0 73.80,28.60]
[Blade's Edge Mountains/0 61.00,23.00]
|achieve 1312/15
step
kill Speaker Mar'Grom##18693 |goto Blade's Edge Mountains/0 44.60,77.40
Speaker Mar'Grom can also spawn at the locations below:
[Blade's Edge Mountains/0 42.00,50.80]
[Blade's Edge Mountains/0 57.60,29.60]
[Blade's Edge Mountains/0 66.20,23.60]
|achieve 1312/18
step
kill Bog Lurker##18682 |goto Zangarmarsh/0 25.00,24.00
Bog Lurker can also spawn at the locations below:
[Zangarmarsh/0 41.20,60.80]
[Zangarmarsh/0 50.60,59.40]
[Zangarmarsh/0 86.60,82.60]
|achieve 1312/2
step
kill Coilfang Emissary##18681 |goto Zangarmarsh/0 25.80,42.60
Coilfang Emissary can also spawn at the locations below:
[Zangarmarsh/0 63.00,38.00]
[Zangarmarsh/0 64.40,69.60]
[Zangarmarsh/0 73.60,82.40]
|achieve 1312/4
step
kill Marticar##18680 |goto Zangarmarsh/0 10.60,51.00
Marticar can also spawn at the locations below:
[Zangarmarsh/0 18.00,34.40]
[Zangarmarsh/0 38.60,34.80]
[Zangarmarsh/0 54.40,33.80]
[Zangarmarsh/0 72.00,35.80]
[Zangarmarsh/0 79.60,53.60]
|achieve 1312/13
step
kill Chief Engineer Lorthander##18697 |goto Netherstorm/0 59.80,66.40
Chief Engineer Lorthander can also spawn at the locations below:
[Netherstorm/0 47.60,81.20]
[Netherstorm/0 27.80,39.40]
|achieve 1312/3
step
kill Ever-Core the Punisher##18698 |goto Netherstorm/0 58.20,37.80
|tip He walks around the towers in Netherstorm so you will need to search for him.
|achieve 1312/8
step
kill Nuramoc##20932 |goto Netherstorm/0 25.60,82.60
Nuramoc can also spawn at the locations below:
[Netherstorm/0 40.60,79.80]
[Netherstorm/0 67.60,61.00]
[Netherstorm/0 53.00,59.20]
[Netherstorm/0 34.00,33.60]
[Netherstorm/0 36.00,20.80]
|achieve 1312/16
step
kill Voidhunter Yar##18683 |goto Nagrand/0 39.80,71.00
|tip He walks in a circle around Oshu'Gun so you may need to fly around to find him.
|achieve 1312/19
step
kill Goretooth##17144 |goto Nagrand/0 34.00,50.00
Goretooth can also spawn at the locations below:
[Nagrand/0 44.80,44.80]
[Nagrand/0 59.60,28.40]
[Nagrand/0 77.00,80.20]
|achieve 1312/10
step
kill Crippler##18689 |goto Terokkar Forest/0 39.00,63.60
|tip He walks around and inside Auchindoun so you may need to search for him.
|achieve 1312/6
step
kill Doomsayer Jurim##18686 |goto Terokkar Forest/0 70.20,49.00
Doomsayer Jurim can also spawn at the locations below:
[Terokkar Forest/0 56.80,32.60]
[Terokkar Forest/0 54.40,20.40]
[Terokkar Forest/0 43.20,26.40]
[Terokkar Forest/0 35.80,37.40]
|achieve 1312/7
step
kill Okrek##18685 |goto Terokkar Forest/0 56.60,67.60
Okrek can also spawn at the locations below:
[Terokkar Forest/0 31.80,42.60]
[Terokkar Forest/0 50.00,19.60]
[Terokkar Forest/0 59.80,24.20]
|achieve 1312/17
step
kill Ambassador Jerrikar##18695 |goto Shadowmoon Valley/0 71.00,61.60
Ambassador Jerrikar can also spawn at the locations below:
[Shadowmoon Valley/0 47.60,68.60]
[Shadowmoon Valley/0 29.60,52.60]
[Shadowmoon Valley/0 46.20,28.80]
[Shadowmoon Valley/0 57.60,38.20]
|achieve 1312/1
step
kill Collidus the Warp-Watcher##18694 |goto Shadowmoon Valley/0 70.80,66.80
Collidus the Warp-Watcher can also spawn at the locations below:
[Shadowmoon Valley/0 58.60,71.60]
[Shadowmoon Valley/0 46.00,53.20]
[Shadowmoon Valley/0 37.60,43.60]
[Shadowmoon Valley/0 60.00,22.00]
[Shadowmoon Valley/0 73.80,29.20]
|achieve 1312/5
step
kill Kraator##18696 |goto Shadowmoon Valley/0 59.60,46.60
Kraator can also spawn at the locations below:
[Shadowmoon Valley/0 42.00,68.80]
[Shadowmoon Valley/0 31.00,45.60]
[Shadowmoon Valley/0 42.00,40.60]
[Shadowmoon Valley/0 45.60,12.60]
|achieve 1312/12
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Blade's Edge Mountains",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(865) end,
achieveid={865},
patch='30003',
description="Explore Blade's Edge Mountains, revealing the following covered areas of the world map:\n\nBash'ir Landing\n"..
"Bladespire Hold\nBloodmaul Outpost\nCircle of Blood\nForge Camp: Anger\nForge Camp: Wrath\n"..
"Gruul's Lair\nMok'Nathal Village\nRazor Ridge\nSkald\nCrystal Spine\nVeil Lashh\nVekhaar Stand\n"..
"Bladed Gulch\nBloodmaul Camp\nBroken Wilds\nDeath's Door\nForge Camp: Terror\nGrishnath\nJagged "..
"Ridge\nRaven's Wood\nRuuan Weald\nSylvanaar\nThunderlord Stronghold\nVeil Ruuan\nVortex Summit",
},[[
step
Discover Forge Camp: Terror |achieve 865/10 |goto Blade's Edge Mountains 29.10,81.00
step
Discover Vortex Summit |achieve 865/26 |goto Blade's Edge Mountains 30.50,59.50
step
Discover Forge Camp: Wrath |achieve 865/11 |goto Blade's Edge Mountains 33.50,41.10
step
Discover Raven's Wood |achieve 865/16 |goto Blade's Edge Mountains 31.90,27.50
step
Discover Grishnath |achieve 865/12 |goto Blade's Edge Mountains 39.60,19.90
step
Discover Bash'ir Landing |achieve 865/1 |goto Blade's Edge Mountains 51.70,16.70
step
Discover Crystal Spine |achieve 865/21 |goto Blade's Edge Mountains 68.00,10.80
step
Discover Broken Wilds |achieve 865/6 |goto Blade's Edge Mountains 77.90,25.90
step
Discover Skald |achieve 865/19 |goto Blade's Edge Mountains 72.00,22.90
step
Discover Gruul's Lair |achieve 865/13 |goto Blade's Edge Mountains 67.70,23.50
step
Discover Bloodmaul Camp |achieve 865/4 |goto Blade's Edge Mountains 55.60,26.20
step
Discover Bladespire Hold |achieve 865/3 |goto Blade's Edge Mountains 40.70,53.00
step
Discover Sylvanaar |achieve 865/20 |goto Blade's Edge Mountains 37.00,65.40
step
Discover Veil Lashh |achieve 865/23 |goto Blade's Edge Mountains 36.40,78.70
step
Discover Bloodmaul Outpost |achieve 865/5 |goto Blade's Edge Mountains 46.30,77.20
step
Discover Jagged Ridge |achieve 865/14 |goto Blade's Edge Mountains 48.00,64.90
step
Discover Razor Ridge |achieve 865/17 |goto Blade's Edge Mountains 56.00,69.00
step
Discover Death's Door |achieve 865/8 |goto Blade's Edge Mountains 64.20,61.00
step
Discover Thunderlord Stronghold |achieve 865/22 |goto Blade's Edge Mountains 53.10,54.70
step
Discover Circle of Blood |achieve 865/7 |goto Blade's Edge Mountains 53.60,43.90
step
Discover Ruuan Weald |achieve 865/18 |goto Blade's Edge Mountains 61.20,36.50
step
Discover Veil Ruuan |achieve 865/24 |goto Blade's Edge Mountains 65.10,31.60
step
Discover Bladed Gulch |achieve 865/2 |goto Blade's Edge Mountains 65.90,36.80
step
Discover Forge Camp: Anger |achieve 865/9 |goto Blade's Edge Mountains 74.70,41.80
step
Discover Mok'Nathal Village |achieve 865/15 |goto Blade's Edge Mountains 73.90,62.60
step
Discover Vekhaar Stand |achieve 865/25 |goto Blade's Edge Mountains 77.10,75.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Hellfire Peninsula",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(862) end,
achieveid={862},
patch='30003',
description="Explore Hellfire Peninsula, revealing the following covered areas of the world map:\n\nThe Stair of Destiny\n"..
"Falcon Watch\nHonor Hold\nPools of Aggonar\nTemple of Telhamat\nThrallmar\nFallen Sky Ridge\n"..
"Zeth'Gor\nThe Warp Fields\nExpedition Armory\nHellfire Citadel\nMag'har Post\nRuins of Sha'naar\n"..
"The Legion Front\nThrone of Kil'jaeden\nDen of Haal'esh\nVoid Ridge\nForge Camp: Mageddon",
},[[
step
Discover The Stair of Destiny |achieve 862/1 |goto Hellfire Peninsula 87.70,50.30
step
Discover Throne of Kil'jaeden |achieve 862/12 |goto Hellfire Peninsula 62.00,17.80
step
Discover Forge Camp: Mageddon |achieve 862/18 |goto Hellfire Peninsula 58.90,31.20
step
Discover Thrallmar |achieve 862/11 |goto Hellfire Peninsula 55.40,38.70
step
Discover The Legion Front |achieve 862/10 |goto Hellfire Peninsula 71.91,50.92
step
Discover Void Ridge |achieve 862/16 |goto Hellfire Peninsula 79.10,72.90
step
Discover Zeth'Gor |achieve 862/13 |goto Hellfire Peninsula 70.10,73.60
step
Discover Expedition Armory |achieve 862/2 |goto Hellfire Peninsula 54.30,84.30
step
Discover The Warp Fields |achieve 862/17 |goto Hellfire Peninsula 45.30,82.50
step
Discover Honor Hold |achieve 862/5 |goto Hellfire Peninsula 54.80,64.50
step
Discover Hellfire Citadel |achieve 862/4 |goto Hellfire Peninsula 47.20,52.90
step
Discover Pools of Aggonar |achieve 862/7 |goto Hellfire Peninsula 41.20,32.60
step
Discover Mag'har Post |achieve 862/6 |goto Hellfire Peninsula 31.30,26.90
step
Discover Temple of Telhamat |achieve 862/9 |goto Hellfire Peninsula 23.50,40.00
step
Discover Falcon Watch |achieve 862/3 |goto Hellfire Peninsula 26.90,62.30
step
Discover Den of Haal'esh |achieve 862/14 |goto Hellfire Peninsula 27.50,77.00
step
Discover Fallen Sky Ridge |achieve 862/15 |goto Hellfire Peninsula 14.30,41.00
step
Discover Ruins of Sha'naar |achieve 862/8 |goto Hellfire Peninsula 13.30,59.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Nagrand",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(866) end,
achieveid={866},
patch='30003',
description="Explore Nagrand, revealing the following covered areas of the world map:\n\nForge Camp: Fear\n"..
"Halaa\nLaughing Skull Ruins\nSunspring Post\nThe Ring of Trials\nWarmaul Hill\nClan Watch\n"..
"Southwind Cleft\nWindyreed Pass\nZangar Ridge\nGaradar\nKil'sorrow Fortress\nSpirit Fields\n"..
"Telaar\nThrone of the Elements\nBurning Blade Ruins\nForge Camp: Hate\nThe Twilight Ridge\n"..
"Windyreed Village",
},[[
step
Discover Windyreed Village |achieve 866/18 |goto Nagrand 74.30,52.90
step
Discover Burning Blade Ruins |achieve 866/12 |goto Nagrand 75.10,66.80
step
Discover Kil'sorrow Fortress |achieve 866/4 |goto Nagrand 68.90,79.90
step
Discover Clan Watch |achieve 866/13 |goto Nagrand 62.50,64.30
step
Discover The Ring of Trials |achieve 866/9 |goto Nagrand 65.80,54.00
step
Discover Southwind Cleft |achieve 866/15 |goto Nagrand 49.80,55.90
step
Discover Telaar |achieve 866/8 |goto Nagrand 52.80,69.10
step
Discover Spirit Fields |achieve 866/6 |goto Nagrand 42.00,71.80
step
Discover Halaa |achieve 866/3 |goto Nagrand 42.50,44.00
step
Discover Sunspring Post |achieve 866/7 |goto Nagrand 33.50,44.70
step
Discover Forge Camp: Fear |achieve 866/1 |goto Nagrand 20.60,51.30
step
Discover The Twilight Ridge |achieve 866/16 |goto Nagrand 10.80,39.20
step
Discover Forge Camp: Hate |achieve 866/14 |goto Nagrand 25.90,37.10
step
Discover Warmaul Hill |achieve 866/11 |goto Nagrand 29.70,24.60
step
Discover Zangar Ridge |achieve 866/19 |goto Nagrand 33.90,18.40
step
Discover Laughing Skull Ruins |achieve 866/5 |goto Nagrand 46.90,18.90
step
Discover Garadar |achieve 866/2 |goto Nagrand 56.10,36.40
step
Discover Throne of the Elements |achieve 866/10 |goto Nagrand 60.80,21.10
step
Discover Windyreed Pass |achieve 866/17 |goto Nagrand 72.40,36.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Netherstorm",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(843) end,
achieveid={843},
patch='30003',
description="Explore Netherstorm, revealing the following covered areas of the world map:\n\nArea 52\n"..
"Manaforge Coruu\nManaforge Ara\nRuins of Farahlon\nThe Heap\nCelestial Ridge\nNetherstone\n"..
"Sunfury Hold\nGyro-Plank Bridge\nEthereum Staging Grounds\nForge Base: Oblivion\nManaforge B'naar"..
"Manaforge Duro\nManaforge Ultris\nTempest Keep\nArklon Ruins\nKirin'Var Village\nRuins of Enkaat\n"..
"The Stormspire\nEco-Dome Farfield\nSocrethar's Seat\nEco-Dome Midrealm",
},[[
step
Discover Manaforge B'naar |achieve 843/2 |goto Netherstorm 23.50,72.90
step
Discover The Heap |achieve 843/9 |goto Netherstorm 28.40,77.50
step
Discover Area 52 |achieve 843/1 |goto Netherstorm 33.50,66.00
step
Discover Arklon Ruins |achieve 843/10 |goto Netherstorm 39.70,73.50
step
Discover Manaforge Coruu |achieve 843/3 |goto Netherstorm 48.80,84.50
step
Discover Kirin'Var Village |achieve 843/12 |goto Netherstorm 57.10,88.50
step
Discover Sunfury Hold |achieve 843/15 |goto Netherstorm 56.00,77.80
step
Discover Manaforge Duro |achieve 843/4 |goto Netherstorm 59.60,68.20
step
Discover Tempest Keep |achieve 843/8 |goto Netherstorm 75.80,62.50
step
Discover Celestial Ridge |achieve 843/11 |goto Netherstorm 72.50,38.70
step
Discover Manaforge Ultris |achieve 843/6 |goto Netherstorm 61.70,38.20
step
Discover Ethereum Staging Grounds |achieve 843/19 |goto Netherstorm 55.10,43.50
step
Discover Ruins of Farahlon |achieve 843/7 |goto Netherstorm 54.40,21.30
step
Discover Netherstone |achieve 843/13 |goto Netherstorm 49.50,17.00
step
Discover Eco-Dome Farfield |achieve 843/18 |goto Netherstorm 46.10,9.60
step
Discover Socrethar's Seat |achieve 843/20 |goto Netherstorm 29.90,16.00
step
Discover Forge Base: Oblivion |achieve 843/21 |goto Netherstorm 37.50,26.40
step
Discover The Stormspire |achieve 843/16 |goto Netherstorm 45.10,35.80
step
Discover Eco-Dome Midrealm |achieve 843/22 |goto Netherstorm 45.30,53.70
step
Discover Ruins of Enkaat |achieve 843/14 |goto Netherstorm 32.90,54.90
step
Discover Gyro-Plank Bridge |achieve 843/17 |goto Netherstorm 23.20,55.90
step
Discover Manaforge Ara |achieve 843/5 |goto Netherstorm 26.80,39.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Shadowmoon Valley",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(864) end,
achieveid={864},
patch='30003',
description="Explore Shadowmoon Valley, revealing the following covered areas of the world map:\n\nCoilskar Point\n"..
"Legion Hold\nShadowmoon Village\nThe Deathforge\nWarden's Cage\nAltar of Sha'tar\nNetherwing Fields\n"..
"Eclipse Point\nNetherwing Ledge\nThe Black Temple\nThe Hand of Gul'dan\nWildhammer Stronghold\nIllidari Point",
},[[
step
Discover Legion Hold |achieve 864/3 |goto Shadowmoon Valley 24.10,39.20
step
Discover Illidari Point |achieve 864/12 |goto Shadowmoon Valley 29.80,52.30
step
Discover Wildhammer Stronghold |achieve 864/10  |goto Shadowmoon Valley 35.50,60.20
step
Discover Eclipse Point |achieve 864/2 |goto Shadowmoon Valley 44.90,66.80
step
Discover Netherwing Ledge |achieve 864/4 |goto Shadowmoon Valley 70.80,85.70
step
Discover Netherwing Fields |achieve 864/13 |goto Shadowmoon Valley 64.20,58.50
step
Discover Warden's Cage |achieve 864/9 |goto Shadowmoon Valley 57.30,50.10
step
Discover The Hand of Gul'dan |achieve 864/8 |goto Shadowmoon Valley 49.80,41.20
step
Discover The Deathforge |achieve 864/7 |goto Shadowmoon Valley 39.60,39.60
step
Discover Shadowmoon Village |achieve 864/5 |goto Shadowmoon Valley 29.40,26.10
step
Discover Coilskar Point |achieve 864/1 |goto Shadowmoon Valley 45.30,26.30
step
Discover Altar of Sha'tar |achieve 864/11 |goto Shadowmoon Valley 61.50,26.10
step
Discover The Black Temple |achieve 864/6 |goto Shadowmoon Valley 77.60,40.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Terokkar Forest",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(867) end,
achieveid={867},
patch='30003',
description="Explore Terokkar Forest, revealing the following covered areas of the world map:\n\nBleeding Hollow Ruins\n"..
"Cenarion Thicket\nGrangol'var Village\nTuurem\nRaastok Glade\nRazorthorn Shelf\nAuchenai Grounds\nSkettis\n"..
"Refugee Caravan\nShadow Tomb\nVeil Rhaze\nAllerian Stronghold\nFirewing Point\nStonebreaker Hold\nCarrion "..
"Hill\nShattrath City\nThe Barrier Hills\nBonechewer Ruins\nRing of Observance\nDerelict Caravan\nWrithing Mound",
},[[
step
Discover Razorthorn Shelf |achieve 867/11 |goto Terokkar Forest 55.00,20.00
step
Discover Tuurem |achieve 867/7 |goto Terokkar Forest 53.00,29.10
step
Discover Cenarion Thicket |achieve 867/3 |goto Terokkar Forest 43.80,20.20
step
Discover Shattrath City |achieve 867/8 |goto Terokkar Forest 29.10,23.30
step
Discover The Barrier Hills |achieve 867/10 |goto Terokkar Forest 22.40,10.50
step
Discover Bleeding Hollow Ruins |achieve 867/1 |goto Terokkar Forest 17.80,65.40
step
Discover Veil Rhaze |achieve 867/19 |goto Terokkar Forest 24.40,59.90
step
Discover Shadow Tomb |achieve 867/17 |goto Terokkar Forest 31.30,52.50
step
Discover Refugee Caravan |achieve 867/15 |goto Terokkar Forest 37.50,49.60
step
Discover Carrion Hill |achieve 867/14 |goto Terokkar Forest 42.90,51.00
step
Discover Grangol'var Village |achieve 867/5 |goto Terokkar Forest 39.50,39.40
step
Discover Stonebreaker Hold |achieve 867/6 |goto Terokkar Forest 46.60,43.00
step
Discover Raastok Glade |achieve 867/9 |goto Terokkar Forest 60.60,40.20
step
Discover Firewing Point |achieve 867/4 |goto Terokkar Forest 71.70,34.70
step
Discover Bonechewer Ruins |achieve 867/12 |goto Terokkar Forest 66.50,52.30
step
Discover Allerian Stronghold |achieve 867/2 |goto Terokkar Forest 57.10,56.60
step
Discover Writhing Mound |achieve 867/20 |goto Terokkar Forest 49.10,66.00
step
Discover Ring of Observance |achieve 867/16 |goto Terokkar Forest 39.50,65.50
step
Discover Auchenai Grounds |achieve 867/13 |goto Terokkar Forest 33.00,71.80
step
Discover Derelict Caravan |achieve 867/18 |goto Terokkar Forest 43.90,76.10
step
Discover Skettis |achieve 867/21 |goto Terokkar Forest 58.90,76.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Explore Zangarmarsh",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(863) end,
achieveid={863},
patch='30003',
description="Explore Zangarmarsh, revealing the following covered areas of the world map:\n\nCenarion Refuge\n"..
"Feralfen Village\nMarshlight Lake\nTelredor\nThe Lagoon\nUmbrafen Village\nAngo'rosh Stronghold\n"..
"Orebor Harborage\nZabra'jin\nAngo'rosh Grounds\nHewn Bog\nQuagg Ridge\nTwin Spire Ruins\nSporeggar\n"..
"The Dead Mire\nBloodscale Grounds\nThe Spawning Glen\nDarkcrest Shore",
},[[
step
Discover Darkcrest Shore |achieve 863/18 |goto Zangarmarsh 70.60,79.90
step
Discover Umbrafen Village |achieve 863/11 |goto Zangarmarsh 83.50,82.00
step
Discover Cenarion Refuge |achieve 863/1 |goto Zangarmarsh 81.10,63.40
step
Discover The Dead Mire |achieve 863/8 |goto Zangarmarsh 82.50,37.50
step
Discover Teredor |achieve 863/7 |goto Zangarmarsh 68.50,49.20
step
Discover Bloodscale Grounds |achieve 863/14 |goto Zangarmarsh 62.70,41.20
step
Discover The Lagoon |achieve 863/9 |goto Zangarmarsh 58.60,61.80
step
Discover Twin Spire Ruins |achieve 863/10 |goto Zangarmarsh 47.80,51.70
step
Discover Feralfen Village |achieve 863/3 |goto Zangarmarsh 44.90,66.30
step
Discover Zabra'jin |achieve 863/17 |goto Zangarmarsh 31.80,52.30
step
Discover Quagg Ridge |achieve 863/6 |goto Zangarmarsh 29.00,60.70
step
Discover The Spawning Glen |achieve 863/16 |goto Zangarmarsh 14.50,61.90
step
Discover Sporeggar |achieve 863/12 |goto Zangarmarsh 17.80,49.60
step
Discover Marshlight Lake |achieve 863/5 |goto Zangarmarsh 21.70,39.60
step
Discover Ango'rosh Grounds |achieve 863/2 |goto Zangarmarsh 18.00,23.10
step
Discover Ango'rosh Stronghold |achieve 863/13 |goto Zangarmarsh 18.60,8.00
step
Discover Hewn Bog |achieve 863/4 |goto Zangarmarsh 33.60,35.30
step
Discover Orebor Harborage |achieve 863/15 |goto Zangarmarsh 44.90,25.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Outland\\Outland Explorer",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(44) end,
achieveid={44},
patch='30001',
description="Earn the following Outland exploration achievements:\n\nExplore Hellfire Peninsula\nExplore Terokkar Forest\n"..
"Explore Blade's Edge Mountains\nExplore Shadowmoon Valley\nExplore Zangarmarsh\nExplore Netherstorm\n"..
"Explore Nagrand",
},[[
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Hellfire Peninsula" 1-18
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Terokkar Forest" 1-21
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Shadowmoon Valley" 1-13
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Nagrand" 1-19
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Zangarmarsh" 1-18
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Blade's Edge Mountains" 1-26
leechsteps "Achievement Guides\\Exploration\\Outland\\Explore Netherstorm" 1-22
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Frostbitten/Northern Exposure",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(2256) end,
achieveid={2257,2256},
patch='30002',
description="Kill all of the extremely rare and hard to find Northrend Creatures.",
},[[
step
kill Old Crystalbark##32357 |goto Borean Tundra/0 25.60,34.40
|tip He walks all around the Nexus so you may need to search for him.
achieve 2257/4
step
kill Fumblub Gearwind##32358 |goto Borean Tundra/0 63.80,26.60
|tip He is flying around this whole section of the map so you may need to search for him.
achieve 2257/5
step
kill Icehorn##32361 |achieve 2257/6 |goto Borean Tundra/0 88.60,39.80
If Icehorn is not here, you may be able to find him in the following locations:
[Borean Tundra/0 84.60,46.80]
[Borean Tundra/0 80.80,46.00]
[Borean Tundra/0 81.40,31.40]
[Borean Tundra/0 85.80,34.60]
[Borean Tundra/0 91.60,32.60]
step
kill Crazed Indu'le Survivor##32409 |achieve 2257/11 |goto Dragonblight/0 26.60,58.60
|tip He walks around this area so you may need to search for him.
step
kill Tukemuth##32400 |achieve 2257/10 |goto Dragonblight/0 67.60,60.00
If Tukemuth is not here, you may be able to find him in the following locations:
[Dragonblight/0 70.80,30.20]
[Dragonblight/0 62.60,42.20]
[Dragonblight/0 59.00,60.20]
[Dragonblight/0 54.60,56.80]
[Dragonblight/0 61.00,31.00]
step
kill Scarlet Highlord Daion##32417 |achieve 2257/12 |goto Dragonblight/0 72.60,25.80
If Scarlet Highlord Daion is not here, you may be able to find him in the following locations:
[Dragonblight/0 86.80,41.60]
[Dragonblight/0 72.00,74.00]
step
kill Grocklar##32422 |achieve 2257/13 |goto Grizzly Hills/0 25.00,57.00
If Grocklar is not here, you may be able to find him in the following locations:
[Grizzly Hills/0 13.20,48.60]
[Grizzly Hills/0 22.40,73.20]
[Grizzly Hills/0 12.20,70.60]
step
kill Seething Hate##32429 |achieve 2257/14 |goto Grizzly Hills/0 40.20,48.80
If Seething Hate is not here, you may be able to find it in the following locations:
[Grizzly Hills/0 34.60,49.00]
[Grizzly Hills/0 28.60,45.80]
step
kill Syreian the Bonecarver##32438 |achieve 2257/15 |goto Grizzly Hills/0 69.60,32.20
|tip She walks around in this area so you may need to search for her.
step
kill King Ping##32398 |achieve 2257/9 |goto Howling Fjord/0 33.20,80.60
|tip He is wandering about this island and the one north of it.
step
kill Vigdis the War Maiden##32386 |achieve 2257/8 |goto Howling Fjord/0 72.60,52.00
|tip She wanders around this area so you may need to search for her a bit.
step
kill Perobas the Bloodthirster##32377 |achieve 2257/7 |goto Howling Fjord/0 50.60,4.80
If Perobas the Bloodthirster is not here, you may be able to find him in the following locations:
[Howling Fjord/0 53.00,11.40]
[Howling Fjord/0 60.80,20.20]
[Howling Fjord/0 68.60,17.60]
[Howling Fjord/0 71.60,13.80]
step
kill High Thane Jorfus##32501 |achieve 2257/2 |goto Icecrown/0 48.60,80.20
If High Thane Jorfus is not here, you may be able to find him in the following locations:
[Icecrown/0 32.00,69.60]
[Icecrown/0 60.80,20.20]
[Icecrown/0 72.80,38.80]
step
kill Hildana Deathstealer##32495 |achieve 2257/3 |goto Icecrown/0 32.40,29.60
If Hildana Deathstealer is not here, you may be able to find her in the following locations:
[Icecrown/0 31.80,41.80]
[Icecrown/0 58.20,54.20]
step
kill Putridus the Ancient##32487 |achieve 2257/23 |goto Icecrown/0 55.60,41.20
|tip He walks around this whole trench, so you may need to search for him.
step
kill Aotona##32481 |achieve 2257/19 |goto Sholazar Basin/0 54.80,52.60
If Aotona is not here, you may be able to find him in the following locations:
[Sholazar Basin/0 58.20,64.00]
[Sholazar Basin/0 52.60,72.20]
[Sholazar Basin/0 41.80,69.60]
[Sholazar Basin/0 41.00,58.60]
[Sholazar Basin/0 45.80,54.40]
step
kill King Krush##32485 |achieve 2257/20 |goto Sholazar Basin/0 64.60,81.00
If King Krush is not here, you may be able to find him in the following locations:
[Sholazar Basin/0 59.00,80.80]
[Sholazar Basin/0 50.60,78.20]
[Sholazar Basin/0 27.60,45.20]
[Sholazar Basin/0 37.60,28.80]
[Sholazar Basin/0 49.80,45.00]
step
kill Loque'nahak##32517 |achieve 2257/1 |goto Sholazar Basin/0 71.60,72.00
If Loque'nahak is not here, you may be able to find him in the following locations:
[Sholazar Basin/0 67.00,79.60]
[Sholazar Basin/0 51.00,81.60]
[Sholazar Basin/0 22.60,70.60]
[Sholazar Basin/0 31.00,66.60]
[Sholazar Basin/0 36.60,31.00]
[Sholazar Basin/0 59.40,22.60]
step
kill Dirkee##32500 |achieve 2257/22 |goto The Storm Peaks/0 68.00,47.60
If Dirkee is not here, you may be able to find him in the following locations:
[The Storm Peaks/0 37.80,58.60]
[The Storm Peaks/0 41.00,51.60]
[The Storm Peaks/0 41.60,40.60]
step
kill Vyragosa##32630 |achieve 2257/21 |goto The Storm Peaks/0 41.20,59.00
|tip This dragon flies around the whole zone so you may need to search for him a bit.
step
kill Griegen##32471 |achieve 2257/17 |goto Zul'Drak/0 21.20,79.80
If Griegen is not here, you may be able to find him in the following locations:
[Zul'Drak/0 25.80,76.80]
[Zul'Drak/0 26.60,71.20]
[Zul'Drak/0 22.00,70.60]
[Zul'Drak/0 18.00,70.60]
[Zul'Drak/0 14.60,56.80]
[Zul'Drak/0 23.00,62.80]
[Zul'Drak/0 26.60,55.40]
step
kill Zul'drak Sentinel##32447 |achieve 2257/16 |goto Zul'Drak/0 40.40,64.00
|tip He wanders around this area so you may need to search for him.
step
kill Terror Spinner##32475 |achieve 2257/18 |goto Zul'Drak/0 53.60,31.60
If Terror Spinner is not here, you may be able to find him in the following locations:
[Zul'Drak/0 61.20,36.60]
[Zul'Drak/0 71.60,23.40]
[Zul'Drak/0 72.20,28.40]
[Zul'Drak/0 81.60,34.60]
[Zul'Drak/0 77.60,42.80]
[Zul'Drak/0 74.80,66.40]
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Borean Tundra",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1264) end,
achieveid={1264},
patch='30008',
description="Explore Borean Tundra, revealing the following covered areas of the world map:\n\nRiplash Strand\n"..
"Temple City of En'kilah\nGarrosh's Landing\nColdarra\nAmber Ledge\nThe Dens of the Dying\nKaskala\n"..
"Steeljaw's Caravan\nValiance Keep\nBor'gorok Outpost\nThe Geyser Fields\nWarsong Hold\nDeath's Stand",
},[[
step
Discover Valiance Keep |achieve 1264/11 |goto Borean Tundra 57.70,69.30
step
Discover Warsong Hold |achieve 1264/10 |goto Borean Tundra 43.40,53.20
step
Discover Riplash Stand |achieve 1264/3 |goto Borean Tundra 47.40,81.10
step
Discover Garrosh's Landing |achieve 1264/5 |goto Borean Tundra 27.90,51.60
step
Discover Coldarra |achieve 1264/7 |goto Borean Tundra 25.80,38.40
step
Discover Amber Ledge |achieve 1264/9 |goto Borean Tundra 46.10,34.80
step
Discover Steeljaw's Carvan |achieve 1264/2 |goto Borean Tundra 50.20,24.30
step
Discover Bor'gorok Outpost |achieve 1264/8 |goto Borean Tundra 50.20,10.30
step
Discover The Geyser Fields |achieve 1264/12 |goto Borean Tundra 66.30,28.50
step
Discover Kaskala |achieve 1264/4 |goto Borean Tundra 66.20,51.10
step
Discover Death's Stand |achieve 1264/6 |goto Borean Tundra 82.40,46.40
step
Discover Temple City of En'kilah |achieve 1264/1 |goto Borean Tundra 87.60,25.10
step
Discover The Dens of the Dying |achieve 1264/13 |goto Borean Tundra 76.40,16.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Crystalsong Forest",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1457) end,
achieveid={1457},
patch='30008',
description="Explore Crystalsong Forest, revealing the following covered areas of the world map:\n\nViolet Stand\n"..
"Windrunner's Overlook\nSunreaver's Command\nThe Azure Front\nThe Decrepit Flow\nThe Unbound Thicket\n"..
"Forlorn Woods\nThe Great Tree",
},[[
step
Discover The Azure Front |achieve 1457/1 |goto Crystalsong Forest 26.40,61.40
step
Discover Violet Stand |achieve 1457/7 |goto Crystalsong Forest 14.50,44.10
step
Discover The Great Tree |achieve 1457/6 |goto Crystalsong Forest 13.10,33.90
step
Discover The Decrepit Flow |achieve 1457/2 |goto Crystalsong Forest 16.00,15.40
step
Discover Forlorn Woods |achieve 1457/4 |goto Crystalsong Forest 43.00,42.50
step
Discover The Unbound Thicket |achieve 1457/8 |goto Crystalsong Forest 64.70,60.40
step
Discover Windrunner's Overlook |achieve 1457/5 |goto Crystalsong Forest 75.20,83.00
step
Discover Sunreaver's Command |achieve 1457/3 |goto Crystalsong Forest 76.90,46.30
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Dragonblight",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1265) end,
achieveid={1265},
patch='30008',
description="Explore Dragonblight, revealing the following covered areas of the world map:\n\nGalakrond's Rest\n"..
"Obsidian Dragonshrine\nNaxxramas\nIcemist Village\nColdwind Heights\nWestwind Refugee Camp\nLake Indu'le\n"..
"Agmar's Hammer\nThe Forgotten Shore\nScarlet Point\nAngrathar the Wrath Gate\nEmerald Dragonshrine\n"..
"New Hearthglen\nLight's Trust\nWyrmrest Temple\nThe Crystal Vice\nVenomspite",
},[[
step
Discover Angrathar the Wrath Gate |achieve 1265/10 |goto Dragonblight 36.00,15.00
step
Discover Obsidian Dragonshrine |achieve 1265/3 |goto Dragonblight 38.40,31.90
step
Discover Icemist Village |achieve 1265/7 |goto Dragonblight 25.10,43.20
step
Discover Westwind Refugee Camp |achieve 1265/13 |goto Dragonblight 13.80,46.20
step
Discover Agmar's Hammer |achieve 1265/11 |goto Dragonblight 36.90,47.80
step
Discover Lake Indu'le |achieve 1265/2 |goto Dragonblight 39.70,67.00
step
Discover Galakrond's Rest |achieve 1265/1 |goto Dragonblight 54.90,32.70
step
Discover Wyrmrest Temple |achieve 1265/12 |goto Dragonblight 59.70,49.80
step
Discover Emerald Dragonshrine |achieve 1265/8 |goto Dragonblight 63.50,72.70
step
Discover New Hearthglen |achieve 1265/4 |goto Dragonblight 71.00,75.20
step
Discover Venomspite |achieve 1265/14 |goto Dragonblight 77.10,60.00
step
Discover The Forgotten Shore |achieve 1265/15 |goto Dragonblight 82.50,70.70
step
Discover Naxxramas |achieve 1265/5 |goto Dragonblight 88.90,44.00
step
Discover Light's Trust |achieve 1265/6 |goto Dragonblight 83.60,25.60
step
Discover Scarlet Point |achieve 1265/17 |goto Dragonblight 72.70,25.60
step
Discover The Crystal Vice |achieve 1265/16 |goto Dragonblight 61.80,19.50
step
Discover Coldwind Heights |achieve 1265/9 |goto Dragonblight 50.00,17.50
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Grizzly Hills",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1266) end,
achieveid={1266},
patch='30008',
description="Explore Grizzly Hills, revealing the following covered areas of the world map:\n\nDrakil'jin Ruins\n"..
"Conquest Hold\nBlue Sky Logging Grounds\nWestfall Brigade Encampment\nGranite Springs\nVoldrune\n"..
"Rage Fang Shrine\nVenture Bay\nAmberpine Lodge\nCamp Oneqwah\nDrak'Tharon Keep\nDun Argol\n"..
"Grizzlemaw\nThor Modan",
},[[
step
Discover Drak'Tharon Keep |achieve 1266/2 |goto Grizzly Hills 17.50,23.60
step
Discover Granite Springs |achieve 1266/5 |goto Grizzly Hills 15.80,49.60
step
Discover Conquest Hold |achieve 1266/1 |goto Grizzly Hills 21.30,65.30
step
Discover Venture Bay |achieve 1266/9 |goto Grizzly Hills 14.50,84.40
step
Discover Voldrune |achieve 1266/10 |goto Grizzly Hills 29.00,76.50
step
Discover Amberpine Lodge |achieve 1266/11 |goto Grizzly Hills 31.40,57.90
step
Discover Blue Sky Logging Grounds |achieve 1266/12 |goto Grizzly Hills 36.00,37.90
step
Discover Grizzlemaw |achieve 1266/6 |goto Grizzly Hills 48.20,42.20
step
Discover Westfall Brigade Encampment |achieve 1266/14 |goto Grizzly Hills 56.80,28.40
step
Discover Thor Modan |achieve 1266/8 |goto Grizzly Hills 68.10,14.80
step
Discover Drakil'jin Ruins |achieve 1266/3 |goto Grizzly Hills 71.80,27.90
step
Discover Camp Oneqwah |achieve 1266/13 |goto Grizzly Hills 64.90,45.60
step
Discover Dun Argol |achieve 1266/4 |goto Grizzly Hills 77.90,59.30
step
Discover Rage Fang Shrine |achieve 1266/7 |goto Grizzly Hills 50.30,57.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Howling Fjord",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1263) end,
achieveid={1263},
patch='30008',
description="Explore Howling Fjord, revealing the following covered areas of the world map:\n\nCamp Winterhoof\n"..
"Kamagua\nVengeance Landing\nScalawag Point\nGjalerbron\nGiant's Run\nIvald's Ruin\nNew Agamand\n"..
"The Twisted Glade\nWestguard Keep\nBaleheim\nCauldros Isle\nBaelgun's Excavation Site\nSkorn\n"..
"Apothecary Camp\nSteel Gate\nNifflevar\nEmber Clutch\nFort Wildervar\nUtgarde Keep\nHalgrind\n",
},[[
step
Discover Gjalerbron |achieve 1263/9 |goto Howling Fjord 36.60,9.50
step
Discover Camp Winterhoof |achieve 1263/3 |goto Howling Fjord 47.80,12.10
step
Discover The Twisted Glade |achieve 1263/17 |goto Howling Fjord 54.20,16.80
step
Discover Fort Wildervar |achieve 1263/12 |goto Howling Fjord 60.70,12.80
step
Discover Giant's Run |achieve 1263/11 |goto Howling Fjord 68.60,26.50
step
Discover Vengeance Landing |achieve 1263/5 |goto Howling Fjord 78.10,27.30
step
Discover Ivald's Ruin |achieve 1263/13 |goto Howling Fjord 78.20,46.20
step
Discover Baelgun's Excavation Site |achieve 1263/20 |goto Howling Fjord 72.50,71.30
step
Discover Nifflevar |achieve 1263/8 |goto Howling Fjord 67.90,52.80
step
Discover Baleheim |achieve 1263/21 |goto Howling Fjord 66.60,39.10
step
Discover Cauldros Isle |achieve 1263/2 |goto Howling Fjord 57.60,35.90
step
Discover Utgarde Keep |achieve 1263/18 |goto Howling Fjord 58.30,45.90
step
Discover Halgrind |achieve 1263/14 |goto Howling Fjord 50.10,54.10
step
Discover New Agamand |achieve 1263/15 |goto Howling Fjord 52.90,69.00
step
Discover Scalawag Point |achieve 1263/7 |goto Howling Fjord 34.30,75.50
step
Discover Kamagua |achieve 1263/1 |goto Howling Fjord 24.90,57.70
step
Discover Ember Clutch |achieve 1263/10 |goto Howling Fjord 40.00,50.60
step
Discover Skorn |achieve 1263/16 |goto Howling Fjord 45.10,33.10
step
Discover Westguard Keep |achieve 1263/19 |goto Howling Fjord 30.30,41.40
step
Discover Steel Gate |achieve 1263/6 |goto Howling Fjord 31.30,25.90
step
Discover Apothecary Camp |achieve 1263/4 |goto Howling Fjord 27.00,24.10
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Icecrown",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1270) end,
achieveid={1270},
patch='30008',
description="Explore Icecrown, revealing the following covered areas of the world map:\n\nThe Bombardment\n"..
"Onslaught Harbor\nAldur'thar: The Desolation Gate\nThe Fleshwerks\nCorp'rethar: The Horror Gate\n"..
"Sindragosa's Fall\nValley of Echoes\nThe Conflagration\nJotunheim\nThe Shadow Vault\nScourgeholme\n"..
"Icecrown Citadel\nThe Broken Front\nYmirheim\nValhalas",
},[[
step
Discover Onslaught Harbor |achieve 1270/3 |goto Icecrown 8.90,42.90
step
Discover Jotunheim |achieve 1270/13 |goto Icecrown 27.10,39.00
step
Discover Valhalas |achieve 1270/8 |goto Icecrown 36.50,24.10
step
Discover The Shadow Vault |achieve 1270/15 |goto Icecrown 44.40,22.60
step
Discover Aldur'thar: The Desolation Gate |achieve 1270/6 |goto Icecrown 52.80,30.60
step
Discover The Bombardment |achieve 1270/1 |goto Icecrown 63.70,44.00
step
Discover Sindragosa's Fall |achieve 1270/7 |goto Icecrown 74.00,37.70
step
Discover Scourgeholme |achieve 1270/14 |goto Icecrown 78.40,60.20
step
Discover Valley of Echoes |achieve 1270/9 |goto Icecrown 83.80,73.40
step
Discover The Broken Front |achieve 1270/4 |goto Icecrown 69.20,64.40
step
Discover Ymirheim |achieve 1270/10 |goto Icecrown 54.90,56.20
step
Discover The Conflagration |achieve 1270/11 |goto Icecrown 43.60,56.50
step
Discover The Fleshwerks |achieve 1270/5 |goto Icecrown 33.10,66.40
step
Discover Corp'rethar: The Horror Gate |achieve 1270/12 |goto Icecrown 48.40,70.60
step
Discover Icecrown Citadel |achieve 1270/2 |goto Icecrown 54.20,85.80
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Sholazar Basin",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1268) end,
achieveid={1268},
patch='30002',
description="Explore Sholazar Basin, revealing the following covered areas of the world map:\n\nThe Mosslight Pillar\n"..
"Makers' Perch\nRainspeaker Canopy\nThe Avalanche\nKartak's Hold\nThe Savage Thicket\nMakers' Overlook\n"..
"The Suntouched Pillar\nThe Lifeblood Pillar\nThe Glimmering Pillar\nThe Stormwright's Shelf",
},[[
step
Discover Makers' Overlook |achieve 1268/4 |goto Sholazar Basin 81.00,55.40
step
Discover The Lifeblood Pillar |achieve 1268/8 |goto Sholazar Basin 65.90,60.10
step
Discover Rainspeaker Canopy |achieve 1268/7 |goto Sholazar Basin 53.70,52.50
step
Discover River's Heart |achieve 1268/1 |goto Sholazar Basin 48.00,63.20
step
Discover The Mosslight Pillar |achieve 1268/3 |goto Sholazar Basin 36.00,75.30
step
Discover Kartak's Hold |achieve 1268/11 |goto Sholazar Basin 24.30,81.70
step
Discover The Suntouched Pillar |achieve 1268/6 |goto Sholazar Basin 33.30,52.30
step
Discover Makers' Perch |achieve 1268/5 |goto Sholazar Basin 29.70,40.10
step
Discover The Stormwright's Shelf |achieve 1268/12 |goto Sholazar Basin 24.50,33.50
step
Discover The Savage Thicket |achieve 1268/2 |goto Sholazar Basin 46.80,26.10
step
Discover The Glimmering Pillar |achieve 1268/10 |goto Sholazar Basin 50.00,36.00
step
Discover The Avalanche |achieve 1268/9 |goto Sholazar Basin 74.50,34.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Storm Peaks",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1269) end,
achieveid={1269},
patch='30008',
description="Explore Storm Peaks, revealing the following covered areas of the world map:\n\nDun Niffelem\n"..
"Brunnhildar Village\nValkyrion\nSparksocket Minefield\nTemple of Life\nThunderfall\nUlduar\n"..
"Snowdrift Plains\nFrosthold\nNarvir's Cradle\nBor's Breath\nTerrace of the Makers\nNidavelir\n"..
"Engine of the Makers\nTemple of Storms\nGarm's Bane",
},[[
step
Discover Sparksocket Minefield |achieve 1269/7 |goto The Storm Peaks 35.10,84.00
step
Discover Bor's Breath |achieve 1269/4 |goto The Storm Peaks 35.30,68.70
step
Discover Temple of Storms |achieve 1269/12 |goto The Storm Peaks 35.90,58.00
step
Discover Frosthold |achieve 1269/15 |goto The Storm Peaks 29.40,73.80
step
Discover Valkyrion |achieve 1269/5 |goto The Storm Peaks 24.00,60.50
step
Discover Nidavelir |achieve 1269/16 |goto The Storm Peaks 23.90,50.10
step
Discover Snowdrift Plains |achieve 1269/13 |goto The Storm Peaks 27.30,41.90
step
Discover Narvir's Cradle |achieve 1269/2 |goto The Storm Peaks 32.20,39.60
step
Discover Ulduar |achieve 1269/10 |goto The Storm Peaks 41.30,17.40
step
Discover Terrace of the Makers |achieve 1269/6 |goto The Storm Peaks 50.30,44.70
step
Discover Temple of Life |achieve 1269/9 |goto The Storm Peaks 64.80,44.80
step
Discover Thunderfall |achieve 1269/11 |goto The Storm Peaks 72.90,48.50
step
Discover Dun Niffelem |achieve 1269/3 |goto The Storm Peaks 64.40,59.10
step
Discover Engine of the Makers |achieve 1269/8 |goto The Storm Peaks 40.90,57.20
step
Discover Brunnhildar Village |achieve 1269/1 |goto The Storm Peaks 47.80,68.20
step
Discover Garm's Bane |achieve 1269/14 |goto The Storm Peaks 47.10,81.60
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Explore Zul'Drak",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(1267) end,
achieveid={1267},
patch='30008',
description="Explore Zul'Drak, revealing the following covered areas of the world map:\n\nAltar of Rhunok\n"..
"Ampitheater of Anguish\nGundrak\nAltar of Mam'toth\nDrak'Sotra Fields\nAltar of Quetz'lun\nZeramas\n"..
"Altar of Har'koa\nAltar of Sseratus\nLight's Breach\nVoltarus\nZim'Torga\nKolramas\nThrym's End",
},[[
step
Discover Thrym's End |achieve 1267/12 |goto Zul'Drak 17.00,57.30
step
Discover Voltarus |achieve 1267/11 |goto Zul'Drak 28.20,45.10
step
Discover Altar of Sseratus |achieve 1267/4 |goto Zul'Drak 40.50,38.80
step
Discover Altar of Rhunok |achieve 1267/5 |goto Zul'Drak 53.30,36.50
step
Discover Gundrak |achieve 1267/1 |goto Zul'Drak 83.70,16.70
step
Discover Altar of Mam'toth |achieve 1267/7 |goto Zul'Drak 73.20,45.60
step
Discover Altar of Quetz'lun |achieve 1267/6 |goto Zul'Drak 76.90,59.30
step
Discover Zim'Torga |achieve 1267/9 |goto Zul'Drak 59.30,57.80
step
Discover Altar of Har'koa |achieve 1267/8 |goto Zul'Drak 64.40,68.90
step
Discover Kolrama |achieve 1267/14 |goto Zul'Drak 62.00,77.60
step
Discover Ampitheater of Anguish |achieve 1267/3 |goto Zul'Drak 48.20,56.40
step
Discover Drak'Sorta Fields |achieve 1267/2 |goto Zul'Drak 41.70,76.80
step
Discover Light's Breach |achieve 1267/13 |goto Zul'Drak 32.00,76.40
step
Discover Zeramas |achieve 1267/10 |goto Zul'Drak 21.10,75.20
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Northrend\\Northrend Explorer",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(45) end,
achieveid={45},
patch='30002',
description="Earn the following Northrend exploration achievements:\n\nExplore Borean Tundra\nExplore Dragonblight\n"..
"Explore Zul'Drak\nExplore Crystalsong Forest\nExplore Icecrown\nExplore Howling Fjord\nExplore Grizzly Hills\n"..
"Explore Sholazar Basin\nExplore Storm Peaks",
},[[
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Borean Tundra" 1-13
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Sholazar Basin" 1-12
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Icecrown" 1-15
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Dragonblight" 1-17
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Crystalsong Forest" 1-8
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Storm Peaks" 1-16
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Zul'Drak" 1-14
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Grizzly Hills" 1-14
leechsteps "Achievement Guides\\Exploration\\Northrend\\Explore Howling Fjord" 1-21
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Cataclysm Explorer",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(4868) end,
achieveid={4868},
patch='40003',
description="Earn the following Cataclysm exploration achievements:\n\nExplore Twilight Highlands\nExplore Deepholm\n"..
"Explore Hyjal\nExplore Vashj'ir\nExplore Uldum",
},[[
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Hyjal" 1-11
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Vashj'ir" 1-57
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Deepholm" 1-12
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Uldum" 1-22
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Twilight Highlands" 1-28
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Deepholm",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(4864) end,
achieveid={4864},
patch='40003',
description="Explore Deepholm, revealing the following covered areas of the world map:\n\nNeedlerock Slag\n"..
"Deathwing's Fall\nStorm's Fury Wreckage\nThe Pale Roost\nThe Quaking Fields\nStonehearth\n"..
"Needlerock Chasm\nMasters' Gate\nTemple of Earth\nTherazane's Throne\nTwilight Overlook\n"..
"Crimson Expanse",
},[[
step
Explore the Temple of Earth |achieve 4864/6 |goto Deepholm/0 48.94,53.28
step
Explore the Storm's Fury Wreckage |achieve 4864/5 |goto Deepholm/0 56.79,73.02
step
Explore the Twilight Overlook |achieve 4864/10 |goto Deepholm/0 68.36,77.99
step
Explore Deathwing's Fall |achieve 4864/1 |goto Deepholm/0 68.03,67.74
step
Explore the Crimson Expanse |achieve 4864/12 |goto Deepholm/0 71.64,51.65
step
Explore Therazane's Throne |achieve 4864/8 |goto Deepholm/0 57.73,16.98
step
Explore The Pale Roost |achieve 4864/7 |goto Deepholm/0 49.21,17.02
step
Explore the Needlerock Chasm |achieve 4864/2 |goto Deepholm/0 33.61,28.51
step
Explore the Needlerock Slag |achieve 4864/3 |goto Deepholm/0 23.57,46.53
step
Explore Stonehearth |achieve 4864/4 |goto Deepholm/0 27.28,69.88
step
Explore The Quaking Fields |achieve 4864/9 |goto Deepholm/0 31.57,77.30
step
Explore the Masters' Gate |achieve 4864/11 |goto Deepholm/0 40.12,71.58
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Hyjal",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(4863) end,
achieveid={4863},
patch='40003',
description="Explore Hyjal, revealing the following covered areas of the world map:\n\nRim of the World\n"..
"Ashen Lake\nGates of Sothann\nSethria's Roost\nThe Flamewake\nThe Throne of Flame\nNordrassil\n"..
"The Circle of Cinders\nDarkwhisper Gorge\nShrine of Goldrinn\nThe Scorched Plain",
},[[
step
Explore Nordrassil |achieve 4863/6 |goto Mount Hyjal/0 62,25
step
Explore the Circle of Cinders |achieve 4863/2 |goto Mount Hyjal/0 51.40,24.97
step
Explore the Shrine of Goldrin |achieve 4863/8 |goto Mount Hyjal/0 27.58,29.19
step
Explore the Rim of the World |achieve 4863/1 |goto Mount Hyjal/0 22.19,36.89
step
Explore the Ashen Lake |achieve 4863/3 |goto Mount Hyjal/0 19.50,43.90
step
Explore The Flamewake |achieve 4863/9 |goto Mount Hyjal/0 26.03,54.56
step
Explore Sethria's Roost |achieve 4863/7 |goto Mount Hyjal/0 33.30,74.05
step
Explore The Scorched Plain |achieve 4863/10 |goto Mount Hyjal/0 46.64,58.90
step
Explore The Throne of Flame  |achieve 4863/11 |goto Mount Hyjal/0 50.26,71.98
step
Explore the Gates of Sothann |achieve 4863/5 |goto Mount Hyjal/0 67,75
step
Explore the Darkwhisper Gorge |achieve 4863/4 |goto Mount Hyjal/0 76,65
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Twilight Highlands",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(4866) end,
achieveid={4866},
patch='40003',
description="Explore Twilight Highlands, revealing the following covered areas of the world map:\n\nFirebeard's Patrol\n"..
"Bloodgulch\nCrushblow\nDragonmaw Port\nGorshak War Camp\nHumboldt Conflagration\nThe Twilight Breach\n"..
"Highbank\nObsidian Forest\nSlithering Cove\nThe Gullet\nTwilight Shore\nVictor's Point\nKirthaven\n"..
"The Maw of Madness\nCrucible of Carnage\nDragonmaw Pass\nDunwald Ruins\nGlopgut's Hollow\nThundermar\n"..
"Highland Forest\nGrim Batol\nRuins of Drakgor\nThe Black Breach\nThe Krazzworks\nVermillion Redoubt\n"..
"Wyrms' Bend",
},[[
step
Explore Highbank |achieve 4866/11 |goto Twilight Highlands/0 77.04,74.73
step
Explore the Twilight Shore |achieve 4866/23 |goto Twilight Highlands/0 71.03,70.98
step
Explore the Obsidian Forest |achieve 4866/15 |goto Twilight Highlands/0 57.06,81.13
step
Explore the Crushblow |achieve 4866/3 |goto Twilight Highlands/0 47.19,76.06
step
Explore the Dunwald Ruins |achieve 4866/6 |goto Twilight Highlands/0 45.80,69.23
step
Explore Grim Batol |achieve 4866/10 |goto Twilight Highlands/0 23.86,56.16
step
Explore Wyrms' Bend |achieve 4866/26 |goto Twilight Highlands/0 28.67,45.98
step
Explore the Dragonmaw Pass |achieve 4866/4 |goto Twilight Highlands/0 25.32,36.59
step
Explore the Vermillion Redoubt |achieve 4866/24 |goto Twilight Highlands/0 33.96,32.86
step
Explore Glopgut's Hollow |achieve 4866/8 |goto Twilight Highlands/0 35.99,35.06
step
Explore The Gullet |achieve 4866/19 |goto Twilight Highlands/0 37.28,39.71
step
Explore The Twighlight Breach |achieve 4866/21 |goto Twilight Highlands/0 41.56,50.59
step
Explore Victor's Point |achieve 4866/25 |goto Twilight Highlands/0 44.39,57.83
step
Explore the Crucible of Carnage |achieve 4866/2 |goto Twilight Highlands/0 52.38,56.08
step
Explore the Highland Forest |achieve 4866/12 |goto Twilight Highlands/0 62.12,60.66
step
Explore Firebeard's Patrol |achieve 4866/7 |goto Twilight Highlands/0 60.94,55.84
step
Explore the Gorshak War Camp |achieve 4866/9 |goto Twilight Highlands/0 60.40,47.26
step
Explore the Bloodgulch |achieve 4866/1 |goto Twilight Highlands/0 55.71,40.84
step
Explore Thundermar |achieve 4866/22 |goto Twilight Highlands/0 46.91,28.19
step
Explore Humboldt Conflagration |achieve 4866/13 |goto Twilight Highlands/0 39.38,21.75
step
Explore the Ruins of Drakgor |achieve 4866/16 |goto Twilight Highlands/0 44.19,13.81
step
Explore The Maw of Madness |achieve 4866/27 |goto Twilight Highlands/0 51.06,10.84
step
Explore Kirthaven |achieve 4866/14 |goto Twilight Highlands/0 57.36,19.01
step
Explore the Krazzworks |achieve 4866/20 |goto Twilight Highlands/0 73.60,21.23
step
Explore The Black Breach |achieve 4866/18 |goto Twilight Highlands/0 60.26,30.98
step
Explore the Slithering Cove |achieve 4866/17 |goto Twilight Highlands/0 71.73,48.14
step
Explore Dragonmaw Port |achieve 4866/5 |goto Twilight Highlands/0 75,57
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Uldum",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(4865) end,
achieveid={4865},
patch='40003',
description="Explore Uldum, revealing the following covered areas of the world map:\n\nSchnottz's Landing\n"..
"Akhenet Fields\nKhartut's Tomb\nMar'at\nNeferset City\nObelisk of the Stars\nRuins of Ahmtul\n"..
"Orsis\nTemple of Uldum\nThe Gate of Unending Cycles\nThe Trail of Devastation\nObelisk of the Sun\n"..
"Cradle of the Ancients\nLost City of the Tol'vir\nObelisk of the Moon\nNahom\nTombs of the Precursors\n"..
"Ramkahen\nRuins of Ammon\nTahret Grounds\nThe Cursed Landing\nVir'naal Dam",
},[[
step
Explore Ramkahen |achieve 4865/12 |goto Uldum/0 54.91,34.24
step
Explore the Tahret Grounds |achieve 4865/16 |goto Uldum/0 59.89,37.83
step
Explore the Obelisk of the Stars |achieve 4865/9 |goto Uldum/0 62.94,32.54
step
Explore Khartut's Tomb |achieve 4865/3 |goto Uldum/0 64.10,21.83
step
Explore The Gate of Unending Cycles |achieve 4865/19 |goto Uldum/0 67.88,22.49
step
Explore Nahom |achieve 4865/6 |goto Uldum/0 67.01,41.29
step
Explore the Tombs of the Precursors |achieve 4865/20 |goto Uldum/0 71.85,44.77
step
Explore The Cursed Landing |achieve 4865/18 |goto Uldum/0 83.93,53.02
step
Explore The Trail of Devastation |achieve 4865/21 |goto Uldum/0 79.78,56.31
step
Explore the Lost City of the Tol'vir |achieve 4865/4 |goto Uldum/0 63.77,70.60
step
Explore Neferset City |achieve 4865/7 |goto Uldum/0 50.85,77.24
step
Explore the Cradle of the Ancients |achieve 4865/2 |goto Uldum/0 46.61,73.90
step
Explore the Ruins of Ammon |achieve 4865/14 |goto Uldum/0 36.64,66.13
step
Explore Schnottz's Landing |achieve 4865/15 |goto Uldum/0 24.48,61.18
step
Explore the Obelisk of the Sun |achieve 4865/10 |goto Uldum/0 41.88,56.64
step
Explore Akhenet Fields |achieve 4865/1 |goto Uldum/0 53.95,52.09
step
Explore the Vir'naal Dam |achieve 4865/22 |goto Uldum/0 53.49,42.15
step
Explore Mar'at |achieve 4865/5 |goto Uldum/0 49.53,39.46
step
Explore Orsis |achieve 4865/11 |goto Uldum/0 43.89,37.25
step
Explore the Temple of Uldum |achieve 4865/17 |goto Uldum/0 34.47,30.31
step
Explore the Obelisk of the Moon |achieve 4865/8 |goto Uldum/0 39.67,21.81
step
Explore the Ruins of Ahmtul |achieve 4865/13 |goto Uldum/0 45.02,15.04
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Explore Vashj'ir",{
expansion="mists",
mopready=true,
condition_end=function() return achieved(4825) end,
achieveid={4825},
patch='40003',
description="Explore Vashj'ir, revealing the following covered areas of the world map:\n\nUnderlight Canyon\n"..
"Abandoned Reef\nKorthun's End\nSeabrush\nGlimmerdeep Gorge\nGurboggle's Ledge\nDeepfin Ridge\n"..
"Seafarer's Tomb\nThe Skeletal Reef\nNespirah\nRuins of Vashj'ir\nSilver Tide Hollow\nL'ghorek\n"..
"Abyssal Breach\nThe Scalding Chasm\nGnaws' Boneyard\nRuins of Thelserai Temple\nBeth'mora Ridge\n"..
"The Clutch\nLegion's Fate\nShimmering Grotto",
},[[
step
click Hero's Call Board##250720
accept Hero's Call Vashj'ir##27724 |goto Stormwind City/0 62.90,71.55
step
talk Naraat the Earthspeaker##45226
accept Eye of the Storm##28826 |goto Stormwind City/0 74.54,19.02
step
clicknpc Waters of Farseeing##50088
Peer Into the Waters of Farseeing |q 28826/1 |goto Stormwind City/0 74.38,19.53
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto Stormwind City/0 74.54,19.02
step
talk Recruiter Burns##36799
turnin Hero's Call Vashj'ir##27724 |goto Stormwind City/0 27.37,24.15 |only if haveq(27724) or completedq(27724)
accept Call of Duty##14482 |goto Stormwind City/0 27.37,24.15
step
Ride the Mercenary Ship to Vashj'ir |q 14482/1
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Call of Duty##14482 |goto Kelp'thar Forest/0 45.24,23.36
accept Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.36
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
home The Briny Cutter |goto Kelp'thar Forest/0 45.24,23.35 |q 25357 |future
stickystart "Collect_Saltwater_Starfish"
step
Swim through the doorway |goto Kelp'thar Forest/0 44.82,23.34 < 7 |walk
Leave the ship |goto Kelp'thar Forest/0 44.73,24.07 < 7 |walk
click Conch Shell##202560
collect Conch Shell##52504 |q 24432/2 |goto Kelp'thar Forest/0 45.14,26.80
step
label "Collect_Saltwater_Starfish"
click Saltwater Stars##205989+
|tip They look like yellow starfish on the ground around this area.
collect 3 Saltwater Starfish##54828 |q 24432/1 |goto Kelp'thar Forest/0 44.29,27.17
step
Enter the ship |goto Kelp'thar Forest/0 44.91,24.16 < 7 |walk
Swim through the doorway |goto Kelp'thar Forest/0 44.84,23.44 < 7 |walk
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.35
accept Pay It Forward##25281 |goto Kelp'thar Forest/0 45.24,23.35
step
Swim through the doorway |goto Kelp'thar Forest/0 44.82,23.34 < 7 |walk
Leave the ship |goto Kelp'thar Forest/0 44.73,24.07 < 7 |walk
Use the Enchanted Conch |use Enchanted Conch##52710
|tip Use it on Drowning Soldiers around this area.
|tip They float above the floor.
Rescue #6# Drowning Soldiers |q 25281/1 |goto Kelp'thar Forest/0 45.59,28.17
step
Enter the ship |goto Kelp'thar Forest/0 44.91,24.16 < 7 |walk
Swim through the doorway |goto Kelp'thar Forest/0 44.84,23.44 < 7 |walk
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Pay It Forward##25281 |goto Kelp'thar Forest/0 45.24,23.35
accept Rest For the Weary##25405 |goto Kelp'thar Forest/0 45.24,23.35
step
talk Captain Taylor##39887
|tip Inside the ship.
turnin Rest For the Weary##25405 |goto Kelp'thar Forest/0 44.72,22.56
accept Buy Us Some Time##25357 |goto Kelp'thar Forest/0 44.72,22.56
accept Traveling on Our Stomachs##25546 |goto Kelp'thar Forest/0 44.72,22.56
stickystart "Kill_Zinjatar_Raiders"
step
Swim through the doorway |goto Kelp'thar Forest/0 44.82,23.34 < 7 |walk
Leave the ship |goto Kelp'thar Forest/0 44.73,24.07 < 7 |walk
kill Splitclaw Skitterer##40685+
collect 10 Succulent Crab Meat##54845 |q 25546/1 |goto Kelp'thar Forest/0 45.20,27.05
step
label "Kill_Zinjatar_Raiders"
kill 8 Zin'jatar Raider##39313 |q 25357/1 |goto Kelp'thar Forest/0 45.20,27.05
|tip They swim higher up.
step
Enter the ship |goto Kelp'thar Forest/0 44.91,24.16 < 7 |walk
Swim through the doorway |goto Kelp'thar Forest/0 44.84,23.44 < 7 |walk
talk Captain Taylor##39887
|tip Inside the ship.
turnin Buy Us Some Time##25357 |goto Kelp'thar Forest/0 44.72,22.56
turnin Traveling on Our Stomachs##25546 |goto Kelp'thar Forest/0 44.72,22.56
accept To Arms!##25545 |goto Kelp'thar Forest/0 44.72,22.56
accept Stormwind Elite Aquatic and Land Forces##25564 |goto Kelp'thar Forest/0 44.72,22.56
stickystart "Collect_Stormwind_Helms"
stickystart "Collect_Stormwind_Spears"
stickystart "Collect_Stormwind_Shields"
stickystart "Collect_Stormwind_SEAL_Equipment"
step
Swim through the doorway |goto Kelp'thar Forest/0 44.82,23.34 < 7 |walk
Leave the ship |goto Kelp'thar Forest/0 44.73,24.07 < 7 |walk
kill Slitherfin Eel##40855
accept Once More, With Eeling##27729 |goto Kelp'thar Forest/0 49.06,24.36
|tip You will automatically accept this quest after killing a Slitherfin Eel.
stickystart "Slay_Disgusting_Eels_Justifiably"
step
kill Gilblin Scavenger##40811+
click Stormwind Breastplates##203016+
|tip They look like small silver chest armors on the ground around this area.
collect 5 Stormwind Breastplate##54843 |q 25545/1 |goto Kelp'thar Forest/0 49.06,24.36
step
label "Collect_Stormwind_Helms"
kill Gilblin Scavenger##40811+
click Stormwind Helm##203015+
|tip They look like small silver helmets on the ground around this area.
collect 5 Stormwind Helm##117406 |q 25545/2 |goto Kelp'thar Forest/0 49.06,24.36
step
label "Collect_Stormwind_Spears"
kill Gilblin Scavenger##40811+
click Stormwind Spear##203014+
|tip They look like spears sticking out of the ground around this area.
collect 5 Stormwind Spear##54958 |q 25545/3 |goto Kelp'thar Forest/0 49.06,24.36
step
label "Collect_Stormwind_Shields"
kill Gilblin Scavenger##40811+
collect 5 Stormwind Shield##117413 |q 25545/4 |goto Kelp'thar Forest/0 49.06,24.36
step
label "Collect_Stormwind_SEAL_Equipment"
click Stormwind S.E.A.L. Equipment+
|tip They look like metal chests on the ground around this area.
collect 6 Stormwind S.E.A.L. Equipment##54957 |q 25564/1 |goto Kelp'thar Forest/0 49.06,24.36
step
label "Slay_Disgusting_Eels_Justifiably"
kill Slitherfin Eel##40855+
Slay #8# Disgusting Eels Justifiably |q 27729/1 |goto Kelp'thar Forest/0 49.06,24.36
step
Click the Complete Quest Box:
turnin Once More, With Eeling##27729
step
Enter the ship |goto Kelp'thar Forest/0 45.62,23.77 < 7 |walk
Swim through the doorway |goto Kelp'thar Forest/0 44.84,23.44 < 7 |walk
talk Captain Taylor##39887
|tip Inside the ship.
turnin To Arms!##25545 |goto Kelp'thar Forest/0 44.72,22.56
turnin Stormwind Elite Aquatic and Land Forces##25564 |goto Kelp'thar Forest/0 44.72,22.56
accept On Our Own Terms##25547 |goto Kelp'thar Forest/0 44.72,22.56
step
Watch the dialogue
talk Captain Taylor##40690
|tip Inside the ship.
turnin On Our Own Terms##25547 |goto Kelp'thar Forest/0 45.05,23.58
accept All or Nothing##25558 |goto Kelp'thar Forest/0 45.05,23.58
step
Swim through the doorway |goto Kelp'thar Forest/0 44.82,23.34 < 7 |walk
Leave the ship |goto Kelp'thar Forest/0 44.73,24.07 < 7 |walk
Kill the enemies that attack
|tip You will eventually get taken hostage.
Watch the dialogue
Complete the Defense of the Briny Gutter |q 25558/1 |goto Kelp'thar Forest/0 44.40,24.60
step
talk Erunak Stonespeaker##40105
turnin All or Nothing##25558 |goto Kelp'thar Forest/0 46.33,46.92
step
talk Moanah Stormhoof##41248
accept Better Late Than Dead##25477 |goto Kelp'thar Forest/0 46.03,46.87
step
Use Moanah's Baitstick |use Moanah's Baitstick##54462
|tip Use it on a Speckled Sea Turtle around this area.
|tip A shark will come and eat the turtle shortly after you start riding it.
Mount the Sea Turtle |q 25477/1 |goto Kelp'thar Forest/0 55.31,50.87
step
talk Moanah Stormhoof##41248
turnin Better Late Than Dead##25477 |goto Kelp'thar Forest/0 46.03,46.87
accept The Abyssal Ride##25371 |goto Kelp'thar Forest/0 46.03,46.87
step
click Braided Rope##202766
Tie Off the Seahorse Lure |q 25371/1 |goto Kelp'thar Forest/0 45.39,46.62
step
clicknpc Abyssal Seahorse##39629
|tip It appears nearby.
Ride the Abyssal Seahorse |invehicle |goto Kelp'thar Forest/0 45.39,46.62 |q 25371
step
Subdue the Abyssal Seahorse |q 25371/2
|tip Use the abilities on your action bar when the on screen instructions tell you to.
step
talk Moanah Stormhoof##41248
turnin The Abyssal Ride##25371 |goto Kelp'thar Forest/0 46.03,46.87
step
Explore Legion's Fate |achieve 4825/14 |goto Kelp'thar Forest/0 42.19,34.46
step
Explore Seafarer's Tomb |achieve 4825/13 |goto Kelp'thar Forest/0 51.04,28.03
step
Explore Gurboggle's Ledge |achieve 4825/11 |goto Kelp'thar Forest/0 52.05,51.03
step
Explore the Skeletal Reef |achieve 4825/15 |goto Kelp'thar Forest/0 58.02,48.05
step
Explore Gnaws' Boneyard |achieve 4825/10 |goto Kelp'thar Forest/0 59.96,58.01
step
Explore The Clutch |achieve 4825/12 |goto Kelp'thar Forest/0 57.97,77.71
step
Explore the Shimmering Grotto |achieve 4825/20 |goto Shimmering Expanse/0 55.75,22.23
step
Explore the Silver Tide Hollow |achieve 4825/21 |goto Shimmering Expanse/0 51.68,34.90
step
Explore the Glimmeringdeep Gorge |achieve 4825/9 |goto Shimmering Expanse/0 48.27,46.62
step
Explore Nespirah |achieve 4825/17 |goto Shimmering Expanse/0 51.06,48.26
step
Explore the Ruins of Thelserai Temple |achieve 4825/18 |goto Shimmering Expanse/0 65.84,44.67
step
Explore Beth'more Ridge |achieve 4825/16 |goto Shimmering Expanse/0 50.50,76.40
step
Explore the Ruins of Vashj'ir |achieve 4825/19 |goto Shimmering Expanse/0 41.55,63.99
step
Explore the Abyssal Breach |achieve 4825/2 |goto Abyssal Depths/0 75.03,39.38
step
Explore the Seabrush |achieve 4825/7 |goto Abyssal Depths/0 58.78,33.55
step
Explore The Scalding Chasm |achieve 4825/8 |goto Abyssal Depths/0 52.48,28.87
step
Explore the Deepfin Ridge |achieve 4825/4 |goto Abyssal Depths/0 42.72,25.95
step
Explore the Underlight Canyon |achieve 4825/3 |goto Abyssal Depths/0 43.09,49.83
step
Explore L'Ghorek |achieve 4825/6 |goto Abyssal Depths/0 40.33,51.57
|tip You will likely be dismounted and have to swim back out a bit before being able to mount again.
step
Explore the Abandoned Reef |achieve 4825/1 |goto Abyssal Depths/0 38.61,68.30
step
Explore Korthun's End |achieve 4825/5 |goto Abyssal Depths/0 48.80,68.15
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\From Hell's Heart I Stab At Thee",{
expansion="mists",
mopready=true,
achieveid={4975},
patch='40003',
description="This guide will walk you through defeating the Whale Shark in Vashj'ir (despite or perhaps because of the fact that he drops no loot).",
},[[
step
kill Whale Shark##40728 |goto Shimmering Expanse/0 70.60,55.00
|tip The Whale Shark swims in a circle around Nespirah so some searching may be required.
|tip When fighting the whale shark it is important to know that you cannot use melee attacks as he will kill you rather quickly.
|tip The best strategy is to use ranged attacks to kite him around and just slowly drain his health to 0.
Earn the "From Hell's Heart I Stab At Thee" Achievement |achieve 4975
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Stood in the Fire", {
expansion="mists",
mopready=true,
achieveid={5518},
patch='40003',
description="This guide will walk you through geting killed by Deathwing.",
},[[
step
Inside the Dragon Soul Raid:
kill Deathwing##56173
|tip During the Madness of Deathwing encounter, let Deathwing finish casting {r}Cataclysm{} and wipe the raid for the achievement.
Earn the "Stood in the Fire" Achievement |achieve 5518
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Cataclysm\\Surveying the Damage",{
expansion="mists",
mopready=true,
achieveid={4827},
patch='40003',
description="This guide will walk you through exploring areas in Kalimdor and the Eastern Kingdoms to see the changes wrought by the Cataclysm.",
},[[
step
View The Raging Chasm in Westfall |achieve 4827/13 |goto Westfall/0 38.50,42.30
step
View The Sundering in Stranglethorn |achieve 4827/4 |goto Northern Stranglethorn 50.40,66.50
step
View The Scar of the Worldbreaker in Badlands |achieve 4827/1 |goto Badlands/0 43.40,42.50
step
View The Stonewrought Dam in Loch Modan |achieve 4827/10 |goto Loch Modan/0 42.00,11.30
step
View Ruins of Southshore in Hillsbrad Foothills |achieve 4827/9 |goto Hillsbrad Foothills/0 51.30,71.40
step
View The Greymane Wall in Silverpine |achieve 4827/3 |goto Ruins of Gilneas/0 60.20,10.50
step
View The Battlescar in Southern Barrens |achieve 4827/6 |goto Southern Barrens/0 45.50,70.30
step
View The Valley of the Watchers in Tanaris |achieve 4827/8 |goto Tanaris/0 37.70,78.90
step
View The Shimmering Deep in Thousand Needles |achieve 4827/2 |goto Thousand Needles/0 74.40,82.10
step
View Cenarion Wildlands in Desolace |achieve 4827/11 |goto Desolace/0 57.50,54.30
step
View Thunder Peak in Ashenvale |achieve 4827/7 |goto Ashenvale/0 48.20,53.50
step
View Southfury Watershed in Durotar |achieve 4827/12 |goto Durotar/0 38.80,38.50
step
View The Ruins of Auberdine in Darkshore |achieve 4827/5 |goto Darkshore/0 38.60,45.30
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Breaking The Sound Barrier",{
expansion="mists",
mopready=true,
achieveid={5180},
patch='40003',
description="This guide will walk you through learning the master riding skill.",
},[[
step
This achievement _requires_ level 40
The cost of this riding training is _5000 Gold_
|tip The price can be reduced by home faction discounts based on current reputation.
talk Bralla Cloudwing##43769
learn Master Riding##90265 |goto Stormwind City/0 70.23,73.35
You can purchase a flying mount from _Tannec Stonebeak_ just past the _Gryphon Master_ at [71.40,71.94].
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Cataclysmically Delicious",{
expansion="mists",
mopready=true,
achieveid={5753},
patch='40100',
description="Sample Cataclysm delicacies.",
},[[
step
Collect #79# Epicurean Awards|complete curcount(81) >= 79
step
talk Lenedil Moonwing##43411
buy 1 Tasty Puffball##58279 |complete itemcount(58279) >= 1 |achieve 5753 |goto Mount Hyjal/0 62.84,23.73
step
Sample a Tasty Puffball |use Tasty Puffball##58279 |achieve 5753/42
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in the waters of Nordrassil |cast Fishing##7620
collect 1 Mountain Trout##53063 |achieve 5753 |goto Mount Hyjal/0 61.56,23.90
collect 2 Striped Lurker##53067 |achieve 5753 |goto Mount Hyjal/0 61.56,23.90
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in the waters of Ramkahen |cast Fishing##7620
collect 2 Lavascale Catfish##53068 |achieve 5753 |goto Uldum/0 54.36,37.75
collect 3 Sharptooth##53062 |achieve 5753 |goto Uldum/0 54.36,37.75
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Blackbelly Mudfish Schools around Ramkahen |cast Fishing##7620
|tip These can be found all around the lake.
collect 2 Blackbelly Mudfish##53066 |achieve 5753 |goto Uldum/0 54.36,37.75
step
kill Riverbed Crocolisk##45321+
collect 2 Crocolisk Tail##62784 |achieve 5753 |goto Uldum/0 56.04,46.20
step
kill Marsh Serpent##51676+
collect 1 Toughened Flesh##62778 |achieve 5753 |goto Uldum/0 62.82,79.47
|tip Serpents can be found on land around this area.
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Fathom Eel Swarms |cast Fishing##7620
|tip These can be found all along the coast.
collect 1 Fathom Eel##53070 |achieve 5753 |goto Uldum/0 64.76,79.61
step
kill Brinescale Serpent##39948+
collect 1 Snake Eye##62780 |achieve 5753 |goto Kelp'thar Forest/0 56.50,38.51
step
kill Speckled Sea Turtle##40223+
collect 1 Giant Turtle Tongue##62781 |achieve 5753 |goto Kelp'thar Forest/0 52.60,45.01
step
kill Green Sand Crab##39418+
collect 1 Monstrous Claw##62779 |achieve 5753 |goto Shimmering Expanse/0 42.72,34.48
step
Enter Highbank Keep |goto Twilight Highlands/0 79.40,77.30
Go through the doorway |goto Twilight Highlands/0 79.00,77.60
talk Innkeeper Teresa##49686
buy 1 Hardtack##58275 |complete itemcount(58275) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.00,77.80
buy 1 Highland Sheep Cheese##58259 |complete itemcount(58259) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.00,77.80
buy 1 Gilnean White##58276 |complete itemcount(58276) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.00,77.80
buy 1 Smoked String Cheese##58258 |complete itemcount(58258) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.00,77.80
buy 1 Pine Nut Bread##58260 |complete itemcount(58260) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.00,77.80
step
Sample a piece of Hardtack |use Hardtack##58275 |achieve 5753/16
Sample a Highland Sheep Cheese |use Highland Sheep Cheese##58259 |achieve 5753/19
Sample a Gilnean White |use Gilnean White##58276 |achieve 5753/13
Sample a Smoked String Cheese |use Smoked String Cheese##58258 |achieve 5753/39
Sample a Pine Nut Bread |use Pine Nut Bread##58260 |achieve 5753/28
step
Enter Highbank Keep |goto Twilight Highlands/0 79.80,78.07
Go through the doorway |goto Twilight Highlands/0 79.54,78.52
talk Innkeeper Francis##49688
buy 1 Stewed Rabbit##58280 |complete itemcount(58280) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.37,78.53
buy 1 Roasted Beef##58268 |complete itemcount(58268) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.37,78.53
buy 1 Massive Turkey Leg##58269 |complete itemcount(58269) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.37,78.53
buy 1 Tropical Sunfruit##58278 |complete itemcount(58278) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.37,78.53
buy 1 Sour Green Apple##58264 |complete itemcount(58264) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.37,78.53
buy 1 Highland Pomegranate##58265 |complete itemcount(58265) >= 1 |achieve 5753 |goto Twilight Highlands/0 79.37,78.53
step
Sample a Stewed Rabbit |use Stewed Rabbit##58280 |achieve 5753/41
Sample a Roasted Beef |use Roasted Beef##58268 |achieve 5753/29
Sample a Massive Turkey Leg |use Massive Turkey Leg##58269 |achieve 5753/24
Sample a Tropical Sunfruit |use Tropical Sunfruit##58278 |achieve 5753/44
Sample a Sour Green Apple |use Sour Green Apple##58264 |achieve 5753/40
Sample a Highland Pomegranate |use Highland Pomegranate##58265 |achieve 5753/18
step
talk Evan Silvia##49704
buy 1 Simmered Squid##58277 |complete itemcount(58277) >= 1 |achieve 5753 |goto Twilight Highlands/0 78.46,76.64
buy 1 Sliced Raw Billfish##58262 |complete itemcount(58262) >= 1 |achieve 5753 |goto Twilight Highlands/0 78.46,76.64
buy 1 Grilled Shark##58263 |complete itemcount(58263) >= 1 |achieve 5753 |goto Twilight Highlands/0 78.46,76.64
step
Sample a Grilled Shark |use Grilled Shark##58263 |achieve 5753/15
Sample a Simmered Squid |use Simmered Squid##58277 |achieve 5753/36
Sample a Sliced Raw Billfish |use Sliced Raw Billfish##58262 |achieve 5753/38
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Stand on the rock
Fish in the waters off Highbank |cast Fishing##7620
collect 1 Algaefin Rockfish##53071 |achieve 5753 |goto Twilight Highlands/0 82.80,76.30
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Deepsea Sagefish Schools |cast Fishing##7620
|tip These can be found all along the coast.
collect 2 Deepsea Sagefish##53072 |achieve 5753 |goto Twilight Highlands/0 78.44,68.01
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in open water along the Twilight Shore |cast Fishing##7620
collect 1 Murglesnout##53069 |achieve 5753 |goto Twilight Highlands/0 78.44,68.01
step
kill Obsidian Viletongue##47796+, Obsidian Pyrewing##46141+, Obsidian Charscale##47797+
collect 1 Dragon Flank##62782 |achieve 5753 |goto Twilight Highlands/0 65.20,79.00
step
talk Gronk Hamcheeks##57262
buy 1 Oily Giblets##59231 |complete itemcount(59231) >= 1 |achieve 5753 |goto Twilight Highlands/0 50.46,58.47
buy 1 Unidentifiable Meat Dish##59232 |complete itemcount(59232) >= 1 |achieve 5753 |goto Twilight Highlands/0 50.46,58.47
buy 1 Rock-Hard Biscuit##59227 |complete itemcount(59227) >= 1 |achieve 5753 |goto Twilight Highlands/0 50.46,58.47
buy 1 Vile Purple Fungus##59228 |complete itemcount(59228) >= 1 |achieve 5753 |goto Twilight Highlands/0 50.46,58.47
step
Sample some Oily Giblets |use Oily Giblets##59231 |achieve 5753/26
Sample an Unidentifiable Meat Dish |use Unidentifiable Meat Dish##59232 |achieve 5753/45
Sample a Rock-Hard Biscuit |use Rock-Hard Biscuit##59227 |achieve 5753/30
Sample a Vile Purple Fungus |use Vile Purple Fungus##59228 |achieve 5753/46
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Highland Guppy Schools |cast Fishing##7620
|tip These can be found in the river also.
collect 1 Highland Guppy##53064 |achieve 5753 |goto Twilight Highlands/0 39.53,56.43
step
kill Shalehide Basilisk##43181+
collect 1 Basilisk "Liver"##62783 |achieve 5753 |goto Deepholm/0 41.12,32.78
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Broiled Mountain Trout##65411 |complete itemcount(65411) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Broiled Mountain Trout from the Auction House.
step
learn Broiled Mountain Trout##88012 |use Recipe: Broiled Mountain Trout##65411 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Broiled Mountain Trout##88012,Cooking,1 total |achieve 5753
step
Sample a Broiled Mountain Trout |use Broiled Mountain Trout##62655 |achieve 5753/6
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Lavascale Fillet##65407 |complete itemcount(65407) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Lavascale Fillet from the Auction House.
step
learn Lavascale Fillet##88024 |use Recipe: Lavascale Fillet##65407 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lavascale Fillet##88024,Cooking,1 total |achieve 5753
step
Sample a Lavascale Fillet |use Lavascale Fillet##62654 |achieve 5753/20
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Lightly Fried Lurker##65412 |complete itemcount(65412) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Lightly Fried Lurker from the Auction House.
step
learn Lightly Fried Lurker##88028 |use Recipe: Lightly Fried Lurker##65412 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lightly Fried Lurker##88028,Cooking,1 total |achieve 5753
step
Sample a Lightly Fried Lurker |use Lightly Fried Lurker##62651 |achieve 5753/22
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Lurker Lunch##65416 |complete itemcount(65416) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Lurker Lunch from the Auction House.
step
learn Lurker Lunch##88030 |use Recipe: Lurker Lunch##65416 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lurker Lunch##88030,Cooking,1 total |achieve 5753
step
Sample a Lurker Lunch |use Lurker Lunch##62657 |achieve 5753/23
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Salted Eye##65410 |complete itemcount(65410) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Salted Eye from the Auction House.
step
learn Salted Eye##88035 |use Recipe: Salted Eye##65410 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Salted Eye##88035,Cooking,1 total |achieve 5753
step
Sample a Salted Eye |use Salted Eye##62653 |achieve 5753/31
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Seasoned Crab##65413 |complete itemcount(65413) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Seasoned Crab from the Auction House.
step
learn Seasoned Crab##88037 |use Recipe: Seasoned Crab##65413 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Seasoned Crab##88037,Cooking,1 total |achieve 5753
step
Sample a Seasoned Crab |use Seasoned Crab##62652 |achieve 5753/34
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Whitecrest Gumbo##65406 |complete itemcount(65406) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Whitecrest Gumbo from the Auction House.
step
Click here if you would like to farm for this Blood Shrimp |next "Farm Blood Shrimp"
Click here if you would like to attempt to receive these Blood Shrimp through collecting Tasty Meat Crates through the Cataclysm Cooking dailies |next "Tasty Meat"
confirm
step
label "Farm Blood Shrimp"
kill Zin'jatar Raider##39313+
collect Abyssal Clam##52340+ |use Abyssal Clam##52340 |n
collect 1 Blood Shrimp##62791 |achieve 5753 |goto Kelp'thar Forest/0 39.98,30.87
|next "Whitecrest"
step
label "Tasty Meat"
talk Bario Matalli##49701
buy 1 Crate of Tasty Meat##65513 |n
|tip These cost 2 Epicurean's Awards each. They have a chance to contain Blood Shrimp.
collect 1 Blood Shrimp##62791 |achieve 5753 |goto Stormwind City/0 50.42,71.87
|next "Whitecrest"
step
label "Whitecrest"
learn Whitecrest Gumbo##88047 |use Recipe: Whitecrest Gumbo##65406 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Whitecrest Gumbo##88047,Cooking,1 total |achieve 5753
step
Sample a Whitecrest Gumbo |use Whitecrest Gumbo##62656 |achieve 5753/48
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Tender Baked Turtle##65419 |complete itemcount(65419) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Tender Baked Turtle from the Auction House.
step
learn Tender Baked Turtle##88046 |use Recipe: Tender Baked Turtle##65419 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Tender Baked Turtle##88046,Cooking,1 total |achieve 5753
step
Sample a Tender Baked Turtle |use Tender Baked Turtle##62658 |achieve 5753/43
step
talk Bario Matalli##49701 |only if skill("Cooking")>=475
buy 1 Recipe: Fish Fry##65423 |complete itemcount(65423) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=475
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=475
Your cooking skill is not high enough (475) to use this recipe. Reach at least 475 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 474
|tip You can also buy Fish Fry from the Auction House.
step
learn Fish Fry##88018 |use Recipe: Fish Fry##65423 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Fish Fry##88018,Cooking,1 total |achieve 5753
step
Sample a Fish Fry |use Fish Fry##62677 |achieve 5753/11
step
talk Bario Matalli##49701 |only if skill("Cooking")>=475
buy 1 Recipe: Hearty Seafood Soup##65418 |complete itemcount(65418) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=475
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=475
Your cooking skill is not high enough (475) to use this recipe. Reach at least 475 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 474
|tip You can also buy Hearty Seafood Soup from the Auction House.
step
talk Bario Matalli##49701
buy Crate of Tasty Meat##65513 |n
|tip These cost 2 Epicurean's Awards each. They have a chance to contain Blood Shrimp.
collect 1 Blood Shrimp##62791 |achieve 5753 |goto Stormwind City/0 50.42,71.87
step
learn Hearty Seafood Soup##88021 |use Recipe: Hearty Seafood Soup##65418 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Hearty Seafood Soup##88021,Cooking,1 total |achieve 5753
step
Sample a Hearty Seafood Soup |use Hearty Seafood Soup##62659 |achieve 5753/17
step
talk Bario Matalli##49701 |only if skill("Cooking")>=475
buy 1 Recipe: Pickled Guppy##65417 |complete itemcount(65417) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=475
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=475
Your cooking skill is not high enough (475) to use this recipe. Reach at least 475 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 474
|tip You can also buy Pickled Guppy from the Auction House.
step
learn Pickled Guppy##88033 |use Recipe: Pickled Guppy##65417 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Pickled Guppy##88033,Cooking,1 total |achieve 5753
step
Sample a Pickled Guppy |use Pickled Guppy##62660 |achieve 5753/27
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Baked Rockfish##65426 |complete itemcount(65426) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Baked Rockfish##88003 |use Recipe: Baked Rockfish##65426 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Baked Rockfish##88003,Cooking,1 total |achieve 5753
step
Sample a Baked Rockfish |use Baked Rockfish##62661 |achieve 5753/1
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Basilisk Liverdog##65427 |complete itemcount(65427) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Basilisk Liverdog##88004 |use Recipe: Basilisk Liverdog##65427 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Basilisk Liverdog##88004,Cooking,1 total |achieve 5753
step
Sample a Basilisk Liverdog |use Basilisk Liverdog##62665 |achieve 5753/2
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Beer-Basted Crocolisk##65429 |complete itemcount(65429) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Beer-Basted Crocolisk##88005 |use Recipe: Beer-Basted Crocolisk##65429 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Beer-Basted Crocolisk##88005,Cooking,1 total |achieve 5753
step
Sample a Beer-Basted Crocolisk |use Beer-Basted Crocolisk##62670 |achieve 5753/3
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Blackbelly Sushi##65424 |complete itemcount(65424) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Blackbelly Sushi##88034 |use Recipe: Blackbelly Sushi##65424 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Blackbelly Sushi##88034,Cooking,1 total |achieve 5753
step
Sample a Blackbelly Sushi |use Blackbelly Sushi##62670 |achieve 5753/4
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Crocolisk Au Gratin##65430 |complete itemcount(65430) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Crocolisk Au Gratin##88014 |use Recipe: Crocolisk Au Gratin##65430 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Crocolisk Au Gratin##88014,Cooking,1 total |achieve 5753
step
Sample a Crocolisk Au Gratin |use Crocolisk Au Gratin##62664 |achieve 5753/9
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Delicious Sagefish Tail##65422 |complete itemcount(65422) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Delicious Sagefish Tail##88016 |use Recipe: Delicious Sagefish Tail##65422 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Delicious Sagefish Tail##88016,Cooking,1 total |achieve 5753
step
Sample a Delicious Sagefish Tail |use Delicious Sagefish Tail##62666 |achieve 5753/10
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Grilled Dragon##65428 |complete itemcount(65428) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Grilled Dragon##88020 |use Recipe: Grilled Dragon##65428 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Grilled Dragon##88020,Cooking,1 total |achieve 5753
step
Sample a Grilled Dragon |use Grilled Dragon##62662 |achieve 5753/14
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Lavascale Minestrone##65409 |complete itemcount(65409) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Lavascale Minestrone##88025 |use Recipe: Lavascale Minestrone##65409 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lavascale Minestrone##88025,Cooking,1 total |achieve 5753
step
Sample a Lavascale Minestrone |use Lavascale Minestrone##62662 |achieve 5753/21
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Mushroom Sauce Mudfish##65420 |complete itemcount(65420) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Mushroom Sauce Mudfish##88031 |use Recipe: Mushroom Sauce Mudfish##65420 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Mushroom Sauce Mudfish##88031,Cooking,1 total |achieve 5753
step
Sample a Mushroom Sauce Mudfish |use Mushroom Sauce Mudfish##62667 |achieve 5753/25
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Scalding Murglesnout##68688 |complete itemcount(68688) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Scalding Murglesnout##96133 |use Recipe: Scalding Murglesnout##68688 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Scalding Murglesnout##96133,Cooking,1 total |achieve 5753
step
Sample a Scalding Murglesnout |use Scalding Murglesnout##68687 |achieve 5753/32
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Severed Sagefish Head##65421 |complete itemcount(65421) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Severed Sagefish Head##88039 |use Recipe: Severed Sagefish Head##65421 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Severed Sagefish Head##88039,Cooking,1 total |achieve 5753
step
Sample a Severed Sagefish Head |use Severed Sagefish Head##62671 |achieve 5753/35
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Skewered Eel##65425 |complete itemcount(65425) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Skewered Eel##88042 |use Recipe: Skewered Eel##65425 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Skewered Eel##88042,Cooking,1 total |achieve 5753
step
Sample a Skewered Eel |use Skewered Eel##62669 |achieve 5753/37
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Chocolate Cookie##65431 |complete itemcount(65431) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=505
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=505
buy 1 Imported Supplies##68689 |complete itemcount(68689) >= 1 |achieve 5753 |goto Stormwind City/0 60.40,75.30 |only if skill("Cooking")>=505
|tip One bag of Imported Supplies costs a single Epicurean's Award. These are obtained by doing cooking dailies. |only if skill("Cooking")>=505
Your cooking skill is not high enough (505) to use this recipe. Reach at least 505 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 504
step
Open the bag of supplies |use Imported Supplies##68689
collect 1 Cocoa Beans##62786 |achieve 5753
|tip You may also purchase Cocoa Beans from the Auction House.
step
Enter the _Pig and Whistle Tavern_ |goto Stormwind City/0 75.10,55.30
Enter the kitchen |goto Stormwind City/0 76.80,53.60
talk Erika Tate##5483
buy 2 Simple Flour##30817 |complete itemcount(30817) >= 1 |achieve 5753 |goto Stormwind City/0 77.60,53.10
|tip The extra Flour will be used to make a Fortune Cookie.
step
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Chocolate Cookie##88013,Cooking,1 total |achieve 5753
step
Sample a Chocolate Cookie |use Chocolate Cookie##62680 |achieve 5753/8
step
talk Stephen Ryback##5482
learn Blackened Surprise##88006 |achieve 5753 |goto Stormwind City/0 77.29,53.22
step
Create a cooking fire |cast Cooking Fire##818
create Blackened Surprise##88006,Cooking,1 total |achieve 5753
step
Sample a Blackened Surprise |use Blackened Surprise##62676 |achieve 5753/5
step
talk Maegan Tillman##44237
buy 1 Buttery Wheat Roll##58261 |goto Stormwind City/0 75.68,54.10
buy 1 Scarlet Polypore##58267 |goto Stormwind City/0 75.68,54.10
buy 1 Violet Morel##58266 |goto Stormwind City/0 75.68,54.10
step
Sample a Buttery Wheat Roll |use Buttery Wheat Roll##58261 |achieve 5753/7
Sample a Scarlet Polypore |use Scarlet Polypore##58267 |achieve 5753/33
Sample a Violet Morel |use Violet Morel##58266 |achieve 5753/47
step
talk Bario Matalli##49701 |only if skill("Cataclysm Cooking") >= 75
buy 1 Recipe: Fortune Cookie##65432 |complete itemcount(65432) >= 1 |achieve 5753 |only if skill("Cataclysm Cooking") >= 75 |goto Stormwind City/0 50.42,71.87
|tip This recipe costs 5 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cataclysm Cooking") >= 75
Reach at least 75 Cataclysm Cooking |confirm |only if skill("Cataclysm Cooking") <= 74
step
buy 1 Mysterious Fortune Card##60838 |complete itemcount(60838) >= 1 |achieve 5753
|tip These are made with the Inscription profession. You can purchase them from the Auction House.
step
learn Fortune Cookie##88019 |use Recipe: Fortune Cookie##65432 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Fortune Cookie##88019,Cooking,1 total |achieve 5753
step
Sample a Fortune Cookie |use Fortune Cookie##62649 |achieve 5753/12
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Drown Your Sorrows",{
expansion="mists",
mopready=true,
achieveid={5754},
patch='40100',
description="This guide will walk you through drinking these Cataclysm beverages.",
},[[
step
talk Kylene##19186
buy 1 Jug of Badlands Bourbon##2595 |complete itemcount(2595) >= 1 |goto Shattrath City 74.80,30.80
buy 2 Skin of Dwarven Stout##2596 |complete itemcount(2596) >= 2 |goto Shattrath City 74.80,30.80
only if not achieved(5754,1)
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 Darkbrew Lager##88015,Cooking,1 total |n
Drink the Darkbrew Lager |use Darkbrew Lager##62790 |achieve 5754/1 |goto Shattrath City 75.20,32.40
step
talk Thaegra Tillstone##44235 |goto Stormwind City,64.90,31.90
buy 3 Refreshing Spring Water##159 |complete itemcount(159) >= 3
buy 1 Fresh Water##58274 |complete itemcount(58274) >= 1 |only if not achieved(5754,2)
buy 1 Sparkling Oasis Water##58256 |complete itemcount(58256) >= 1 |only if not achieved(5754,9)
buy 1 Highland Spring Water##58257 |complete itemcount(58257) >= 1 |only if not achieved(5754,6)
step
Drink the Fresh Water |use Fresh Water##58274 |achieve 5754/2
Drink the Sparkling Oasis Water |use Sparkling Oasis Water##58256 |achieve 5754/9
Drink the Highland Spring Water |use Highland Spring Water##58257 |achieve 5754/6
step
talk Caretaker Movra##39878
buy 1 Greasy Whale Milk##59029 |n
Drink the Greasy Whale Milk |use Greasy Whale Milk##59029 |achieve 5754/4 |goto Shimmering Expanse 49.10,42.00
step
talk Gronk Hamcheeks##57262
buy 1 Fungus Squeezings##59230 |complete itemcount(59230) >= 1 |goto Twilight Highlands 50.60,58.40 |only if not achieved(5754,3)
buy 1 Murky Water##59229 |complete itemcount(59229) >= 1 |goto Twilight Highlands 50.60,58.40 |only if not achieved(5754,7)
step
Drink the Fungus Squeezings |use Fungus Squeezings##59230 |achieve 5754/3
Drink the Murky Water |use Murky Water##59229 |achieve 5754/7
step
talk Innkeeper Francis##49688
buy 1 Tropical Sunfruit##58278 |complete itemcount(58278) >= 1 |goto Twilight Highlands 79.40,78.50
only if not achieved(5754)
step
talk Innkeeper Allison##6740
buy 1 Highland Pomegranate##58265 |complete itemcount(58265) >= 1 |goto Stormwind City 60.40,75.30
|next "CookYourself"
only if not achieved(5754)
step
label "CookYourself"
Use the Stormwind Cooking Dailies guide to
earn 12 Epicurean's Award##81
Click here line if you would rather not spend the time earning these Epicurean's Awards |confirm |next "RatherNotCook"
step
talk Bario Matalli##49701
buy 1 Recipe: Starfire Espresso##65414 |complete itemcount(65414) >= 1 |goto Stormwind City 50.80,71.40
buy 1 Recipe: Highland Spirits##65415 |complete itemcount(65415) >= 1 |goto Stormwind City 50.80,71.40
buy 1 Recipe: South Island Iced Tea##65433 |complete itemcount(65433) >= 1 |goto Stormwind City 50.80,71.40
only if not achieved(5754)
step
learn Starfire Espresso##88045 |use Recipe: Starfire Espresso##65414
learn Highland Spirits##88022 |use Recipe: Highland Spirits##65415
learn South Island Iced Tea##88044 |use Recipe: South Island Iced Tea##65433
step
talk Bario Matalli##49701
buy 1 Imported Supplies##68689 |n
use Imported Supplies##68689
collect 1 Cocoa Beans##62786 |goto Stormwind City 50.80,71.40
only if not achieved(5754)
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 Starfire Espresso##88045,Cooking,1 total |n
collect 1 Starfire Espresso##62675
only if not achieved(5754)
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 Highland Spirits##88022,Cooking,1 total |n
collect 1 Highland Spirits##62674
only if not achieved(5754)
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 South Island Iced Tea##88044,Cooking,1 total |n
collect 1 South Island Iced Tea##62672
|next "ReadytoDrink"
only if not achieved(5754)
step
label "RatherNotCook"
Find a Cook to make your drinks
|tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly..
collect 1 Starfire Espresso##62675
collect 1 Highland Spirits##62674
collect 1 South Island Iced Tea##62672
only if not achieved(5754)
step
label "ReadytoDrink"
Drink the Starfire Espresso |use Starfire Espresso##62675 |achieve 5754/10
Drink the Highland Spirits |use Highland Spirits##62674 |achieve 5754/5
Drink the South Island Iced Tea |use South Island Iced Tea##62672 |achieve 5754/8
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Dual Talent Specialization",{
expansion="mists",
mopready=true,
achieveid={2716},
patch='30101',
description="This guide will walk you through visiting your class trainer when you are at least level 30 and activate your Dual Talent Specialization.",
},[[
step
talk Einris Brightspear##5515 |only Hunter
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 67.60,36.30 |only Hunter
talk Osborne the Night Man##918 |only Rogue
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 77.50,65.30 |only Rogue
talk Brother Joshua##5489 |only Priest
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 49.50,45.20 |only Priest
talk Celestine of the Harvest##44395 |only Druid
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 57.50,24.90 |only Druid
talk Lord Grayson Shadowbreaker##928 |only Paladin
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 52.80,44.90 |only Paladin
talk Elsharin##5498 |only Mage
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 48.20,87.20 |only Mage
talk Farseer Umbrua##20407 |only Shaman
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 65.90,31.40 |only Shaman
talk Ursula Deline##5495 |only Warlock
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 39.90,84.20 |only Warlock
talk Wu Shen##5479 |only Warrior
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 80.10,69.80 |only Warrior
talk Aysa Cloudsinger##62419 |only Monk
Learn Dual Talent Specialization |achieve 2716 |goto Stormwind City/0 68.20,16.20 |only Monk
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Fast and Furious",{
expansion="mists",
mopready=true,
achieveid={889},
patch='30001',
description="This guide will walk you through learn the journeyman riding skill.",
},[[
step
ding 40
step
talk Darlene Stokx##43693 |only Human
learn Journeyman Riding##33391 |achieve 889 |goto Stormwind City/0 77.60,67.20 |only Human
You can also purchase a mount from the vendor at [77.00,67.80] |only Human
talk Ultham Ironhorn##4772 |only Dwarf
learn Journeyman Riding##33391 |achieve 889 |goto Dun Morogh/0 71.20,48.40 |only Dwarf
You can also purchase a mount from the vendor at [Dun Morogh/0 70.60,48.80] |only Dwarf
talk Jartsam##4753 |only Night Elf
learn Journeyman Riding##33391 |achieve 889 |goto Darnassus/0 42.60,33.60 |only Night Elf
You can also purchase a mount from the vendor at [Darnassus/0 42.60,32.80] |only Night Elf
talk Binjy Featherwhistle##7954 |only Gnome
learn Journeyman Riding##33391 |achieve 889 |goto Dun Morogh/0 56.20,46.40 |only Gnome
You can also purchase a mount from the vendor at [Dun Morogh/0 56.20,46.20] |only Gnome
talk Aalun##20914 |only Draenei
learn Journeyman Riding##33391 |achieve 889 |goto The Exodar/0 81.40,52.60 |only Draenei
You can also purchase a mount from the vendor at [The Exodar/0 81.60,52.60] |only Draenei
talk Jartsam##4753 |only Worgen
learn Journeyman Riding##33391 |achieve 889 |goto Darnassus/0 42.60,33.60 |only Worgen
You can also purchase a mount from the vendor at [Darnassus/0 48.60,22.20] |only Worgen
talk Darlene Stokx##43693 |only Pandaren
learn Journeyman Riding##33391 |achieve 889 |goto Stormwind City/0 77.60,67.20 |only Pandaren
You can also purchase a mount from the vendor at [Stormwind City/0 67.80,18.60] |only Pandaren
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Friend or Fowl?",{
expansion="mists",
mopready=true,
achieveid={1254},
patch='30001',
description="This guide will walk you through slaying 15 turkeys in 3 minutes in Howling Fjord.",
},[[
step
kill Fjord Turkey##24746+
|tip Kill them as fast as you can, then hurry to kill another one each time.
Slay #15# Turkeys in 3 Minutes |achieve 1254 |goto Howling Fjord/0 66.31,71.14
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Giddy Up!",{
expansion="mists",
mopready=true,
achieveid={891},
patch='30200',
description="This guide will walk you through learning the apprentice riding skill.",
},[[
step
ding 20
step
talk Darlene Stokx##43693 |only Human
learn Apprentice Riding##33388 |achieve 891 |goto Stormwind City/0 77.60,67.20 |only Human
You can also purchase a mount from the vendor at [Stormwind City/0 77.00,67.80] |only Human
talk Ultham Ironhorn##4772 |only Dwarf
learn Apprentice Riding##33388 |achieve 891 |goto Dun Morogh/0 71.20,48.40 |only Dwarf
You can also purchase a mount from the vendor at [Dun Morogh/0 70.60,48.80] |only Dwarf
talk Jartsam##4753 |only Night Elf
learn Apprentice Riding##33388 |achieve 891 |goto Darnassus/0 42.60,33.60 |only Night Elf
You can also purchase a mount from the vendor at [Darnassus/0 42.60,32.80] |only Night Elf
talk Binjy Featherwhistle##7954 |only Gnome
learn Apprentice Riding##33388 |achieve 891 |goto Dun Morogh/0 56.20,46.40 |only Gnome
You can also purchase a mount from the vendor at [Dun Morogh/0 56.20,46.20] |only Gnome
talk Aalun##20914 |only Draenei
learn Apprentice Riding##33388 |achieve 891 |goto The Exodar/0 81.40,52.60 |only Draenei
You can also purchase a mount from the vendor at [The Exodar/0 81.60,52.60] |only Draenei
talk Jartsam##4753 |only Worgen
learn Apprentice Riding##33388 |achieve 891 |goto Darnassus/0 42.60,33.60 |only Worgen
You can also purchase a mount from the vendor at [Darnassus/0 48.60,22.20] |only Worgen
talk Darlene Stokx##43693 |only Pandaren
learn Apprentice Riding##33388 |achieve 891 |goto Stormwind City/0 77.60,67.20 |only Pandaren
You can also purchase a mount from the vendor at [Stormwind City/0 67.80,18.60] |only Pandaren
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Going Down?",{
expansion="mists",
mopready=true,
achieveid={964},
patch='30001',
description="This guide will walk you through falling 65 yards without dying.",
},[[
step
|achieve 964 |goto Shattrath City/0 50.13,62.05 |only if not (Mage or Paladin or DemonHunter)
|achieve 964 |only if (Mage or Paladin or DemonHunter)
|tip Wait for the elevator to reach the top, then leap off the left or right side. |only if not (Mage or Paladin or DemonHunter)
|tip You must hit the ramp to the left or the right of the bridge. |only if not (Mage or Paladin or DemonHunter)
|tip Hitting the bridge leading to the Terrace of Light won't be enough. |only if not (Mage or Paladin or DemonHunter)
|tip Mount up and fly high into the air, then dismount and use "Divine Shield" or "Hand of Protection" before you hit the ground. |only if Paladin
|tip Mount up and fly high into the air, then dismount and use "Ice Block" before you hit the ground. |only if Mage
|tip Mount up and fly high into the air, then dismount and use "Glide" before you hit the ground. |only if DemonHunter
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Higher Learning",{
expansion="mists",
mopready=true,
achieveid={1956},
patch='30002',
description="This guide will walk you through reading the volumes of 'The Schools of Arcane Magic' found in Dalaran.",
},[[
step
_NOTE:_
|tip These books have respawn timers of about 3-4 hours.
|tip The book you want won't always be there.
|tip Fake trash books spawn to make the achievement even harder to get, but keep at it.
|tip Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
|tip This is an achievement that you may want to dedicate a lot of time to if you want it.
|tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide.
confirm |achieve 1956
step
label "RestartHigherLearning"
click The Schools of Arcane Magic - Illusion##192865
|tip It looks like a brown book laying on a wooden crate.
Read The Schools of Arcane Magic - Illusion |achieve 1956/6 |goto Dalaran 64.40,52.40
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Introduction##192708
|tip It looks like a blue book laying on ground next to a bookshelf inside this building.
Read The Schools of Arcane Magic - Introduction |achieve 1956/1 |goto Dalaran 56.60,45.60
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Abjuration##192709
|tip It looks like a brown book laying on ground next to a small table inside this building.
Read The Schools of Arcane Magic - Abjuration |achieve 1956/2 |goto Dalaran 52.30,54.80
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Enchantment##192713
|tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
Read The Schools of Arcane Magic - Enchantment |achieve 1956/5 |goto Dalaran 43.60,46.70
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Transmutation##192867
|tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.
Read The Schools of Arcane Magic - Transmutation |achieve 1956/8 |goto Dalaran 46.80,40.00
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Necromancy##192866
|tip It looks like a blue book laying on a bookshelf upstairs in this building.
Read The Schools of Arcane Magic - Necromancy |achieve 1956/7 |goto Dalaran 46.80,39.10
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Conjuration##192710
|tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
Read The Schools of Arcane Magic - Conjuration |achieve 1956/3 |goto Dalaran 30.80,46.00
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Divination##192711
|tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
Read The Schools of Arcane Magic - Divination |achieve 1956/4 |goto Dalaran 26.50,52.10
_Click here_ if this book isn't available |confirm
step
Looks like you still need more education! _Click here_ to start the guide over |confirm |next "RestartHigherLearning" |only if not achieved(1956)
Congratulations, you have earned the Higher Learning achievement! |only if achieved(1956)
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Into The Wild Blue Yonder",{
expansion="mists",
achieveid={890},
patch='30001',
description="This guide will walk you through learning the expert riding skill.",
mopready=true,
},[[
step
This achievement _requires_ level 60
The cost of this riding training is 250 Gold
|tip The price can be reduced by home faction discounts based on current reputation.
confirm
step
talk Bralla Cloudwing##43769 |goto Stormwind City 70.60,73.00
learn Expert Riding##34090 |achieve 890
You can also purchase a mount from the vendor at [71.40,72.20]
step
Congratulations, you have earned the Into The Wild Blue Yonder achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\It's Happy Hour Somewhere",{
expansion="mists",
achieveid={1833},
patch='30002',
description="This guide will walk you through drinking 25 different types of beverages.",
mopready=true,
},[[
step
talk Innkeeper Allison##6740
|tip Inside the building.
buy 1 Refreshing Spring Water##159 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Ice Cold Milk##1179 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Melon Juice##1205 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Sweet Nectar##1708 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Moonberry Juice##1645 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Morning Glory Dew##8766 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Filtered Draenic Water##28399 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Fresh Water##58274 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Pugnent Seal Whey##33444 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Honeymint Tea##33445 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Sparkling Oasis Water##58256 |goto Stormwind City/0 60.39,75.27 |achieve 1833
buy 1 Highland Spring Water##58257 |goto Stormwind City/0 60.39,75.27 |achieve 1833
step
use the Refreshing Spring Water##159
Drink the Refreshing Spring Water |havebuff Drink##430 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##430 |achieve 1833
step
use the Ice Cold Milk##1179
Drink the Ice Cold Milk |havebuff Drink##430 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##430 |achieve 1833
step
use the Melon Juice##1205
Drink the Melon Juice |havebuff Drink##430 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##430 |achieve 1833
step
use the Sweet Nectar##1708
Drink the Sweet Nectar |havebuff Drink##430 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##430 |achieve 1833
step
use the Moonberry Juice##1645
Drink the Moonberry Juice |havebuff Drink##430 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##430 |achieve 1833
step
use the Morning Glory Dew##8766
Drink the Morning Glory Dew |havebuff Drink##430 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##430 |achieve 1833
step
use the Filtered Draenic Water##28399
Drink the Filtered Draenic Water |havebuff Drink##34291 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##34291 |achieve 1833
step
use the Pugnent Seal Whey##33444
Drink the Pugnent Seal Whey |havebuff Drink##34291 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##34291 |achieve 1833
step
use the Fresh Water##58274
Drink the Fresh Water |havebuff Drink##34291 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##34291 |achieve 1833
step
use the Honeymint Tea##33445
Drink the Honeymint Tea |havebuff Drink##34291 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##34291 |achieve 1833
step
use the Sparkling Oasis Water##58256
Drink the Sparkling Oasis Water |havebuff Drink##34291 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##34291 |achieve 1833
step
use the Highland Spring Water##58257
Drink the Highland Spring Water |havebuff Drink##34291 |achieve 1833
step
Move Slightly to Stop Drinking |nobuff Drink##34291 |achieve 1833
step
talk Daisy##40832
|tip Downstairs inside the barge.
buy 1 Bottle of Pinot Noir##2723 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Glass of Eversong Wine##44570 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Honey Mead##40035 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Flask of Port##2593 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Bottle of Silvermoon Port##44571 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Skin of Dwarven Stout##2596 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Flask of Bitter Cactus Cider##44575 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Snowplum Brandy##40036 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Flagon of Mead##2594 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Cup of Frog Venom Brew##44573 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Caraway Burnwine##40042 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Jug of Bourbon##2595 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
buy 1 Skin of Mulgore Firewater##44574 |goto Thousand Needles/0 76.46,74.80 |achieve 1833
step
use the Bottle of Dalaran Noir##2723
Drink the Bottle of Dalaran Noir |complete itemcount(2723) == 0 |achieve 1833
step
use the Glass of Eversong Wine##44570
Drink the Glass of Eversong Wine |complete itemcount(44570) == 0 |achieve 1833
step
use the Honey Mead##40035
Drink the Honey Mead |complete itemcount(40035) == 0 |achieve 1833
step
use the Flask of Stormwind Tawny##2593
Drink the Flask of Stormwind Tawny |complete itemcount(2593) == 0 |achieve 1833
step
use the Bottle of Silvermoon Port##44571
Drink the Bottle of Silvermooon Port |complete itemcount(44571) == 0 |achieve 1833
step
use the Skin of Dwarven Stout##2596
Drink the Skin of Dwarven Stout |complete itemcount(2596) == 0 |achieve 1833
step
use the Flask of Bitter Cactus Cider##44575
Drink the Flask of Bitter Cactus Cider |complete itemcount(44575) == 0 |achieve 1833
step
use the Snowplum Brandy##40036
Drink the Snowplum Brandy |complete itemcount(40036) == 0 |achieve 1833
step
use the Flagon of Mead##2594
Drink the Flagon of Mead |complete itemcount(2594) == 0 |achieve 1833
step
use the Cup of Frog Venom Brew##44573
Drink the Cup of Frog Venom Brew |complete itemcount(44573) == 0 |achieve 1833
step
use the Caraway Burnwine##40042
Drink the Caraway Burnwine |complete itemcount(40042) == 0 |achieve 1833
step
use the Jug of Badlands Bourbon##2595
Drink the Jug of Badlands Bourbon |complete itemcount(2595) == 0 |achieve 1833
step
use the Skin of Mulgore Firewater##44574
Drink the Skin of Mulgore Firewater |complete itemcount(44574) == 0 |achieve 1833
step
_Congratulations!_
You Earned the "It's Happy Hour Somewhere" Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\It's Over Nine Thousand!",{
expansion="mists",
achieveid={4496},
patch='30300',
description="This guide will walk you through completing the \"It's Over Nine Thousand!\" Achievement.",
mopready=true,
},[[
step
For this achievement, you will need to earn at least 9,000 achievement points
Refer to any of our achievement guides in order to accomplish this
|tip If you haven't been actively collecting achievements already, this may take a while to earn.
Earn the _It's Over Nine Thousand!_ achievement |achieve 4496
step
_Congratulations!_
You have earned the _It's Over Nine Thousand!_ achievement
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Needy",{
expansion="mists",
achieveid={559},
patch='30001',
description="This guide will walk you through completing the \"Needy\" Achievement.",
mopready=true,
},[[
step
You will have to roll Need on a _superior or better item above the item level of 185_ to earn this achievement
Earn the _Needy_ achievement |achieve 559
step
_Congratulations!_
You have have earned the _Needy_ achievement
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\The Right Stuff",{
expansion="mists",
achieveid={892},
patch='30001',
description="This guide will walk you through learning the artisan riding skill.",
mopready=true,
},[[
step
This achievement requires level 70
The cost of this riding training is 5000 Gold
|tip The price can be reduced by home faction discounts based on current reputation.
confirm
step
talk Bralla Cloudwing##43769 |goto Stormwind City 70.60,73.00
learn Artisan Riding##34091 |achieve 892
You can also purchase a mount from the vendor at [71.40,72.20]
step
Congratulations, you have earned the The Right Stuff achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Safe Deposit",{
expansion="mists",
achieveid={546},
patch='30001',
description="This guide will walk you through buying 7 additional bank slots.",
mopready=true,
},[[
step
This achievement will cost you _111 gold 10 silver_ to complete
confirm
step
talk Kristin Cazarez##43692 |goto Stormwind City 63.50,80.00
Purchase #7# Bank Slots |achieve 546
step
Congratulations, you have earned the Safe Deposit achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Shave and a Haircut",{
expansion="mists",
achieveid={545},
patch='30001',
description="This guide will walk you through visiting a Barber Shop and get your hair cut.",
mopready=true,
},[[
step
click Barbershop Chair
|tip Inside the building.
|tip Change your hair style or hair color then click "Okay."
|tip This will cost a small amount of money.
|achieve 545 |goto Stormwind City/0 61.66,65.07
step
_Congratulations!_
You Earned the "Shave and a Haircut" Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Tastes Like Chicken",{
expansion="mists",
achieveid={1832},
patch='30002',
description="This guide will walk you through sampling 50 different kinds of Azeroth's delectable dishes.",
mopready=true,
},[[
step
talk Innkeeper Firebrew##5111
|tip Inside the building.
buy 1 Tough Jerky##117 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Haunch of Meat##2287 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Mutton Chop##3770 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Wild Hog Shank##3771 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Cured Ham Steak##4599 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Roasted Quail##8952 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Smoked Talbuk Venison##27854 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Salted Venison##33454 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Mead Basted Caribou##35953 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Roasted Beef##58268 |goto Ironforge/0 18.18,51.44 |achieve 1832
buy 1 Massive Turkey Leg##58269 |goto Ironforge/0 18.18,51.44 |achieve 1832
step
talk Myra Tyrngaarde##5109
|tip She patrols the Auction House area.
buy 1 Tough Hunk of Bread##4540 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Freshly Baked Bread##4541 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Moist Cornbread##4542 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Mulgore Spice Bread##4544 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Soft Banana Bread##4601 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Homemade Cherry Pie##8950 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Mag'har Grainbread##27855 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Crusty Flatbread##33449 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Sweet Potato Bread##35950 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Pine Nut Bread##58260 |goto Ironforge/0 28.05,69.77 |achieve 1832
buy 1 Buttery Wheat Roll##58261 |goto Ironforge/0 28.05,69.77 |achieve 1832
step
use the Tough Jerky##117
Eat the Tough Jerky |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Tough Hunk of Bread##4540
Eat the Tough Hunk of Bread |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Haunch of Meat##2287
Eat the Haunch of Meat |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Freshly Baked Bread##4541
Eat the Freshly Baked Bread |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Mutton Chop##3770
Eat the Mutton Chop |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Moist Cornbread##4542
Eat the Moist Cornbread |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Wild Hog Shank##3771
Eat the Wild Hog Shank |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Mulgore Spice Bread##4544
Eat the Mulgore Spice Bread |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Cured Ham Steak##4599
Eat the Cured Ham Steak |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Soft Banana Bread##4601
Eat the Soft Banana Bread |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Roasted Quail##8952
Eat the Roasted Quail |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Homemade Cherry Pie##8950
Eat the Homemade Cherry Pie |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Smoked Talbuk Venison##27854
Eat the Smoked Talbuk Venison |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Mag'har Grainbread##27855
Eat the Mag'har Grainbread |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Salted Venison##33454
Eat the Salted Venison |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Crusty Flatbread##33449
Eat the Crusty Flatbread |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Mead Basted Caribou##35953
Eat the Mead Basted Cariboy |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Sweet Potato Bread##35950
Eat the Sweet Potato Bread |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Roasted Beef##58268
Eat the Roasted Beef |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Pine Nut Bread##58260
Eat the Pine Nut Bread |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Massive Turkey Leg##58269
Eat the Massive Turkey |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Buttery Wheat Roll##58261
Eat the Buttery Wheat Roll |havebuff Food##434 |achieve 1832
step
talk Thaegra Tillstone##44235
|tip Inside the building.
buy 1 Forest Mushroom Cap##4604 |goto Stormwind City/0 64.93,31.94 |achieve 1832
buy 1 Red-Speckeled Mushroom##4605 |goto Stormwind City/0 64.93,31.94 |achieve 1832
buy 1 Spongy Morel##4606 |goto Stormwind City/0 64.93,31.94 |achieve 1832
buy 1 Delicious Cave Mold##4607 |goto Stormwind City/0 64.93,31.94 |achieve 1832
buy 1 Raw Black Truffle##4608 |goto Stormwind City/0 64.93,31.94 |achieve 1832
buy 1 Dried King Bolete##8948 |goto Stormwind City/0 64.93,31.94 |achieve 1832
step
use the Forest Mushroom Cap##4604
Eat the Forest Mushroom |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Red-Speckeled Mushroom##4605
Eat the Red-Speckeled Mushroom |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Spongy Morel##4606
Eat the Spongy Morel |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Delicious Cave Mold##4607
Eat the Delicious Cave Mold |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Raw Black Truffle##4608
Eat the Raw Black Truffle |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Dried King Bolete##8948
Eat the Dried King Bolete |havebuff Food##434 |achieve 1832
step
talk Talaelar##4221
buy 1 Slitherskin Mackerel##787 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Longjaw Mud Snapper##4592 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Bristle Whisker Catfish##4593 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Rockscale Cod##4594 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Striped Yellowtail##21552 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Spinefin Halibut##8957 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Sunspring Carp##27858 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Fillet of Icefin##33451 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Poached Emperor Salmon##35951 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Sliced Raw Billfish##58262 |goto Darnassus/0 48.81,61.50 |achieve 1832
buy 1 Grilled Shark##58263 |goto Darnassus/0 48.81,61.50 |achieve 1832
step
talk Innkeeper Saelienne##6735
buy 1 Shiny Red Apple##4536 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Tel'Abim Banana##4537 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Snapvine Watermelon##4538 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Goldenbark Apple##4539 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Moon Harvest Pumpkin##4602 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Deep Fried Plantains##8953 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Skethyl Berries##27856 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Tundra Berries##35949 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Savory Snowplum##35948 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Sour Green Apple##58264 |goto Darnassus/0 62.52,32.80 |achieve 1832
buy 1 Highland Pomegranate##58265 |goto Darnassus/0 62.52,32.80 |achieve 1832
step
use the Slitherskin Mackerel##787
Eat the Slitherskin Mackerel |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Shiny Red Apple##4536
Eat the Shiny Red Apple |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Longjaw Mud Snapper##4592
Eat the Longjaw Mud Snapper |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Tel'Abim Banana##4537
Eat the Tel'Abim Banana |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Bristle Whisker Catfish##4593
Eat the Bristle Whisker Catfish |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Snapvine Watermelon##4538
Eat the Snapvine Watermelon |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Rockscale Cod##4594
Eat the Rockscale Cod |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Goldenbark Apple##4539
Eat the Goldenbark Apple |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Striped Yellowtail##21552
Eat the Striped Yellowtail |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Moon Harvest Pumpkin##4602
Eat the Moon Harvest Pumpkin |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Spinefin Halibut##8957
Eat the Spinefin Hailibut |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Deep Fried Plantains##8953
Eat the Deep Fried Plantains |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Sunspring Carp##27858
Eat the Sunspring Carp |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Skethyl Berries##27856
Eat the Skethyl Berries |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Fillet of Icefin##33451
Eat the Fillet of Icefin |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Tundra Berries##35949
Eat the Tundra Berries |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Poached Emperor Salmon##35951
Eat the Poached Emperor |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Savory Snowplum##35948
Eat the Savory Snowplum |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Sliced Raw Billfish##58262
Eat the Sliced Raw Billfish |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Sour Green Apple##58264
Eat the Sour Green Apple |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Grilled Shark##58263
Eat the Grilled Shark |havebuff Food##434 |achieve 1832
step
Move Slightly to Stop Eating |nobuff Food##434
step
use the Highland Pomegranate##58265
Eat the Highland Pomegranate |havebuff Food##434 |achieve 1832
step
|achieve 1832
step
_Congratulations!_
You Earned the "Tastes Like Chicken" Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\To All The Squirrels (Loved, Shared, Cared)/Pest Control",{
expansion="mists",
condition_end=function() return achieved(5548) end,
achieveid={1206,2557,2556,5548},
patch='40003',
description="This guide will walk you through showing the critters of Azeroth how much you /love them and slaying the pests.",
mopready=true,
},[[
step
label "start"
talk Innkeeper Allison##6740
home Trade District |goto Stormwind City 60.40,75.30
only if not achieved(5548)
step
clicknpc Rockchewer Whelk##48848
Use the Love emote on a Rockchewer Whelk |script DoEmote("LOVE")
Love a Rockchewer Whelk |achieve 5548/9 |goto Shimmering Expanse 41.30,53.90
step
clicknpc Sea Cucumber##48802
Use the Love emote on a Sea Cucumber |script DoEmote("LOVE")
Love a Sea Cucumber |achieve 5548/11 |goto Shimmering Expanse 41.30,53.90
step
kill Rat##4075 |achieve 2556/18 |goto The Cape of Stranglethorn 40.00,67.70
step
kill Roach##4076 |achieve 2556/9 |goto The Cape of Stranglethorn 42.20,69.50
step
clicknpc Wharf Rat##47667
Use the Love emote on a Wharf Rat |script DoEmote("LOVE")
Love a Wharf Rat |achieve 5548/12 |goto The Cape of Stranglethorn 42.70,72.80
step
clicknpc Parrot##9600
Use the Love emote on a Parrot |script DoEmote("LOVE")
Love a Parrot |achieve 1206/11 |goto Northern Stranglethorn 50.50,66.40
step
kill Scorpion##61326 |achieve 2556/14 |goto Blasted Lands 42.50,21.90
step
kill Fire Beetle##9699 |achieve 2556/16 |goto Blasted Lands 44.40,32.90
step
clicknpc Huge Toad##61368
Use the Love emote on a Huge Toad |script DoEmote("LOVE")
Love a Huge Toad |achieve 2557/7 |goto Swamp of Sorrows 39.70,51.00
step
clicknpc Skunk##17467
Use the Love emote on a Skunk |script DoEmote("LOVE")
|tip It looks like a small skunk that walks around this area.
Love a Skunk |achieve 1206/16 |goto Duskwood 12.30,65.80
step
clicknpc Rabbit##61080
Use the Love emote on a Rabbit |script DoEmote("LOVE")
Love a Rabbit |achieve 1206/12 |goto Elwynn Forest 36.30,85.80
step
clicknpc Deer##883
Use the Love emote on a Deer |script DoEmote("LOVE")
|tip Be sure not to get it mixed up with the fawn also in the area.
Love a Deer |achieve 1206/5 |goto Elwynn Forest 24.90,83.00
step
clicknpc Fawn##890
Use the Love emote on a Fawn |script DoEmote("LOVE")
Love a Fawn |achieve 1206/7 |goto Elwynn Forest 24.90,83.00
step
clicknpc Cow##2442
Use the Love emote on a Cow |script DoEmote("LOVE")
Love a Cow |achieve 1206/4 |goto Elwynn Forest 32.30,77.20
step
clicknpc Chicken##620
Use the Love emote on a Chicken |script DoEmote("LOVE")
Love a Chicken |achieve 1206/3 |goto Elwynn Forest 36.50,60.10
step
clicknpc Cat##6368
Use the Love emote on a Cat |script DoEmote("LOVE")
Love a Cat |achieve 1206/2 |goto Elwynn Forest 44.50,53.80
step
kill Gold Beetle##32258 |achieve 2556/17 |goto Badlands 50.40,43.90
step
clicknpc Lava Crab##9700
Use the Love emote on a Lava Crab |script DoEmote("LOVE")
Love a Lava Crab |achieve 2557/8 |goto Searing Gorge 31.10,43.70
step
clicknpc Sheep##1933
Use the Love emote on a Sheep |script DoEmote("LOVE")
Love a Sheep |achieve 1206/14 |goto Loch Modan 20.90,71.90
step
clicknpc Ram##2098
Use the Love emote on a Ram |script DoEmote("LOVE")
Love a Ram |achieve 1206/13 |goto Loch Modan 25.10,37.80
step
clicknpc Squirrel##1412
Use the Love emote on a Squirrel |script DoEmote("LOVE")
Love a Squirrel |achieve 1206/17 |goto Loch Modan 29.00,66.30
step
kill Squirrel##1412 |achieve 2556/4 |goto Loch Modan 29.00,66.30
step
label "travel_twilight"
clicknpc Yellow-Bellied Marmot##48683
Use the Love emote on a Yellow-Bellied Marmot |script DoEmote("LOVE")
Love a Yellow-Bellied Marmot |achieve 5548/13 |goto Twilight Highlands 29.30,33.10
step
clicknpc Highlands Turkey##48706
Use the Love emote on a Highlands Turkey |script DoEmote("LOVE")
Love a Highlands Turkey |achieve 5548/4 |goto Twilight Highlands 29.30,33.10
step
clicknpc Shore Crab##60761
Use the Love emote on a Shore Crab |script DoEmote("LOVE")
Love a Shore Crab |achieve 1206/15 |goto Twilight Highlands 71.20,41.20
step
kill Maggot##16030 |achieve 2556/13 |goto The Hinterlands 31.90,57.90
step
kill Larva##16068 |achieve 2556/1 |goto Ghostlands 45.30,31.10
step
clicknpc Ewe##19665
Use the Love emote on a Ewe |script DoEmote("LOVE")
Love an Ewe |achieve 1206/6 |goto Shattrath City 58.80,23.30
step
clicknpc Borean Marmot##31685
Use the Love emote on a Borean Marmot |script DoEmote("LOVE")
Love a Borean Marmot |achieve 2557/2 |goto Borean Tundra 36.00,55.90
step
clicknpc Tundra Penguin##28440
Use the Love emote on a Tundra Penguin |script DoEmote("LOVE")
Love a Tundra Penguin |achieve 2557/12 |goto Borean Tundra 24.50,61.80
step
clicknpc Steam Frog##25679
Use the Love emote on a Steam Frog |script DoEmote("LOVE")
Love a Steam Frog |achieve 1206/18 |goto Borean Tundra 61.00,51.80
step
clicknpc Borean Frog##25677
Use the Love emote on a Borean Frog |script DoEmote("LOVE")
Love a Borean Frog |achieve 1206/1 |goto Borean Tundra 72.70,41.00
step
clicknpc Sholazar Tickbird##28093
Use the Love emote on a Sholazar Tickbird |script DoEmote("LOVE")
Love a Sholazar Tickbird |achieve 2557/11 |goto Sholazar Basin 27.10,60.50
step
clicknpc Glacier Penguin##32498
Use the Love emote on a Glacier Penguin |script DoEmote("LOVE")
Love a Glacier Penguin |achieve 2557/5 |goto Icecrown 60.90,18.80
step
kill Underbelly Rat##32428 |achieve 2556/5 |goto Dalaran/1 41.00,50.40
step
kill Zul'Drak Rat##28202 |achieve 2556/8 |goto Zul'Drak 42.40,63.10
step
clicknpc Arctic Hare##29328
Use the Love emote on an Arctic Hare |script DoEmote("LOVE")
Love an Artic Hare |achieve 2557/1 |goto Zul'Drak 71.80,69.80
step
clicknpc Grizzly Squirrel##31889
Use the Love emote on a Grizzly Squirrel |script DoEmote("LOVE")
Love a Grizzly Squirrel |achieve 2557/6 |goto Grizzly Hills 66.70,13.10
step
clicknpc Mountain Skunk##31890
Use the Love emote on a Mountain Skunk |script DoEmote("LOVE")
Love a Mountain Skunk |achieve 2557/9 |goto Grizzly Hills 68.60,11.80
step
kill Fjord Rat##24174 |achieve 2556/15 |goto Howling Fjord 45.00,30.30
step
clicknpc Fjord Penguin##28407
Use the Love emote on a Fjord Penguin |script DoEmote("LOVE")
Love a Fjord Penguin |achieve 2557/3 |goto Howling Fjord 20.80,61.80
step
clicknpc Scalawag Frog##26503
Use the Love emote on a Scalawag Frog |script DoEmote("LOVE")
Love a Scalawag Frog |achieve 2557/10 |goto Howling Fjord 35.60,81.80
step
Follow the path to the bottom of the catacombs
kill Devouring Maggot##24270 |achieve 2556/6 |goto Howling Fjord 57.10,56.80
step
clicknpc Fjord Turkey##24746
Use the Love emote on a Fjord Turkey |script DoEmote("LOVE")
Love a Fjord Turkey |achieve 2557/4 |goto Howling Fjord 66.40,71.10
step
clicknpc Sassy Cat##47682
Use the Love emote on a Sassy Cat |script DoEmote("LOVE")
Love a Sassy Cat |achieve 5548/10 |goto Tol Barad Peninsula 61.20,35.50
step
clicknpc Baradin Fox Kit##48630
Use the Love emote on a Baradin Fox Kit |script DoEmote("LOVE")
Love a Baradin Fox Kit |achieve 5548/2 |goto Tol Barad 44.50,25.80
step
clicknpc Toad##1420
Use the Love emote on a Toad |script DoEmote("LOVE")
Love a Toad |achieve 1206/20 |goto Darnassus 42.40,46.90
step
clicknpc Alpine Chipmunk##49779
Use the Love emote on an Alpine Chipmunk |script DoEmote("LOVE")
Love an Alpine Chipmunk |achieve 5548/1 |goto Winterspring 51.50,47.90
step
kill Crystal Spider##32261 |achieve 2556/11 |goto Winterspring 48.80,54.80
step
clicknpc Grotto Vole##50419
Use the Love emote on a Grotto Vole |script DoEmote("LOVE")
Love a Grotto Vole |achieve 5548/3 |tip Inside of the cave |goto Mount Hyjal 54.50,17.10
step
clicknpc Rock Viper##50481
Use the Love emote on a Rock Viper |script DoEmote("LOVE")
Love a Rock Viper |achieve 5548/8 |goto Mount Hyjal 38.40,56.60
step
clicknpc Gazelle##4166
Use the Love emote on a Gazelle |script DoEmote("LOVE")
Love a Gazelle |achieve 1206/9 |goto The Barrens 51.80,56.40
step
clicknpc Small Frog##13321
Use the Love emote on a Small Frog |script DoEmote("LOVE")
Love a Small Frog |achieve 1206/8 |goto The Barrens 37.90,46.10
step
clicknpc Prairie Dog##2620
Use the Love emote on a Prairie Dog |script DoEmote("LOVE")
Love a Prairie Dog |achieve 1206/21 |goto The Barrens 66.00,42.10
step
kill Water Snake##4953 |achieve 2556/2 |goto Durotar 36.40,40.80
step
clicknpc Hare##5951
Use the Love emote on a Hare |script DoEmote("LOVE")
Love a Hare |achieve 1206/10 |goto Durotar 50.50,30.20
step
kill Adder##3300 |achieve 2556/12 |goto Durotar 45.60,16.00
step
clicknpc Swine##10685
Use the Love emote on a Swine |script DoEmote("LOVE")
Love a Swine |achieve 1206/19 |goto Durotar 43.70,30.10
step
kill Spider##14881 |achieve 2556/3 |goto Dustwallow Marsh 35.00,24.00
step
kill Mouse##6271 |achieve 2556/7 |goto Dustwallow Marsh 46.20,56.90
step
kill Snake##2914 |achieve 2556/10  |goto Dustwallow Marsh 50.00,57.60
step
clicknpc Rattlesnake##48686
Use the Love emote on a Rattlesnake |script DoEmote("LOVE")
Love a Rattlesnake |achieve 5548/7 |goto Tanaris 46.90,26.90
step
clicknpc Mac Frog##50491
Use the Love emote on a Mac Frog |script DoEmote("LOVE")
Love a Mac Frog |achieve 5548/5 |goto Uldum 56.60,35.10
step
clicknpc Oasis Moth##50496
Use the Love emote on an Oasis Moth |script DoEmote("LOVE")
Love an Oasis Moth |achieve 5548/6 |goto Uldum 55.00,36.10
step
Congratulations, you have earned the To All The Squirrels I've Loved Before achievement! |only if achieved(1206)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(1206)
Congratulations, you have earned the To All The Squirrels Who Shared My Life achievement! |only if achieved(2557)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(2557)
Congratulations, you have earned the To All the Squirrels Who Cared for Me achievement! |only if achieved(5548)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(5548)
Congratulations, you have earned the Pest Control achievement! |only if achieved(2556)
You've missed some pests! _Click here_ to start over |confirm |next "start" |only if not achieved(2556)
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\Well Read",{
expansion="mists",
achieveid={1244},
patch='30001',
description="This guide will walk you through reading the scattered books of Azeroth.",
mopready=true,
},[[
step
click The World Tree and the Emerald Dream##268087 |achieve 1244/42 |goto Stormwind City 85.40,23.30
|tip It's on the table.
step
click The War of the Ancients##268086 |achieve 1244/38 |goto Stormwind City 85.30,23.20
|tip It's on the table.
step
click Aegwynn and the Dragon Hunt##268044 |achieve 1244/1 |goto Stormwind City 85.80,23.70
|tip On the pillar base next to the candles.
step
click The New Horde##268079 |achieve 1244/32 |goto Stormwind City 86.10,25.50
|tip On the pillar base.
step
click The Guardians of Tirisfal##268074 |achieve 1244/27 |goto Stormwind City 85.00,26.10
|tip On the table.
step
click Aftermath of the Second War##268045 |achieve 1244/2 |goto Stormwind City 85.20,26.10
|tip On the table.
step
click The Alliance of Lordaeron##268066 |achieve 1244/21 |goto Stormwind City 85.20,26.10
|tip On the table.
step
click The Kaldorei and the Well of Eternity##268076 |achieve 1244/29 |goto Stormwind City 84.70,25.90
|tip On the pillar base next to the candles.
step
click Beyond the Dark Portal##268048 |achieve 1244/5 |goto Stormwind City 84.60,24.30
|tip On the chair.
step
click Civil War in the Plaguelands##175761 |achieve 1244/7 |goto Stormwind City 85.00,23.40
|tip On the pillar base next to the candles.
step
click War of the Spider##175753 |achieve 1244/40 |goto Stormwind City 86.70,35.80
|tip On the command table.
step
click The Battle of Grim Batol##268067 |achieve 1244/22 |goto Stormwind City 86.50,36.00
|tip On the command table.
step
click The Dark Portal and the Fall of Stormwind##268072 |achieve 1244/25 |goto Stormwind City 87.10,35.90
|tip On the command table.
step
click Archimonde's Return and the Flight to Kalimdor##268047 |achieve 1244/4 |goto Stormwind City 51.80,74.50
|tip Inside on the table behind Mazen Mac'Nadir.
step
click Mount Hyjal and Illidan's Gift##268057 |achieve 1244/15 |goto Stormwind City 51.80,74.60
|tip Inside on the table behind Mazen Mac'Nadir.
step
click Rise of the Blood Elves##268059 |achieve 1244/17 |goto Elwynn Forest 64.60,69.50
|tip On top of the bookshelf on the top floor of the tower.
step
click Lethargy of the Orcs##175751 |achieve 1244/14 |goto Elwynn Forest 85.30,69.70
|tip Upstairs on the table.
step
click The Birth of the Lich King##267991 |achieve 1244/24 |goto Duskwood 72.10,46.60
|tip In the town hall on a table next to Role Dreuger.
step
click Kil'jaeden and the Shadow Pact##268055 |achieve 1244/13 |goto Duskwood 74.20,45.30
|tip In the inn on the bookshelf on the second floor.
step
click The Founding of Quel'Thalas##268073 |achieve 1244/26 |goto Duskwood 73.70,45.10
|tip In the next room over on the table.
step
click The Last Guardian##268077 |achieve 1244/30 |goto Loch Modan 37.20,47.00
|tip Downstairs inside the home on the nightstand next to the bed.
step
click The Old Gods and the Ordering of Azeroth##268080 |achieve 1244/33 |goto Ironforge 76.50,10.60
|tip On the center table.
step
click Charge of the Dragonflights##268049 |achieve 1244/6 |goto Ironforge 76.50,10.60
|tip On the center table.
step
click Ironforge - the Awakening of the Dwarves##268053 |achieve 1244/11 |goto Ironforge 75.10,9.10
|tip On the table.
step
click War of the Three Hammers##175739 |achieve 1244/41 |goto Ironforge 75.10,9.20
|tip On the table.
step
click Arathor and the Troll Wars##268046 |achieve 1244/3 |goto Ironforge 77.00,9.50
|tip On the table.
step
click Rise of the Horde##268060 |achieve 1244/18 |goto Ironforge 76.80,12.30
|tip On the table.
step
click The Invasion of Draenor##175747 |achieve 1244/28
|tip This book is found after fighting Lilian Voss on the floor in the corner.
step
Make your way into The Scarlet Bastion |goto Stratholme/1 31.90,34.80 < 10 |walk
click The Seven Kingdoms##268083 |achieve 1244/36 |goto Stratholme/1 30.10,41.30
|tip On the table next to Commander Malor.
step
click Kel'Thuzad and the Forming of the Scourge##268054 |achieve 1244/12 |goto Stratholme/1 25.10,70.30
|tip On the table between the bookshelves.
step
click The Lich King Triumphant##268078 |achieve 1244/31 |goto Stratholme/1 25.50,70.50
|tip On the table between the bookshelves.
step
click Icecrown and the Frozen Throne##268043 |achieve 1244/10 |goto Stratholme/1 25.80,71.50
|tip On the table between the bookshelves.
step
click Sunwell - The Fall of Quel'Thalas##268065 |achieve 1244/20 |goto The Cape of Stranglethorn 41.00,74.40
|tip Inside the inn on the corner table right up the stairs.
step
click The Twin Empires##268084 |achieve 1244/37 |goto The Cape of Stranglethorn 42.10,73.70
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click Empires' Fall##268051 |achieve 1244/8 |goto The Cape of Stranglethorn 42.10,73.70
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click Wrath of Soulflayer##175856 |achieve 1244/42 |goto The Cape of Stranglethorn 42.10,73.70
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click The Scourge of Lordaeron##268081 |achieve 1244/34 |goto The Cape of Stranglethorn 41.90,73.50
|tip All the way downstairs on a bookshelf under the stairs in the same room as the auctioneer.
step
click The Sentinels and the Long Vigil##175732 |achieve 1244/35 |goto The Cape of Stranglethorn 42.10,73.60
|tip All the way upstairs on the nightstand next to the bed.
step
click Sargeras and the Betrayal##268061 |achieve 1244/19 |goto The Barrens 67.00,74.90
|tip In the Ratchet Inn on the nightstand between two beds.
step
click Exile of the High Elves##268052 |achieve 1244/9 |goto The Barrens 67.10,73.40
|tip In the Ratchet Blacksmith second floor on a barrel sitting on the balcony.
step
click Old Hatreds - The Colonization of Kalimdor##268058 |achieve 1244/16 |goto Tanaris 51.00,30.20
|tip In Gadgetzan laying on the sand next to a set of baskets.
step
click The Betrayer Ascendant##268068 |achieve 1244/23 |goto Darnassus 62.00,74.60
|tip On the counter against the south west wall.
step
_Congratulations!_
You Earned the "Well Read" Achievement.
]])
QuestCore:RegisterGuide("Achievement Guides\\General\\You'll Feel Right as Rain",{
expansion="mists",
achieveid={5779},
patch='40100',
description="This guide will walk you through feeling 1000% better by eating Chocolate Cookies.",
mopready=true,
},[[
step
_Click here_ to buy them from the Auction House |confirm |next "buy"
_Click here_ to make them yourself  |confirm |next "cook"
step
label "buy"
talk Auctioneer Fitch##8719
buy 91 Chocolate Cookie##62680 |n |goto Stormwind City 61.00,70.70
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779 |next "end"
step
label "cook"
Use the Stormwind City Cooking Dailies guide to
earn 6 Epicurean's Award##81 |tip Three for the recipe and the rest for the cocoa beans you'll need.
step
talk Bario Matalli##49701
buy Recipe: Chocolate Cookie##65431 |n
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |goto Stormwind City 50.40,71.80
step
talk Bario Matalli##49701
buy 2 Imported Supplies##68689 |n |tip If you need more buy another until you have 91 beans.
collect 91 Cocoa Beans##62786 |use Imported Supplies##68689 |goto Stormwind City 50.40,71.80
step
talk Erika Tate##5483
buy 91 Simple Flour##30817 |complete itemcount(30817) >= 91 |goto Stormwind City 77.60,53.10
step
Make a Cooking Fire |cast Cooking Fire##818
create 91 Chocolate Cookie##88013,Cooking,91 total |n
collect 91 Chocolate Cookie##62680
step
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779
step
label "end"
Congratulations, you have earned the You'll Feel Right as Rain achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\A Bunch of Lunch", {
expansion="mists",
achieveid={5845},
patch='40200',
description="Complete each Let's Do Lunch achievement.",
mopready=true,
},[[
step
Complete each of the following achievements using the appropiate sections of this guide:
Complete Let's Do Lunch: Stormwind |achieve 5474
Complete Let's Do Lunch: Ironforge |achieve 5841
Complete Let's Do Lunch: Darnassus |achieve 5842
confirm
step
label "dailies1"
Routing to next section |next "dailies2" |only if achieved(5474)
Routing to next section |next |only if default
step
talk Robby Flay##42288
You will only be able to complete 1 of the following quests per day
accept A Fisherman's Feast##26190 |or |goto Stormwind City,50.60,71.90
accept Feeling Crabby?##26177 |or |goto Stormwind City,50.60,71.90
accept Orphans Like Cookies Too!##26192 |or |goto Stormwind City,50.60,71.90
accept Penny's Pumpkin Pancakes##26153 |or |goto Stormwind City,50.60,71.90
accept The King's Cider##26183 |or |goto Stormwind City,50.60,71.90
step
Click Barrels of Canal Fish
|tip They look like dark wooden barrels near fishermen all along the canals.
collect 5 Gigantic Catfish##57245 |q 26190/1 |goto Stormwind City 54.90,68.20
step
Click Canal Crabs
|tip They look like small crabs underwater all along in the canals.
collect 10 Canal Crab##42339 |q 26177/1 |goto Stormwind City 54.50,66.70
step
Click Sacks of Confectioner's Sugar
|tip They look like cloth white sacks.  This one is laying on the ground inside The Slaughtered Lamb building.
collect 4 Confectioner's Sugar##57246 |q 26192/1 |goto Stormwind City 41.20,83.60
You can find more Sacks of Confectioner's Sugar:
At |goto Stormwind City,51.00,96.20
|tip Laying on the floor, next to the fireplace in The Blue Recluse building.
At |goto Stormwind City,77.80,53.20
|tip Laying on the floor, next to the fireplace in Pig and Whistle Tavern building.
At |goto Stormwind City,66.00,31.90
|tip Laying on the bar inside The Golden Keg building.
step
Click Stormwind Pumpkins |tip They look like big orange pumpkins on the ground around this area.
collect 6 Stormwind Pumpkin##57137 |q 26153/1 |goto Stormwind City 54.30,12.30
step
Click Juicy Apples
|tip They look like red apples laying on the ground under apple trees along the streets of Stormwind City.  There are different types of trees in Stormwind, so only look under the rounder shaped trees with red apples in them.
collect 12 Juicy Apple##124036 |q 26183/1 |goto Stormwind City 55.00,74.00
step
talk Robby Flay##42288
You will only be able to complete 1 of the following quests per day
turnin A Fisherman's Feast##26190 |goto Stormwind City 50.60,71.90
turnin Feeling Crabby?##26177 |goto Stormwind City 50.60,71.90
turnin Orphans Like Cookies Too!##26192 |goto Stormwind City 50.60,71.90
turnin Penny's Pumpkin Pancakes##26153 |goto Stormwind City 50.60,71.90
turnin The King's Cider##26183 |goto Stormwind City 50.60,71.90
step
label "dailies2"
Routing to next section |next "dailies3" |only if achieved(5841)
Routing to next section |next |only if default
step
talk Daryl Riknussun##5159
accept A Fowl Shortage##29352 |or |goto Ironforge,60.10,36.40
accept A Round for the Guards##29351 |or |goto Ironforge,60.10,36.40
accept Can't Get Enough Spice Bread##29355 |or |goto Ironforge,60.10,36.40
accept I Need to Cask a Favor##29356 |or |goto Ironforge,60.10,36.40
accept Keepin' the Haggis Flowin'##29353 |or |goto Ironforge,60.10,36.40
step
Click on the Dun Morogh Chickens
collect 6 Dun Morogh Chicken##69982 |q 29352/1 |goto Dun Morogh,60.30,34.00
|only if haveq(29352)
step
Click on the Cast of Drugan's IPA
Run the Cask back to Daryl Riknussun in Ironforge
|tip Be sure not to mount up, or else you lose the cask
Deliver Cask of Drugan's IPA |q 29356/1 |goto Dun Morogh,53.90,50.80
|only if haveq(29356)
step
Click on the Sack of Oatmeal
collect 4 Sack of Oatmeal##69985 |q 29353/2 |goto Ironforge,58.90,41.20
|tip They look like shinning white bags on the ground all around Ironforge
|only if haveq(29353)
step
talk Sognar Cliffbeard##5124
collect 1 Bag o' Sheep Innards##69984 |q 29353/1 |goto Ironforge,61.90,72.50
|only if haveq(29353)
step
talk Emrul Riknussun##5160 |q 29353
collect 5 Mild Spices##2678 |q 29353/3 |goto Ironforge,59.90,37.60
|only if haveq(29353)
step
Offer your Ironforge Rations to the Ironforge Guards around Ironforge |use Ironforge Rations##69981
6 Ironforge Guards Fed |q 29351/1 |goto Ironforge,57.90,50.00
|only if haveq(29351)
step
talk Emrul Riknussun##5160
buy 10 Simple Flour##30817 |complete itemcount(30817) >= 10 |q 29355 |goto Ironforge,59.90,37.60
buy 10 Mild Spices##2678 |complete itemcount(2678) >= 10 |q 29355 |goto Ironforge,59.90,37.60
|only if haveq(29355)
step
create Spice Bread##37836,Cooking,10 total
collect 10 Spice Bread##30816 |q 29355/1
|only if haveq(29355)
step
talk Daryl Riknussun##29351
turnin A Fowl Shortage##29352 |or |goto Ironforge,60.10,36.40
turnin A Round for the Guards##29351 |or |goto Ironforge,60.10,36.40
turnin Can't Get Enough Spice Bread##29355 |or |goto Ironforge,60.10,36.40
turnin I Need to Cask a Favor##29356 |or |goto Ironforge,60.10,36.40
turnin Keepin' the Haggis Flowin'##29353 |or |goto Ironforge,60.10,36.40
step
label "dailies3"
Routing to next section |next "end" |only if achieved(5842)
Routing to next section |next |only if default
step
talk Alegorn##4210
accept The Secret to Perfect Kimchi##29313 |or |goto Darnassus,50.00,36.60
accept Remembering the Ancestors##29314 |or |goto Darnassus,50.00,36.60
accept Back to Basics##29316 |or |goto Darnassus,50.00,36.60
accept Ribs for the Sentinels##29318 |or |goto Darnassus,50.00,36.60
accept Spice Bread Aplenty##29357 |or |goto Darnassus,50.00,36.60
step
Click on the Blessed Rice Cakes
collect Blessed Rice Cakes##69900 |q 29314/1 |goto Darnassus,43.20,78.40
|only if haveq(29314)
step
Click on the Buried Kimchi Jar
|tip They look like shinning jars covered in dirt all over Darnassus
collect 8 Buried Kimchi Jar##69898 |q 29313/1 |goto Darnassus 48.00,37.00
|only if haveq(29313)
step
talk Fyldan##4223
buy 10 Simple Flour##30817 |complete itemcount(30817) >= 10 |q 29357 |goto Darnassus 49.60,36.60
buy 10 Mild Spices##2678 |complete itemcount(2678) >= 10 |q 29357 |goto Darnassus 49.60,36.60
|only if haveq(29357)
step
create Spice Bread##37836,Cooking,10 total
collect 10 Spice Bread##30816 |q 29357/1
|only if haveq(29357)
step
Click on the Rice Baskets found on the Craftmen's Terrace and the Warrior's Terrace
|tip They look like shinning light-brown baskets
Practice Making Rice Flour |q 29316/1
|only if haveq(29316)
step
Create a basic campfire |cast Basic Campfire##818
Cook your Uncooked Ribs (5) |use Uncooked Ribs##69904
collect 5 Delicious Ribs##69906 |n
Feed the Delicious Ribs to the Darnassus Sentinels, located all over Darnassus |use Delicious Ribs##69906
Feed Ribs to Sentinels (5) |q 29318/1 |goto Darnassus 52.20,35.60
|only if haveq(29318)
step
talk Alegorn##4210
turnin The Secret to Perfect Kimchi##29313 |or |goto Darnassus,50.00,36.60
turnin Back to Basics##29316 |or |goto Darnassus,50.00,36.60
turnin Ribs for the Sentinels##29318 |or |goto Darnassus,50.00,36.60
turnin Spice Bread Aplenty##29357 |or |goto Darnassus,50.00,36.60
only if haveq(29313) or haveq(29316) or haveq(29318) or haveq(29357)
step
Click on the Shrine of the Ancestors
turnin Remembering the Ancestors##29314 |or |goto Darnassus,69.20,39.90
only if haveq(29314)
step
label "end"
Complete Let's Do Lunch: Stormwind |achieve 5474
Complete Let's Do Lunch: Ironforge |achieve 5841
Complete Let's Do Lunch: Darnassus |achieve 5842
Click here to go back to the beginning of the dailies. |confirm |next "dailies1"
step
Congratulations! You've earned the A Bunch of Lunch achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Cooking With Style",{
expansion="mists",
achieveid={3296},
patch='30100',
description="Obtain a Chef's Hat",
mopready=true,
},[[
step
label "start"
You will need to complete Dalaran Cooking Dailies to earn 100 Dalaran Cooking awards
|confirm
step
talk Brom Brewbaster##26905
accept Northern Cooking##13087 |goto Howling Fjord,58.20,62.10
|tip This quest is only available to you if you have 350+ Cooking skill.
|only if not completedq(13087)
step
kill Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
collect 4 Chilled Meat##43013 |q 13087/1 |goto Howling Fjord 79.00,73.10
|only if not completedq(13087)
step
talk Brom Brewbaster##26905
turnin Northern Cooking##13087 |goto Howling Fjord 58.20,62.10
|only if not completedq(13087)
step
talk Katherine Lee##28705
You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
accept Cheese for Glowergold##13103 |or |goto Dalaran,40.80,65.40
accept Convention at the Legerdemain##13101 |or |goto Dalaran,40.80,65.40
accept Infused Mushroom Meatloaf##13100 |or |goto Dalaran,40.80,65.40
accept Mustard Dogs!##13107 |or |goto Dalaran,40.80,65.40
accept Sewer Stew##13102 |or |goto Dalaran,40.80,65.40
step
Click the Aged Dalaran Limburger
|tip They look like piles and pieces of yellow cheese on the tables inside this building.
collect 1 Aged Dalaran Limburger##43137 |q 13103 |goto Dalaran 54.70,31.50
Click the Half Full Glasses of Wine
|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
collect 6 Half Full Dalaran Wine Glass##43138 |q 13103 |goto Dalaran 54.70,31.50
You can find more Half Full Glasses of Wine inside the building at [49.40,39.30]
step
Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
collect 1 Wine and Cheese Platter##43136 |q 13103/1
step
Click a Full Jug of Wine
|tip They look like small blue-ish green jugs sitting on the ground inside this building.  They spawn in random locations.
collect 1 Jug of Wine##43128 |q 13101/2 |goto Dalaran 55.00,30.80
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13101 |goto Dragonblight,30.00,49.80
step
Use your Cooking ability to cook 4 Northern Stew
|tip You will need a cooking fire to do this.
collect 4 Northern Stew##34747 |q 13101/1
step
The entrance to the Dalaran sewers starts here |goto Dalaran 60.20,47.70 < 5 |q 13100
click Infused Mushroom##192818
collect 4 Infused Mushroom##43100 |q 13100 |goto Dalaran/1 51.60,41.60
step
Leave the Dalaran sewers|goto Dalaran,60.20,47.70 < 5 |q 13100
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 2 Chilled Meat##43013 |q 13100 |goto Dragonblight,30.00,49.80
step
Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101
|tip You will need a cooking fire to do this.
collect 1 Infused Mushroom Meatloaf##43099 |q 13100/1
step
click Wild Mustard##192827
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
collect 4 Wild Mustard##43143 |q 13107 |goto Dalaran,67.70,40.00
You can find more Wild Mustard flowers:
|goto Dalaran/1 50.30,48.30
|goto Dalaran/1 37.20,43.90
step
kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
collect 4 Rhino Meat##43012 |q 13107 |goto Borean Tundra,46.70,43.60
step
create 4 Rhino Dogs##45553,Cooking,4 total |n
Use your Cooking ability to cook 4 Rhino Dogs
|tip You will need a cooking fire to do this.
collect 4 Rhino Dogs##34752 |q 13107
step
Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
collect 1 Mustard Dog Basket##43144 |q 13107/1
step
Click the Crystalsong Carrots
|tip they look like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
collect 4 Crystalsong Carrot##43148 |q 13102 |goto Crystalsong Forest,26.90,45.50
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13102 |goto Dragonblight,30.00,49.80
step
Use your Stew Cookpot in your bags|use Stew Cookpot##43147
|tip You will need a cooking fire to do this.
collect 1 Vegetable Stew##43149 |q 13102/1
step
talk Ranid Glowergold##28718
turnin Cheese for Glowergold##13103 |goto Dalaran,36.60,27.80
step
talk Arille Azuregaze##29049
turnin Convention at the Legerdemain##13101 |goto Dalaran,48.60,37.50
step
talk Orton Bennet##29527
turnin Infused Mushroom Meatloaf##13100 |goto Dalaran,52.30,55.60
step
talk Archmage Pentarus##28160
turnin Mustard Dogs!##13107 |goto Dalaran,68.60,42.00
step
The entrance to the Dalaran sewers starts here |goto Dalaran,60.20,47.70 < 5 |c |q 13102
step
talk Ajay Green##29532
turnin Sewer Stew##13102 |goto Dalaran,35.50,57.60
step
earn 100 Dalaran Cooking Award##81 |next "turnin"
Click here to go back to the beginning of the dailies |confirm |next "start"
step
label "turnin"
Go to Dalaran |goto Dalaran
talk Derek Odds##31032
buy 1 Chef's Hat##46349 |complete itemcount(46349) >= 1
Obtain a Chef's Hat |achieve 3296 |goto Dalaran,41.60,64.80
step
Congratulations! You've earned the _Cooking with Style_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Critter Gitter",{
expansion="mists",
achieveid={1781},
patch='30002',
description="This guide will walk you through coerceing 10 critters to be your pet within 3 minutes or less using Critter Bites.",
mopready=true,
},[[
step
This requires 10 Critter Bites
_Click here_ to craft these |confirm |next "farm1"
_Click here_ to buy these from the Auction House |confirm |next
step
talk Auctioneer Chilton##8670
collect 10 Critter Bites##43004 |goto Stormwind City 61.00,71.60
|next "gitter"
step
label "farm1"
This requires 20 Chilled Meat and 10 Northern Spices
_Click here_ to go farm for these |confirm |next "farm2"
_Click here_ to buy these from the Auction House |confirm |next
step
talk Auctioneer Chilton##8670
collect 20 Chilled Meat##43013 |goto Stormwind City 61.00,71.60
collect 10 Northern Spices##43007 |goto Stormwind City 61.00,71.60
|next "make"
step
label "farm2"
kill Scourged Mammoth##25452+
collect 20 Chilled Meat##43013 |goto Borean Tundra 78.20,24.00
step
Use the Dalaran Cooking Dailies guide to get Small Spice Bags
collect Spice Bag##44113 |n
collect 10 Northern Spices##43007
step
label "make"
Get someone to make your 10 Critter Bites
|tip Ask in your guild or in trade for someone to make these. Be sure to tip well!
Or... |only if skill("Cooking")>=400
Make a Campfire |cast Basic Campfire##818 |only if skill("Cooking")>=400
create Critter Bites##57435,Cooking,10 total |only if skill("Cooking")>=400
collect 10 Critter Bites##43004
Click here if you don't have the recipe |confirm |next "recipe" |only if skill("Cooking")>=400
|next "gitter"
step
label "recipe"
Use the Dalaran Cooking Dailies guide to earn 3 Dalaran Cooking Awards
earn 3 Dalaran Cooking Award##81
step
talk Derek Odds##31032
buy 1 Recipe: Critter Bites##43029 |complete itemcount(43029) >= 1 |goto Dalaran 41.60,64.80
step
learn Critter Bites##57435 |use Recipe: Critter Bites##43029
step
Make a Campfire |cast Basic Campfire##818
create Critter Bites##57435,Cooking,10 total
collect 10 Critter Bites##43004
step
label "gitter"
Target the Beetles, Scorpions, and Cockroaches and use the Critter Bites on them |use Critter Bites##43004
|tip Use all 10 Critter Bites as quick as possible. These critters are scattered all throughout the tunnel.
Coerce #10# critters to be your pet within 3 minutes or less |achieve 1781 |goto Eastern Plaguelands 4.70,35.50
step
Congratulations, you have earned the Critter Gitter achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Kickin' It Up a Notch",{
expansion="mists",
achieveid={906},
patch='30001',
description="Complete each of The Rokk's 4 cooking daily quests.",
mopready=true,
},[[
step
talk The Rokk##24393
You will only be able to complete 1 of the following quests per day
accept Soup for the Soul##11381 |or |goto Shattrath City 61.80,15.60
accept Super Hot Stew##11379 |or |goto Shattrath City 61.80,15.60
accept Manalicious##11380 |or |goto Shattrath City 61.80,15.60
accept Revenge is Tasty##11377 |or |goto Shattrath City 61.80,15.60
step
talk Uriku##20096
buy Recipe: Roasted Clefthoof##27691 |n
learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691 |goto Nagrand 56.20,73.30
only if haveq(11381)
step
kill Clefthoof##18205+, Clefthoof Calf##19183+
collect 4 Clefthoof Meat##27678 |c |goto Nagrand 58.50,46.80
You can find more Clefthooves at [45.50,72.70]
only if haveq(11381)
step
Make a Cooking Fire |cast Cooking Fire##818
create Roasted Clefthoof##33287,Cooking,4 total
Use your Cooking Pot to Cook up some Spiritual Soup |use Cooking Pot##33851
Cook a Spiritual Soup |q 11381/1 |goto Nagrand 25.90,59.40
only if haveq(11381)
step
talk Xerintha Ravenoak##20916 |goto Blade's Edge Mountains 62.50,40.30
buy Recipe: Mok'Nathal Shortribs##31675 |n
buy Recipe: Crunchy Serpent##31674 |n
learn Mok'Nathal Shortribs##31672 |use Recipe: Mok'Nathal Shortribs##31675
learn Crunchy Serpent##31673 |use Recipe: Mok'Nathal Shortribs##31674
only if haveq(11379)
step
kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
collect 4 Raptor Ribs##31670+ |c |goto Blade's Edge Mountains 49.60,46.20
only if haveq(11379)
step
kill Scalewing Serpent##20749+, Felsworn Scalewing##21123+
collect 1 Serpent Flesh##31671 |c |goto Blade's Edge Mountains 68.20,63.20
only if haveq(11379)
step
Make a Cooking Fire |cast Cooking Fire##818
create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |c
create 1 Crunchy Serpent##38868,Cooking,1 total |c
only if haveq(11379)
step
kill Abyssal Flamebringer##19973+
Use your Cooking Pot next to the Abyssal Flamebringer corpse to cook up some Demon Broiled Surprise |use Cooking Pot##33852
collect Demon Broiled Surprise##33848 |q 11379/1 |goto Blade's Edge Mountains 29.00,84.50
only if haveq(11379)
step
click Mana Berry Bush##186729
collect 15 Mana Berry##33849+ |q 11380/1 |goto Netherstorm 45.60,54.20
only if haveq(11380)
step
talk Supply Officer Mills##19038 |goto Terokkar Forest 55.80,53.00
buy Recipe: Warp Burger##27692 |n
learn Warp Burger##33288 |use Recipe: Warp Burger##27692
only if haveq(11377)
step
kill Blackwind Warp Chaser##23219+
collect 3 Warped Flesh##27681 |c |goto Terokkar Forest 64.00,83.50
only if haveq(11377)
step
kill Monstrous Kaliri##23051+
|tip They fly around in the sky close to the tree outposts and bridges.
collect Giant Kaliri Wing##338381 |c |goto Terokkar Forest 67.60,74.70
only if haveq(11377)
step
Make a Cooking Fire |cast Cooking Fire##818
create Warp Burger##33288,Cooking,3 total
Use your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto Terokkar Forest 25.90,59.50
only if haveq(11377)
step
talk The Rokk##24393
turnin Soup for the Soul##11381 |only if haveq(11381) |goto Shattrath City 61.80,15.60
turnin Super Hot Stew##11379 |only if haveq(11379) |goto Shattrath City 61.80,15.60
turnin Manalicious##11380 |only if haveq(11380) |goto Shattrath City 61.80,15.60
turnin Revenge is Tasty##11377 |only if haveq(11377) |goto Shattrath City 61.80,15.60
step
You'll need to come back tomorrow for another daily |only if not achieved(906)
Congratulations, you have earned the Kickin' It Up a Notch achievement! |only if achieved(906)
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Darnassus",{
expansion="mists",
achieveid={5842},
patch='40200',
description="Complete each of the Darnassus cooking daily quests.",
mopready=true,
},[[
step
You will only be able to complete one cooking daily per day in either Darnassus, Ironforge, or Stormwind
confirm
step
talk Alegorn##4210
You will only be able to complete 1 of the following quests per day
accept The Secret to Perfect Kimchi##29313 |or |goto Darnassus 50.00,36.60
accept Remembering the Ancestors##29314 |or |goto Darnassus 50.00,36.60
accept Back to Basics##29316 |or |goto Darnassus 50.00,36.60
accept Ribs for the Sentinels##29318 |or |goto Darnassus 50.00,36.60
accept Spice Bread Aplenty##29357 |or |goto Darnassus 50.00,36.60
step
click Blessed Rice Cakes##208819
collect Blessed Rice Cakes##69900 |q 29314/1 |goto Darnassus 43.20,78.40
only if haveq(29314)
step
click Buried Kimchi Jar##208814
collect 8 Buried Kimchi Jar##69898 |q 29313/1 |goto Darnassus 48.00,37.00
only if haveq(29313)
step
talk Fyldan##4223
buy 10 Simple Flour##30817 |complete itemcount(30817) >= 10 |goto Darnassus 49.60,36.60
buy 10 Mild Spices##2678 |complete itemcount(2678) >= 10 |goto Darnassus 49.60,36.60
only if haveq(29357)
step
create Spice Bread##37836,Cooking,10 total
collect 10 Spice Bread##30816 |q 29357/1
only if haveq(29357)
step
click Rice Basket##208829
|tip They look like shinning light-brown baskets
|tip They are scattered around inside the buildings in the Craftsmen's Terrace
Practice making Rice Flour #6# times |q 29316/1
only if haveq(29316)
step
Make a Cooking Fire |cast Cooking Fire##818
Cook your Uncooked Ribs |use Uncooked Ribs##69904
collect 5 Delicious Ribs##69906 |n
Feed #5# ribs to Sentinels |use Delicious Ribs##69906 |q 29318/1 |goto Darnassus 52.20,35.60
only if haveq(29318)
step
talk Alegorn##4210
turnin The Secret to Perfect Kimchi##29313 |only if haveq(29313) |goto Darnassus 50.00,36.60
turnin Back to Basics##29316 |only if haveq(29316) |goto Darnassus 50.00,36.60
turnin Ribs for the Sentinels##29318 |only if haveq(29318) |goto Darnassus 50.00,36.60
turnin Spice Bread Aplenty##29357 |only if haveq(29357) |goto Darnassus 50.00,36.60
turnin Remembering the Ancestors##29314 |only if haveq(29314) |goto Darnassus 50.00,36.60
step
You'll need to come back tomorrow for another daily |only if not achieved(5842)
Congratulations, you have earned the Let's Do Luunch: Darnassus achievement! |only if achieved(5842)
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Ironforge",{
expansion="mists",
achieveid={5841},
patch='40200',
description="Complete each of the Ironforge cooking daily quests.",
mopready=true,
},[[
step
You will only be able to _complete one cooking daily per day_ in either Darnassus, Ironforge, or Stormwind
confirm
step
talk Daryl Riknussun##5159
You will only be able to _complete 1 of the following quests_ per day
accept A Fowl Shortage##29352 |or |goto Ironforge 60.10,36.40
accept A Round for the Guards##29351 |or |goto Ironforge 60.10,36.40
accept Can't Get Enough Spice Bread##29355 |or |goto Ironforge 60.10,36.40
accept I Need to Cask a Favor##29356 |or |goto Ironforge 60.10,36.40
accept Keepin' the Haggis Flowin'##29353 |or |goto Ironforge 60.10,36.40
step
clicknpc Dun Morogh Chicken##80889
collect 6 Dun Morogh Chicken##69982 |q 29352/1 |goto Dun Morogh 60.30,34.00
only if haveq(29352)
step
click Cask of Drugan's IPA##208872
_Run_ the Cask back to Daryl Riknussun in Ironforge |q 29356/1 |goto Dun Morogh 53.90,50.80
|tip Be sure not to mount up, or else you lose the cask
only if haveq(29356)
step
click Sack of Oatmeal##208870
collect 4 Sack of Oatmeal##69985 |q 29353/2 |goto Ironforge 58.90,41.20
only if haveq(29353)
step
talk Sognar Cliffbeard##5124
collect 1 Bag o' Sheep Innards##69984 |q 29353/1 |goto Ironforge 61.90,72.50
only if haveq(29353)
step
talk Emrul Riknussun##5160
collect 5 Mild Spices##2678 |q 29353/3 |goto Ironforge 59.90,37.60
only if haveq(29353)
step
_Offer_ your Ironforge Rations to the guards around Ironforge |use Ironforge Rations##69981
Feed #6# Ironforge Guards |q 29351/1 |goto Ironforge 57.90,50.00
only if haveq(29351)
step
talk Emrul Riknussun##5160
buy 10 Simple Flour##30817 |q 29355 |goto Ironforge 59.90,37.60
buy 10 Mild Spices##2678 |q 29355 |goto Ironforge 59.90,37.60
only if haveq(29355)
step
create Spice Bread##37836,Cooking,10 total
collect 10 Spice Bread##30816 |q 29355/1
only if haveq(29355)
step
talk Daryl Riknussun##5159
turnin A Fowl Shortage##29352 |only if haveq(29352) |goto Ironforge 60.10,36.40
turnin A Round for the Guards##29351 |only if haveq(29351) |goto Ironforge 60.10,36.40
turnin Can't Get Enough Spice Bread##29355 |only if haveq(29355) |goto Ironforge 60.10,36.40
turnin I Need to Cask a Favor##29356 |only if haveq(29356) |goto Ironforge 60.10,36.40
turnin Keepin' the Haggis Flowin'##29353 |only if haveq(29353) |goto Ironforge 60.10,36.40
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5841)
Congratulations, you have _earned_ the _Let's Do Luunch: Ironforge_ achievement! |only if achieved(5841)
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Stormwind",{
expansion="mists",
achieveid={5474},
patch='40003',
description="Complete the Stormwind cooking daily quests.",
mopready=true,
},[[
step
You will only be able to _complete one cooking daily per day_ in either Darnassus, Ironforge, or Stormwind
confirm
step
talk Robby Flay##42288
You will only be able to _complete 1 of the following quests_ per day
accept A Fisherman's Feast##26190 |or |goto Stormwind City 50.60,71.90
accept Feeling Crabby?##26177 |or |goto Stormwind City 50.60,71.90
accept Orphans Like Cookies Too!##26192 |or |goto Stormwind City 50.60,71.90
accept Penny's Pumpkin Pancakes##26153 |or |goto Stormwind City 50.60,71.90
accept The King's Cider##26183 |or |goto Stormwind City 50.60,71.90
step
click Barrel of Canal Fish##203800
collect 5 Gigantic Catfish##57245 |q 26190/1 |goto Stormwind City 54.90,68.20
only if haveq(26190)
step
clicknpc Canal Crab##42339
collect 6 Canal Crab##57175 |q 26177/1 |goto Stormwind City 54.50,66.70
only if haveq(26177)
step
click Sack of Confectioner's Sugar##203801
collect 4 Confectioner's Sugar##57246 |q 26192/1 |goto Stormwind City 41.20,83.60
_You can find_ more sugar
_In_ The Blue Recluse building [51.00,96.20]
_In_ Pig and Whistle Tavern building [77.80,53.20]
_Inside_ The Golden Keg [66.00,31.90]
only if haveq(26192)
step
click Stormwind Pumpkin##203751
collect 6 Stormwind Pumpkin##57137 |q 26153/1 |goto Stormwind City 54.30,12.30
only if haveq(26153)
step
click Juicy Apple##203762
collect 12 Juicy Apple##57197 |q 26183/1 |goto Stormwind City 55.00,74.00
only if haveq(26183)
step
talk Robby Flay##42288
turnin A Fisherman's Feast##26190 |only if haveq(26190) |goto Stormwind City 50.60,71.90
turnin Feeling Crabby?##26177 |only if haveq(26177) |goto Stormwind City 50.60,71.90
turnin Orphans Like Cookies Too!##26192 |only if haveq(26192) |goto Stormwind City 50.60,71.90
turnin Penny's Pumpkin Pancakes##26153 |only if haveq(26153) |goto Stormwind City 50.60,71.90
turnin The King's Cider##26183 |only if haveq(26183) |goto Stormwind City 50.60,71.90
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5474)
Congratulations, you have _earned_ the _Let's Do Luunch: Stormwind_ achievement! |only if achieved(5474)
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Second That Emotion",{
expansion="mists",
achieveid={1780},
patch='30002',
description="Eat the 'emotion' foods.",
mopready=true,
},[[
step
You can either _buy these_ items from the auction house _or farm them_
collect 1 Bad Clams##43491
collect 1 Haunted Herring##43492
collect 1 Last Week's Mammoth##43488
collect 1 Tasty Cupcake##43490
_Click here_ to go farm these |confirm |next "farm1"
|next "eat"
step
label "farm1"
You can either _buy these_ items from the auction house _or farm them_
collect 1 Succulent Clam Meat##36782
collect 1 Mote of Shadow##22577
collect 1 Chunk o' Mammoth##34736
collect 1 Northern Egg##43501
collect 1 Fangtooth Herring##41810
collect 1 Essence of Undeath##12808
collect 2 Simple Flour##30817
_Click here_ to go farm these |confirm |next "farm2"
|next "make"
step
label "farm2"
kill Winterfin Warrior##25217+ |goto Borean Tundra 41.20,17.60
collect Darkwater Clam##36781 |n
_Open_ the Darkwater Clams in your bags |use Darkwater Clam##36781
collect 1 Succulent Clam Meat##36782 |c
step
kill Scourged Mammoth##25452+
collect 1 Chunk o' Mammoth##34736 |c |goto Borean Tundra 78.20,24.00
step
kill Carrion Condor##26174
collect 1 Northern Egg##43501 |c |goto Borean Tundra 85.20,36.20
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fangtooth Herring##41810 |c |goto Howling Fjord 60.20,33.60
step
talk Derek Odds##31032 |goto Dalaran 41.20,65.00
buy 2 Simple Flour##30817 |complete itemcount(30817) >= 2
step
kill Voidspawn##17981 |goto Nagrand 37.80,66.60
collect 1 Mote of Shadow##22577
step
_Enter_ Scholomance here |goto Western Plaguelands 69.10,73.00<20
_Kill_ all undead mobs in the dungeon
collect 1 Essence of Undeath##12808 |c
step
label "make"
_Get someone_ to make your Bad Clams, Last Week's Mammoth, Haunted Herring, and Tasty Cupcake
|tip Ask in your guild or in trade for someone to make these. Be sure to tip well! |only if skill("Cooking")<350
_Make_ your Bad Clams, Last Week's Mammoth, Haunted Herring, and Tasty Cupcake |only if skill("Cooking")>=350
_Make_ a Cooking Fire |cast Cooking Fire##818 |only if skill("Cooking")>=350
create Haunted Herring##58525,Cooking,1 total |only if skill("Cooking")>=350
create Bad Clams##58523,Cooking,1 total |only if skill("Cooking")>=350
create Last Week's Mammoth##58521,Cooking,1 total |only if skill("Cooking")>=350
create Tasty Cupcake##58512,Cooking,1 total |only if skill("Cooking")>=350
collect 1 Haunted Herring##43492
collect 1 Bad Clams##43491
collect 1 Last Week's Mammoth##43488
collect 1 Tasty Cupcake##43490
_Click here_ if you don't have these recipes |confirm |next "recipes" |only if skill("Cooking")>=350
|next "eat"
step
label "recipes"
kill Crypt Crawler##25227+ |goto Borean Tundra 54.60,70.00
collect 1 Recipe: Bad Clams##43509
collect 1 Recipe: Last Week's Mammoth##43508
collect 1 Recipe: Haunted Herring##43510
collect 1 Recipe: Tasty Cupcake##43507
step
learn Bad Clams##58523 |use Recipe: Bad Clams##43509
learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510
learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508
learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Haunted Herring##58525,Cooking,1 total
create Bad Clams##58523,Cooking,1 total
create Last Week's Mammoth##58521,Cooking,1 total
create Tasty Cupcake##58512,Cooking,1 total
collect 1 Haunted Herring##43492
collect 1 Bad Clams##43491
collect 1 Last Week's Mammoth##43488
collect 1 Tasty Cupcake##43490
step
label "eat"
_Eat_ the Haunted Herring to become scared |use Haunted Herring##43492
_Eat_ Haunted Herring |achieve 1780/3
step
_Eat_ the Bad Clams to become angry |use Bad Clams##43491
_Eat_ Bad Clams |achieve 1780/2
step
_Eat_ the Last Week's Mammoth to become sad |use Last Week's Mammoth##43488
_Eat_ Last Week's Mammoth |achieve 1780/1
step
_Eat_ the Tasty Cupcake to become happy! |use Tasty Cupcake##43490
_Eat_ Tasty Cupcake |achieve 1780/4
step
Congratulations, you have _earned_ the _Second That Emotion_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\25 Fish",{
expansion="mists",
achieveid={1556},
patch='30003',
description="Fish up 25 items.",
mopready=true,
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #25# fish |achieve 1561 |goto Stormwind City 54.90,69.70
step
Congratulations, you have _earned_ the _25 Fish_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\50 Fish",{
expansion="mists",
achieveid={1557},
patch='40200',
description="Fish up 50 items.",
mopready=true,
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #50# fish |achieve 1561 |goto Stormwind City 54.90,69.70
step
Congratulations, you have _earned_ the _50 Fish_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\100 Fish",{
expansion="mists",
achieveid={1558},
patch='30002',
description="Fish up 100 items.",
mopready=true,
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #100# fish |achieve 1561 |goto Stormwind City 54.90,69.70
step
Congratulations, you have _earned_ the _100 Fish_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\250 Fish",{
expansion="mists",
achieveid={1559},
patch='30003',
description="Fish up 250 items.",
mopready=true,
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #250# fish |achieve 1561 |goto Stormwind City 54.90,69.70
step
Congratulations, you have _earned_ the _250 Fish_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\500 Fish",{
expansion="mists",
achieveid={1560},
patch='30100',
description="Fish up 500 items.",
mopready=true,
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #500# fish |achieve 1561 |goto Stormwind City 54.90,69.70
step
Congratulations, you have _earned_ the _500 Fish_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Chasing Marcia",{
expansion="mists",
achieveid={3217},
patch='30100',
description="Complete each of Marcia Chase's 5 fishing daily quests.",
mopready=true,
},[[
step
talk Marcia Chase##28742
You will only be able to _complete 1 of the following quests_ per day
accept Blood Is Thicker##13833 |or |goto Dalaran 53.10,64.90
accept Dangerously Delicious##13834 |or |goto Dalaran 53.10,64.90
accept Jewel Of The Sewers##13832 |or |goto Dalaran 53.10,64.90
accept Disarmed!##13836 |or |goto Dalaran 53.10,64.90
accept The Ghostfish##13830 |or |goto Dalaran 53.10,64.90
step
kill Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
_Get_ the Animal Blood buff |havebuff Animal Blood##46221 |q 13833 |goto Borean Tundra 54.60,41.80
only if haveq (13833)
step
_Walk into_ the water here to create a pool of blood
_Use_ your fishing ability |cast Fishing##7620
collect 5 Bloodtooth Frenzy##45905 |q 13833/1 |goto Borean Tundra 53.70,42.90
only if haveq (13833)
step
_Use_ your fishing ability |cast Fishing##7620
collect 10 Terrorfish##45904 |q 13834/1 |goto Wintergrasp 79.90,41.80
only if haveq (13834)
step
_Go down_ into the sewers |goto Dalaran 36.30,45.50<10
_Use_ your fishing ability |cast Fishing##7620
collect 1 Corroded Jewelry##45903 |q 13832/1 |goto Dalaran 44.40,66.20
only if haveq (13832)
step
_Use_ your fishing ability |cast Fishing##7620
collect Bloated Slippery Eel##45328 |n
use Bloated Slippery Eel##45328
collect 1 Severed Arm##45323 |q 13836/1 |goto Dalaran 64.80,60.80
only if haveq (13836)
step
_Use_ your fishing ability |cast Fishing##7620
collect Phantom Ghostfish##45902 |n
use Phantom Ghostfish##45902
Discover the Ghostfish mystery |q 13830/1 |goto Sholazar Basin 49.30,61.80
only if haveq (13830)
step
talk Marcia Chase##28742
turnin Blood Is Thicker##13833 |only if haveq(13833) |goto Dalaran 53.10,64.90
turnin Dangerously Delicious##13834 |only if haveq(13834) |goto Dalaran 53.10,64.90
turnin Jewel Of The Sewers##13832 |only if haveq(13832) |goto Dalaran 53.10,64.90
turnin The Ghostfish##13830 |only if haveq(13830) |goto Dalaran 53.10,64.90
step
talk Olisarra the Kind##28706
turnin Disarmed!##13836 |only if haveq(13836) |goto Dalaran 36.60,37.30
step
Congratulations, you have _earned_ the _Chasing Marcia_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\I Smell A Giant Rat",{
expansion="mists",
achieveid={1958},
patch='30003',
description="Fish up the Giant Sewer Rat from The Underbelly in Dalaran.",
mopready=true,
},[[
step
_Go down_ into the sewers |goto Dalaran 36.30,45.50 < 10 |walk
_Use_ your fishing ability |cast Fishing##7620
collect Giant Sewer Rat##43698
use Giant Sewer Rat##43698 |achieve 1958 |goto Dalaran 44.10,66.40
step
Congratulations, you have _earned_ the _I Smell A Giant Rat achievement_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\The Limnologist/The Oceanographer",{
expansion="mists",
condition_end=function() return achieved(5478) end,
achieveid={5478,5479,5478},
patch='40003',
description="Catch 42 different freshwater fish and catch 31 different saltwater fish.",
mopready=true,
},[[
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Sagefish##21071 |achieve 5478/34 |goto Loch Modan 50.90,54.20
|tip Fished from pools around this area.
collect 1 Raw Loch Frenzy##6317 |achieve 5478/27 |goto Loch Modan 50.90,54.20
|tip Fished from open water around this area.
collect 1 Raw Longjaw Mud Snapper##6289 |achieve 5478/28 |goto Loch Modan 50.90,54.20
|tip Fished from open water around this area.
collect 1 Raw Brilliant Smallfish##6291 |achieve 5478/7 |goto Loch Modan 50.90,54.20
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Murglesnout##53069 |achieve 5479/18 |goto Twilight Highlands 73.20,76.80
|tip Fished from open water around this area.
collect 1 Deapsea Sagefish##53072 |achieve 5479/9 |goto Twilight Highlands 73.20,76.80
|tip Fished from pools around this area.
collect 1 Algaefin Rockfish##53071 |achieve 5479/2 |goto Twilight Highlands 73.20,76.80
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Highland Guppy##53064 |achieve 5478/23 |goto Twilight Highlands 32.80,65.00
|tip Fished from open water around this area.
collect 1 Striped Lurker##53067 |achieve 5478/41 |goto Twilight Highlands 32.80,65.00
|tip Fished from open water around this area.
collect 1 Sharptooth##53062 |achieve 5478/36 |goto Twilight Highlands 32.80,65.00
|tip Fished from open water around this area.
collect 1 Deepsea Sagefish##53072 |achieve 5479/9 |goto Twilight Highlands 74.10,45.70
|tip Fished from pools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Bristle Whisker Catfish##6308 |achieve 5478/8 |goto Arathi Highlands 64.40,67.40
|tip Fished from open water around this area.
collect 1 Raw Greater Sagefish##21153 |achieve 5478/22 |goto Arathi Highlands 64.40,67.40
|tip Fished from pools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Oily Blackmouth##6358 |achieve 5479/19 |goto Arathi Highlands 22.80,86.60
|tip Fished from open water around this area.
collect 1 Raw Rainbow Fin Albacore##6361 |achieve 5479/21 |goto Arathi Highlands 22.80,86.60
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Sickly Looking Fish##6299 |achieve 5478/38 |goto Tirisfal Glades 67.10,50.90
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Slitherskin Mackerel##6303 |achieve 5479/25 |goto Tirisfal Glades 71.70,25.40
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Mithril Head Trout##8365 |achieve 5478/29 |goto The Hinterlands 29.30,47.70
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Firefin Snapper##6359 |achieve 5479/11 |goto The Hinterlands 79.20,63.50
|tip Fished from open water around this area.
collect 1 Raw Rockscale Cod##6362 |achieve 5479/24 |goto The Hinterlands 79.20,63.50
|tip Fished from open water around this area.
collect 1 Raw Spotted Yellowtail##4603 |achieve 5479/26 |goto The Hinterlands 79.20,63.50
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Big-Mouth Clam##7973 |achieve 5479/3 |goto Eastern Plaguelands 96.50,54.80
|tip Fished from open water around this area.
collect 1 Stonescale Eel##13422 |achieve 5479/27 |goto Eastern Plaguelands 96.50,54.80
|tip Fished from open water around this area.
collect 1 Raw Glossy Mightfish##13754 |achieve 5479/13 |goto Eastern Plaguelands 96.50,54.80
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Giant Sunfish##35285 |achieve 5479/12 |goto Isle of Quel'Danas 47.70,21.90
|tip Fished from open water around this area.
collect 1 Jaggal Clam##24476 |achieve 5479/15 |goto Isle of Quel'Danas 47.70,21.90
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Crescent-Tail Skullfish##33824 |achieve 5478/9 |goto Deadwind Pass 42.50,28.00
|tip Fished from open water around this area.
collect 1 Bloodfin Catfish##33823 |achieve 5478/5 |goto Deadwind Pass 42.50,28.00
|tip Fished from open water around this area.
collect 1 Barbed Gill Trout##27422 |achieve 5478/2 |goto Deadwind Pass 42.50,28.00
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Large Raw Mightfish##13893 |achieve 5479/16 |goto Blasted Lands 70.00,26.40
|tip Fished from open water around this area.
collect 1 Darkclaw Lobster##13888 |achieve 5479/5 |goto Blasted Lands 70.00,26.40
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Summer Bass##13756 |achieve 5479/28 |goto Blasted Lands 70.80,35.70
|tip Can only be caught in open waters during Spring, Summmer, and Fall.
collect 1 Winter Squid##13755 |achieve 5479/31 |goto Blasted Lands 70.80,35.70
|tip Can only be caught in open waters during Spring, Fall, and Winter.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Whitescale Salmon##13889 |achieve 5479/30 |goto Blasted Lands 43.10,83.80
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Felblood Snapper##27441 |achieve 5478/13 |goto Shadowmoon Valley 39.80,60.00
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Furious Crawdad##27439 |achieve 5478/16 |goto Terokkar Forest 63.20,73.50
|tip Fished from Highland Mixed Schools around this area.
collect 1 Barbed Gill Trout##27422 |achieve 5478/2 |goto Terokkar Forest 63.20,73.50
|tip Fished from open water around this area.
collect 1 Golden Darter##27438 |achieve 5478/20 |goto Terokkar Forest 63.20,73.50
|tip Fished from Highland Mixed Schools and Darter Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Figluster's Mudfish##27435 |achieve 5478/14 |goto Nagrand 33.80,47.00
|tip Fished from Mudfish Schools around this area.
collect 1 Icefin Bluefish##27437 |achieve 5478/25 |goto Nagrand 33.80,47.00
|tip Fished from Bluefish Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Zangarian Sporefish##27429 |achieve 5478/42 |goto Zangarmarsh 60.30,44.60
|tip Fished from Sporefish Schools around this area.
collect 1 Huge Spotted Feltail##27515 |achieve 5478/24 |goto Zangarmarsh 60.30,44.60
|tip Fished from various schools around this area.
collect 1 Goldenscale Vendorfish##27442 |achieve 5478/21 |goto Zangarmarsh 60.30,44.60
|tip Fished from various schools around this area.
collect 1 Spotted Feltail##27425 |achieve 5478/40 |goto Zangarmarsh 60.30,44.60
|tip Fished from Brackish Mixed Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Darkshore Grouper##12238 |achieve 5479/6 |goto Darkshore 48.60,18.00
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Nightfin Snapper##13759 |achieve 5478/33 |goto Moonglade 52.40,46.90
|tip Fished from open water, and have a higher drop chance at night.
collect 1 Raw Sunscale Salmon##13760 |achieve 5479/29 |goto Moonglade 52.40,46.90
|tip Fished from open water, and have a higher drop chance in daylight.
collect 1 Raw Redgill##13758 |achieve 5479/22 |goto Moonglade 52.40,46.90
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Striped Lurker##53067 |achieve 5478/41 |goto Mount Hyjal 60.60,23.70
|tip Fished from open water around this area.
collect 1 Mountain Trout##53063 |achieve 5478/30 |goto Mount Hyjal 60.60,23.70
|tip Fished from Mountain Trout Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Deviate Fish##6522 |achieve 5478/10 |goto The Barrens 39.00,74.00
|tip Fished from Schools of Deviate Fish around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Blackbelly Mudfish##53066 |achieve 5478/4 |goto Uldum 54.40,37.70
|tip Fished from Blackbelly Mudfish Schools around this area.
collect 1 Lavascale Catfish##53068 |achieve 5478/26 |goto Uldum 54.40,37.70
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fathom Eel##53070 |achieve 5479/10 |goto Uldum 60.50,85.90
|tip Fished from Fathom Eel Swarms around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Albino Cavefish##53065 |achieve 5478/1 |goto Deepholm 31.40,31.20
|tip Fished from Albino Cavefish Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Imperial Manta Ray##41802 |achieve 5479/14 |goto Borean Tundra 54.50,75.20
|tip Fished from Imperial Manta Ray Schools around this area.
collect 1 Borean Man O' War##41805 |achieve 5479/4 |goto Borean Tundra 54.50,75.20
|tip Fished from Borean Man O' War Schools around this area.
collect 1 Rockfin Grouper##41803 |achieve 5479/23 |goto Borean Tundra 54.50,75.20
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Musselback Sculpin##41806 |achieve 5478/31 |goto Borean Tundra 51.50,47.90
|tip Fished from Musselback Sculpin Schools around this area.
collect 1 Dragonfin Angelfish##41807 |achieve 5478/11 |goto Borean Tundra 51.50,47.90
|tip Fished from Dragonfin Angelfish Schools around this area.
collect 1 Bonescale Snapper##41808 |achieve 5478/6 |goto Borean Tundra 51.50,47.90
|tip Fished from open water around this area.
step
kill Winterfin Warrior##25217+, Winterfin Shorestriker##25215+, Winterfin Oracle##25216+
collect 1 Darkwater Clam##36781 |achieve 5479/7 |goto Borean Tundra 41.30,16.90
|tip Dropped from killing the above mobs in the area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Moonglow Cuttlefish##41801 |achieve 5479/17 |goto Borean Tundra 82.70,59.50
|tip Fished from open water around this area.
collect 1 Deep Sea Monsterbelly##41800 |achieve 5479/8 |goto Borean Tundra 82.70,59.50
|tip Fished from Deep Sea Monsterbelly Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Nettlefish##41813 |achieve 5478/32 |goto Sholazar Basin 49.60,62.10
|tip Fished from Nettlefish Schools around this area.
collect 1 Barrelhead Goby##41812 |achieve 5478/3 |goto Sholazar Basin 49.60,62.10
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Giant Darkwater Clam##45909 |achieve 5478/17 |goto Wintergrasp 77.60,39.80
|tip Fished from open water around this area.
collect 1 Glacial Salmon##41809 |achieve 5478/18 |goto Wintergrasp 77.60,39.80
|tip Fished from Glacial Salmon Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Glassfin Minnow##41814 |achieve 5478/19 |goto Crystalsong Forest 48.60,53.90
|tip Fished from Glassfin Minnow Schools around this area.
step
_Go down_ into the sewers |goto Dalaran 36.30,45.50 < 10 |walk
_Use_ your fishing ability |cast Fishing##7620
collect 1 Sewer Carp##43571 |achieve 5478/35 |goto Dalaran 43.90,66.80
|tip Fished from open water around this area.
step
_Go up_ the ramp out of the sewers |goto Dalaran 36.30,45.50 < 10 |walk
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fountain Goldfish##43646 |achieve 5478/15 |goto Dalaran 52.70,66.80
|tip Fished from fountain water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Slippery Eel##43652 |achieve 5478/39 |goto Dalaran 64.30,66.10
|tip Fished from open water around this area.
collect 1 Shimmering Minnow##43647 |achieve 5478/37 |goto Dalaran 64.30,66.10
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fangtooth Herring##41810 |achieve 5478/12 |goto Howling Fjord 59.80,59.10
|tip Fished from Fangtooth Herring Schools around this area.
step
Congratulations, you have _earned_ the _The Limnologist_ achievement! |achieve 5478 |only if achieved(5478)
Congratulations, you have _earned_ the _The Oceanographer_ achievement! |achieve 5479 |only if achieved(5479)
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Old Crafty",{
expansion="mists",
achieveid={1836},
patch='30002',
description="Fish up Old Crafty in Orgrimmar.",
mopready=true,
},[[
step
This achievement will _flag you for PVP_ while you are in Orgrimmar
|tip You can achieve this on a Horde character to avoid deaths
confirm
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Old Crafty##34486 |achieve 1836 |goto Orgrimmar 59.30,39.90
step
Congratulations, you have _earned_ the _Old Crafty_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Old Ironjaw",{
expansion="mists",
achieveid={1837},
patch='30002',
description="Fish up Old Ironjaw in Ironforge.",
mopready=true,
},[[
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Old Ironjaw##34484 |achieve 1837 |goto Ironforge 47.60,14.20
step
Congratulations, you have _earned_ the _Old Ironjaw_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Turtles All the Way Down",{
expansion="mists",
achieveid={3218},
patch='30100',
description="Fish up a Sea Turtle mount from any fishing pool in Deepholm, Mount Hyjal, Twilight Highlands, Uldum, Northrend, or Pandaria.",
mopready=true,
},[[
step
In order to earn this achievement, you will _need to fish_ in Deepholm, Mount Hyjal, Twilight Highlands, Uldum, Northrend, or Pandaria
We will _recommend a location_ to begin your journey, but you can do this anywhere listed above
confirm
step
map Uldum
path follow loose; loop off; ants curved
path	86.50,45.50	77.40,70.60	67.90,72.30
path	64.00,68.30	60.70,63.00	57.60,34.80
path	57.50,16.80	56.60,21.10	54.90,37.10
path	42.90,25.60	50.90,38.10	57.30,51.10
path	59.10,70.10	64.10,78.00	58.40,85.70
path	48.30,90.10	45.40,83.70	31.00,71.90
path	29.60,69.30	23.80,65.80
_Use_ your fishing ability along the river here |cast Fishing##7620
_You will only be able to catch the sea turtle from fish schools_
collect Sea Turtle##46109
use Sea Turtle##46109 |achieve 3218
step
Congratulations, you have _earned_ the _Turtles All the Way Down_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\First Aid\\Preparing for Disaster",{
expansion="mists",
achieveid={5480},
patch='40003',
description="This guide will walk you through creating 500 Dense Embersilk Bandages.",
mopready=true,
},[[
step
Reach 525 First Aid, use the First Aid leveling guide to accomplish this.
|only if skill("First Aid") < 525
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Dense Embersilk Bandage |learn Dense Embersilk Bandage##88893 |goto Stormwind City/0 52.18,45.42
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.20,25.60	67.20,32.00	68.60,35.80	69.00,42.60	73.00,45.00
path	77.20,42.80	76.80,35.60	74.60,32.80	74.80,28.40	72.20,26.60
Kill humanoid enemies around this area
collect 1500 Embersilk Cloth##53010
|tip You can also purchase them from the Auction House.
step
create 500 Dense Embersilk Bandage##53051 |achieve 5480
|tip You may need to create less if you've created some in the past
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\First Aid\\Stocking Up",{
expansion="mists",
achieveid={137},
patch='30001',
description="This guide will walk you through creating 500 Heavy Frostweave Bandages.",
mopready=true,
},[[
step
Reach 450 First Aid, use the First Aid leveling guide to accomplish this.
|only if skill("First Aid") < 450
step
Kill humanoids in the area
collect 1000 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72
|tip Farm the Frostweave Cloth in Icecrown or purchase it from the auction house.
step
Kill Drakuru and Rageclaw enemies around this area
collect Manual: Heavy Frostweave Bandage##39152 |goto Zul'Drak/0 34.23,83.24 |or
'|complete knowspell(45546) |or
step
use the Manual: Heavy Frostweave Bandage##39152
Learn Heavy Frostweave Bandage |learn Heavy Frostweave Bandage##45546
step
create 500 Heavy Frostweave Bandage##45546 |achieve 137
|tip You may need to create less if you've created some in the past
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\First Aid\\Ultimate Triage",{
expansion="mists",
achieveid={141},
patch='30001',
description="This guide will walk you through the Ultimate Triage achievement.",
mopready=true,
},[[
step
Reach 400 First Aid, use the First Aid leveling guide to accomplish this,
|only if skill("First Aid") < 400
step
collect 1 Heavy Frostweave Bandage##45546 |or
collect 1 Embersilk Bandage##74556 |or
|tip Either bandage works for the achievement
step
Duel another player and heal the loser to complete the achievement |achieve 141
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Kalimdor\\Ghosts in the Dark",{
expansion="mists",
achieveid={5453},
patch='40003',
description="Discover the secret buried beneath the Maw of the Void in Darkshore.",
mopready=true,
},[[
step
_Jump down_ into the water |goto Darkshore 51.70,31.10 < 5 |only if walking
kill Telarius Voidstrider##48764
collect Writings of the Dark Herald##64450 |n
_Use_ Writings of the Dark Herald |use Writings of the Dark Herald##64450
accept Writings of the Void##28529 |goto Darkshore 52.40,31.00
step
talk Bielara Ivyshroud##48726 |goto Darkshore 51.70,31.10
_Say_ you'd like to leave this place |goto Darkshore 53.30,36.20,0.50 |noway |c
step
talk Ranger Glynda Nal'Shea##32971
turnin Writings of the Void##28529 |goto Darkshore 50.70,19.70
Discover the secret buried beneath the Maw of the Void in Darkshore |achieve 5453
step
Congratulations, you have _earned_ the _Ghosts in the Dark_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Kalimdor\\Glutton for Fiery Punishment",{
expansion="mists",
achieveid={5448},
patch='40003',
description="In Archmage Xylem's Trial of Fire in Azshara, gain 10 stacks of Fire Dancing without taking damage.",
mopready=true,
},[[
step
_Stand on the red fire runes_ without getting hit by fire 10 times in a row
|tip You can see which runes will shoot fire up because they will have a little flame in their center a few seconds before the fire shoots up. Follow the Blood Elf, he always runs to a safe spot.
_Gain_ #10# stacks of Fire Dancing without taking damage |achieve 5448 |goto Azshara 33.40,23.50
step
Congratulations, you have _earned_ the _Glutton for Fiery Punishment_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Kalimdor\\Glutton for Icy Punishment",{
expansion="mists",
achieveid={5546},
patch='40003',
description="In Archmage Xylem's Trial of Frost in Azshara, gain 20 stacks of Essence of Ice without taking damage.",
mopready=true,
},[[
step
_Run around_ on top of the mountain and get next to the floating white orbs
|tip Don't step on the snowy ground and try not to let the blue mist hit you. It will help to dismiss your pet if you have one. Take your time and stay on the outskirts.
_Gain_ #20# stacks of Essence of Ice without taking damage |achieve 5546 |goto Azshara 62.00,20.50
step
Congratulations, you have _earned_ the _Glutton for Icy Punishment_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Kalimdor\\Glutton for Shadowy Punishment",{
expansion="mists",
achieveid={5547},
patch='40003',
description="In Archmage Xylem's Trial of Shadow in Azshara, trap 20 Weeping Souls without taking damage.",
mopready=true,
},[[
step
_Click_ the Touch to Begin crystal
|tip It's a big floating purple crystal.
You have to _lure 20 Weeping Souls_ into the purple shadow runes on the ground without getting hit
|tip A shadow will shoot out of you and you can see it on the ground heading to one of the portals. Position yourself so that the Weeping Souls that come out of the portals have to walk over the shadow runes on the ground in order to get to you.
_IMMEDIATELY_ try to mount up
|tip If you don't make it you'll have to do this the hard way!
_Trap_ #20# Weeping Souls of without taking damage |achieve 5547 |goto Azshara 31.00,27.50
step
Congratulations, you have _earned_ the _Glutton for Shadowy Punishment_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Outland\\Bombs Away",{
expansion="mists",
achieveid={1275},
patch='30002',
description="Complete the Fires Over Skettis quest in under 2 minutes 15 seconds while not in a group.",
mopready=true,
},[[
step
talk Yuula##23449
accept To Skettis!##11098 |goto Shattrath City 64.20,42.30
step
talk Sky Sergeant Doryn##23048
turnin To Skettis!##11098 |goto Terokkar Forest 64.50,66.70
step
talk Sky Sergeant Doryn##23048
_Make sure_ you're not in a group
|tip It is highly advised that you turn on the auto turn in quests feature of this add-on since time is a huge factor to complete this achievement and also track this achievement to see the timer.
accept Fires Over Skettis##11008 |goto Terokkar Forest 64.50,66.70
step
_HURRY!  HURRY!_
use Skyguard Blasting Charges##32406
|tip Use your Skyguard Blasting Charges to destroy the Monstrous Kaliri Eggs.
|tip They look like big white egg cocoons all over the tops of buildings in Skettis. Bomb your way to here and fly toward the Blackwind Landing and remember to KEEP MOVING and hit as many eggs as you can!
_Destroy_ #20# Monstrous Kaliri Egg |q 11008/1 |goto Terokkar Forest 74.50,88.30
step
_HURRY!  HURRY!_
|tip Return here as fast as possible! If you don't make it you can abandon the quest and try it again.
talk Sky Sergeant Doryn##23048
turnin Fires Over Skettis##11008 |goto Terokkar Forest 64.50,66.70
step
Too slow! You'll have to try again! |only if not achieved(1275)
Congratulations, you have _earned_ the _Bombs Away_ achievement! |only if achieved(1275)
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Northrend\\D.E.H.T.A's Little P.I.T.A.",{
expansion="mists",
achieveid={561},
patch='30001',
description="This guide will walk you through completing the D.E.H.T.A. questline in Borean Tundra.",
mopready=true,
},[[
step
talk Arch Druid Lathorius##25809
accept A Mission Statement##11864 |goto Borean Tundra 57,44.30
accept Ears of Our Enemies##11866 |goto Borean Tundra 57,44.30
accept Help Those That Cannot Help Themselves##11876 |goto Borean Tundra 57,44.30
step
talk Hierophant Cenius##25810
accept Happy as a Clam##11869 |goto Borean Tundra 57.30,44.10
step
talk Killinger the Den Watcher##25812
|tip He walks around the small pond in the middle of the camp.
accept Ned, Lord of Rhinos...##11884 |goto Borean Tundra 57,44
step
talk Zaza##25811
accept Unfit for Death##11865 |goto Borean Tundra 56.80,44
stickystart "lootdiver"
step
use D.E.H.T.A. Trap Smasher##35228
|tip Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves.
Free #8# Mammoth Calves |q 11876/1 |goto Borean Tundra 53.80,40.60
step
label "lootdiver"
kill 10 Loot Crazed Diver##25836 |q 11869/1 |goto Borean Tundra 53.40,42.70
kill Loot Crazed Diver##25836+ |n
collect 15 Nesingwary Lackey Ear##35188 |q 11866/1 |goto Borean Tundra 53.40,42.70
step
kill "Lunchbox"##25968 |q 11884/2 |goto Borean Tundra 46.40,40
kill Nedar Lord of Rhinos##25801 |q 11884/1 |goto Borean Tundra 46.40,40
|tip He walks around this area. Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
Stand inside the Caribou Traps on the ground
|tip They look like metal spiked traps on the ground.
Use your Pile of Fake Furs |use Pile of Fake Furs##35127
Trap #8# Nesingwary Trappers |q 11865/1 |goto Borean Tundra 56.20,50.50
step
Make sure you don't have Animal Blood on you. If you do, go for a swim to wash it off, before approaching the druids |nobuff Animal Blood##46221
step
talk Arch Druid Lathorius##25809
turnin Ears of Our Enemies##11866 |goto Borean Tundra 57,44.30
turnin Help Those That Cannot Help Themselves##11876 |goto Borean Tundra 57,44.30
accept Khu'nok Will Know##11878 |goto Borean Tundra 57,44.30
step
talk Hierophant Cenius##25810
turnin Happy as a Clam##11869 |goto Borean Tundra 57.30,44.10
accept The Abandoned Reach##11870 |goto Borean Tundra 57.30,44.10
step
talk Killinger the Den Watcher##25812
|tip He walks around the small pond in the middle of the camp.
turnin Ned, Lord of Rhinos...##11884 |goto Borean Tundra 57,44
step
talk Zaza##25811
turnin Unfit for Death##11865 |goto Borean Tundra 56.80,44
accept The Culler Cometh##11868 |goto Borean Tundra 56.80,44
step
Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |goto Borean Tundra 59.50,30.40
|tip The calf is slow so don't move too fast or you'll lose it.
step
talk Khu'nok the Behemoth##25862
turnin Khu'nok Will Know##11878 |goto Borean Tundra 59.50,30.40
accept Kaw the Mammoth Destroyer##11879 |goto Borean Tundra 59.50,30.40
step
Ride around and find a Wooly Mammoth Bull |n
Click it to ride it |invehicle
step
Use the skills on your mammoth action bar to do the following:
kill Kaw the Mammoth Destroyer##25802
click Kaw's War Halberd##188066
collect Kaw's War Halberd##35234 |q 11879/1 |goto Borean Tundra 53.70,23.90
step
talk Arch Druid Lathorius##25809
turnin Kaw the Mammoth Destroyer##11879 |goto Borean Tundra 57,44.30
step
kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1 |goto Borean Tundra 57.30,56.50
step
talk Hierophant Liandra##25838
turnin The Abandoned Reach##11870 |goto Borean Tundra 57.80,55.10
accept Not On Our Watch##11871 |goto Borean Tundra 57.80,55.10
step
kill Northsea Thug##25843+ |n
click Shipment of Animal Parts##188018
collect 12 Shipment of Animal Parts##35222 |q 11871/1 |goto Borean Tundra 59.10,55.90
step
talk Hierophant Liandra##25838
turnin Not On Our Watch##11871 |goto Borean Tundra 57.80,55.10
accept The Nefarious Clam Master...##11872 |goto Borean Tundra 57.80,55.10
step
kill Clam Master K##25800 |q 11872/1 |goto Borean Tundra 61.50,66.50
step
talk Hierophant Cenius##25810
turnin The Nefarious Clam Master...##11872 |goto Borean Tundra 57.30,44.10
step
talk Arch Druid Lathorius##25809
accept The Assassination of Harold Lane##11892 |goto Borean Tundra 57.00,44.20
step
use Cenarion Horn##35293
|tip Use the Cenarion Horn in your bags to help you fight Harold Lane.
kill Harold Lane##25804 |q 11892/1 |goto Borean Tundra 50.00,41.40
step
talk Arch Druid Lathorius##25809
turnin The Assassination of Harold Lane##11892 |goto Borean Tundra 57.00,44.20
step
Congratulations, you have earned the D.E.T.H.A's Little P.I.T.A. achievement! |achieve 561
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Northrend\\Lance a Lot",{
expansion="mists",
achieveid={2836},
patch='30100',
keywords={"Lance","a","Lot","Argent","Tournament"},
description="This guilde will walk you through obtaining the Lance a Lot achievement",
mopready=true,
},[[
step
To earn this achievement, you will need to defeat a rider from each faction at the Argent Tournament
Darnassus |achieve 2836/1
The Exodar |achieve 2836/2
Gnomeregan |achieve 2836/3
Ironforge |achieve 2836/4
Orgrimmar |achieve 2836/5
Sen'jin |achieve 2836/6
Silvermoon City |achieve 2836/7
Stormwind |achieve 2836/8
Thunder Bluff |achieve 2836/9
The Undercity |achieve 2836/10
step
Congratulations!
You have earned the Lance a Lot achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Northrend\\Mine Sweeper",{
expansion="mists",
achieveid={1428},
patch='30003',
description="Get caught in 10 consecutive land mine explosions in the Sparksocket Minefield without landing.",
mopready=true,
},[[
step
You will see a field of mines. Use a ground mount and run into them as fast as you can. There will be a short grace period to find the next mine before the timer runs out.
_Get "caught"_ by #10# mines consecutively |achieve 1428 |goto The Storm Peaks 36.20,86.90
step
Congratulations, you have _earned_ the _Mine Sweeper_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Northrend\\Rapid Defense",{
expansion="mists",
achieveid={1277},
patch='30008',
description="This guide will walk you through completing the Defending Wyrmrest Temple quest in under 3 minutes while not in a group.",
mopready=true,
},[[
step
talk Lord Devrestrasz##27575
accept Defending Wyrmrest Temple##12372 |goto Dragonblight 59.20,54.30
step
talk Wyrmrest Defender##27629
Tell him "_I am ready to get into the fight._"
Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
kill 3 Azure Dragon##27608 |q 12372/1 |goto Dragonblight 58.30,55.20
kill 5 Azure Drake##27682 |q 12372/2 |goto Dragonblight 58.30,55.20
step
Fly into the huge purple swirling column
Use your Destabilize Azure Dragonshrine ability |petaction Destabilize Azure Dragonshrine
Destabilize the Azure Dragonshrine |q 12372/3 |goto Dragonblight 55.10,66.40
step
Make your way here |goto Dragonblight 58.70,54.50 < 5
Click the red arrow to get off the dragon on the middle level of the temple |script VehicleExit() |outvehicle |c
step
talk Lord Devrestrasz##27575
turnin Defending Wyrmrest Temple##12372 |goto Dragonblight 59.20,54.30
step
Congratulations, you have earned the Rapid Defense achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Northrend\\Veteran of the Wrathgate",{
expansion="mists",
achieveid={547},
patch='30002',
description="This guide will walk you through completing the Dragonblight quests leading up to and including the Return to Angrathar.",
mopready=true,
},[[
step
talk Private Casey##26186
accept The Lost Courier##12157 |goto Borean Tundra 82.20,46.40
step
talk Courier Lanson##27060
turnin The Lost Courier##12157 |goto Dragonblight 28.80,56.20
accept Of Traitors and Treason##12171 |goto Dragonblight 28.80,56.20
step
talk Palena Silvercloud##26881
turnin Of Traitors and Treason##12171 |goto Dragonblight 29.20,55.30
accept High Commander Halford Wyrmbane##12174 |goto Dragonblight 29.20,55.30
step
talk High Commander Halford Wyrmbane##27136
turnin High Commander Halford Wyrmbane##12174 |goto Dragonblight 78.61,48.20
accept Naxxramas and the Fall of Wintergarde##12235 |goto Dragonblight 78.61,48.20
step
talk Gryphon Commander Urik##27317
turnin Naxxramas and the Fall of Wintergarde##12235 |goto Dragonblight 77.10,50.10
accept Flight of the Wintergarde Defender##12237 |goto Dragonblight 77.10,50.10
step
use Wintergarde Gryphon Whistle##37287
Use your Rescue Villager ability on your hotbar on Helpless Wintergarde Villagers on the ground around this area |petaction Rescue Villager
Fly them back to Gryphon Commander Urik at [77.10,50.10] |n |petaction Soar
Use your Drop Off Villager ability on your hotbar |petaction Drop Off Villager
Rescue #10# Helpless Villagers |q 12237/1 |goto Dragonblight 83.60,48.80
step
Click the red arrow button on your hotbar to get off the gryphon |script VehicleExit()|outvehicle
step
talk Gryphon Commander Urik##27317
turnin Flight of the Wintergarde Defender##12237 |goto Dragonblight 77.10,50.10
accept Return to the High Commander##12251 |goto Dragonblight 77.10,50.10
step
talk High Commander Halford Wyrmbane##27136
turnin Return to the High Commander##12251 |goto Dragonblight 78.61,48.20
accept Rescue from Town Square##12253 |goto Dragonblight 78.61,48.20
accept The Demo-gnome##12275 |goto Dragonblight 78.61,48.20
step
talk Siege Engineer Quarterflash##27159
turnin The Demo-gnome##12275 |goto Dragonblight 77.80,50.30
accept The Search for Slinkin##12276 |goto Dragonblight 77.80,50.30
step
Kill Vengeful Geists next to Trapped Wintergarde Villagers
|tip The Trapped Wintergarde Villagers looked like scared villagers getting harrassed by Vengeful Geists around this area and inside buildings.
Rescue #6# Trapped Wintergarde Villagers |q 12253/1 |goto Dragonblight 79.90,49.70
step
talk High Commander Halford Wyrmbane##27136
turnin Rescue from Town Square##12253 |goto Dragonblight 78.61,48.20
accept Find Durkon!##12309 |goto Dragonblight 78.61,48.20
step
talk Cavalier Durkon##27318
turnin Find Durkon!##12309 |goto Dragonblight 79.10,53.20
accept The Noble's Crypt##12311 |goto Dragonblight 79.10,53.20
step
kill Necrolord Amarion##27508 |q 12311/1 |goto Dragonblight 78.60,52.40
click Flesh-bound Tome##189311
accept Secrets of the Scourge##12312
step
talk Cavalier Durkon##27318
turnin The Noble's Crypt##12311 |goto Dragonblight 79.10,53.20
turnin Secrets of the Scourge##12312 |goto Dragonblight 79.10,53.20
accept Mystery of the Tome##12319 |goto Dragonblight 79.10,53.20
step
talk High Commander Halford Wyrmbane##27136
turnin Mystery of the Tome##12319 |goto Dragonblight 78.61,48.20
accept Understanding the Language of Death##12320 |goto Dragonblight 78.61,48.20
step
talk Inquisitor Hallard##27316
turnin Understanding the Language of Death##12320 |goto Dragonblight 76.80,47.40
accept A Righteous Sermon##12321 |goto Dragonblight 76.80,47.40
step
Watch the dialogue
|tip Downstairs in the fort, in front of a jail cell.
Hear the Righteous Sermon |q 12321/1 |goto Dragonblight 76.80,47.40
step
talk High Commander Halford Wyrmbane##27136
turnin A Righteous Sermon##12321 |goto Dragonblight 78.61,48.20
step
talk Siege Engineer Quarterflash##27159
accept The Bleeding Ore##12272 |goto Dragonblight 77.80,50.30
stickystart "ore"
step
Enter the cave here |goto Dragonblight/0 80.40,45.10 < 10 |walk
talk Slinkin the Demo-gnome##27412
turnin The Search for Slinkin##12276 |goto Dragonblight 81.50,42.20
accept Leave Nothing to Chance##12277 |goto Dragonblight 81.50,42.20
step
click Wintergarde Mine Bomb##189288
collect Wintergarde Mine Bomb##37465 |c |goto Dragonblight 80.70,41.30
step
use Wintergarde Mine Bomb##37465
|tip Use your Wintergarde Mine Bomb in the doorway.
|tip It's an entrance to the mine.
Destroy the Lower Wintergarde Mine Shaft |q 12277/2 |goto Dragonblight 80.20,45.10
step
use Wintergarde Mine Bomb##37465
|tip Use your Wintergarde Mine Bomb in the doorway.
|tip It's an entrance to the mine. Go outside form the lower entrance and turn around.
Destroy the Upper Wintergarde Mine Shaft |q 12277/1 |goto Dragonblight 80.40,44.80
step
label "ore"
click Strange Ore##188699
collect 10 Strange Ore##37359 |q 12272/1
step
talk Siege Engineer Quarterflash##27159
turnin Leave Nothing to Chance##12277 |goto Dragonblight 77.80,50.30
turnin The Bleeding Ore##12272 |goto Dragonblight 77.80,50.30
accept Understanding the Scourge War Machine##12281 |goto Dragonblight 77.80,50.30
step
talk High Commander Halford Wyrmbane##27136
turnin Understanding the Scourge War Machine##12281 |goto Dragonblight 78.61,48.20
accept Into Hostile Territory##12325
step
talk Duke August Foehammer##27157
turnin Into Hostile Territory##12325 |goto Dragonblight 89.60,46.40
accept Steamtank Surprise##12326 |goto Dragonblight 89.60,46.40
step
clicknpc Alliance Steam Tank##27587 |goto Dragonblight 89.60,45.50 < 10 |walk
Use your hotbar abilities to
kill 6 Plague Wagon##27607 |q 12326/1 |goto Dragonblight 85.70,49.80
step
Use your hotbar abilities to
Drop off 7th Legion Elite |q 12326/2 |goto Dragonblight 85.70,49.80
step
Enter the crypt here |goto Dragonblight/0 85.90,50.00 < 10 |walk
talk Ambo Cash##1293
turnin Steamtank Surprise##12326 |goto Dragonblight 85.94,50.86
accept Scattered To The Wind##12455 |goto Dragonblight 85.94,50.86
step
Leave the crypt here |goto Dragonblight/0 85.90,50.00 < 10 |walk
click Wintergarde Munitions Crate##190032
|tip They are scattered throughout the area.
collect 8 Wintergarde Munitions##37879 |q 12455/1 |goto Dragonblight/0 85.10,49.30
step
Enter the crypt here |goto Dragonblight/0 85.90,50.00 < 10 |walk
talk Ambo Cash##1293
turnin Scattered To The Wind##12455 |goto Dragonblight 85.94,50.86
accept The Chain Gun And You##12457 |goto Dragonblight 85.94,50.86
step
clicknpc 7th Legion Chain Gun##27714
Call out for an injured soldier using your cannon abilites
|tip Keep shooting the ghouls as the soldier run towwards you to save them.
Save #8# Injured 7th Legion Soldiers |q 12457/1 |goto Dragonblight/0 86.20,51.00
step
talk Ambo Cash##1293
turnin The Chain Gun And You##12457 |goto Dragonblight 85.94,50.86
accept Plunderbeard Must Be Found!##12463 |goto Dragonblight 85.94,50.86
step
Go down the stairs |goto Dragonblight/0 85.70,51.60 < 5 |only if walking
Enter the tunnel |goto Dragonblight 84.50,54.70 < 5 |walk
talk Plunderbeard##27828
turnin Plunderbeard Must Be Found!##12463 |goto Dragonblight 84.17,54.67
accept Plunderbeard's Journal##12465 |goto Dragonblight 84.17,54.67
step
Move down the tunnel |goto Dragonblight/0 84.20,55.70 < 5 |walk
Keep going |goto Dragonblight/0 83.50,56.00 < 5 |walk
Exit here |goto Dragonblight/0 83.10,54.70 < 5 |walk
kill Dreadbone Construct##27835+, Wailing Soul##27836+
collect Page 4 of Plunderbeard's Journal##37910 |q 12465/1 |goto Dragonblight/0 81.90,54.00
collect Page 5 of Plunderbeard's Journal##37911 |q 12465/2 |goto Dragonblight/0 81.90,54.00
collect Page 6 of Plunderbeard's Journal##37912 |q 12465/3 |goto Dragonblight/0 81.90,54.00
collect Page 7 of Plunderbeard's Journal##37913 |q 12465/4 |goto Dragonblight/0 81.90,54.00
step
Enter here |goto Dragonblight/0 83.10,54.70 < 5 |walk
Keep going down the tunnel |goto Dragonblight/0 83.50,56.00 < 5 |walk
Exit here |goto Dragonblight/0 84.40,54.70 < 5 |walk
Go upstairs |goto Dragonblight/0 85.60,52.10 < 5 |walk
talk Ambo Cash##1293
turnin Plunderbeard's Journal##12465 |goto Dragonblight 85.94,50.86
accept Chasing Icestorm: The 7th Legion Front##12466 |goto Dragonblight 85.94,50.86
step
Leave the crypt here |goto Dragonblight/0 85.90,50.00 < 10 |walk
talk Legion Commander Tyralion##27844
turnin Chasing Icestorm: The 7th Legion Front##12466 |goto Dragonblight 64.76,27.93
accept Chasing Icestorm: Thel'zan's Phylactery##12467 |goto Dragonblight 64.76,27.93
step
talk "Wyrmbait"##27843
Tell him "_Wyrmbait, eh? Welp, go fetch us Icestorm_"!
kill Icestorm##26287 |n
click Thel'zan's Phylactery##190127
collect Thel'zan's Phylactery##37920 |q 12467/1 |goto Dragonblight 64.60,27.50
step
talk High Commander Halford Wyrmbane##27136
turnin Chasing Icestorm: Thel'zan's Phylactery##12467 |goto Dragonblight 78.61,48.20
accept Finality##12472 |goto Dragonblight 78.61,48.20
step
Enter the crypt here |goto Dragonblight/0 81.90,50.70 < 5 |walk
talk Legion Commander Yorik##27857
turnin Finality##12472 |goto Dragonblight 81.20,50.70
accept An End And A Beginning##12473 |goto Dragonblight 81.20,50.70
step
Watch the dialogue
Help fight the battle
kill Thel'zan the Duskbringer##27383 |q 12473/1 |goto Dragonblight/0 80.90,50.60
step
Leave the crypt here |goto Dragonblight/0 81.90,50.70 < 5 |walk
talk High Commander Halford Wyrmbane##27136
turnin An End And A Beginning##12473 |goto Dragonblight 78.61,48.20
accept To Fordragon Hold!##12474 |goto Dragonblight 78.61,48.20
step
talk Highlord Bolvar Fordragon##27872
turnin To Fordragon Hold!##12474 |goto Dragonblight 37.80,23.40
accept Audience With The Dragon Queen##12495 |goto Dragonblight 37.80,23.40
step
talk Alexstrasza the Life-Binder##26917
turnin Audience With The Dragon Queen##12495 |goto Dragonblight 59.80,54.70
accept Galakrond and the Scourge##12497 |goto Dragonblight 59.80,54.70
step
talk Torastrasza##26949
turnin Galakrond and the Scourge##12497 |goto Dragonblight 59.50,53.30
accept On Ruby Wings##12498 |goto Dragonblight 59.50,53.30
step
use Ruby Beacon of the Dragon Queen##38302
Click the red dragon to ride it |invehicle
step
Use the abilities on your hotbar
kill 30 Wastes Scavenger##28005 |q 12498/1 |goto Dragonblight 57.20,33.10
step
Use the abilities on your hotbar
kill Thiassi the Lightning Bringer##28018, Grand Necrolord Antiok##28006
click Scythe of Antiok##190354
collect Scythe of Antiok##38305|q 12498/2 |goto Dragonblight 54.50,31.30
step
talk Alexstrasza the Life-Binder##26917
turnin On Ruby Wings##12498 |goto Dragonblight 59.80,54.70
accept Return To Angrathar##12499 |goto Dragonblight 59.80,54.70
step
talk Highlord Bolvar Fordragon##27872
turnin Return To Angrathar##12499 |goto Dragonblight 37.80,23.40
step
achieve 547
Congratulations, you have earned the Veteran of the Wrathgate achievement! |only if achieved(547)
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Cataclysm\\The 'Unbeatable?' Pterodactyl: BEATEN.",{
expansion="mists",
achieveid={5860},
patch='40200',
description="Complete the Vigilance on Wings daily quest in Mount Hyjal 10 times.",
mopready=true,
},[[
step
_Go inside_ the blue portal |goto Mount Hyjal 38.77,58.01 < 5 |walk
talk Farden Talonshrike##40578
You can only complete this quest _once a day_ so come back again tomorrow until you're finished
accept Vigilance on Wings##29177 |goto Mount Hyjal 37.20,56.20
step
click Twilight Weapon Rack##130
collect 1 Twilight Firelance##52716 |goto Mount Hyjal 37.20,56.10
step
_Equip_ the Twilight Firelance |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40719 |c |goto Mount Hyjal 37.40,56.00
step
_Use_ your Flap ability on your hotbar repeatedly to fly to this green flag
kill 10 Twilight Lancers |q 29177/1 |goto Mount Hyjal 36.60,53.40
step
talk Farden Talonshrike##40578
turnin Vigilance on Wings##29177 |goto Mount Hyjal 37.20,56.20
step
_You have completed_ the daily available for today
_Complete_ the Vigilance on Wings daily #10# more times |achieve 5860
step
Congratulations, you have _earned_ the _'Unbeatable?' Pterodactyl: BEATEN._ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Cataclysm\\Beware of the 'Unbeatable?' Pterodactyl",{
expansion="mists",
achieveid={4959},
patch='40003',
description="Complete the jousting quests in Mount Hyjal up to and including Egg Wave.",
endlevel=30,
mopready=true,
},[[
step
ding 30
step
click Hero's Call Board##250720
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City 62.90,71.60
step
When you enter Stormwind City:
You will automatically accept a quest
accept A Personal Summons##28825
step
talk Naraat the Earthspeaker##45226
turnin A Personal Summons##28825 |goto Stormwind City 74.50,19.00
accept Eye of the Storm##28826 |goto Stormwind City 74.50,19.00
step
clicknpc Waters of Farseeing##50088
Peer into the Waters of Farseeing |q 28826/1 |goto Stormwind City 74.40,19.50
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto Stormwind City 74.50,19.00
step
talk Cenarion Emissary Jademoon##15187
Ask her to send you to Moonglade |goto Stormwind City 82.60,28.20 < 10
Teleport to Moonglade |goto Moonglade |noway |c
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade 45.50,44.90
accept As Hyjal Burns##25316 |goto Moonglade 45.50,44.90
step
clicknpc Aronus##39140 |goto Moonglade 46.10,45.60 < 10
You will fly to Mount Hyjal |goto Mount Hyjal |noway |c
step
talk Sebelia##40843
home Nordrassil |goto Mount Hyjal 63.10,24.10
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto Mount Hyjal 62.00,24.90
accept Protect the World Tree##25317 |goto Mount Hyjal 62.00,24.90
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto Mount Hyjal 64.00,22.70
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto Mount Hyjal 64.10,22.50
step
kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto Mount Hyjal 67.10,22.60
click Juniper Berry##28+
collect 4 Juniper Berries##53009 |n
use Juniper Berries##53009
|tip Use your Juniper Berries on Faerie Dragons.
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926 |q 25370/1 |goto Mount Hyjal 67.10,22.60
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto Mount Hyjal 64.10,22.50
accept Flames from Above##25574 |goto Mount Hyjal 64.10,22.50
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto Mount Hyjal 64.00,22.70
step
Stand in this spot
use Tholo's Horn##55122
|tip Use Tholo's Horn to call for an emerald dragon.
Burn the Infiltrators' Encampment |q 25574/1 |goto Mount Hyjal 55.70,15.90
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto Mount Hyjal 64.10,22.50
step
talk Malfurion Stormrage##54173
turnin Protect the World Tree##25317 |goto Mount Hyjal 47.70,35.50
accept War on the Twilight's Hammer##25319 |goto Mount Hyjal 47.70,35.50
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto Mount Hyjal 47.60,35.50
stickystart "twiflavan"
step
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto Mount Hyjal 48.40,29.30
You can find more fragments at [44.70,33.30]
step
label "twiflavan"
kill 4 Twilight Flamecaller##38926 |q 25319/1 |goto Mount Hyjal 47.20,25.60
kill 10 Twilight Vanquisher##38913 |q 25319/2 |goto Mount Hyjal 47.20,25.60
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto Mount Hyjal 47.70,35.50
turnin The Flameseer's Staff##25472 |goto Mount Hyjal 47.70,35.50
accept Flamebreaker##25323 |goto Mount Hyjal 47.70,35.50
step
use Flameseer's Staff##53107
|tip Use your Flameseer's Staff on Blazebound Elementals.
kill 30 Unbound Flame Spirit##33838+ |q 25323/1 |goto Mount Hyjal 44.50,33.40
step
talk Malfurion Stormrage##54173
turnin Flamebreaker##25323
accept The Return of Baron Geddon##25464
step
use Flameseer's Staff##54463
|tip Use your Flameseer's Staff on Baron Geddon.
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto Mount Hyjal 44.00,26.90
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##54173
turnin The Return of Baron Geddon##25464 |goto Mount Hyjal 47.70,35.50
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto Mount Hyjal 47.60,35.50
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto Mount Hyjal 48.40,18.90
accept The Captured Scout##25320 |goto Mount Hyjal 48.40,18.90
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto Mount Hyjal 44.50,18.90
accept Twilight Captivity##25321 |goto Mount Hyjal 44.50,18.90
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto Mount Hyjal 44.50,21.50
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto Mount Hyjal 44.50,18.90
accept Return to Alysra##25424 |goto Mount Hyjal 44.50,18.90
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto Mount Hyjal 48.40,18.90
accept A Prisoner of Interest##25324 |goto Mount Hyjal 48.40,18.90
step
Enter the cave |goto Mount Hyjal 52.50,17.30 < 10 |walk
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto Mount Hyjal 56.80,18.80
accept Through the Dream##25325 |goto Mount Hyjal 56.80,18.80
step
talk Alysra##38917
turnin Through the Dream##25325 |goto Mount Hyjal 52.20,17.40
accept Return to Nordrassil##25578 |goto Mount Hyjal 52.20,17.40
step
talk Ysera##40928
turnin Return to Nordrassil##25578 |goto Mount Hyjal 62.00,24.90
accept The Return of the Ancients##25584 |goto Mount Hyjal 62.00,24.90
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto Mount Hyjal 35.70,19.40
accept Harrying the Hunters##25255 |goto Mount Hyjal 35.70,19.40
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto Mount Hyjal 35.70,19.70
accept In the Rear With the Gear##25234 |goto Mount Hyjal 35.70,19.70
step
kill 6 Twilight Hunter##39437 |q 25255/1 |goto Mount Hyjal 38.10,23.00
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto Mount Hyjal 38.10,23.00
click Twilight Supplies##202652
|tip The slaves will drop them after you kill the Twilight Slavedriver.
collect 36 Twilight Supplies##52568 |q 25234/1 |goto Mount Hyjal 38.10,23.00
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto Mount Hyjal 35.70,19.70
turnin In the Rear With the Gear##25234 |goto Mount Hyjal 35.70,19.70
accept The Voice of Goldrinn##25268 |goto Mount Hyjal 35.70,19.70
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto Mount Hyjal 35.70,19.40
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto Mount Hyjal 30.10,31.30
accept Goldrinn's Ferocity##25271 |goto Mount Hyjal 30.10,31.30
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25271/1 |goto Mount Hyjal 29.30,30.30
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto Mount Hyjal 30.10,31.30
accept Lycanthoth the Corruptor##25273 |goto Mount Hyjal 30.10,31.30
step
use Lycanthoth's Incense##52682
|tip Use Lycanthoth's Incense next to Lycanthoth's Altar.
|tip It's inside the cave.
kill Lycanthoth##39446 |q 25273/1 |goto Mount Hyjal 32.40,37.30
step
talk Spirit of Goldrinn##39627
turnin Lycanthoth the Corruptor##25273 |goto Mount Hyjal 32.30,37.00
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto Mount Hyjal 29.60,29.30
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto Mount Hyjal 28.20,29.80
accept Cleaning House##25278 |goto Mount Hyjal 28.20,29.80
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto Mount Hyjal 28.20,29.90
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto Mount Hyjal 28.60,30.20
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto Mount Hyjal 28.90,32.20
step
click Stonebloom##202702
collect Stonebloom##52726 |q 25297/1 |goto Mount Hyjal 27.60,34.20
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto Mount Hyjal 27.20,35.20
accept Mastering Puppets##25301 |goto Mount Hyjal 27.20,35.20
step
click Darkflame Ember##202705
|tip It is inside the brazier.
collect Darkflame Ember##52728 |q 25297/3 |goto Mount Hyjal 28.40,35.80
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto Mount Hyjal 28.40,36.40
accept Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal 28.40,36.40
step
Enter the cave |goto Mount Hyjal 27.00,36.00 < 10 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto Mount Hyjal 27.20,40.80
stickystart "miniongargol"
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto Mount Hyjal 26.50,38.50
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto Mount Hyjal 25.80,41.70
accept Elementary!##25303 |goto Mount Hyjal 25.80,41.70
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto Mount Hyjal 26.00,41.80
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto Mount Hyjal 25.70,41.70
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto Mount Hyjal 25.80,41.90
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto Mount Hyjal 26.00,41.60
step
click Twilight Apocrypha##202712
turnin Elementary!##25303 |goto Mount Hyjal 25.80,41.70
accept Return to Duskwhisper##25312 |goto Mount Hyjal 25.80,41.70
step
label "miniongargol"
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Kill #8# Minions of Gar'gol |q 25278/1
|tip This should be done while inside the cave.
step
talk Twilight Servitor##39644+
Select <"Administor the drought">
Free #8# Twilight Servitors |q 25298/1
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto Mount Hyjal 27.20,40.80
accept Get Me Outta Here!##25332 |goto Mount Hyjal 27.20,40.80
step
Leave the cave |goto Mount Hyjal 27.10,36.00 < 10 |walk
Escort Kristoff Out |q 25332/1
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto Mount Hyjal 28.60,30.20
turnin Get Me Outta Here!##25332 |goto Mount Hyjal 28.60,30.20
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto Mount Hyjal 28.20,29.80
accept Sweeping the Shelf##25352 |goto Mount Hyjal 28.20,29.80
accept Lightning in a Bottle##25353 |goto Mount Hyjal 28.20,29.80
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal 28.20,29.90
step
kill 8 Twilight Stormcaller##39843+ |q 25352/1 |goto Mount Hyjal 27.40,39.20
kill 5 Howling Riftdweller##39844+ |q 25352/2 |goto Mount Hyjal 27.40,39.20
step
click Lightning Channel##202731
collect Charged Condenser Jar##52834 |q 25353/1 |goto Mount Hyjal 27.40,39.20
step
use Totem of Goldrinn##52853
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
Go inside the blue portal |goto Mount Hyjal 26.20,41.00 < 10 |walk
talk Jordan Olafson##40834
turnin Into the Maw!##25618 |goto Mount Hyjal 26.30,41.90
accept Forged of Shadow and Flame##25575 |goto Mount Hyjal 26.30,41.90
accept Crushing the Cores##25577 |goto Mount Hyjal 26.30,41.90
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto Mount Hyjal 26.30,42.00
step
Do the following in the Firelands Forgeworks
kill 12 Dark Iron Laborer##40838+ |q 25576/1
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
use Smoldering Core##55123
|tip Use your Smoldering Cores next to Twilight Anvils.
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1
click Twilight Arms Crate##9393+
Destroy #10# Twilight Arms Crates |q 25575/1
step
talk Yargra Blackscar##40837
turnin Rage of the Wolf Ancient##25576 |goto Mount Hyjal 26.30,42.00
step
talk Jordan Olafson##40834
turnin Forged of Shadow and Flame##25575 |goto Mount Hyjal 26.30,41.90
turnin Crushing the Cores##25577 |goto Mount Hyjal 26.30,41.90
accept Cindermaul, the Portal Master##25599 |goto Mount Hyjal 26.30,41.90
step
kill Cindermaul##40844 |q 25599/1 |goto Mount Hyjal 30.70,41.70
click Battered Stone Chest##203089
collect Tome of Openings##55136 |q 25599/2 |goto Mount Hyjal 30.70,41.70
step
talk Jordan Olafson##40834
turnin Cindermaul, the Portal Master##25599 |goto Mount Hyjal 26.30,41.90
accept Forgemaster Pyrendius##25600 |goto Mount Hyjal 26.30,41.90
step
Click the Portal Runes
|tip They are brown metal plates on the ground on this small circular island in the lava.
Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto Mount Hyjal 31.60,46.00
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto Mount Hyjal 26.30,41.90
accept Return from the Firelands##25611 |goto Mount Hyjal 26.30,41.90
step
Go inside the blue portal |goto Mount Hyjal 25.90,40.90 < 10
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto Mount Hyjal 28.20,29.80
turnin Return from the Firelands##25611 |goto Mount Hyjal 28.20,29.80
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal 28.30,29.70
|tip Skip if you have completed Wings Over Mount Hyjal.
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 28.20,29.90
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 19.00,40.90
accept Fighting Fire With ... Anything##25381 |goto Mount Hyjal 19.00,40.90
accept Disrupting the Rituals##25382 |goto Mount Hyjal 19.00,40.90
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto Mount Hyjal 19.20,37.90
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto Mount Hyjal 19.00,37.00
step
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto Mount Hyjal 22.30,44.90
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto Mount Hyjal 22.30,44.90
accept Seeds of Their Demise##25408 |goto Mount Hyjal 22.30,44.90
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto Mount Hyjal 21.80,43.70
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto Mount Hyjal 22.30,44.90
accept A New Master##25411 |goto Mount Hyjal 22.30,44.90
step
kill Twilight Inferno Lord##39974
use Bottled Bileberry Brew##53120
|tip Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord.
Subjugate a Twilight Inferno Lord |q 25411/1 |goto Mount Hyjal 14.40,45.40
step
talk Subjugated Inferno Lord##40093
turnin A New Master##25411 |goto Mount Hyjal 14.40,45.40
accept The Name Never Spoken##25412 |goto Mount Hyjal 14.40,45.40
stickystart "ragingtwi"
stickystart "frightenedanimals"
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto Mount Hyjal 14.30,45.40
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto Mount Hyjal 11.60,41.50
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto Mount Hyjal 9.60,36.50
step
label "ragingtwi"
kill 10 Raging Firestorm##39939 |q 25381/1 |goto Mount Hyjal 13.30,41.40
kill 6 Twilight Inferno Lord##39974 |q 25382/1 |goto Mount Hyjal 13.30,41.40
step
label "frightenedanimals"
Click Panicked Bunnies and Terrified Squirrels
collect 10 Frightened Animal##53060 |q 25385/1 |goto Mount Hyjal 13.30,41.40
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto Mount Hyjal 19.00,40.90
turnin Disrupting the Rituals##25382 |goto Mount Hyjal 19.00,40.90
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto Mount Hyjal 19.20,37.90
accept Oh, Deer!##25392 |goto Mount Hyjal 19.20,37.90
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto Mount Hyjal 22.30,44.90
accept Black Heart of Flame##25428 |goto Mount Hyjal 22.30,44.90
stickystart "injfawn"
step
use Charred Branch##53464
|tip Use your Charred Branch while in the burning forest area.
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto Mount Hyjal 12.90,41.40
step
label "injfawn"
clicknpc Injured Fawn##39999+
Lead the Injured Fawns back to Mylune at [19.20,37.90]
Escort #3# Injured Fawns Home |q 25392/1 |goto Mount Hyjal 14.50,40.80
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto Mount Hyjal 19.20,37.90
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto Mount Hyjal 22.30,44.90
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto Mount Hyjal 19.00,40.90
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto Mount Hyjal 13.60,32.80
accept The Bears Up There##25462 |goto Mount Hyjal 13.60,32.80
step
Click the ladder at the base of the tree
clicknpc Hyjal Bear Cub##40240
Use your Climb Up ability to climb to the top of the tree
|tip Use your Chuck-a-bear ability to throw the cubs down. Aim the yellow arrow at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto Mount Hyjal 14.20,32.10
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto Mount Hyjal 13.60,32.80
accept Smashing Through Ashes##25490 |goto Mount Hyjal 13.60,32.80
step
kill 8 Charbringer##40336 |q 25490/1 |goto Mount Hyjal 21.60,59.10
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto Mount Hyjal 27.10,62.60
accept Durable Seeds##25491 |goto Mount Hyjal 27.10,62.60
accept Fresh Bait##25493 |goto Mount Hyjal 27.10,62.60
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto Mount Hyjal 27.10,63.00
stickystart "corehoundentrails"
stickystart "hyjalseedlings"
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto Mount Hyjal 36.20,58.60
step
label "corehoundentrails"
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto Mount Hyjal 36.20,58.60
step
label "hyjalseedlings"
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto Mount Hyjal 36.20,58.60
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto Mount Hyjal 27.10,62.60
turnin Fresh Bait##25493 |goto Mount Hyjal 27.10,62.60
accept Hell's Shells##25507 |goto Mount Hyjal 27.10,62.60
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto Mount Hyjal 27.10,63.00
accept Prepping the Soil##25502 |goto Mount Hyjal 27.10,63.00
step
Click the Flameward
|tip It's a floating stone in a golden claw stand.
Activate the Flameward |q 25502/1 |goto Mount Hyjal 33.00,64.60
Defend the Flameward |q 25502/2 |goto Mount Hyjal 33.00,64.60
step
use Heap of Core Hound Innards##54744
|tip Use your Heap of Core Hound Innards near Nemesis.
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##40340
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto Mount Hyjal 39.30,54.10
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto Mount Hyjal 27.10,62.60
accept Tortolla Speaks##25510 |goto Mount Hyjal 27.10,62.60
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto Mount Hyjal 27.10,63.00
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto Mount Hyjal 24.70,55.70
accept Breaking the Bonds##25514 |goto Mount Hyjal 24.70,55.70
accept Children of Tortolla##25519 |goto Mount Hyjal 24.70,55.70
step
click Rod of Subjugation##9469
Disable Rod of Subjugation 1 |q 25514/1 |goto Mount Hyjal 23.80,56.00
step
click Rod of Subjugation##9469
Disable Rod of Subjugation 2 |q 25514/2 |goto Mount Hyjal 25.30,54.80
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto Mount Hyjal 24.70,55.70
step
kill Deep Corruptor##40561+
|tip They are found underwater.
Save #6# Tortolla's Eggs |q 25519/1 |goto Mount Hyjal 24.40,57.40
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto Mount Hyjal 24.70,55.70
accept An Ancient Awakens##25520 |goto Mount Hyjal 24.70,55.70
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto Mount Hyjal 27.10,62.60
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto Mount Hyjal 44.40,46.20
accept An Offering for Aviana##25663 |goto Mount Hyjal 44.40,46.20
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto Mount Hyjal 42.20,45.50
accept Scrambling for Eggs##25656 |goto Mount Hyjal 42.20,45.50
step
use Sacred Nectar##55208
|tip Use your Sacred Nectar next to Aviana's Burial Circle.
Offer the Nectar |q 25663/1 |goto Mount Hyjal 40.30,44.30
step
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663
accept A Plea From Beyond##25665
stickystart "hyjaleggs"
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Kill #10# Wormwing Harpies |q 25655/1 |goto Mount Hyjal 38.50,43.00
step
label "hyjaleggs"
click Stolen Hyjal Egg##203143
collect 8 Hyjal Eg##55189g |q 25656/1 |goto Mount Hyjal 38.50,43.00
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto Mount Hyjal 42.20,45.50
turnin Scrambling for Eggs##25656 |goto Mount Hyjal 42.20,45.50
accept A Bird in Hand##25731 |goto Mount Hyjal 42.20,45.50
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto Mount Hyjal 44.40,46.20
accept A Prayer and a Wing##25664 |goto Mount Hyjal 44.40,46.20
step
click Harpy Signal Fire##7290
Fight Marion Wormwing until she gets captured |q 25731/1 |goto Mount Hyjal 38.30,44.20
talk Marion Wormwing##41112
|tip Ask her why she is stealing eggs, then tell Thisalee to kill her.
Interrogate Marion Wormwing |q 25731/2 |goto Mount Hyjal 38.30,44.20
step
use Enormous Bird Call##55211
|tip Use your Enormous Bird Call in Blaithe's Roost.
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto Mount Hyjal 35.70,42.30
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto Mount Hyjal 42.20,45.50
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto Mount Hyjal 44.40,46.20
step
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto Mount Hyjal 43.50,45.90
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto Mount Hyjal 32.80,70.80
accept Sethria's Brood##25746 |goto Mount Hyjal 32.80,70.80
accept A Gap in Their Armor##25758 |goto Mount Hyjal 32.80,70.80
step
click the Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto Mount Hyjal 31.30,77.10
stickystart "twilightarmorplate"
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay #12# Sethria's Minions |q 25746/1 |goto Mount Hyjal 30.90,76.90
step
label "twilightarmorplate"
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto Mount Hyjal 30.90,76.90
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto Mount Hyjal 32.80,70.80
turnin A Gap in Their Armor##25758 |goto Mount Hyjal 32.80,70.80
accept Disassembly##25761 |goto Mount Hyjal 32.80,70.80
turnin The Codex of Shadows##25763 |goto Mount Hyjal 32.80,70.80
accept Egg Hunt##25764 |goto Mount Hyjal 32.80,70.80
stickystart "avianasegg"
step
use Thisalee's Shiv##55883
|tip Use Thisalee's Shiv on Twilight Juggernauts.
|tip Use Thisalee's Shiv 5 times to remove the Twilight Juggernauts' Armor Plating completely.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto Mount Hyjal 31.60,75.80
step
label "avianasegg"
click Shadow Cloak Generator##203208
|tip It may not be in the first one, so keep searching.
Unveil and Defend Aviana's Egg |q 25764/1 |goto Mount Hyjal 31.60,75.80
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto Mount Hyjal 32.80,70.80
turnin Egg Hunt##25764 |goto Mount Hyjal 32.80,70.80
accept Sethria's Demise##25776 |goto Mount Hyjal 32.80,70.80
step
Fight Sethria
use Thisalee's Signal Rocket##56003
|tip Use Thisalee's Signal Rocket when Sethria turns into a dragon.
kill Sethria##41255 |q 25776/1 |goto Mount Hyjal 35.50,98.00
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto Mount Hyjal 32.80,70.80
accept Return to the Shrine##25795 |goto Mount Hyjal 32.80,70.80
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto Mount Hyjal 44.40,46.20
accept An Ancient Reborn##25807 |goto Mount Hyjal 44.40,46.20
step
use Herald's Incense##56016
|tip Use Herald's Incense next to Aviana's Egg.
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto Mount Hyjal 44.30,48.00
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto Mount Hyjal 44.20,47.80
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto Mount Hyjal 44.10,45.90
step
talk Vision of Ysera##47002
accept The Last Living Lorekeeper##25830 |goto Mount Hyjal 43.80,46.00
If you cannot pick up the quest, go here to get it: [62.00,24.90]
step
Go inside the blue portal |goto Mount Hyjal 38.77,58.01 < 10
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto Mount Hyjal 37.20,56.20
accept Flight in the Firelands##25523 |goto Mount Hyjal 37.20,56.20
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto Mount Hyjal 37.20,56.10
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40723
Ride Aviana's Guardian |invehicle |c |q 25523 |goto Mount Hyjal 37.40,56.00
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Land next to the Guardian Flag
Visit the Guardian Flag |q 25523/1 |goto Mount Hyjal 36.60,53.40
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto Mount Hyjal 37.20,56.20
accept Wave One##25525 |goto Mount Hyjal 37.20,56.20
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
Kill #10# Twilight Knight Riders |q 25525/1 |goto Mount Hyjal 35.40,51.70
|tip The knights are riding buzzards.
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto Mount Hyjal 37.20,56.20
accept Wave Two##25544 |goto Mount Hyjal 37.20,56.20
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
Kill 10 Twilight Lancers |q 25544/1 |goto Mount Hyjal 35.40,51.70
|tip The lancers are riding buzzards.
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto Mount Hyjal 37.20,56.20
accept Egg Wave##25560 |goto Mount Hyjal 37.20,56.20
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy #40# Firelands Eggs |q 25560/1 |goto Mount Hyjal 36.60,53.30
You can find more Firelands Eggs at [39.30,54.10]
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto Mount Hyjal 37.20,56.20
achieve 4959
step
Congratulations, you have obtained the _Beware of the 'Unbeatable?' Pterodactyl_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Cataclysm\\Bounce",{
expansion="mists",
achieveid={5483},
patch='40003',
description="This guide will walk you through staying on the trampoline in the Whistling Grove in Mount Hyjal for 20 consecutive bounces.",
mopready=true,
},[[
step
You will be able to control your character mid air by turning them in the direction you want to go
|tip Steer your character back into the area of the trampoline.
Hop onto the trampoline and jump on it #20# times consecutively |achieve 5483 |goto Mount Hyjal 13.60,33.20
step
Congratulations, you have earned the Bounce achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Cataclysm\\Consumed by Nightmare",{
expansion="mists",
achieveid={5451},
patch='40003',
description="This guide will walk you through enduring the nightmares of Iso'rath in the Twilight Highlands.",
mopready=true,
},[[
step
click Hero's Call Board##250720
|tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
accept Hero's Call: Twilight Highlands!##28716 |goto Stormwind City 62.90,71.60
step
talk King Varian Wrynn##29611
turnin Hero's Call: Twilight Highlands!##28716 |goto Stormwind City 85.70,31.80
step
talk King Varian Wrynn##29611
accept Twilight Shores##28238 |goto Stormwind City 85.80,31.70
step
talk Fargo Flintlocke##44806
turnin Twilight Shores##28238 |goto Stormwind City 26.10,47.30
accept Twilight Shores##28832 |goto Stormwind City 26.10,47.30
step
clicknpc Flintlocke's Seaplane##50300 |goto Stormwind City 25.90,47.60
Ride to Twilight Highlands |goto Twilight Highlands |noway |c
step
talk Lieutenant Fawkes##49022
turnin Twilight Shores##28832 |goto Twilight Highlands 81.00,79.40
accept Welcome to Highbank!##28596 |goto Twilight Highlands 81.00,79.40
step
kill Bilgewater Gunman##49009+, Axebite Infantry##49008+
Kill #10# Horde Attackers |q 28596/1 |goto Twilight Highlands 81.10,77.30
step
talk Lieutenant Fawkes##49022
turnin Welcome to Highbank!##28596 |goto Twilight Highlands 81.00,79.40
step
talk Fargo Flintlocke##49252
accept Burnin' at Both Ends##28597 |goto Twilight Highlands 81.00,79.40
step
clicknpc Cannon Powder Barrel##49143+
collect 10 Cannon Powder##64585 |q 28597/1 |goto Twilight Highlands 81.10,77.30
step
talk Fargo Flintlocke##49252
turnin Burnin' at Both Ends##28597 |goto Twilight Highlands 78.80,76.80
accept Aiming High##28598 |goto Twilight Highlands 78.80,76.80
step
You may have to wait for a few minutes, so just stand here and wait
Wait to be launched from Flintlocke's Cannon |q 28598/1
step
Go downstairs in the zeppelin
use Flintlocke's Explosives##64660
|tip Use Flintlocke's Explosives while downstairs.
Destroy the Skyshredder |q 28598/2
step
talk Fargo Flintlocke##49252
turnin Aiming High##28598 |goto Twilight Highlands 78.90,76.70
accept Kurdran's Waitin'##28599 |goto Twilight Highlands 78.90,76.70
step
Go upstairs in the fort
talk Kurdran Wildhammer##49358
turnin Kurdran's Waitin'##28599 |goto Twilight Highlands 79.10,78.30
accept Our Boys on the Shore##27338 |goto Twilight Highlands 79.10,78.30
step
talk Simon Chandler##45170
accept Salvage Operation##27177 |goto Twilight Highlands 79.30,78.50
accept Naga Reinforcements##27178 |goto Twilight Highlands 79.30,78.50
step
talk Ephram Hardstone##45171
accept Siren's Song##27200 |goto Twilight Highlands 76.00,80.00
step
kill Ophelia##45183
Slay Ophelia and Protect Ephram |q 27200/1 |goto Twilight Highlands 76.10,79.80
step
talk Ephram Hardstone##45171
turnin Siren's Song##27200 |goto Twilight Highlands 76.00,80.00
stickystart "nagareinforcements"
step
click Water-Logged Crate##205250
collect 8 Recovered Supplies##60857 |q 27177/1 |goto Twilight Highlands 76.20,83.00
step
label "nagareinforcements"
kill Blackscale Seacaller##45182+, Blackscale Myrmidon##45179+
Slay #10# Blackscale Naga |q 27178/1 |goto Twilight Highlands 76.20,83.00
step
Go upstairs in the fort
talk Simon Chandler##45170
turnin Salvage Operation##27177 |goto Twilight Highlands 79.30,78.50
turnin Naga Reinforcements##27178 |goto Twilight Highlands 79.30,78.50
step
talk Lieutenant Emry##45169
turnin Our Boys on the Shore##27338 |goto Twilight Highlands 76.80,69.80
accept Scouting the Shore##27341 |goto Twilight Highlands 76.80,69.80
accept Landgrab##27366 |goto Twilight Highlands 76.80,69.80
step
talk Fargo Flintlocke##49252
accept Shredderectomy##27433 |goto Twilight Highlands 77.00,69.90
stickystart "axebitemar"
stickystart "diabladshred"
step
Scout the Beach Head Control Point |q 27341/1 |goto Twilight Highlands 77.50,65.30
step
label "axebitemar"
kill 12 Axebite Marine##45175 |q 27366/1 |goto Twilight Highlands 77.40,67.10
|tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground. Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
step
label "diabladshred"
kill Diamond-Blade Shredder##45185+
collect 5 Abused Shredder Parts##61048 |q 27433/1 |goto Twilight Highlands 74.30,68.00
step
talk Lieutenant Emry##45169
turnin Scouting the Shore##27341 |goto Twilight Highlands 76.80,69.80
turnin Landgrab##27366 |goto Twilight Highlands 76.80,69.80
accept Bird Down! Bird Down!##27514 |goto Twilight Highlands 76.80,69.80
step
talk Fargo Flintlocke##45168
turnin Shredderectomy##27433 |goto Twilight Highlands 77.00,69.90
accept Siege Tank Rescue##27468 |goto Twilight Highlands 77.00,69.90
step
talk Siege Tank Commander##45524
Tell him "_I'll cover you while you make repairs._"
Speak to a Siege Tank Commander |q 27468/1 |goto Twilight Highlands 73.40,71.20
step
kill Axebite Grunt##45187+
Defend the Siege Tank |q 27468/2 |goto Twilight Highlands 73.40,71.20
step
talk Fargo Flintlocke##45168
turnin Siege Tank Rescue##27468 |goto Twilight Highlands 77.00,69.90
step
talk Thordun Hammerblow##45172
turnin Bird Down! Bird Down!##27514 |goto Twilight Highlands 67.70,66.00
accept Roots'll Do 'Er##27515 |goto Twilight Highlands 67.70,66.00
step
click Thorny Stankroots##205538
collect 8 Thorny Stankroot##61319 |q 27515/1 |goto Twilight Highlands 71.40,66.20
step
talk Thordun Hammerblow##45172
turnin Roots'll Do 'Er##27515 |goto Twilight Highlands 67.70,66.00
accept Wings Over Highbank##27516 |goto Twilight Highlands 67.70,66.00
step
talk Thordun Hammerblow##45172
Tell him "_I'm ready, let's go!_"
Fly with Thordun Hammerblow to Highbank |q 27516/1 |goto Twilight Highlands 67.70,66.00
step
talk Innkeeper Francis##49688
home Highbank |goto Twilight Highlands 79.40,78.50
step
Go upstairs in the fort
talk Kurdran Wildhammer##45167
turnin Wings Over Highbank##27516 |goto Twilight Highlands 79.10,78.30
accept Any Portal in a Storm##27537 |goto Twilight Highlands 79.10,78.30
step
talk Thordun Hammerblow##45172
accept The Perfect Poultice##27538 |goto Twilight Highlands 79.20,78.30
step
talk Glenn Arbuckle##47119
fpath Highbank |goto Twilight Highlands 81.70,77.10
stickystart "verrallrivermuck"
step
kill Muddied Water Elemental##44011+
collect 5 Whirlpool Core##60333 |q 27537/1 |goto Twilight Highlands 67.70,46.90
step
label "verrallrivermuck"
click Verrall River Muck##204880
|tip They look like mounds of swirled gray and white sand on the ground around this area.
collect 10 Verrall River Muck##60337 |q 27538/1 |goto Twilight Highlands 67.70,46.90
step
talk Talaa##45173
turnin Any Portal in a Storm##27537 |goto Twilight Highlands 79.40,77.60
turnin The Perfect Poultice##27538 |goto Twilight Highlands 79.40,77.60
accept The Way is Open##27545 |goto Twilight Highlands 79.40,77.60
step
Go upstairs in the fort
talk Kurdran Wildhammer##45167
turnin The Way is Open##27545 |goto Twilight Highlands 79.10,78.30
step
talk Thordun Hammerblow##45172
accept Firebeard's Patrol##27621 |goto Twilight Highlands 79.20,78.30
step
talk Keegan Firebeard##49271
turnin Firebeard's Patrol##27621 |goto Twilight Highlands 60.10,57.90
accept Welcome Relief##27803 |goto Twilight Highlands 60.10,57.90
accept The Only Homes We Have##27804 |goto Twilight Highlands 60.10,57.90
step
talk Innkeeper Corlin##49795
home Firebeard's Patrol |goto Twilight Highlands 60.40,58.10
step
talk Cailin Longfellow##46814
accept Small Comforts##27805 |goto Twilight Highlands 60.40,58.30
step
talk Farstad Stonegrip##47147
fpath Firebeard's Patrol |goto Twilight Highlands 60.40,57.60
stickystart "subjugfire"
stickystart "subjugatedfirestarters"
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Meara's Dried Roses##206408
|tip They look like a bushel of dark red roses hanging on the wall inside this burning building.
collect Meara's Dried Roses##62545 |q 27805/1 |goto Twilight Highlands 59.80,56.20
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Aprika's Lost Doll##206410
collect Aprika's Doll##62543 |q 27805/3 |goto Twilight Highlands 59.50,55.90
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Parlan's Ivory Hammer##206411
collect Parlan's Ivory Hammer##62546 |q 27805/2 |goto Twilight Highlands 59.30,56.90
step
label "subjugfire"
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires.
Extinguish #50# Village Fires |q 27804/1 |goto Twilight Highlands 59.80,56.90
step
label "subjugatedfirestarters"
kill 8 Subjugated Firestarter##46838 |q 27803/1 |goto Twilight Highlands 59.80,56.90
step
talk Keegan Firebeard##49271
turnin Welcome Relief##27803 |goto Twilight Highlands 60.20,58.00
turnin The Only Homes We Have##27804 |goto Twilight Highlands 60.20,58.00
accept Honorable Bearing##27806 |goto Twilight Highlands 60.20,58.00
step
talk Cailin Longfellow##46814
turnin Small Comforts##27805 |goto Twilight Highlands 60.40,58.30
step
talk Iain Firebeard##46805
turnin Honorable Bearing##27806 |goto Twilight Highlands 57.50,58.10
accept Clan Mullan##27807 |goto Twilight Highlands 57.50,58.10
accept Stubborn as a Doyle##27808 |goto Twilight Highlands 57.50,58.10
accept Firebeard Bellows##27809 |goto Twilight Highlands 57.50,58.10
step
talk Duglas Mullan##46811
turnin Clan Mullan##27807 |goto Twilight Highlands 50.80,60.20
accept The Fighting Spirit##27810 |goto Twilight Highlands 50.80,60.20
step
talk Edana Mullan##46812
accept The Scent of Battle##27811 |goto Twilight Highlands 50.80,60.20
step
talk Mullan Gryphon Rider##46813
Tell him "_You're not backing out._"
kill Mullan Gryphon Rider##46813
Defeat a Mullan Gryphon Rider |q 27810/1 |goto Twilight Highlands 51.10,59.90
step
talk Duglas Mullan##46811
turnin The Fighting Spirit##27810 |goto Twilight Highlands 50.80,60.20
step
talk Mullan Gryphon##46968
Let the gryphons smell the piece of charred highland birch
Find and Return #8# Mullan Gryphons |q 27811/1 |goto Twilight Highlands 57.30,67.60
step
talk Keeland Doyle##47317
turnin Stubborn as a Doyle##27808 |goto Twilight Highlands 61.40,67.40
accept The Fate of the Doyles##27999 |goto Twilight Highlands 61.40,67.40
step
talk Edana Mullan##46812
turnin The Scent of Battle##27811 |goto Twilight Highlands 50.80,60.20
step
talk Duglas Mullan##46811
accept The Loyalty of Clan Mullan##27812 |goto Twilight Highlands 50.80,60.30
step
talk Iain Firebeard##46805
turnin The Fate of the Doyles##27999 |goto Twilight Highlands 57.50,58.10
turnin The Loyalty of Clan Mullan##27812 |goto Twilight Highlands 57.50,58.10
step
talk Mackay Firebeard##46850
turnin Firebeard Bellows##27809 |goto Twilight Highlands 62.50,48.40
accept Death Worthy of a Dragonmaw##27813 |goto Twilight Highlands 62.50,48.40
step
talk Ella Forgehammer##48046
accept The Lost Brother##28233 |goto Twilight Highlands 62.60,48.60
step
talk Brom Forgehammer##46806
accept Anything We Can Get##27814 |goto Twilight Highlands 62.60,48.60
step
talk Bahrum Forgehammer##48053
turnin The Lost Brother##28233 |goto Twilight Highlands 63.10,47.60
accept They Took Me Pants!##28234 |goto Twilight Highlands 63.10,47.60
stickystart "dragonmawstraggler"
stickystart "dragonmawweapons"
step
Go upstairs in this building
kill Gorosh the Pant Stealer##48102
collect Bahrum's Pants##63374 |q 28234/1 |goto Twilight Highlands 62.30,47.00
step
label "dragonmawstraggler"
talk Injured Dragonmaw Straggler##47465
Help the orcs up
Defeat #6# Dragonmaw Stragglers |q 27813/1 |goto Twilight Highlands 62.30,46.80
step
label "dragonmawweapons"
click Dragonmaw Weapon Axe##206673+, Dragonmaw Weapon Rack##206672+, Dragonmaw Weapon Crate##206389+
collect 8 Dragonmaw Weapon##62511 |q 27814/1 |goto Twilight Highlands 62.30,46.80
step
talk Bahrum Forgehammer##48053
turnin They Took Me Pants!##28234 |goto Twilight Highlands 63.20,47.60
step
talk Mackay Firebeard##46850
turnin Death Worthy of a Dragonmaw##27813 |goto Twilight Highlands 62.50,48.40
step
talk Brom Forgehammer##46806
turnin Anything We Can Get##27814 |goto Twilight Highlands 62.60,48.60
step
talk Mackay Firebeard##46850
accept Somethin' for the Boys##27815 |goto Twilight Highlands 62.50,48.40
step
talk Iain Firebeard##46805
turnin Somethin' for the Boys##27815 |goto Twilight Highlands 57.50,58.10
accept Personal Request##27816 |goto Twilight Highlands 57.50,58.10
step
talk Keegan Firebeard##46804
turnin Personal Request##27816 |goto Twilight Highlands 60.20,57.80
accept Dropping the Hammer##27817 |goto Twilight Highlands 60.20,57.80
step
clicknpc Firebeard Gryphon Mount##17718
Ride the Firebeard Gryphon Mount |invehicle |c |goto Twilight Highlands 59.90,57.30
step
While flying on the Firebeard Gryphon Mount
Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks
|tip Use your Storm Shield ability when someone casts a lightning attack on you.
kill 12 Twilight Stormbender##47199 |q 27817/1 |goto Twilight Highlands 58.80,53.10
step
While flying on the Firebeard Gryphon Mount
Use the abilities on your action bar to weaken Servias Windterror
|tip Eventually, you will get off the gryphon and fight him regularly,
kill Servias Windterror##46839 |q 27817/2 |goto Twilight Highlands 58.60,51.70
|tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
step
talk Keegan Firebeard##49271
turnin Dropping the Hammer##27817 |goto Twilight Highlands 60.20,57.90
accept Dunwalds Don't Die##27640 |goto Twilight Highlands 60.20,57.90
accept A Coward's Due##28001 |goto Twilight Highlands 60.20,57.90
step
Enter this building |goto Twilight Highlands 46.70,66.00 < 5 |walk
talk Keely Dunwald##46177
turnin Dunwalds Don't Die##27640 |goto Twilight Highlands 45.90,65.50
accept Donnelly Dunwald##27643 |goto Twilight Highlands 45.90,65.50
accept Eoin Dunwald##27644 |goto Twilight Highlands 45.90,65.50
accept Cayden Dunwald##27645 |goto Twilight Highlands 45.90,65.50
step
talk Flynn Dunwald##46143
accept While Meeting The Family##27641 |goto Twilight Highlands 45.90,65.40
accept Sifting Through The Wreckage##27642 |goto Twilight Highlands 45.90,65.40
step
talk Cayden Dunwald##46174
turnin Cayden Dunwald##27645 |goto Twilight Highlands 45.80,71.70
accept Once More Into The Fire##27648 |goto Twilight Highlands 45.80,71.70
step
talk Cayden Dunwald##46174
Tell him "_Yeah... and let's get to it then._"
Escort Cayden Dunwald
Accompany Cayden through Dunwald Market Row |q 27648/1 |goto Twilight Highlands 45.80,71.70
Cayden Dunwald can also be at [47.90,74.50]
step
talk Cayden Dunwald##46174
turnin Once More Into The Fire##27648 |goto Twilight Highlands 47.90,74.50
Cayden Dunwald can also be at [45.80,71.70]
step
talk Eoin Dunwald##46175
turnin Eoin Dunwald##27644 |goto Twilight Highlands 52.90,74.30
accept Anything But Water##27647 |goto Twilight Highlands 52.90,74.30
step
click Sacred Ale Tap##206203
|tip They look like 3 wooden kegs built into the wall in the basement of this building.
collect Sacred Wildhammer Ale##62317 |q 27647/1 |goto Twilight Highlands 52.80,69.80
step
talk Eoin Dunwald##46583
turnin Anything But Water##27647 |goto Twilight Highlands 52.40,70.30
accept A Steady Supply##27649 |goto Twilight Highlands 52.40,70.30
step
talk Donnelly Dunwald##46176
turnin Donnelly Dunwald##27643 |goto Twilight Highlands 46.40,59.10
accept Finding Beak##27646 |goto Twilight Highlands 46.40,59.10
stickystart "twiguests"
step
Go into the basement of this building
Search the cellar in southern Dunwald Hovel |q 27646/1 |goto Twilight Highlands 45.40,60.00
step
Go into the basement of this building
Search the cellar in northwestern Dunwald Hovel |q 27646/2 |goto Twilight Highlands 46.40,53.80
step
Search the buildings in eastern Dunwald Hovel |q 27646/3 |goto Twilight Highlands 48.40,52.60
step
talk Donnelly Dunwald##46176
turnin Finding Beak##27646 |goto Twilight Highlands 46.00,58.70
accept Home Again##27650 |goto Twilight Highlands 46.00,58.70
step
label "twiguests"
kill Bloodgorged Ettin##46145+, Twilight Scavenger##46183+, Twilight Pillager##46144+, Twilight Shadeprowler##46526+
Welcome #20# Twilight Guests to Dunwald |q 27641/1 |goto Twilight Highlands 45.90,54.80
step
talk Dunwald Victim##46609
Find #12# Dunwald Victims |q 27642/1
click Wildhammer Ale Cask##206292
collect 6 Wildhammer Ale##62327 |q 27649/1
You can find more of all these things
Around [47.00,66.10]
Around [46.40,72.60]
Around [50.70,69.80]
step
Enter this building |goto Twilight Highlands 46.70,66.00 < 5 |walk
talk Keely Dunwald##46177
turnin Home Again##27650 |goto Twilight Highlands 46.00,65.50
accept Doing It Like a Dunwald##27651 |goto Twilight Highlands 46.00,65.50
step
talk Eoin Dunwald##46585
turnin A Steady Supply##27649 |goto Twilight Highlands 50.50,70.70
step
talk Flynn Dunwald##46143
turnin While Meeting The Family##27641 |goto Twilight Highlands 50.50,70.70
turnin Sifting Through The Wreckage##27642 |goto Twilight Highlands 50.50,70.70
step
talk Flynn Dunwald##46628
Tell him "_I'm in._"
kill Darunga##46624 |q 27651/1 |goto Twilight Highlands 50.50,70.60
step
talk Flynn Dunwald##46628
turnin Doing It Like a Dunwald##27651 |goto Twilight Highlands 50.50,70.60
step
talk Colin Thundermar##46591
turnin A Coward's Due##28001 |goto Twilight Highlands 49.00,29.80
accept Dragonmaw Takedown##27754 |goto Twilight Highlands 49.00,29.80
accept My Sister, Fanny##28369 |goto Twilight Highlands 49.00,29.80
step
talk Low Shaman Blundy##48010
accept Fight Like a Wildhammer##27752 |goto Twilight Highlands 49.80,29.20
step
talk Fanny Thundermar##48013
turnin My Sister, Fanny##28369 |goto Twilight Highlands 49.80,29.30
accept Never Leave a Dinner Behind##27753 |goto Twilight Highlands 49.80,29.30
step
talk Naveen Tendernose##49591
home Thundermar |goto Twilight Highlands 49.50,30.40
step
talk Doran Talonheart##47154
fpath Thundermar |goto Twilight Highlands 48.50,28.10
stickystart "kegofthunderale"
stickystart "wildhammerfood"
step
kill Dragonmaw Marauder##46310+
collect 8 Dragonmaw Insignia##62332 |q 27754/1 |goto Twilight Highlands 46.20,37.40
step
label "kegofthunderale"
click Thundermar Ale Keg##7490+
collect 10 Keg of Thundermar Ale##62330 |q 27752/1 |goto Twilight Highlands 46.20,37.40
step
label "wildhammerfood"
click Wildhammer Food Store##206290+
collect 15 Wildhammer Food Store##62324 |q 27753/1 |goto Twilight Highlands 46.20,37.40
You can find more around [49.10,37.30]
step
talk Colin Thundermar##46591
turnin Dragonmaw Takedown##27754 |goto Twilight Highlands 49.00,29.80
step
talk Low Shaman Blundy##48010
turnin Fight Like a Wildhammer##27752 |goto Twilight Highlands 49.80,29.20
step
talk Fanny Thundermar##48013
turnin Never Leave a Dinner Behind##27753 |goto Twilight Highlands 49.80,29.30
step
talk Low Shaman Blundy##48010
accept A Vision of Twilight##28241 |goto Twilight Highlands 49.80,29.20
step
talk Nivvet Channelock##48174
accept Tempered in Elemental Flame##28211 |goto Twilight Highlands 49.10,29.40
accept Hot Stuff##28212 |goto Twilight Highlands 49.10,29.40
accept Potential Energy##28215 |goto Twilight Highlands 49.10,29.40
step
talk Colin Thundermar##46591
accept Magmalord Falthazar##28216 |goto Twilight Highlands 49.00,29.70
step
clicknpc The Eye of Twilight##39765
|tip It's a purple orb above a spinning metal machine.
turnin A Vision of Twilight##28241 |goto Twilight Highlands 57.90,33.50
accept We All Must Sacrifice##28242 |goto Twilight Highlands 57.90,33.50
stickystart "twistedelementium"
step
kill 10 Shaman of the Black##46322 |q 28242/1 |goto Twilight Highlands 58.00,32.60
step
label "twistedelementium"
kill Obsidian Stoneslave##47226+
collect 10 Twisted Elementium Loop##63285 |q 28215/1 |goto Twilight Highlands 58.00,32.60
step
clicknpc The Eye of Twilight##39765
|tip It's a purple orb above a spinning metal machine.
turnin We All Must Sacrifice##28242 |goto Twilight Highlands 57.90,33.50
accept The Eyes Have It##28243 |goto Twilight Highlands 57.90,33.50
step
talk Nivvet Channelock##48174
turnin Potential Energy##28215 |goto Twilight Highlands 49.10,29.40
step
talk Low Shaman Blundy##48010
turnin The Eyes Have It##28243 |goto Twilight Highlands 49.70,29.20
accept Eye Spy##28244 |goto Twilight Highlands 49.70,29.20
step
clicknpc The Eye of Twilight##39765
|tip It's a purple orb above a spinning metal machine.
Watch the cutscene
Peer into the Eye |q 28244/1 |goto Twilight Highlands 49.80,29.10
step
talk Low Shaman Blundy##48010
turnin Eye Spy##28244 |goto Twilight Highlands 49.70,29.20
stickystart "moltenfury"
stickystart "temperedspear"
step
kill Magmalord Falthazar##48015
collect Magmalord Falthazar's Head##63286 |q 28216/1 |goto Twilight Highlands 42.50,23.50
step
label "moltenfury"
kill Unbound Emberfiend##48016+
collect 5 Molten Fury##63283 |q 28212/1 |goto Twilight Highlands 42.20,24.30
step
label "temperedspear"
click Tempered Spear##206952
collect 8 Tempered Spear##63282 |q 28211/1 |goto Twilight Highlands 42.20,24.30
step
talk Colin Thundermar##46591
turnin Magmalord Falthazar##28216 |goto Twilight Highlands 49.00,29.70
step
talk Nivvet Channelock##48174
turnin Tempered in Elemental Flame##28211 |goto Twilight Highlands 49.10,29.40
turnin Hot Stuff##28212 |goto Twilight Highlands 49.10,29.40
accept Tear Them From the Sky!##28280 |goto Twilight Highlands 49.10,29.40
step
use Shoulder-Mounted Drake-Dropper##63393
|tip Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes.
|tip They are flying in the sky around this area.
kill 8 Dragonmaw Black Drake##48197 |q 28280/1 |goto Twilight Highlands 49.20,29.80
step
talk Nivvet Channelock##48174
turnin Tear Them From the Sky!##28280 |goto Twilight Highlands 49.10,29.40
step
talk Colin Thundermar##48173
accept Last Stand at Thundermar##28281 |goto Twilight Highlands 49.00,29.70
step
kill 8 Dragonmaw Skyclaw##52038 |q 28281/1 |goto Twilight Highlands 48.10,30.00
step
talk Colin Thundermar##48173
turnin Last Stand at Thundermar##28281 |goto Twilight Highlands 49.00,29.70
accept Narkrall, The Drake-Tamer##28282 |goto Twilight Highlands 49.00,29.70
step
talk Colin Thundermar##48173
Tell him "_I'm ready to fight!_"
kill Narkrall Rakeclaw##47559 |q 28282/1 |goto Twilight Highlands 49.00,29.70
step
talk Colin Thundermar##48173
turnin Narkrall, The Drake-Tamer##28282 |goto Twilight Highlands 49.00,29.70
accept The Kirthaven Summit##28294 |goto Twilight Highlands 49.00,29.70
step
talk Vaughn Blusterbeard##49574
home Kirthaven |goto Twilight Highlands 54.60,18.00
step
talk Lachlan MacGraff##48367
turnin The Kirthaven Summit##28294 |goto Twilight Highlands 54.30,16.70
step
talk Kurdran Wildhammer##48365
accept The Bachelor##28346 |goto Twilight Highlands 54.90,17.20
step
talk Keegan Firebeard##48364
turnin The Bachelor##28346 |goto Twilight Highlands 54.40,16.80
accept Rescue at Glopgut's Hollow##28377 |goto Twilight Highlands 54.40,16.80
step
talk Shaina Talonheart##47155
fpath Kirthaven |goto Twilight Highlands 56.80,15.10
step
talk Colin Thundermar##48472
turnin Rescue at Glopgut's Hollow##28377 |goto Twilight Highlands 38.10,34.50
accept Find Fanny##28378 |goto Twilight Highlands 38.10,34.50
accept Ogre Bashin'##28379 |goto Twilight Highlands 38.10,34.50
stickystart "glopguthurl"
step
Enter the cave |goto Twilight Highlands 37.60,33.40 < 5 |walk
Rescue Fanny Thundermar |q 28378/1 |goto Twilight Highlands 35.00,31.10
step
label "glopguthurl"
Leave the cave |goto Twilight Highlands 37.60,33.40 < 5 |walk
kill Glopgut Pounder##48474+, Glopgut Hurler##48475+
Slay #10# Glopgut Ogres |q 28379/1 |goto Twilight Highlands 38.70,30.90
step
talk Colin Thundermar##48472
turnin Find Fanny##28378 |goto Twilight Highlands 38.10,34.50
turnin Ogre Bashin'##28379 |goto Twilight Highlands 38.10,34.50
accept The Bachelorette##28407 |goto Twilight Highlands 38.10,34.50
step
talk Fanny Thundermar##48530
turnin The Bachelorette##28407 |goto Twilight Highlands 54.70,17.90
step
talk Russell Brower##48366
accept Words and Music By...##28413 |goto Twilight Highlands 54.60,17.50
step
talk Russell Brower##48366
Tell him "_I'm ready, let's write a song._"
Create a Song |q 28413/1 |goto Twilight Highlands 54.60,17.50
step
talk Russell Brower##48366
turnin Words and Music By...##28413 |goto Twilight Highlands 54.60,17.50
step
talk Lachlan MacGraff##49374
accept Something Bold##28408 |goto Twilight Highlands 54.30,16.70
accept Something Brewed##28409 |goto Twilight Highlands 54.30,16.70
accept Something Stolen##28410 |goto Twilight Highlands 54.30,16.70
accept Something Stewed##28411 |goto Twilight Highlands 54.30,16.70
stickystart "worgribs"
stickystart "pristowl"
step
kill Highland Elk##46970+, Highland Doe##46971+
collect 8 Fresh Venison##64319 |q 28411/1 |goto Twilight Highlands 53.40,24.50
step
label "worgribs"
kill Highland Worg##46153+
collect 5 Worg Rib##64320 |q 28411/2 |goto Twilight Highlands 53.40,24.50
step
label "pristowl"
kill Tawny Owl##46162+
click Pristine Owl Feather##207158
collect 12 Pristine Owl Feather##64317 |q 28408/1 |goto Twilight Highlands 56.80,21.90
step
talk Hammelhand##48758
Tell him"_I'm here to escort a delivery to Kirthaven._"
Follow the dwarves
Escort the Supply Caravan |q 28409/1 |goto Twilight Highlands 64.40,22.60
step
Find a zeppelin flying north or south along this coast between Dragonmaw Port and The Krazzworks
Fly onto the zeppelin and land on it
Go downstairs on the zeppelin
click Crate of Fine Cloth##207162
collect Fine Dark Cloth##64318 |q 28410/1 |goto Twilight Highlands 75.10,33.80
step
talk Lachlan MacGraff##49374
turnin Something Bold##28408 |goto Twilight Highlands 54.30,16.70
turnin Something Brewed##28409 |goto Twilight Highlands 54.30,16.70
turnin Something Stolen##28410 |goto Twilight Highlands 54.30,16.70
turnin Something Stewed##28411 |goto Twilight Highlands 54.30,16.70
step
talk Grundy MacGraff##48368
accept Wild, Wild, Wildhammer Wedding##28655 |goto Twilight Highlands 54.30,16.80
step
talk Grundy MacGraff##48368
Tell him "_Let the wedding commence!_"
Watch the cutscene
kill The Beast Unleashed##49234
Complete the Nuptuals |q 28655/1 |goto Twilight Highlands 54.30,16.80
step
talk Kurdran Wildhammer##49358
turnin Wild, Wild, Wildhammer Wedding##28655 |goto Twilight Highlands 55.30,17.30
step
talk Lachlan MacGraff##49374
accept The Maw of Madness##27374 |goto Twilight Highlands 55.20,17.30
step
talk Earthcaller Torunscar##43901
turnin The Maw of Madness##27374 |goto Twilight Highlands 44.00,10.60
accept Torn Ground##27299 |goto Twilight Highlands 44.00,10.60
step
kill 3 Tentacle of Iso'rath##45394 |q 27299/1 |goto Twilight Highlands 41.80,11.40
step
talk Earthcaller Torunscar##45332
turnin Torn Ground##27299 |goto Twilight Highlands 44.00,10.60
accept Pushing Back##27300 |goto Twilight Highlands 44.00,10.60
step
talk Earthmender Duarn##45391
accept Unbroken##27301 |goto Twilight Highlands 44.00,11.30
step
talk Initiate Goldmine##45432
accept Simple Solutions##27302 |goto Twilight Highlands 44.40,11.60
step
talk Earthcaller Yevaa##45362
turnin Unbroken##27301 |goto Twilight Highlands 44.20,18.10
accept Mercy for the Bound##27303 |goto Twilight Highlands 44.20,18.10
stickystart "fleshburnerheart"
stickystart "pyreoil"
step
kill Twilight Captivator##45359+, Twilight Bonebreaker##45334+
Kill #12# Drakgor Cultists |q 27300/1 |goto Twilight Highlands 42.30,17.20
step
label "fleshburnerheart"
kill Bound Fleshburner##45358+
collect 5 Fleshburner Heart##60981 |q 27303/1 |goto Twilight Highlands 42.30,17.20
step
label "pyreoil"
click Barrel of Pyreburn Oil##205422
collect 10 Pyreburn Oil##60982 |q 27302/1 |goto Twilight Highlands 42.30,17.20
step
talk Initiate Goldmine##45432
turnin Simple Solutions##27302 |goto Twilight Highlands 44.40,11.60
step
talk Earthcaller Yevaa##45386
turnin Mercy for the Bound##27303 |goto Twilight Highlands 43.80,11.30
step
talk Earthcaller Torunscar##45332
turnin Pushing Back##27300 |goto Twilight Highlands 44.00,10.60
accept The Maw of Iso'rath##27376 |goto Twilight Highlands 44.00,10.60
step
clicknpc Earthen Ring Gryphon##50473
Join the assault on Iso'rath |q 27376/1 |goto Twilight Highlands 44.50,10.60
step
talk Earthcaller Yevaa##47991
turnin The Maw of Iso'rath##27376 |goto Twilight Highlands 48.40,14.60
accept Devoured##27377 |goto Twilight Highlands 48.40,14.60
step
Fight the oozes that attack and survive Iso'rath's defenses |q 27377/1
step
Click the _Quest Complete_ Box:
turnin Devoured##27377
accept The Worldbreaker##27378
step
Deathwing will attack you and Thrall
Aid Thrall in Battling Deathwing |q 27378/1
step
Click the _Quest Complete_ Box:
turnin The Worldbreaker##27378
accept The Terrors of Iso'rath##27379
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Jalara |q 27379/2 |goto Twilight Highlands 49.60,15.80
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Earthmender Duarn |q 27379/3 |goto Twilight Highlands 49.10,13.10
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Hargoth Dimblaze |q 27379/1 |goto Twilight Highlands 47.00,13.10
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Mylra |q 27379/4 |goto Twilight Highlands 47.50,15.60
step
talk Earthcaller Yevaa##48059
turnin The Terrors of Iso'rath##27379 |goto Twilight Highlands 48.70,16.60
accept Nightmare##27380 |goto Twilight Highlands 48.70,16.60
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Brain of Iso'rath##47960
Kill Iso'rath |q 27380/1 |goto Twilight Highlands 48.80,14.90
step
talk Earthcaller Torunscar##45332
turnin Nightmare##27380 |goto Twilight Highlands 44.00,10.60
step
Congratulations, you have earned the Consumed by Nightmare achievement! |achieve 5451
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Cataclysm\\Help the Bombardier! I'm the Bombardier!",{
expansion="mists",
achieveid={5317},
patch='40003',
description="This guide will walk you through killing 10 Schnotzz infantry with one artillery shell during the Fire From the Sky daily quest in Uldum.",
mopready=true,
},[[
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum 41.40,5.50
step
clicknpc Confiscated Artillery##49499
Use the Designate Target ability on one of the groups of mobs
|tip The achievement is done by hitting 10 targets at once. To do this you use two artillery shells in succession: target one group at the top of the stairs with the first shot, then target a group at the bottom for the second shot.
Kill 10 Schnotzz Infantry with one artillery shell during the Fire From the Sky daily quest
achieve 5317
step
Congratulations, you have earned the Help the Bombardier! I'm the Bombardier! achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Cataclysm\\King of the Mountain",{
expansion="mists",
achieveid={5320},
patch='40003',
description="Complete the Twilight's Hammer quest chain in Twilight Highlands up to and including Skullcrusher the Mountain.",
mopready=true,
},[[
step
click Hero's Call Board##250720
|tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
accept Hero's Call: Twilight Highlands!##28716 |goto Stormwind City 62.90,71.60
step
talk King Varian Wrynn##29611
turnin Hero's Call: Twilight Highlands!##28716 |goto Stormwind City 85.70,31.80
accept Twilight Shores##28238 |goto Stormwind City 85.70,31.80
step
talk Fargo Flintlocke##44806
turnin Twilight Shores##28238 |goto Stormwind City 26.10,47.30
accept Twilight Shores##28832 |goto Stormwind City 26.10,47.30
step
clicknpc Flintlocke's Seaplane##50300 |goto Stormwind City 25.90,47.60 < 7
|tip It looks like an airplane flying in place above the water.
Ride to Twilight Highlands |goto Twilight Highlands |noway |c
step
talk Lieutenant Fawkes##49022
turnin Twilight Shores##28832 |goto Twilight Highlands 81.00,79.40
accept Welcome to Highbank!##28596 |goto Twilight Highlands 81.00,79.40
step
kill Bilgewater Gunman##49009+, Axebite Infantry##49008+
Kill #10# Horde Attackers |q 28596/1 |goto Twilight Highlands 81.10,77.30
step
talk Lieutenant Fawkes##49022
turnin Welcome to Highbank!##28596 |goto Twilight Highlands 81.00,79.40
step
talk Fargo Flintlocke##49252
accept Burnin' at Both Ends##28597 |goto Twilight Highlands 81.00,79.40
step
clicknpc Cannon Powder Barrel##49143
|tip They look like wooden barrels on the ground around this area.
collect 10 Cannon Powder##64585 |q 28597/1 |goto Twilight Highlands 81.10,77.30
step
talk Fargo Flintlocke##49252
turnin Burnin' at Both Ends##28597 |goto Twilight Highlands 78.80,76.80
accept Aiming High##28598 |goto Twilight Highlands 78.80,76.80
step
Wait to be launched from Flintlocke's Cannon |q 28598/1
|tip You may have to wait for a few minutes, so just stand here and wait.
step
_Go downstairs_ in the zeppelin
use Flintlocke's Explosives##64660
|tip Use Flintlocke's Explosives while downstairs.
Destroy the Skyshredder |q 28598/2
step
talk Fargo Flintlocke##49252
turnin Aiming High##28598 |goto Twilight Highlands 78.90,76.70
accept Kurdran's Waitin'##28599 |goto Twilight Highlands 78.90,76.70
step
talk Kurdran Wildhammer##49358
|tip He is upstairs in the fort.
turnin Kurdran's Waitin'##28599 |goto Twilight Highlands 79.10,78.30
accept Our Boys on the Shore##27338 |goto Twilight Highlands 79.10,78.30
step
talk Simon Chandler##45170
accept Salvage Operation##27177 |goto Twilight Highlands 79.30,78.50
accept Naga Reinforcements##27178 |goto Twilight Highlands 79.30,78.50
step
talk Ephram Hardstone##45171
accept Siren's Song##27200 |goto Twilight Highlands 76.00,80.00
step
kill Ophelia##45183
Slay Ophelia and Protect Ephram |q 27200/1 |goto Twilight Highlands 76.10,79.80
step
talk Ephram Hardstone##45171
turnin Siren's Song##27200 |goto Twilight Highlands 76.00,80.00
stickystart "blackscalenaga"
step
click Water-Logged Crates##205250
|tip They look like wooden boxes on the ground underwater around this area.
collect 8 Recovered Supplies##60857 |q 27177/1 |goto Twilight Highlands 76.20,83.00
step
label "blackscalenaga"
kill Blackscale Seacaller##45182+, Blackscale Myrmidon##45179+
Slay #10# Blackscale Naga |q 27178/1 |goto Twilight Highlands 76.20,83.00
step
Go upstairs in the fort
talk Simon Chandler##45170
turnin Salvage Operation##27177 |goto Twilight Highlands 79.30,78.50
turnin Naga Reinforcements##27178 |goto Twilight Highlands 79.30,78.50
step
talk Lieutenant Emry##45169
turnin Our Boys on the Shore##27338 |goto Twilight Highlands 76.80,69.80
accept Scouting the Shore##27341 |goto Twilight Highlands 76.80,69.80
accept Landgrab##27366 |goto Twilight Highlands 76.80,69.80
step
talk Fargo Flintlocke##49252
accept Shredderectomy##27433 |goto Twilight Highlands 77.00,69.90
stickystart "axemarine"
stickystart "diamondshred"
step
Scout the Beach Head Control Point |q 27341/1 |goto Twilight Highlands 77.50,65.30
step
label "axemarine"
kill 12 Axebite Marine##45175 |q 27366/1 |goto Twilight Highlands 77.40,67.10
|tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground. Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
step
label "diamondshred"
kill Diamond-Blade Shredder##45185+
collect 5 Abused Shredder Parts##61048 |q 27433/1 |goto Twilight Highlands 74.30,68.00
step
talk Lieutenant Emry##45169
turnin Scouting the Shore##27341 |goto Twilight Highlands 76.80,69.80
turnin Landgrab##27366 |goto Twilight Highlands 76.80,69.80
accept Bird Down! Bird Down!##27514 |goto Twilight Highlands 76.80,69.80
step
talk Fargo Flintlocke##45168
turnin Shredderectomy##27433 |goto Twilight Highlands 77.00,69.90
accept Siege Tank Rescue##27468 |goto Twilight Highlands 77.00,69.90
step
talk Siege Tank Commander##45524
Tell him you'll cover him while he makes repairs
Speak to a Siege Tank Commander |q 27468/1 |goto Twilight Highlands 73.40,71.20
step
kill Axebite Grunt##45187+
Defend the Siege Tank |q 27468/2 |goto Twilight Highlands 73.40,71.20
step
talk Fargo Flintlocke##45168
turnin Siege Tank Rescue##27468 |goto Twilight Highlands 77.00,69.90
step
talk Thordun Hammerblow##45172
turnin Bird Down! Bird Down!##27514 |goto Twilight Highlands 67.70,66.00
accept Roots'll Do 'Er##27515 |goto Twilight Highlands 67.70,66.00
step
click Thorny Stankroot##205538
|tip They look like grey-ish bumps with green leaves on them on the ground around this area.
collect 8 Thorny Stankroot##61319 |q 27515/1 |goto Twilight Highlands 71.40,66.20
step
talk Thordun Hammerblow##45172
turnin Roots'll Do 'Er##27515 |goto Twilight Highlands 67.70,66.00
accept Wings Over Highbank##27516 |goto Twilight Highlands 67.70,66.00
step
talk Thordun Hammerblow##45172
Tell him you're ready, let's go!
Fly with Thordun Hammerblow to Highbank |q 27516/1 |goto Twilight Highlands 67.70,66.00
step
talk Innkeeper Francis##49688
home Highbank |goto Twilight Highlands 79.40,78.50
step
Go upstairs in the fort
talk Kurdran Wildhammer##45167
turnin Wings Over Highbank##27516 |goto Twilight Highlands 79.10,78.30
accept Any Portal in a Storm##27537 |goto Twilight Highlands 79.10,78.30
step
talk Thordun Hammerblow##45172
accept The Perfect Poultice##27538 |goto Twilight Highlands 79.20,78.30
step
talk Glenn Arbuckle##47119
fpath Highbank |goto Twilight Highlands 81.70,77.10
stickystart "rivermuckyuck"
step
kill Muddied Water Elemental##44011+
collect 5 Whirlpool Core##60333 |q 27537/1 |goto Twilight Highlands 67.70,46.90
step
label "rivermuckyuck"
click Verrall River Muck##204880
|tip They look like mounds of swirled gray and white sand on the ground around this area.
collect 10 Verrall River Muck##60337 |q 27538/1 |goto Twilight Highlands 67.70,46.90
step
talk Talaa##45173
turnin Any Portal in a Storm##27537 |goto Twilight Highlands 79.40,77.60
turnin The Perfect Poultice##27538 |goto Twilight Highlands 79.40,77.60
accept The Way is Open##27545 |goto Twilight Highlands 79.40,77.60
step
talk Kurdran Wildhammer##45167
|tip He is upstairs in the fort.
turnin The Way is Open##27545 |goto Twilight Highlands 79.10,78.30
step
talk Thordun Hammerblow##45172
accept Firebeard's Patrol##27621 |goto Twilight Highlands 79.20,78.30
step
talk Keegan Firebeard##49271
turnin Firebeard's Patrol##27621 |goto Twilight Highlands 60.10,57.90
accept Welcome Relief##27803 |goto Twilight Highlands 60.10,57.90
accept The Only Homes We Have##27804 |goto Twilight Highlands 60.10,57.90
step
talk Innkeeper Corlin##49795
home Firebeard's Patrol |goto Twilight Highlands 60.40,58.10
step
talk Cailin Longfellow##46814
accept Small Comforts##27805 |goto Twilight Highlands 60.40,58.30
step
talk Farstad Stonegrip##47147
fpath Firebeard's Patrol |goto Twilight Highlands 60.40,57.60
stickystart "vilfire"
stickystart "villagefirestarts"
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Meara's Dried Roses##206408
|tip They look like a bushel of dark red roses hanging on the wall inside this burning building.
collect Meara's Dried Roses##62545 |q 27805/1 |goto Twilight Highlands 59.80,56.20
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Aprika's Lost Doll##206410
|tip It looks like a white teddy bear with crossed out eyes sitting on the ground inside this burning building.
collect Aprika's Doll##62543 |q 27805/3 |goto Twilight Highlands 59.50,55.90
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Parlan's Ivory Hammer##206411
|tip It looks like a white hammer sitting on the stove inside this burning building.
collect Parlan's Ivory Hammer##62546 |q 27805/2 |goto Twilight Highlands 59.30,56.90
step
label "vilfire"
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires.
Extinguish #50# Village Fires |q 27804/1 |goto Twilight Highlands 59.80,56.90
step
label "villagefirestarts"
kill 8 Subjugated Firestarter##46838 |q 27803/1 |goto Twilight Highlands 59.80,56.90
step
talk Keegan Firebeard##49271
turnin Welcome Relief##27803 |goto Twilight Highlands 60.20,58.00
turnin The Only Homes We Have##27804 |goto Twilight Highlands 60.20,58.00
accept Honorable Bearing##27806 |goto Twilight Highlands 60.20,58.00
step
talk Cailin Longfellow##46814
turnin Small Comforts##27805 |goto Twilight Highlands 60.40,58.30
step
talk Iain Firebeard##46805
turnin Honorable Bearing##27806 |goto Twilight Highlands 57.50,58.10
accept Clan Mullan##27807 |goto Twilight Highlands 57.50,58.10
accept Stubborn as a Doyle##27808 |goto Twilight Highlands 57.50,58.10
accept Firebeard Bellows##27809 |goto Twilight Highlands 57.50,58.10
step
talk Duglas Mullan##46811
turnin Clan Mullan##27807 |goto Twilight Highlands 50.80,60.20
accept The Fighting Spirit##27810 |goto Twilight Highlands 50.80,60.20
step
talk Edana Mullan##46812
accept The Scent of Battle##27811 |goto Twilight Highlands 50.80,60.20
step
talk Mullan Gryphon Rider##46813
Tell him he's not backing out
kill Mullan Gryphon Rider##46813
Defeat a Mullan Gryphon Rider |q 27810/1 |goto Twilight Highlands 51.10,59.90
step
talk Duglas Mullan##46811
turnin The Fighting Spirit##27810 |goto Twilight Highlands 50.80,60.20
step
talk Mullan Gryphon##46968
Let the gryphons smell the piece of charred highland birch
Find and Return #8# Mullan Gryphons |q 27811/1 |goto Twilight Highlands 57.30,67.60
step
talk Keeland Doyle##47317
turnin Stubborn as a Doyle##27808 |goto Twilight Highlands 61.40,67.40
accept The Fate of the Doyles##27999 |goto Twilight Highlands 61.40,67.40
step
talk Edana Mullan##46812
turnin The Scent of Battle##27811 |goto Twilight Highlands 50.80,60.20
step
talk Duglas Mullan##46811
accept The Loyalty of Clan Mullan##27812 |goto Twilight Highlands 50.80,60.30
step
talk Iain Firebeard##46805
turnin The Fate of the Doyles##27999 |goto Twilight Highlands 57.50,58.10
turnin The Loyalty of Clan Mullan##27812 |goto Twilight Highlands 57.50,58.10
step
talk Mackay Firebeard##46850
turnin Firebeard Bellows##27809 |goto Twilight Highlands 62.50,48.40
accept Death Worthy of a Dragonmaw##27813 |goto Twilight Highlands 62.50,48.40
step
talk Ella Forgehammer##48046
accept The Lost Brother##28233 |goto Twilight Highlands 62.60,48.60
step
talk Brom Forgehammer##46806
accept Anything We Can Get##27814 |goto Twilight Highlands 62.60,48.60
step
talk Bahrum Forgehammer##48053
turnin The Lost Brother##28233 |goto Twilight Highlands 63.10,47.60
accept They Took Me Pants!##28234 |goto Twilight Highlands 63.10,47.60
stickystart "straggle"
stickystart "dragonaxeandracks"
step
Go upstairs in this building
kill Gorosh the Pant Stealer##48102
collect Bahrum's Pants##63374 |q 28234/1 |goto Twilight Highlands 62.30,47.00
step
label "straggle"
talk Injured Dragonmaw Straggler##47465
Help the orcs up
Defeat 6 Dragonmaw Stragglers |q 27813/1 |goto Twilight Highlands 62.30,46.80
step
label "dragonaxeandracks"
click Dragonmaw Weapon Axe##206673
|tip The Dragonmaw Stragglers drop them when you help them up. They look like axes stuck in the ground.
click Dragonmaw Weapon Rack##206672
|tip They look like brown racks with 2 axes on them mounted on walls around this area.
collect 8 Dragonmaw Weapon##62511 |q 27814/1 |goto Twilight Highlands 62.30,46.80
step
talk Bahrum Forgehammer##48053
turnin They Took Me Pants!##28234 |goto Twilight Highlands 63.20,47.60
step
talk Mackay Firebeard##46850
turnin Death Worthy of a Dragonmaw##27813 |goto Twilight Highlands 62.50,48.40
step
talk Brom Forgehammer##46806
turnin Anything We Can Get##27814 |goto Twilight Highlands 62.60,48.60
step
talk Mackay Firebeard##46850
accept Somethin' for the Boys##27815 |goto Twilight Highlands 62.50,48.40
step
talk Iain Firebeard##46805
turnin Somethin' for the Boys##27815 |goto Twilight Highlands 57.50,58.10
accept Personal Request##27816 |goto Twilight Highlands 57.50,58.10
step
talk Keegan Firebeard##46804
turnin Personal Request##27816 |goto Twilight Highlands 60.20,57.80
accept Dropping the Hammer##27817 |goto Twilight Highlands 60.20,57.80
step
clicknpc Firebeard Gryphon Mount##51141
|tip They look like big eagles standing here.
Ride the Firebeard Gryphon Mount |invehicle |c |q 27817 |goto Twilight Highlands 59.90,57.30
step
While flying on the Firebeard Gryphon Mount:
Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks
|tip Use your Storm Shield ability when someone casts a lightning attack on you.
kill 12 Twilight Stormbender##47199 |q 27817/1 |goto Twilight Highlands 58.80,53.10
step
While flying on the Firebeard Gryphon Mount:
Use the abilities on your action bar to weaken Servias Windterror
|tip Eventually, you will get off the gryphon and fight him regularly.
kill Servias Windterror##46839 |q 27817/2 |goto Twilight Highlands 58.60,51.70
|tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
step
talk Keegan Firebeard##49271
turnin Dropping the Hammer##27817 |goto Twilight Highlands 60.20,57.90
accept Dunwalds Don't Die##27640 |goto Twilight Highlands 60.20,57.90
accept A Coward's Due##28001 |goto Twilight Highlands 60.20,57.90
step
Enter this building |goto Twilight Highlands 46.70,66.00 < 10 |walk
talk Keely Dunwald##46177
turnin Dunwalds Don't Die##27640 |goto Twilight Highlands 45.90,65.50
accept Donnelly Dunwald##27643 |goto Twilight Highlands 45.90,65.50
accept Eoin Dunwald##27644 |goto Twilight Highlands 45.90,65.50
accept Cayden Dunwald##27645 |goto Twilight Highlands 45.90,65.50
step
talk Flynn Dunwald##46143
accept While Meeting The Family##27641 |goto Twilight Highlands 45.90,65.40
accept Sifting Through The Wreckage##27642 |goto Twilight Highlands 45.90,65.40
step
talk Cayden Dunwald##46174
turnin Cayden Dunwald##27645 |goto Twilight Highlands 45.80,71.70
accept Once More Into The Fire##27648 |goto Twilight Highlands 45.80,71.70
step
talk Cayden Dunwald##46174
Select _"Yeah... and let's get to it then"_
Escort Cayden Dunwald
Accompany Cayden through Dunwald Market Row |q 27648/1 |goto Twilight Highlands 45.80,71.70
Cayden Dunwald can also be at [47.90,74.50]
step
talk Cayden Dunwald##46174
turnin Once More Into The Fire##27648 |goto Twilight Highlands 47.90,74.50
Cayden Dunwald can also be at [45.80,71.70]
step
talk Eoin Dunwald##46175
turnin Eoin Dunwald##27644 |goto Twilight Highlands 52.90,74.30
accept Anything But Water##27647 |goto Twilight Highlands 52.90,74.30
step
click Sacred Ale Tap##206203
|tip They look like 3 wooden kegs built into the wall in the basement of this building.
collect Sacred Wildhammer Ale##62317 |q 27647/1 |goto Twilight Highlands 52.80,69.80
step
talk Eoin Dunwald##46583
turnin Anything But Water##27647 |goto Twilight Highlands 52.40,70.30
accept A Steady Supply##27649 |goto Twilight Highlands 52.40,70.30
step
talk Donnelly Dunwald##46176
turnin Donnelly Dunwald##27643 |goto Twilight Highlands 46.40,59.10
accept Finding Beak##27646 |goto Twilight Highlands 46.40,59.10
stickystart "wildvictim"
stickystart "victims"
stickystart "alecasks"
step
Search the cellar in southern Dunwald Hovel |q 27646/1 |goto Twilight Highlands 45.40,60.00
|tip Go down to the basement.
step
Search the cellar in northwestern Dunwald Hovel |q 27646/2 |goto Twilight Highlands 46.40,53.80
|tip Go down to the basement.
step
Search the buildings in eastern Dunwald Hovel |q 27646/3 |goto Twilight Highlands 48.40,52.60
step
talk Donnelly Dunwald##46176
turnin Finding Beak##27646 |goto Twilight Highlands 46.00,58.70
accept Home Again##27650 |goto Twilight Highlands 46.00,58.70
step
label "wildvictim"
kill Bloodgorged Ettin##46145+, Twilight Scavenger##46183+, Twilight Pillager##46144+, Twilight Shadeprowler##46526+
Welcome #20# Twilight Guests to Dunwald |q 27641/1 |goto Twilight Highlands 45.90,54.80
step
label "victims"
talk Dunwald Victim##46609
Find #12# Dunwald Victims |q 27642/1 |goto Twilight Highlands 45.90,54.80
step
label "alecasks"
click Wildhammer Ale Cask##206292
|tip They look like brown barrels sitting on the ground around this area.
collect 6 Wildhammer Ale##62327 |q 27649/1 |goto Twilight Highlands 45.90,54.80
You can find more of all these things:
Around 47.00,66.10
Around 46.40,72.60
Around 50.70,69.80
step
Enter this building |goto Twilight Highlands 46.70,66.00 < 10 |walk
talk Keely Dunwald##46177
turnin Home Again##27650 |goto Twilight Highlands 46.00,65.50
accept Doing It Like a Dunwald##27651 |goto Twilight Highlands 46.00,65.50
step
talk Eoin Dunwald##46585
turnin A Steady Supply##27649 |goto Twilight Highlands 50.50,70.70
step
talk Flynn Dunwald##46143
turnin While Meeting The Family##27641 |goto Twilight Highlands 50.50,70.70
turnin Sifting Through The Wreckage##27642 |goto Twilight Highlands 50.50,70.70
step
talk Flynn Dunwald##46628
Select _"I'm in"_
kill Darunga##46624 |q 27651/1 |goto Twilight Highlands 50.50,70.60
step
talk Flynn Dunwald##46628
turnin Doing It Like a Dunwald##27651 |goto Twilight Highlands 50.50,70.60
step
talk Colin Thundermar##46591
turnin A Coward's Due##28001 |goto Twilight Highlands 49.00,29.80
accept Dragonmaw Takedown##27754 |goto Twilight Highlands 49.00,29.80
accept My Sister, Fanny##28369 |goto Twilight Highlands 49.00,29.80
step
talk Low Shaman Blundy##48010
accept Fight Like a Wildhammer##27752 |goto Twilight Highlands 49.80,29.20
step
talk Fanny Thundermar##48013
turnin My Sister, Fanny##28369 |goto Twilight Highlands 49.80,29.30
accept Never Leave a Dinner Behind##27753 |goto Twilight Highlands 49.80,29.30
step
talk Naveen Tendernose##49591
home Thundermar |goto Twilight Highlands 49.50,30.40
step
talk Doran Talonheart##47154
fpath Thundermar |goto Twilight Highlands 48.50,28.10
stickystart "alekegs"
stickystart "foodstore"
step
kill Dragonmaw Marauder##46310+
collect 8 Dragonmaw Insignia##62332 |q 27754/1 |goto Twilight Highlands 46.20,37.40
step
label "alekegs"
click Thundermar Ale Keg##76191+
|tip They look like wooden barrels on the ground around this area.
collect 10 Wildhammer Keg##62330 |q 27752/1 |goto Twilight Highlands 46.20,37.40
step
label "foodstore"
click Wildhammer Food Stores##206291
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 15 Wildhammer Food Stores##62324 |q 27753/1 |goto Twilight Highlands 46.20,37.40
You can find more around 49.10,37.30
step
talk Colin Thundermar##46591
turnin Dragonmaw Takedown##27754 |goto Twilight Highlands 49.00,29.80
step
talk Low Shaman Blundy##48010
turnin Fight Like a Wildhammer##27752 |goto Twilight Highlands 49.80,29.20
step
talk Fanny Thundermar##48013
turnin Never Leave a Dinner Behind##27753 |goto Twilight Highlands 49.80,29.30
step
talk Low Shaman Blundy##48010
accept A Vision of Twilight##28241 |goto Twilight Highlands 49.80,29.20
step
talk Nivvet Channelock##48174
accept Tempered in Elemental Flame##28211 |goto Twilight Highlands 49.10,29.40
accept Hot Stuff##28212 |goto Twilight Highlands 49.10,29.40
accept Potential Energy##28215 |goto Twilight Highlands 49.10,29.40
step
talk Colin Thundermar##46591
accept Magmalord Falthazar##28216 |goto Twilight Highlands 49.00,29.70
step
clicknpc The Eye of Twilight##39765
|tip It's a purple orb above a spinning metal machine.
turnin A Vision of Twilight##28241 |goto Twilight Highlands 57.90,33.50
accept We All Must Sacrifice##28242 |goto Twilight Highlands 57.90,33.50
stickystart "elementloops"
step
kill 10 Shaman of the Black##46322 |q 28242/1 |goto Twilight Highlands 58.00,32.60
step
label "elementloops"
kill Obsidian Stoneslave##47226+
collect 10 Twisted Elementium Loop##63285 |q 28215/1 |goto Twilight Highlands 58.00,32.60
step
clicknpc The Eye of Twilight##39765
|tip It's a purple orb above a spinning metal machine.
turnin We All Must Sacrifice##28242 |goto Twilight Highlands 57.90,33.50
accept The Eyes Have It##28243 |goto Twilight Highlands 57.90,33.50
step
talk Nivvet Channelock##48174
turnin Potential Energy##28215 |goto Twilight Highlands 49.10,29.40
step
talk Low Shaman Blundy##48010
turnin The Eyes Have It##28243 |goto Twilight Highlands 49.70,29.20
accept Eye Spy##28244 |goto Twilight Highlands 49.70,29.20
step
clicknpc The Eye of Twilight##39765
|tip It's a spinning purple orb in a metal stand.
Watch the cutscene
Peer Into the Eye |q 28244/1 |goto Twilight Highlands 49.80,29.10
step
talk Low Shaman Blundy##48010
turnin Eye Spy##28244 |goto Twilight Highlands 49.70,29.20
stickystart "moltfury"
stickystart "tempspear"
step
kill Magmalord Falthazar##48015
collect Magmalord Falthazar's Head##63286 |q 28216/1 |goto Twilight Highlands 42.50,23.50
step
label "moltfury"
kill Unbound Emberfiend##48016+
collect 5 Molten Fury##63283 |q 28212/1 |goto Twilight Highlands 42.20,24.30
step
label "tempspear"
click Tempered Spear##206952
|tip They look like spears with their points sticking out of the ground around this area.
collect 8 Tempered Spear##63282 |q 28211/1 |goto Twilight Highlands 42.20,24.30
step
talk Colin Thundermar##46591
turnin Magmalord Falthazar##28216 |goto Twilight Highlands 49.00,29.70
step
talk Nivvet Channelock##48174
turnin Tempered in Elemental Flame##28211 |goto Twilight Highlands 49.10,29.40
turnin Hot Stuff##28212 |goto Twilight Highlands 49.10,29.40
accept Tear Them From the Sky!##28280 |goto Twilight Highlands 49.10,29.40
step
use Shoulder-Mounted Drake-Dropper##63393
|tip Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes.
|tip They are flying in the sky around this area.
kill 8 Dragonmaw Black Drake##48197 |q 28280/1 |goto Twilight Highlands 49.20,29.80
step
talk Nivvet Channelock##48174
turnin Tear Them From the Sky!##28280 |goto Twilight Highlands 49.10,29.40
step
talk Colin Thundermar##48173
accept Last Stand at Thundermar##28281 |goto Twilight Highlands 49.00,29.70
step
kill 8 Dragonmaw Skyclaw##48194 |q 28281/1 |goto Twilight Highlands 48.10,30.00
step
talk Colin Thundermar##48173
turnin Last Stand at Thundermar##28281 |goto Twilight Highlands 49.00,29.70
accept Narkrall, The Drake-Tamer##28282 |goto Twilight Highlands 49.00,29.70
step
talk Colin Thundermar##48173
Tell him you're ready to fight him!
kill Narkrall Rakeclaw##48257 |q 28282/1 |goto Twilight Highlands 49.00,29.70
step
talk Colin Thundermar##48173
turnin Narkrall, The Drake-Tamer##28282 |goto Twilight Highlands 49.00,29.70
accept The Kirthaven Summit##28294 |goto Twilight Highlands 49.00,29.70
step
talk Vaughn Blusterbeard##49574
home Kirthaven |goto Twilight Highlands 54.60,18.00
step
talk Lachlan MacGraff##48367
turnin The Kirthaven Summit##28294 |goto Twilight Highlands 54.30,16.70
step
talk Kurdran Wildhammer##48365
accept The Bachelor##28346 |goto Twilight Highlands 54.90,17.20
step
talk Keegan Firebeard##48364
turnin The Bachelor##28346 |goto Twilight Highlands 54.40,16.80
accept Rescue at Glopgut's Hollow##28377 |goto Twilight Highlands 54.40,16.80
step
talk Shaina Talonheart##47155
fpath Kirthaven |goto Twilight Highlands 56.80,15.10
step
talk Colin Thundermar##48472
turnin Rescue at Glopgut's Hollow##28377 |goto Twilight Highlands 38.10,34.50
accept Find Fanny##28378 |goto Twilight Highlands 38.10,34.50
accept Ogre Bashin'##28379 |goto Twilight Highlands 38.10,34.50
stickystart "gloporge"
step
Enter the cave |goto Twilight Highlands 37.60,33.40 < 10 |walk
Rescue Fanny Thundermar |q 28378/1 |goto Twilight Highlands 35.00,31.10
step
label "gloporge"
kill Glopgut Pounder##48474+, Glopgut Hurler##48475+
Slay #10# Glopgut Ogres |q 28379/1 |goto Twilight Highlands 38.70,30.90
step
talk Colin Thundermar##48472
turnin Find Fanny##28378 |goto Twilight Highlands 38.10,34.50
turnin Ogre Bashin'##28379 |goto Twilight Highlands 38.10,34.50
accept The Bachelorette##28407 |goto Twilight Highlands 38.10,34.50
step
talk Fanny Thundermar##48530
turnin The Bachelorette##28407 |goto Twilight Highlands 54.70,17.90
step
talk Russell Brower##48366
accept Words and Music By...##28413 |goto Twilight Highlands 54.60,17.50
step
talk Russell Brower##48366
Tell him you're ready, let's write a song
Create a Song |q 28413/1 |goto Twilight Highlands 54.60,17.50
step
talk Russell Brower##48366
turnin Words and Music By...##28413 |goto Twilight Highlands 54.60,17.50
step
talk Lachlan MacGraff##49374
accept Something Bold##28408 |goto Twilight Highlands 54.30,16.70
accept Something Brewed##28409 |goto Twilight Highlands 54.30,16.70
accept Something Stolen##28410 |goto Twilight Highlands 54.30,16.70
accept Something Stewed##28411 |goto Twilight Highlands 54.30,16.70
stickystart "riboftheworgs"
stickystart "tawnyfeath"
step
kill Highland Elk##46970+, Highland Doe##46971+
collect 8 Fresh Venison##64319 |q 28411/1 |goto Twilight Highlands 53.40,24.50
step
label "riboftheworgs"
kill Highland Worg##46153+
collect 5 Worg Rib##64320 |q 28411/2 |goto Twilight Highlands 53.40,24.50
step
label "tawnyfeath"
kill Tawny Owl##46162+
click Pristine Owl Feather##207158
|tip They look like blue feathers on the ground around this mountainous area.
collect 12 Pristine Owl Feather##64317 |q 28408/1 |goto Twilight Highlands 56.80,21.90
step
talk Hammelhand##48758
Tell him you're here to escort a delivery to Kirthaven
Follow the dwarves
kill Dragonmaw Skirmisher##48799+
Escort the Supply Caravan |q 28409/1 |goto Twilight Highlands 64.40,22.60
step
Find a zeppelin flying north or south along this coast between Dragonmaw Port and The Krazzworks
Fly onto the zeppelin and land on it
Go downstairs on the zeppelin
click Crate of Fine Cloth##207162
|tip They look like yellow metal boxes downstairs in the zeppelin.
collect Fine Dark Cloth##64318 |q 28410/1 |goto Twilight Highlands 75.10,33.80
step
talk Lachlan MacGraff##49374
turnin Something Bold##28408 |goto Twilight Highlands 54.30,16.70
turnin Something Brewed##28409 |goto Twilight Highlands 54.30,16.70
turnin Something Stolen##28410 |goto Twilight Highlands 54.30,16.70
turnin Something Stewed##28411 |goto Twilight Highlands 54.30,16.70
step
talk Grundy MacGraff##48368
accept Wild, Wild, Wildhammer Wedding##28655 |goto Twilight Highlands 54.30,16.80
step
talk Grundy MacGraff##48368
Tell him to let the wedding commence!
Watch the cutscene
kill The Beast Unleashed##49234
Complete the Nuptuals |q 28655/1 |goto Twilight Highlands 54.30,16.80
step
talk Kurdran Wildhammer##49358
turnin Wild, Wild, Wildhammer Wedding##28655 |goto Twilight Highlands 55.30,17.30
step
talk Lachlan MacGraff##49374
accept The Maw of Madness##27374 |goto Twilight Highlands 55.20,17.30
step
talk Earthcaller Torunscar##43901
turnin The Maw of Madness##27374 |goto Twilight Highlands 44.00,10.60
accept Torn Ground##27299 |goto Twilight Highlands 44.00,10.60
step
kill 3 Tentacle of Iso'rath##45394 |q 27299/1 |goto Twilight Highlands 41.80,11.40
step
talk Earthcaller Torunscar##45332
turnin Torn Ground##27299 |goto Twilight Highlands 44.00,10.60
accept Pushing Back##27300 |goto Twilight Highlands 44.00,10.60
step
talk Earthmender Duarn##45391
accept Unbroken##27301 |goto Twilight Highlands 44.00,11.30
step
talk Initiate Goldmine##45432
accept Simple Solutions##27302 |goto Twilight Highlands 44.40,11.60
step
talk Earthcaller Yevaa##45362
turnin Unbroken##27301 |goto Twilight Highlands 44.20,18.10
accept Mercy for the Bound##27303 |goto Twilight Highlands 44.20,18.10
stickystart "fleshheart"
stickystart "burningoil"
step
kill Twilight Captivator##45359+, Twilight Bonebreaker##45334+
Kill #12# Drakgor Cultists |q 27300/1 |goto Twilight Highlands 42.30,17.20
step
label "fleshheart"
kill Bound Fleshburner##45358+
collect 5 Fleshburner Heart##60981 |q 27303/1 |goto Twilight Highlands 42.30,17.20
step
label "burningoil"
click Barrels of Pyreburn Oil##457+
|tip They look like wooden kegs on the ground around this area.
collect 10 Pyreburn Oil##60982 |q 27302/1 |goto Twilight Highlands 42.30,17.20
step
talk Initiate Goldmine##45432
turnin Simple Solutions##27302 |goto Twilight Highlands 44.40,11.60
step
talk Earthcaller Yevaa##45386
turnin Mercy for the Bound##27303 |goto Twilight Highlands 43.80,11.30
step
talk Earthcaller Torunscar##45332
turnin Pushing Back##27300 |goto Twilight Highlands 44.00,10.60
accept The Maw of Iso'rath##27376 |goto Twilight Highlands 44.00,10.60
step
clicknpc Earthen Ring Gryphon##50473
|tip They look like big eagles standing in this spot.
Join the Assault on Iso'rath |q 27376/1 |goto Twilight Highlands 44.50,10.60
step
talk Earthcaller Yevaa##47991
turnin The Maw of Iso'rath##27376 |goto Twilight Highlands 48.40,14.60
accept Devoured##27377 |goto Twilight Highlands 48.40,14.60
step
Fight the oozes that attack
Try to fight as long as you can
Survive Iso'rath's defenses |q 27377/1
Click the Quest Complete box that pops up
turnin Devoured##27377
accept The Worldbreaker##27378
step
Deathwing will attack you and Thrall
Aid Thrall in battling Deathwing |q 27378/1
Click the Quest Complete box that pops up
turnin The Worldbreaker##27378
accept The Terrors of Iso'rath##27379
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Jalara |q 27379/2 |goto Twilight Highlands 49.60,15.80
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Earthmender Duarn |q 27379/3 |goto Twilight Highlands 49.10,13.10
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Hargoth Dimblaze |q 27379/1 |goto Twilight Highlands 47.00,13.10
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Mylra |q 27379/4 |goto Twilight Highlands 47.50,15.60
step
talk Earthcaller Yevaa##48059
turnin The Terrors of Iso'rath##27379 |goto Twilight Highlands 48.70,16.60
accept Nightmare##27380 |goto Twilight Highlands 48.70,16.60
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Brain of Iso'rath##47960
Kill Iso'rath |q 27380/1 |goto Twilight Highlands 48.80,14.90
step
talk Earthcaller Torunscar##45332
turnin Nightmare##27380 |goto Twilight Highlands 44.00,10.60
step
talk Golluck Rockfist##48265
accept Warm Welcome##27485 |goto Twilight Highlands 44.10,10.50
step
Meet with Lirastrasza |q 27485/1 |goto Twilight Highlands 27.60,21.40
|tip You will get captured by a red dragon.
step
talk Calen##45528
turnin Warm Welcome##27485 |goto Twilight Highlands 29.30,25.90
accept Even Dragons Bleed##27504 |goto Twilight Highlands 29.30,25.90
step
talk Velastrasza##45522
turnin Even Dragons Bleed##27504 |goto Twilight Highlands 29.90,31.30
accept Draconic Mending##27505 |goto Twilight Highlands 29.90,31.30
step
talk Baleflame##45562
accept Life from Death##27506 |goto Twilight Highlands 29.80,31.40
step
Protect the Vermillion Menders while they heal Celastrasza to hull health
Defend #5# Vermillion Menders |q 27505/1 |goto Twilight Highlands 29.70,33.10
kill Twilight Wyrmkiller##45748+
use Ruby Seeds##61323
|tip Use your Ruby Seeds on Twilight Wyrmkiller and Vermillion Mender corpses.
Reclaim 6 Dragonkin corpses |q 27506/1 |goto Twilight Highlands 29.70,33.10
step
talk Velastrasza##45522
turnin Draconic Mending##27505 |goto Twilight Highlands 29.90,31.30
step
talk Baleflame##45562
turnin Life from Death##27506 |goto Twilight Highlands 29.80,31.40
step
talk Velastrasza##45522
accept In Defense of the Redoubt##27564 |goto Twilight Highlands 29.90,31.30
step
talk Calen##45528
turnin In Defense of the Redoubt##27564 |goto Twilight Highlands 29.30,25.90
accept Encroaching Twilight##27507 |goto Twilight Highlands 29.30,25.90
accept Breach in the Defenses##27509 |goto Twilight Highlands 29.30,25.90
step
talk Lirastrasza##45518
accept Far from the Nest##27508 |goto Twilight Highlands 29.30,26.00
step
talk Aquinastrasz##47121
fpath Vermillion Redoubt |goto Twilight Highlands 28.60,24.90
stickystart "twilightvaders"
stickystart "vermilegg"
step
Enter the cave |goto Twilight Highlands 18.40,16.70 < 10 |walk
use Flashgrowth Mote##61385
|tip Use your Flashgrowth Mote next to the Twiligt Portal.
|tip It looks like a blue and pink swirled portal in a metal case.
Destroy the Twilight Portal |q 27509/1 |goto Twilight Highlands 18.00,16.90
step
label "twilightvaders"
kill Twilight Abductor##45642+, Twilight Flamequencher##45618+
Kill #12# Twilight Invaders |q 27507/1 |goto Twilight Highlands 20.90,15.70
step
label "vermilegg"
clicknpc Vermillion Egg##45651+
|tip They look like brown spiked eggs on the ground around this area.
collect 6 Vermillion Egg##61317 |q 27508/1 |goto Twilight Highlands 20.90,15.70
step
talk Calen##45528
turnin Encroaching Twilight##27507 |goto Twilight Highlands 29.30,26.00
turnin Breach in the Defenses##27509 |goto Twilight Highlands 29.30,26.00
step
talk Lirastrasza##45518
turnin Far from the Nest##27508 |goto Twilight Highlands 29.30,26.00
step
talk Calen##45528
accept Mathias' Command##28101 |goto Twilight Highlands 29.30,26.00
step
talk Master Mathias Shaw##47592
turnin Mathias' Command##28101 |goto Twilight Highlands 26.00,38.80
accept Easy Pickings##28103 |goto Twilight Highlands 26.00,38.80
accept Precious Goods##28104 |goto Twilight Highlands 26.00,38.80
stickystart "hammergates"
stickystart "twilispearwarder"
step
kill Twilight Spearwarder##47490+
collect Twilight Caravan Cargo Key##62926 |q 28104/1 |goto Twilight Highlands 25.60,37.90
step
label "hammergates"
click Twilight Caravan Chest##206675
|tip They look like boxes with a big purple jewel on top of them, sitting in wagons around this area.
collect Twilight's Hammer Gatestone##62927 |q 28104/2 |goto Twilight Highlands 25.60,37.90
step
label "twilispearwarder"
kill 8 Twilight Spearwarder##47490 |q 28103/1 |goto Twilight Highlands 25.60,37.90
step
talk Master Mathias Shaw##47592
turnin Easy Pickings##28103 |goto Twilight Highlands 26.00,38.80
turnin Precious Goods##28104 |goto Twilight Highlands 26.00,38.80
accept If The Key Fits##28108 |goto Twilight Highlands 26.00,38.80
step
Next to you:
talk Master Mathias Shaw##47611
accept Paving the Way##28107
step
Open the Dragonmaw Gate |q 28108/1 |goto Twilight Highlands 29.50,51.70
step
Next to you:
talk Master Mathias Shaw##47611
turnin If The Key Fits##28108
accept Pressing Forward##28109
step
kill Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
Kill #30# Wyrm's Bend Cultists |q 28107/1 |goto Twilight Highlands 27.50,54.60
step
Next to you:
talk Master Mathias Shaw##47611
turnin Paving the Way##28107
step
Secure the Entrance to Grim Batol |q 28109/1 |goto Twilight Highlands 22.80,56.10
step
talk Calen##47605
turnin Pressing Forward##28109 |goto Twilight Highlands 22.10,56.60
step
talk Alexstrasza the Life-Binder##47603
accept Enter the Dragon Queen##28712 |goto Twilight Highlands 21.80,57.00
step
talk Lirastrasza##49417
turnin Enter the Dragon Queen##28712 |goto Twilight Highlands 14.90,16.30
step
talk Calen##49810
accept Battle of Life and Death##28758 |goto Twilight Highlands 14.10,15.40
step
clicknpc Vermillion Vanguard##51173
|tip It's a red dragon.
Use the abilities on your hotbar on Twilight Shadowdrakes
|tip They are blue dragons that fly around in the air in the area you fly to.
kill 8 Twilight Shadowdrake##49873 |q 28758/1 |goto Twilight Highlands 14.10,15.10
step
talk Calen##47605
turnin Battle of Life and Death##28758 |goto Twilight Highlands 22.10,56.60
accept And the Sky Streaked Red##28171 |goto Twilight Highlands 22.10,56.60
step
talk Lirastrasza##47902
turnin And the Sky Streaked Red##28171 |goto Twilight Highlands 59.10,69.80
accept A Fitting End##28191 |goto Twilight Highlands 59.10,69.80
accept Blackout##28173 |goto Twilight Highlands 59.10,69.80
step
talk Velastrasza##47904
accept Shining Through the Dark##28175 |goto Twilight Highlands 59.00,69.80
stickystart "obvile"
stickystart "pyrewingkills"
step
use Alexstrasza's Tear##63139
|tip Use Alexstrasza's Tear in the small cave beneath this huge tree.
Plant Alexstrasza's Tear |q 28175/1 |goto Twilight Highlands 63.90,78.00
step
label "obvile"
kill Obsidian Viletongue##47796+, Obsidian Charscale##47797+
Kill #10# Obsidian Dragonkin |q 28191/1 |goto Twilight Highlands 62.70,76.20
step
label "pyrewingkills"
use Wyrmhunter Hooks##63092
|tip Use your Wyrmhunter Hooks on Obsidian Pyrewings.
|tip They are red dragons that fly in the sky around this area. You will get a message on your screen when the Obsidian Pyrewing is almost dead. When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it. If you fall, it can hurt you a lot.
kill 8 Obsidian Pyrewing##46141 |q 28173/1 |goto Twilight Highlands 62.70,76.20
step
talk Lirastrasza##47902
turnin A Fitting End##28191 |goto Twilight Highlands 59.10,69.80
turnin Blackout##28173 |goto Twilight Highlands 59.10,69.80
step
talk Velastrasza##47904
turnin Shining Through the Dark##28175 |goto Twilight Highlands 59.00,69.80
step
talk Lirastrasza##47902
accept Following the Young Home##28176 |goto Twilight Highlands 59.10,69.80
step
use Mother's Flame##63126
|tip Use your Mother's Flame next to the big blue spikes eggs.
Hatch the Obsidian Whelps |q 28176/1 |goto Twilight Highlands 59.30,82.50
step
Enter the cave |goto Twilight Highlands 55.40,83.50 < 10 |walk
Infiltrate the Obsidian Lair |q 28176/2 |goto Twilight Highlands 49.80,85.80
step
talk Baleflame##47905
turnin Following the Young Home##28176 |goto Twilight Highlands 44.90,91.00
accept Last of Her Kind##28247 |goto Twilight Highlands 44.90,91.00
step
kill Obsidia##47929
Defeat Obsidia |q 28247/1 |goto Twilight Highlands 44.90,91.00
step
talk Lirastrasza##47902
turnin Last of Her Kind##28247 |goto Twilight Highlands 59.10,69.80
accept Victors' Point##28248 |goto Twilight Highlands 59.10,69.80
step
talk Kurdran Wildhammer##45668
turnin Victors' Point##28248 |goto Twilight Highlands 43.40,57.40
accept Ogres & Ettins##27492 |goto Twilight Highlands 43.40,57.40
step
talk Cassius the White##45669
accept Call in the Artillery##27496 |goto Twilight Highlands 43.40,57.30
accept SI:7 Drop##27490 |goto Twilight Highlands 43.40,57.30
step
talk Ben Mora##49599
home Victor's Point |goto Twilight Highlands 43.60,57.20
step
talk Desmond Chadsworth##47118
fpath Victor's Point |goto Twilight Highlands 43.90,57.30
step
talk Angus Stillmountain##45904
Tell him you're here to lead the Wildhammer squad and drop off the SI:7 agents
Get Your Wildhammer Squad |q 27490/1 |goto Twilight Highlands 43.80,57.20
stickystart "bloodettin"
step
Drop off the SI:7 |q 27490/2 |goto Twilight Highlands 39.20,64.50
|tip Land on the flashing blue X on the ground.
step
use Artillery Flare##61363
Target the Northern Building |q 27496/1 |goto Twilight Highlands 38.80,64.30
step
use Artillery Flare##61363
Target the Northeastern Building |q 27496/2 |goto Twilight Highlands 40.00,64.40
step
use Artillery Flare##61363
Target the Southwestern Building |q 27496/3 |goto Twilight Highlands 40.40,69.20
step
use Artillery Flare##61363
Target the Southern Building |q 27496/4 |goto Twilight Highlands 41.40,71.20
step
label "bloodettin"
kill Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
Kill #10# Bloodeye Clan Ogres & Ettins |q 27492/1 |goto Twilight Highlands 41.10,69.80
step
talk Cassius the White##45669
turnin Call in the Artillery##27496 |goto Twilight Highlands 43.40,57.30
turnin SI:7 Drop##27490 |goto Twilight Highlands 43.40,57.30
step
talk Kurdran Wildhammer##45668
turnin Ogres & Ettins##27492 |goto Twilight Highlands 43.40,57.40
accept Move the Mountain##27494 |goto Twilight Highlands 43.40,57.40
step
click Hidden Explosives##205590
|tip It looks like a wooden crate sitting up on this hill.
Detonate the Hidden Explosives |q 27494/1 |goto Twilight Highlands 38.10,66.20
step
Click the _Quest Complete_ Box:
turnin Move the Mountain##27494
accept Signal the Attack##27498
step
use Attack Signal##61511
|tip Use your Attack Signal at the top of the tower.
Signal the Attack |q 27498/1 |goto Twilight Highlands 40.50,62.30
step
Click the _Quest Complete_ Box:
turnin Signal the Attack##27498
accept Four Heads are Better than None##27500
step
Enter the cave |goto Twilight Highlands 39.80,71.30 < 10 |walk
kill Za'brox##46017
collect Za's Head##61924 |q 27500/1 |goto Twilight Highlands 37.60,71.30
collect Brox's Head##61925 |q 27500/4 |goto Twilight Highlands 37.60,71.30
step
kill Beeble'phod##46018
collect Phod's Head##61927 |q 27500/2 |goto Twilight Highlands 38.70,70.20
collect Beeble's Head##61926 |q 27500/3 |goto Twilight Highlands 38.70,70.20
step
talk Cassius the White##45669
turnin Four Heads are Better than None##27500 |goto Twilight Highlands 43.40,57.30
accept Up to the Citadel##27502 |goto Twilight Highlands 43.40,57.30
step
talk SI:7 Squad Commander##46076
Tell him you're ready
Speak to the Squad Commander |q 27502/1 |goto Twilight Highlands 38.90,64.00
step
Follow the SI:7 Squad Commander and the SI:7 Agents up the path
Escort the SI:7 |q 27502/2
step
Click the _Quest Complete_ Box:
turnin Up to the Citadel##27502
accept Just You and Mathias##27636
step
talk Master Mathias Shaw##45796
turnin Just You and Mathias##27636 |goto Twilight Highlands 36.40,66.00
accept Dark Assassins##27652 |goto Twilight Highlands 36.40,66.00
accept Bring the Hammer Down##27654 |goto Twilight Highlands 36.40,66.00
accept Help from the Earthcaller##27657 |goto Twilight Highlands 36.40,66.00
step
talk Earthcaller Yevaa##46242
turnin Help from the Earthcaller##27657 |goto Twilight Highlands 37.50,88.70
accept Portal Overload##27659 |goto Twilight Highlands 37.50,88.70
accept Spirit of the Loch##27660 |goto Twilight Highlands 37.50,88.70
step
talk Initiate Goldmine##46243
accept Unbinding##27662 |goto Twilight Highlands 37.60,88.70
step
Click the Air Portal Controller##9849
|tip It looks like metal canister sitting on the ground up on this floating island.
kill Debilitated Aetharon##46270 |q 27659/2 |goto Twilight Highlands 44.10,81.40
step
click Earth Portal Controller##206018
|tip It looks like metal canister sitting on the ground.
kill Debilitated Apexar##46273 |q 27659/1 |goto Twilight Highlands 38.00,80.20
step
click Water Portal Controller##206017
|tip It looks like metal canister sitting on the ground.
kill Debilitated Edemantus##46272 |q 27659/3 |goto Twilight Highlands 33.20,62.40
step
talk Countess Verrall##46413
turnin Spirit of the Loch##27660 |goto Twilight Highlands 27.60,63.90
accept Fire the Cannon##27661 |goto Twilight Highlands 27.60,63.90
step
kill Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
Kill #10# Twilight Citadel Cultists |q 27654/1 |goto Twilight Highlands 35.20,67.40
step
kill Dark Assassin##46202+
|tip They look like black shades that wander around this whole area. They are much less common than the other enemies, so you will probably have to fly around this whole area and look for them.
collect 5 Dark Assassin's Pendant##62033 |q 27652/1
step
kill Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
Free #10# Enslaved Elementals |q 27662/1
step
kill Lord Cannon##46785 |q 27661/1 |goto Twilight Highlands 40.80,79.00
step
talk Initiate Goldmine##46243
turnin Unbinding##27662 |goto Twilight Highlands 37.60,88.70
step
talk Earthcaller Yevaa##46242
turnin Portal Overload##27659 |goto Twilight Highlands 37.50,88.70
step
talk Master Mathias Shaw##45796
turnin Dark Assassins##27652 |goto Twilight Highlands 36.40,66.00
turnin Bring the Hammer Down##27654 |goto Twilight Highlands 36.40,66.00
accept Distract Them for Me##27688 |goto Twilight Highlands 36.40,66.00
accept The Elementium Axe##27695 |goto Twilight Highlands 36.40,66.00
step
talk Countess Verrall##46413
turnin Fire the Cannon##27661 |goto Twilight Highlands 27.60,63.90
accept Water of Life##27719 |goto Twilight Highlands 27.60,63.90
step
use Water of Life##62503
|tip Use your Water of Life next to the Corpse of Forgemaster Finlay.
|tip He's chained to an ancor, drowned underwater.
Extract Artifact Information |q 27719/1 |goto Twilight Highlands 35.10,61.10
step
talk Master Mathias Shaw##45796
turnin Water of Life##27719 |goto Twilight Highlands 36.40,66.00
step
kill Master Klem##46342 |q 27688/2 |goto Twilight Highlands 36.10,70.70
|tip Mathias Shaw will come and kill him for you after you've fought him for a little bit.
step
kill Blindeye the Guardian##46399
collect The Elementium Axe##62230 |q 27695/1 |goto Twilight Highlands 40.20,84.00
step
kill Mia the Rose##46343 |q 27688/3 |goto Twilight Highlands 42.30,83.50
|tip She's in a small room at the top of this big building. Mathias Shaw will come and kill her for you after you've fought her for a little bit.
step
kill Dame Alys Finnsson##46341 |q 27688/1 |goto Twilight Highlands 43.40,88.50
|tip Mathias Shaw will come and kill her for you after you've fought her for a little bit.
step
talk Master Mathias Shaw##45796
turnin Distract Them for Me##27688 |goto Twilight Highlands 36.40,66.00
turnin The Elementium Axe##27695 |goto Twilight Highlands 36.40,66.00
accept Dragon, Unchained##27700 |goto Twilight Highlands 36.40,66.00
step
use The Elementium Axe##62248
Free Lirastrasza |q 27700/1 |goto Twilight Highlands 32.40,68.70
step
talk Master Mathias Shaw##45796
turnin Dragon, Unchained##27700 |goto Twilight Highlands 36.40,66.00
accept Coup de Grace##27702 |goto Twilight Highlands 36.40,66.00
step
kill Twilight Skyterror##46416+
|tip They look like blue dragons laying on the ground all around this area. You will need to fly around and search for them, as there aren't many of them at one time. Watch Lirastrasza in the sky and you will see the blue dragons fall, so you can immediately fly to them to make it easier.
Deliver #5# Coup de Graces |q 27702/1 |goto Twilight Highlands 37.50,75.40
step
talk Master Mathias Shaw##45796
turnin Coup de Grace##27702 |goto Twilight Highlands 36.40,66.00
accept Back to the Elementium Depths##27711 |goto Twilight Highlands 36.40,66.00
step
talk Initiate Goldmine##46243
turnin Back to the Elementium Depths##27711 |goto Twilight Highlands 37.50,88.70
accept Mr. Goldmine's Wild Ride##27720 |goto Twilight Highlands 37.50,88.70
step
talk Initiate Goldmine##46243
Tell him you're ready for that wild ride
Ride the Mine Cart |q 27720/2 |goto Twilight Highlands 37.50,88.70
step
Next to you:
talk Initiate Goldmine##46513
turnin Mr. Goldmine's Wild Ride##27720
accept A Little on the Side##27742
accept While We're Here##27743
stickystart "elemcultist"
stickystart "elementshard"
step
clicknpc Twilight Rune of Earth##46671
|tip It looks like a pink symbol on the ground.
accept Rune Ruination##27744 |goto Twilight Highlands 37.40,93.20
step
click Twilight Rune of Water##206314
|tip It looks like a pink symbol on the ground.
Destroy the Rune of Water |q 27744/2 |goto Twilight Highlands 35.20,90.40
step
click Twilight Rune of Air##206312
|tip It looks like a pink symbol on the ground.
Destroy the Rune of Air |q 27744/3 |goto Twilight Highlands 33.50,88.40
step
click Twilight Rune of Fire##206313
|tip It looks like a pink symbol on the ground.
Destroy the Rune of Fire |q 27744/4 |goto Twilight Highlands 34.30,86.60
step
label "elemcultist"
kill Twilight Miner##46610+, Depths Overseer##46579+
Kill #12# Elementium Depths Cultists |q 27743/1
step
label "elementshard"
click Elementium Shard##206299
|tip They look like small piles of flat rocks on the ground inside this cave.
collect 6 Elementium Shard##62331 |q 27742/1 |goto Twilight Highlands 34.50,86.30
step
Next to you:
talk Initiate Goldmine##46513
turnin A Little on the Side##27742
turnin While We're Here##27743
turnin Rune Ruination##27744
accept A Fiery Reunion##27745
step
kill Magmatooth##46611
collect Fire Portal Controller##62394 |q 27745/2 |goto Twilight Highlands 36.40,83.80
step
Use your Fire Portal Controller |use Fire Portal Controller##62394
Use the Fire Portal Controller at the Fire Portal |q 27745/1 |goto Twilight Highlands 36.40,83.80
step
talk Initiate Goldmine##46243
turnin A Fiery Reunion##27745 |goto Twilight Highlands 37.50,88.70
accept Mathias Needs You##27782 |goto Twilight Highlands 37.50,88.70
step
talk Master Mathias Shaw##45796
turnin Mathias Needs You##27782 |goto Twilight Highlands 36.40,66.00
accept The Hammer of Twilight##27784 |goto Twilight Highlands 36.40,66.00
step
Click The Hammer of Twilight
|tip It's a huge hammer floating in a beam of blue light on this high platform.
turnin The Hammer of Twilight##27784 |goto Twilight Highlands 45.40,88.00
accept Skullcrusher the Mountain##27787 |goto Twilight Highlands 45.40,88.00
Watch the cutscene
Survive Skullcrusher's Backhand |q 27787/1
step
kill Skullcrusher the Mountain |q 27787/2 |goto Twilight Highlands 45.40,87.90
|tip Follow the instructions that pop up on your screen.  Click the altars surrounding the fight, you will gain buffs from them to help you fight.  The altars are stone blocks with candles on them.  Click Warlord Zaela when she becomes unconscious.  You will see a green arrow bouncing above her when you need to click her.  Eventually, she will fall to the ground near the end of the fight.  Click her body to play the drums she drops to call reinforcements to help finish the fight.
step
talk Kurdran Wildhammer##45668
turnin Skullcrusher the Mountain##27787 |goto Twilight Highlands 43.40,57.40
step
Earn the King of the Mountain achievement! |achieve 5320
step
Congratulations! You've earned the King of the Mountain achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Cataclysm\\Round Three, Fight!",{
expansion="mists",
achieveid={4960},
patch='40003',
description="Complete the Crucible of Carnage quests in Twilight Highlands up to and including the Twilight Terror!.",
mopready=true,
},[[
step
You will need a group for these quests
confirm
step
talk Gurgthock##46935
You will only be able to accept one of these quests
accept The Crucible of Carnage: The Bloodeye Bruiser!##27863 |goto Twilight Highlands 50.70,58.30 |or
accept The Crucible of Carnage: The Bloodeye Bruiser!##27861 |goto Twilight Highlands 50.70,58.30 |or
accept The Crucible of Carnage: The Bloodeye Bruiser!##27862 |goto Twilight Highlands 50.70,58.30 |or
step
kill Hurp'derp##46944
Defeat Hurp'derp |q 27863/1 |goto Twilight Highlands 51.40,57.80 |only if haveq(27863) or completedq(27863)
Defeat Hurp'derp |q 27861/1 |goto Twilight Highlands 51.40,57.80 |only if haveq(27861) or completedq(27861)
Defeat Hurp'derp |q 27862/1 |goto Twilight Highlands 51.40,57.80 |only if haveq(27862) or completedq(27862)
step
Click the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27863 |only if haveq(27863) or completedq(27863)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27861 |only if haveq(27861) or completedq(27861)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27862 |only if haveq(27862) or completedq(27862)
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Wayward Wildhammer!##27865 |goto Twilight Highlands 50.70,58.30
step
kill Sully Kneecapper##46946
Defeat Sully Kneecapper |q 27865/1 |goto Twilight Highlands 51.40,57.80
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: The Wayward Wildhammer!##27865
step
talk Gurgthock##46935
accept The Crucible of Carnage: Calder's Creation!##27866 |goto Twilight Highlands 50.70,58.30
step
kill Cadaver Collage##46947
Defeat Cadaver Collage |q 27866/1 |goto Twilight Highlands 51.40,57.80
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: Calder's Creation!##27866
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Earl of Evisceration!##27867 |goto Twilight Highlands 50.70,58.30
step
kill Lord Geoffery Tulvan##46948
Defeat Lord Geoffery Tulvan |q 27867/1 |goto Twilight Highlands 51.40,57.80
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: The Earl of Evisceration!##27867
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Twilight Terror!##27868 |goto Twilight Highlands 50.70,58.30
step
kill Emberscar the Devourer##46949
Defeat Emberscar the Devourer |q 27868/1 |goto Twilight Highlands 51.40,57.80
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: The Twilight Terror!##27868
Earn the Round Three. Fight! achievement! |achieve 4960
step
Congratulations, you have obtained the _Round Three, Fight!_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Cataclysm\\Wildhammer Tour of Duty",{
expansion="mists",
achieveid={5481},
patch='40003',
description="Explore all the nooks and crannies of the Thundermar Ruins in Twilight Highlands and impress your Wildhammer allies by killing a few enemies.",
mopready=true,
},[[
step
_Kill_ Warlord Halthar |achieve 5481/2 |goto Twilight Highlands 49.20,36.40
step
_Kill_ Karkrog the Exterminator |achieve 5481/3 |goto Twilight Highlands 51.60,33.00
step
_Go in_ the cellar and _kill_ Black Recluse |achieve 5481/1 |goto Twilight Highlands 45.80,31.60
step
_Kill_ Korthalon |achieve 5481/4 |goto Twilight Highlands 52.00,27.60
step
Congratulations, you have _earned_ the _Wildhammer Tour of Duty_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\5 Dungeon Quests Complete",{
expansion="mists",
achieveid={4956},
patch='40003',
description="Complete 5 dungeon quests.",
mopready=true,
},[[
step
Enter the swirling portal |goto The Deadmines 38.30,77.50
Click here to proceed |confirm
step
talk Lieutenant Horatio Laine##46612
accept The Foreman##27756 |goto The Deadmines 30.20,28.60
step
Follow the path to this spot |goto The Deadmines,30.00,46.70 < 10
kill Glubtok |q 27756/1 |goto The Deadmines 34.70,61.90
turnin The Foreman##27756
step
Open the heavy door here |goto The Deadmines,43.80,78.80 < 10
Click the _Quest Accept_ Box:
accept The Carpenter##27758 |goto The Deadmines 43.70,82.70
step
kill Helix Gearbreaker |q 27758/1 |goto The Deadmines 49.70,90.20
turnin The Carpenter##27758
step
Follow the path through the Deadmines |goto The Deadmines,65.30,87.50 < 10
Click the _Quest Accept_ Box:
accept The Machination##27781 |goto The Deadmines 61.00,71.80
|tip It will come up in a Quest Discovered! box.
step
Follow ramp down and kill the Defias Reapers at the bottom
kill Foe Reaper 5000 |q 27781/1 |goto The Deadmines 8.70,88.30
turnin The Machination##27781
step
Click the cannon to open the door |goto The Deadmines,12.60,68.90 < 5
accept The Admiral##27785 |goto The Deadmines 35.60,48.50
step
Follow the path across to the ship bridge
Click to proceed |confirm
step
Follow the path up to the boat and follow it to the right
Go up to the top of the ship
Click to proceed |confirm
step
kill Admiral Ripsnarl |q 27785/1
turnin The Admiral##27785
accept The Defias Kingpin##27790
step
kill "Captain" Cookie##47739 |q 27790/1 |goto The Deadmines 60.50,45.20
step
Wait for Lieutenant Horatio Laine to come up to the deck.
talk Lieutenant Horatio Laine##46612
turnin The Defias Kingpin##27790
step
Earn the 5 Dungeon Quests Completed! Achievement |achieve 4956
step
Congratulations, you have earn the 5 Dungeon Quests Completed! Achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\20 Dungeon Quests Completed",{
expansion="mists",
achieveid={4957},
patch='40003',
startlevel=1,
keywords={"Dungeon","Quests","Completed"},
description="This guide will walk you through completing the \"20 Dungeon Quests Completed\" Achievement.",
mopready=true,
},[[
step
To earn this achievement, complete quests that correspond with a dungeon
Generally, there will be quests at the start of a dungeon
Use our dungeon guides to accomplish this
|tip Note that characters who have completed dungeon quests previous to this achievement being implemented may be bugged.
|tip It is advised to use a new character if you end up experiencing the bug.
Earn the _20 Dungeon Quests Completed_ achievement |achieve 4957
step
_Congratulations!_
You have earned the _20 Dungeon Quests Completed_ achievement
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\A Simple Re-Quest",{
expansion="mists",
achieveid={31},
patch='30001',
description="Complete a daily quest every day for five consecutive days.",
mopready=true,
},[[
step
To earn this achievement, you must complete a daily quests every day for five consecutive days.
The easiest achievement to do for this achievement is Overstock in the Storm Peaks
|tip For this quest, you must be at least level 25.
confirm
step
talk Ricket##29428
accept Overstock##12833 |goto The Storm Peaks 40.90,85.30
step
use Improved Land Mines##4067
|tip Use your Improved Land Mines to place mines on the ground close to each other.
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
Kill #12# Garm InvaderS |q 12833/1 |goto The Storm Peaks 43.10,81.20
step
talk Ricket##29428
turnin Overstock##12833 |goto The Storm Peaks 40.90,85.30
step
Complete a daily quest every day for 5 consecutive days |achieve 31
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Of Blood and Anguish",{
expansion="mists",
achieveid={1576},
patch='30002',
description="Complete the Ring of Blood and Amphitheater of Anguish.",
endlevel=15,
mopready=true,
},[[
step
ding 15
step
talk Gurgthock##18471 |goto Nagrand 42.80,20.70
accept The Ring of Blood: Brokentoe##9962
step
kill Brokentoe##18398 |q 9962/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.80,20.70
step
kill Murkblood Twin##18399+ |q 9967/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.80,20.70
step
kill Rokdar the Sundered Lord##18400 |q 9970/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.80,20.70
step
kill Skra'gath##18401 |q 9972/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.80,20.70
step
kill Warmaul Champion##18402 |q 9973/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.80,20.70
step
kill Mogor##18069 |q 9977/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.80,20.70
step
ding 20
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.40,56.40
step
kill Yggdras##30014 |q 12954/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.40,56.40
step
kill Stinkbeard##30017 |q 12933/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.40,56.40
step
kill Az'Barin Prince of the Gust##30026, Duke Singen##30019, Erathius King of Dirt##30025, Gargoral the Water Lord##30024
_Defeat_ an Elemental Lord |q 12934/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.40,56.40
step
kill Orinoko Tuskbreaker##30020 |q 12935/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.40,56.40
step
kill Korrak the Bloodrager##30023 |q 12936/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Champion of Anguish##12948 |goto Zul'Drak 48.40,56.40
step
kill Vladof the Butcher##30022 |q 12948/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Champion of Anguish##12948 |goto Zul'Drak 48.50,56.40
achieve 1576
step
Congratulations, you have _earned_ the _Of Blood And Anguish_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Daily Quests Completed",{
expansion="mists",
condition_end=function() return achieved(5751) end,
achieveid={973,974,975,976,977,5751,7410,7411,5751},
patch='40100',
description="This guide will walk you through completing 5, 50, 200, 500, 1000, 2500, 5000, 10000 Daily Quests.",
mopready=true,
},[[
step
In order to complete these achievements, you simply have to complete daily quests. You can work through QuestCore Dailies guides to obtain all of these achievements
Regular and Repeatable quests will not count towards these achievements
confirm
step
Complete 5 Daily Quests |achieve 973
Congratulations, you have earned the 5 Daily Quests Complete achievement! |only if achieved(973)
step
Complete 50 Daily Quests |achieve 974
Congratulations, you have earned the 50 Daily Quests Complete achievement! |only if achieved(974)
step
Complete 200 Daily Quests |achieve 975
Congratulations, you have earned the 200 Daily Quests Complete achievement! |only if achieved(975)
step
Complete 500 Daily Quests |achieve 976
Congratulations, you have earned the 500 Daily Quests Complete achievement! |only if achieved(976)
step
Complete 1000 Daily Quests |achieve 977
Congratulations, you have earned the 1000 Daily Quests Complete achievement! |only if achieved(977)
step
Complete 2500 Daily Quests |achieve 5751
Congratulations, you have earned the 2500 Daily Quests Complete achievement! |only if achieved(5751)
step
Complete 5000 Daily Quests |achieve 7410
Congratulations, you have earned the 5000 Daily Quests Complete achievement! |only if achieved(7410)
step
Complete 10000 Daily Quests |achieve 7411
Congratulations, you have earned the 10000 Daily Quests Complete achievement! |only if achieved(7411)
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The First Rule of Ring of Blood is You Don't Talk About Ring of Blood",{
expansion="mists",
condition_end=function() return achieved(4958) end,
achieveid={4960,4958},
patch='40003',
keywords={"round","three.","fight!"},
description="Complete the Ring of Blood, Amphitheater of Anguish and Crucible of Carnage.",
endlevel=15,
mopready=true,
},[[
step
ding 15
step
talk Gurgthock##18471 |goto Nagrand 42.80,20.70
accept The Ring of Blood: Brokentoe##9962
step
kill Brokentoe##18398 |q 9962/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.80,20.70
step
kill Murkblood Twin##18399+ |q 9967/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.80,20.70
step
kill Rokdar the Sundered Lord##18400 |q 9970/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.80,20.70
step
kill Skra'gath##18401 |q 9972/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.80,20.70
step
kill Warmaul Champion##18402 |q 9973/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.80,20.70
step
talk Gurgthock##18471
accept The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.80,20.70
step
kill Mogor##18069 |q 9977/1 |goto Nagrand 43.60,20.40
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.80,20.70
step
ding 20
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.40,56.40
step
kill Yggdras##30014 |q 12954/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.40,56.40
step
kill Stinkbeard##30017 |q 12933/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.40,56.40
step
kill Az'Barin Prince of the Gust##30026, Duke Singen##30019, Erathius King of Dirt##30025, Gargoral the Water Lord##30024
_Defeat_ an Elemental Lord |q 12934/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.40,56.40
step
kill Orinoko Tuskbreaker##30020 |q 12935/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.40,56.40
step
kill Korrak the Bloodrager##30023 |q 12936/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.50,56.40
step
talk Gurgthock##30007
accept The Champion of Anguish##12948 |goto Zul'Drak 48.40,56.40
step
kill Vladof the Butcher##30022 |q 12948/1 |goto Zul'Drak 47.90,56.90
step
talk Wodin the Troll-Servant##30009
turnin The Champion of Anguish##12948 |goto Zul'Drak 48.50,56.40
step
ding 30
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Bloodeye Bruiser!##27863 |goto Twilight Highlands 50.70,58.30 |or
accept The Crucible of Carnage: The Bloodeye Bruiser!##27861 |goto Twilight Highlands 50.70,58.30 |or
accept The Crucible of Carnage: The Bloodeye Bruiser!##27862 |goto Twilight Highlands 50.70,58.30 |or
step
kill Hurp'derp##46944 |q 27863/1 |only if haveq(27863) or completedq(27863) |goto Twilight Highlands 51.40,57.80
kill Hurp'derp##46944 |q 27863/1 |only if haveq(27861) or completedq(27861) |goto Twilight Highlands 51.40,57.80
kill Hurp'derp##46944 |q 27863/1 |only if haveq(27862) or completedq(27862) |goto Twilight Highlands 51.40,57.80
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27863 |only if haveq(27863) or completedq(27863)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27861 |only if haveq(27861) or completedq(27861)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27862 |only if haveq(27862) or completedq(27862)
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Deadly Dragonmaw!##27864 |goto Twilight Highlands 50.70,58.30
step
kill Torg Drakeflayer##46945 |q 27864/1 |goto Twilight Highlands 51.40,57.80
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Deadly Dragonmaw!##27864 |goto Twilight Highlands 50.70,58.30
step
talk Gurgthock##46935
accept The Crucible of Carnage: Calder's Creation!##27866 |goto Twilight Highlands 50.70,58.30
step
kill Cadaver Collage##46947 |q 27866/1 |goto Twilight Highlands 51.40,57.80
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: Calder's Creation!##27866
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Earl of Evisceration!##27867 |goto Twilight Highlands 50.70,58.30
step
kill Lord Geoffery Tulvan##46948 |q 27867/1 |goto Twilight Highlands 51.40,57.80
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Earl of Evisceration!##27867
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Twilight Terror!##27868 |goto Twilight Highlands 50.70,58.30
step
kill Emberscar the Devourer##46949 |q 27868/1 |goto Twilight Highlands 51.40,57.80
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Twilight Terror!##27868
step
Congratulations, you have _earned_ the _Round Three. Fight!_ achievement! |only if achieved(4960)
Congratulations, you have _earned_ the _The First Rule of Ring of Blood is You Don't Talk About Ring of Blood_ achievement! |only if achieved(4958)
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Hemet Nesingwary: The Collected Quests",{
expansion="mists",
condition_end=function() return achieved(941) end,
achieveid={940,939,938,941},
patch='30001',
keywords={"Green","hills","stranglethorn","like","white","elekk","snows","northrend","of"},
description="Complete the Green Hills of Stranglethorn, Hills Like White Elekk and Snows of Northrend achievements.",
mopready=true,
},[[
step
Redirecting to The Green Hills of Stranglethorn |next "TheGreenHills" |only if not completedq(208)
Redirecting to Hills Like White Elekks |next "WhiteElekks" |only if not completedq(9852)
Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
Redirecting to end of guide |next "end" |only if default
step
label "TheGreenHills"
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto Northern Stranglethorn 44.30,22.10
step
talk Hemet Nesingwary Jr.##715
turnin Welcome to the Jungle##583 |goto Northern Stranglethorn 44.00,23.30
accept Raptor Hunting##194 |goto Northern Stranglethorn 44.00,23.30
step
talk Sir S. J. Erlgadin##718
accept Panther Hunting##190 |goto Northern Stranglethorn 43.70,22.30
step
talk Barnil Stonepot##716
accept The Green Hills of Stranglethorn##26269 |goto Northern Stranglethorn 44.20,22.10
step
talk Ajeck Rouack##717
accept Tiger Hunting##185 |goto Northern Stranglethorn 44.50,22.70
step
kill River Crocolisk##1150+
collect Green Hills of Stranglethorn - Page 14##57990 |q 26269/1 |goto Northern Stranglethorn 45.20,20.80
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##26269 |goto Northern Stranglethorn 44.20,22.10
step
kill 10 Young Stranglethorn Tiger##681 |q 185/1 |goto Northern Stranglethorn 42.30,24.20
You can find more Young Stranglethorn Tigers to kill here [Northern Stranglethorn 38.70,20.30]
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tiger Hunting##185
accept Tiger Stalking##186
step
kill 10 Young Panther##683 |q 190/1 |goto Northern Stranglethorn 52.00,23.80
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Panther Hunting##190
accept Panther Stalking##191
step
kill 10 Stranglethorn Tiger##682 |q 186/1 |goto Northern Stranglethorn 61.30,27.00
You can find more Stranglethorn Tigers around [Northern Stranglethorn 56.50,28.70]
step
Click the _Quest Complete_ Box:
turnin Tiger Stalking##186
accept Tiger Prowess##187
step
kill 5 Elder Stranglethorn Tiger##1085 |q 187/1 |goto Northern Stranglethorn 38.10,30.10
step
Click the _Quest Complete_ Box:
turnin Tiger Prowess##187
accept Tiger Mastery##188
step
kill Sin'Dall##729
collect Paw of Sin'Dall##3879 |q 188/1 |goto Northern Stranglethorn 38.50,32.50
stickystart "stranglerap"
step
kill 10 Panther##736 |q 191/1 |goto Northern Stranglethorn 33.80,28.20
step
Click the _Quest Complete_ Box:
turnin Panther Stalking##191
accept Panther Prowess##192
step
label "stranglerap"
kill 10 Stranglethorn Raptor##685 |q 194/1 |goto Northern Stranglethorn 31.70,28.00
step
Click the _Quest Complete_ Box:
turnin Raptor Hunting##194
accept Raptor Stalking##195
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto Northern Stranglethorn 44.50,22.70
step
kill 10 Lashtail Raptor##686 |q 195/1 |goto Northern Stranglethorn 45.80,43.10
You can find more Lashtail Raptors around [Northern Stranglethorn 39.30,43.90]
step
Click the _Quest Complete_ Box:
turnin Raptor Stalking##195
accept Raptor Prowess##196
step
kill 10 Jungle Stalker##687 |q 196/1 |goto Northern Stranglethorn 54.30,47.20
step
Click the _Quest Complete_ Box:
turnin Raptor Prowess##196
accept Raptor Mastery##197
step
kill 5 Shadowmaw Panther##684 |q 192/1 |goto Northern Stranglethorn 61.90,49.00
|tip They are stealthed, so keep an eye out for them.
step
Click the _Quest Complete_ Box:
turnin Panther Prowess##192
accept Panther Mastery##193
step
kill Bhag'thera##728
collect Fang of Bhag'thera##3876 |q 193/1 |goto Northern Stranglethorn 66.00,43.40
step
kill Tethis##730
collect Talon of Tethis##3877 |q 197/1 |goto Northern Stranglethorn 62.50,61.30
step
Follow this road |goto Northern Stranglethorn 48.40,41.90 < 15
talk Hemet Nesingwary Jr.##715
turnin Raptor Mastery##197 |goto Northern Stranglethorn 44.00,23.30
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto Northern Stranglethorn 43.70,22.30
step
talk Hemet Nesingwary Jr.##715
accept Big Game Hunter##208 |goto Northern Stranglethorn 44.20,23.00
step
kill King Bangalash##731
|tip He's a white tiger that walks around on this big hill.
collect Head of Bangalash##3880 |q 208/1 |goto Northern Stranglethorn 47.80,59.00
step
talk Hemet Nesingwary Jr.##715
turnin Big Game Hunter##208 |goto Northern Stranglethorn 44.00,23.30
step
Congratulations, you have earned the The Green Hills of Stranglethorn achievement! |achieve 940
step
Redirecting to Hills Like White Elekks |next "WhiteElekks" |only if not completedq(9852)
Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
Redirecting to end of guide |next "end" |only if default
step
label "WhiteElekks"
talk Shado 'Fitz' Farstrider##18200
accept Windroc Mastery##9854 |goto Nagrand 71.60,40.50
step
talk Hemet Nesingwary##18180
accept Clefthoof Mastery##9789 |goto Nagrand 71.60,40.50
step
talk Harold Lane##18218
accept Talbuk Mastery##9857 |goto Nagrand 71.60,40.50
stickystart "clefthoof"
stickystart "windroc"
step
kill 12 Talbuk Stag##17130 |q 9857/1 |goto Nagrand 72.20,38.40
You can find more Talbuk Stags around this area [Nagrand 70.80,46.40]
step
label "windroc"
kill 12 Windroc##17128 |q 9854/1 |goto Nagrand 66.50,39.50
step
label "clefthoof"
kill 12 Clefthoof##18205 |q 9789/1 |goto Nagrand 64,45.10
You can find more Clefthoofs around this area [Nagrand 70.80,46.40]
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9854 |goto Nagrand 71.60,40.50
accept Windroc Mastery##9855 |goto Nagrand 71.60,40.50
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9789 |goto Nagrand 71.60,40.50
accept Clefthoof Mastery##9850 |goto Nagrand 71.60,40.50
step
talk Harold Lane##18218
turnin Talbuk Mastery##9857 |goto Nagrand 71.60,40.50
accept Talbuk Mastery##9858 |goto Nagrand 71.60,40.50
step
kill 12 Ravenous Windroc##18220 |q 9855/1 |goto Nagrand 48.40,61.50
stickystart "cleftbull"
step
kill 12 Talbuk Thorngrazer##17131 |q 9858/1 |goto Nagrand 52.10,25.60
step
label "cleftbull"
kill 12 Clefthoof Bull##17132 |q 9850/1 |goto Nagrand 51.60,30.80
You can find more Clefthoof Bulls around [Nagrand 49.70,35.60]
step
talk Harold Lane##18218
turnin Talbuk Mastery##9858 |goto Nagrand 71.60,40.50
accept Talbuk Mastery##9859 |goto Nagrand 71.60,40.50
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9850 |goto Nagrand 71.60,40.50
accept Clefthoof Mastery##9851 |goto Nagrand 71.60,40.50
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9855 |goto Nagrand 71.60,40.50
accept Windroc Mastery##9856 |goto Nagrand 71.60,40.50
step
kill Gutripper##18257
collect Eye of Gutripper##24513 |q 9856/1 |goto Nagrand 32.60,25.60
step
kill Bach'lor##18258 |tip He sometimes roams up north.
collect Hoof of Bach'lor##24523 |q 9859/1 |goto Nagrand 26.00,53.00
step
kill Banthar##18259
|tip He roams around this area and is sometimes past Oshu'gun.
collect Horn of Banthar##24496 |q 9851/1 |goto Nagrand 43.00,63.00
step
talk Harold Lane##18218
turnin Talbuk Mastery (3)##9859 |goto Nagrand 71.60,40.50
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery (3)##9856 |goto Nagrand 71.60,40.50
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery (3)##9851 |goto Nagrand 71.60,40.50
accept The Ultimate Bloodsport##9852 |goto Nagrand 71.60,40.50
step
kill Tusker##18290
collect Heart of Tusker##24505 |q 9852/1 |goto Nagrand 44.20,65.20
step
talk Hemet Nesingwary##18180
turnin The Ultimate Bloodsport##9852 |goto Nagrand 71.60,40.50
step
Congratulations, you have earned the Hills Like White Elekk achievement! |achieve 939
step
Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
Redirecting to end of guide |next "end" |only if default
step
label "Snows"
talk Archmage Pentarus##28160
accept Where in the World is Hemet Nesingwary?##12521 |goto Dalaran 68.30,42.20
step
talk Monte Muzzleshot##27987
turnin Where in the World is Hemet Nesingwary?##12521 |goto Sholazar Basin 39.70,58.60
accept Welcome to Sholazar Basin##12489 |goto Sholazar Basin 39.70,58.60
step
talk Hemet Nesingwary##27986
turnin Welcome to Sholazar Basin##12489 |goto Sholazar Basin 27.10,58.70
step
talk Debaar##28032
accept Venture Co. Misadventure##12524 |goto Sholazar Basin 27.20,59.80
step
talk Weslex Quickwrench##28033
accept Need an Engine, Take an Engine##12522 |goto Sholazar Basin 25.40,58.40
step
click Flying Machine Engine##190447
collect Flying Machine Engine##38334 |q 12522/1 |goto Sholazar Basin 38.70,56.70
step
talk Weslex Quickwrench##28033
turnin Need an Engine, Take an Engine##12522 |goto Sholazar Basin 25.40,58.50
accept Have a Part, Give a Part##12523 |goto Sholazar Basin 25.40,58.50
step
talk Engineer Helice##28787
accept Engineering a Disaster##12688 |goto Sholazar Basin 35.50,47.40
step
Escort Engineer Helice out of Swindlegrin's Dig |q 12688/1
stickystart "venturco"
step
click Venture Co. Spare Parts##190455
collect 7 Venture Co. Spare Parts##38349 |q 12523/1 |goto Sholazar Basin 32.70,46.90
step
label "venturco"
kill Venture Co. Excavator##28123+, Venture Co. Ruffian##28124+
Kill #15# Venture Company Members |q 12524/1 |goto Sholazar Basin 37.40,46.10
step
talk Weslex Quickwrench##28033
turnin Have a Part, Give a Part##12523 |goto Sholazar Basin 25.40,58.40
step
talk Debaar##28032
turnin Venture Co. Misadventure##12524 |goto Sholazar Basin 27.20,59.80
accept Wipe That Grin Off His Face##12525 |goto Sholazar Basin 27.20,59.80
step
talk Hemet Nesingwary##27986
turnin Engineering a Disaster##12688 |goto Sholazar Basin 27.10,58.70
step
kill Foreman Swindlegrin##28186 |q 12525/1 |goto Sholazar Basin 36.10,50.50
kill Meatpie##28188 |q 12525/2 |goto Sholazar Basin 36.10,50.50
step
talk Debaar##28032
turnin Wipe That Grin Off His Face##12525 |goto Sholazar Basin 27.20,59.80
step
talk Buck Cantwell##28031
accept Dreadsaber Mastery: Becoming a Predator##12549 |goto Sholazar Basin 26.70,59
step
talk Hemet Nesingwary##27986
accept Rhino Mastery: The Test##12520 |goto Sholazar Basin 27.10,58.60
step
talk Drostan##28328
accept Kick, What Kick?##12589 |goto Sholazar Basin 27.10,59.90
step
Use your RJR Rifle on the gnome close to you with an apple on his head |use RJR Rifle##38573
Keep using the rifle until you hit the apple
Shoot the apple on Lucky Wilhelm's Head |q 12589/1
step
talk Drostan##28328
turnin Kick, What Kick?##12589 |goto Sholazar Basin 27.10,59.90
accept The Great Hunter's Challenge##12592 |goto Sholazar Basin 27.10,59.90
step
kill 15 Dreadsaber##28001 |q 12549/1 |goto Sholazar Basin 28,56
kill 15 Shardhorn Rhino##28009 |q 12520/1 |goto Sholazar Basin 28,56
kill Dreadsaber##28001+, Shardhorn Rhino##28009+
Kill #60# Game Animals |q 12592/1 |goto Sholazar Basin 28,56
You can find more Rhino's and Dreadsabers around this area [Sholazar Basin 38.20,45.30]
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Becoming a Predator##12549 |goto Sholazar Basin 26.70,59
accept Dreadsaber Mastery: Stalking the Prey##12550 |goto Sholazar Basin 26.70,59
step
talk Hemet Nesingwary##27986
turnin Rhino Mastery: The Test##12520 |goto Sholazar Basin 27.10,58.60
accept Rhino Mastery: The Chase##12526 |goto Sholazar Basin 27.10,58.60
step
talk Drostan##28328
turnin The Great Hunter's Challenge##12592 |goto Sholazar Basin 27.10,59.80
step
talk Debaar##28032
accept Crocolisk Mastery: The Trial##12551 |goto Sholazar Basin 27.20,59.80
step
Click Dreadsaber Tracks##8298
|tip They look like brown paw prints on the ground around this area.
Identify #3# Shango Tracks |q 12550/1 |goto Sholazar Basin 39.90,43.70
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Stalking the Prey##12550 |goto Sholazar Basin 26.70,59
accept Dreadsaber Mastery: Ready to Pounce##12558 |goto Sholazar Basin 26.70,59
step
talk Oracle Soo-rahm##28191
turnin Rhino Mastery: The Chase##12526 |goto Sholazar Basin 25.60,66.50
accept An Offering for Soo-rahm##12543 |goto Sholazar Basin 25.60,66.50
stickystart "empfang"
step
kill 15 Mangal Crocolisk##28002 |q 12551/1 |goto Sholazar Basin 29,62.50
step
label "empfang"
kill Emperor Cobra##28011+
collect 5 Intact Cobra Fang##38505 |q 12543/1 |goto Sholazar Basin 36.30,65.80
step
talk Debaar##28032
turnin Crocolisk Mastery: The Trial##12551 |goto Sholazar Basin 27.20,59.90
accept Crocolisk Mastery: The Plan##12560 |goto Sholazar Basin 27.20,59.90
step
talk Oracle Soo-rahm##28191
turnin An Offering for Soo-rahm##12543 |goto Sholazar Basin 25.60,66.50
accept The Bones of Nozronn##12544 |goto Sholazar Basin 25.60,66.50
step
use Soo-rahm's Incense##38519
|tip Use Soo-rahm's Incense next to the Offering Bowl.
|tip It's a small bowl in front of the skull of these bones.
Reveal the Location of Farunn |q 12544/1 |goto Sholazar Basin 26.10,71.60
step
talk Hemet Nesingwary##27986
turnin The Bones of Nozronn##12544 |goto Sholazar Basin 27.10,58.60
accept Rhino Mastery: The Kill##12556 |goto Sholazar Basin 27.10,58.60
stickystart "sandferns"
step
kill Shango##28297
collect Shango's Pelt##38523 |q 12558/1 |goto Sholazar Basin 33.40,34.70
step
label "sandferns"
click Sandfern##190533
collect 5 Sandfern##38553 |q 12560/1 |goto Sholazar Basin 34.70,41.50
step
kill Farunn##28288
collect Farunn's Horn##38522 |q 12556/1 |goto Sholazar Basin 47.40,43.90
step
talk Hemet Nesingwary##27986
turnin Rhino Mastery: The Kill##12556 |goto Sholazar Basin 27.10,58.60
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Ready to Pounce##12558 |goto Sholazar Basin 26.70,59
step
talk Debaar##28032
turnin Crocolisk Mastery: The Plan##12560 |goto Sholazar Basin 27.20,59.90
accept Crocolisk Mastery: The Ambush##12569 |goto Sholazar Basin 27.20,59.90
step
use Sandfern Disguise##38564
|tip Use your Sandfern Disguise next to this big log laying halfway in the water.
kill Bushwhacker##28317
collect Bushwhacker's Jaw##38559 |q 12569/1 |goto Sholazar Basin 46.30,63.40
step
talk Debaar##28032
turnin Crocolisk Mastery: The Ambush##12569 |goto Sholazar Basin 27.20,59.90
step
talk Hemet Nesingwary##27986
accept In Search of Bigger Game##12595 |goto Sholazar Basin 27.10,58.60
step
talk Dorian Drakestalker##28376
turnin In Search of Bigger Game##12595 |goto Sholazar Basin 42.30,28.70
accept Sharpening Your Talons##12603 |goto Sholazar Basin 42.30,28.70
accept Securing the Bait##12605 |goto Sholazar Basin 42.30,28.70
step
kill 6 Primordial Drake##28378 |q 12603/1 |goto Sholazar Basin 44.70,27.40
|tip The Primordial Drakes fly around in the air around this area.
clicknpc Primordial Drake Egg##28408
|tip The Primordial Drake Eggs look like white eggs next to trees around this area.
clicknpc Primordial Hatchling##28389
collect 6 Primordial Hatchling##38600 |q 12605/1 |goto Sholazar Basin 44.70,27.40
step
talk Dorian Drakestalker##28376
turnin Sharpening Your Talons##12603 |goto Sholazar Basin 42.30,28.70
turnin Securing the Bait##12605 |goto Sholazar Basin 42.30,28.70
step
talk Zootfizzle##28374
accept A Mammoth Undertaking##12607 |goto Sholazar Basin 42.10,28.90
step
use Mammoth Harness##38627
|tip Use your Mammoth Harness on a Shattertusk Mammoth
Ride the mammoth back to Zootfizzle at |goto Sholazar Basin 42.10,28.90
Use the Hand Over Mammoth ability on your hotbar
Deliver the Shattertusk Mammoth |q 12607/1 |goto Sholazar Basin 39.30,27.30
step
talk Zootfizzle##28374
turnin A Mammoth Undertaking##12607 |goto Sholazar Basin 42.10,28.90
step
talk Dorian Drakestalker##28376
accept Post-partum Aggression##12614 |goto Sholazar Basin 42.30,28.80
step
kill Broodmother Slivina##28467 |q 12614/1 |goto Sholazar Basin 47.00,21.10
|tip The best way to kill her is to kite her around the small space while pushing 1 and 4 on your hotbar and making her step on traps Hemet Nesingwary puts down.
step
talk Dorian Drakestalker##28376
turnin Post-partum Aggression##12614 |goto Sholazar Basin 42.30,28.80
step
Congratulations, you have earned the The Snows of Northrend achievement! |achieve 938
step
label "end"
Congratulations, you have earned the Hemet Nesingwary: The Collected Quests achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\Justly Rewarded",{
expansion="mists",
achieveid={5752},
patch='40100',
startlevel=1,
description="This guide will walk you through completing the \"Justly Rewarded\" Achievement.",
mopready=true,
},[[
step
For this achievement, complete any quests save for repeatable ones to earn gold
|tip You must earn 30,000 gold total.
|tip Refer to our Leveling, Dailies, and World Quest guides to accomplish this.
Earn the _Justly Rewarded_ achievement |achieve 5752
step
_Congratulations!_
You have earned the _Justly Rewarded_ achievement
]])
