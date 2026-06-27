-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Battle of Dazar'alor",{
description="Defeat the Bosses of Battle of Dazar'alot on Normal difficulty or higher.",
achieveid={40961},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Clear All Bosses in the Following Areas in the Siege of Dzar'alor on Normal Difficulty or Higher: |only if Alliance
Clear All Bosses in the Following Areas in the Defense of Dazar'alor on Normal Difficulty or Higher: |only if Horde
Clear Wing 1 |achieve 40961/1
kill Ra'wani Kanae##144683 |achieve 13286/1 |only if Alliance
kill Anathos Firecaller##146100 |only if Alliance
kill Ma'ra Grimfang##148238 |achieve 13286/3 |only if Alliance
kill Grong the Revenant##144638 |achieve 13286/2 |only if Alliance
kill Frida Ironbellows##144680 |achieve 13289/1 |only if Horde
kill Grong##148117 |achieve 13289/2 |only if Horde
kill Mestrah##144690 |only if Horde
kill Manceroy Flamefist##146099 |achieve 13289/3 |only if Horde
Clear Wing 2 |achieve 40961/2
kill Opulence##147564 |achieve 13287/1 |only if Alliance
Kill the Conclave of the Chosen |achieve 13287/2 |only if Alliance
kill King Rastakhan##145616 |achieve 13287/3 |only if Alliance
kill Opulence##147564 |achieve 13290/1 |only if Horde
kill Pa'ku's Aspect##144747 |achieve 13290/2 |only if Horde
kill King Rastakhan##147012 |achieve 13290/3 |only if Horde
Clear Wing 3 |achieve 13289/3
kill High Tinker Mekkatorque##144838 |achieve 13288/1 |only if Alliance
kill Laminaria##146256 |achieve 13288/2 |only if Alliance
kill Sister Katherine##146251 |only if Alliance
kill Brother Joseph##146253 |achieve 13288/2 |only if Alliance
kill Lady Jaina Proudmoore##149684 |achieve 13288/3 |only if Alliance
kill High Tinker Mekkatorque##144838 |achieve 13291/1 |only if Horde
kill Sister Katherine##146251 |only if Horde
kill Brother Joseph##146253  |achieve 13291/2 |only if Horde
kill Lady Jaina Proudmoore##149684 |achieve 13291/3 |only if Horde
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\The Eternal Palace",{
description="Defeat the Bosses of Battle of Dazar'alot on any difficulty.",
achieveid={40962},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Defeat the The Grand Reception Bosses in The Eternal Palace: |only if not achieved(40962,1)
|tip Note that only objectives you need to complete will appear. |only if not achieved(40962,1)
kill Abyssal Commander Sivara##155144 |achieve 13718/1 |only if not achieved(13718,1)
kill Blackwater Behemoth##154986 |achieve 13718/2 |only if not achieved(13718,2)
kill Radiance of Azshara##152364 |achieve 13718/3 |only if not achieved(13718,3)
Clear "The Grand Reception" Bosses in The Eternal Palace |achieve 40962/1 |only if achieved(40962,1)
step
Defeat the Depths of the Devoted Bosses in The Eternal Palace: |only if not achieved(40962,2)
|tip Note that only objectives you need to complete will appear. |only if not achieved(40962,2)
kill Lady Ashvane##153142 |achieve 13719/1 |only if not achieved(13719,1)
kill Orgozoa##152128 |achieve 13719/2 |only if not achieved(13719,2)
kill Silivaz the Zealous##152853
kill Pashmar the Fanatical##152852 |achieve 13719/3 |only if not achieved(13719,3)
Clear "Depths of the Devoted" Bosses in The Eternal Palace |achieve 40962/1 |only if achieved(40962,2)
step
Defeat the Depths of the Devoted Bosses in The Eternal Palace: |only if not achieved(40962,3)
|tip Note that only objectives you need to complete will appear. |only if not achieved(40962,3)
kill Za'qul##150859 |achieve 13725/1 |only if not achieved(13725,1)
kill Queen Azshara##155126 |achieve 13725/2 |only if not achieved(13725,2)
Clear "The Circle of Stars" Bosses in The Eternal Palace |achieve 40962/3 |only if achieved(40962,3)
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\The Grand Reception",{
description="Defeat the following bosses in The Eternal Palace - The Grand Reception on any difficulty.",
achieveid={13718},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Defeat the Following Bosses in The Eternal Palace - The Grand Reception:
kill Abyssal Commander Sivara##155144 |achieve 13718/1
kill Blackwater Behemoth##154986 |achieve 13718/2
kill Radiance of Azshara##152364 |achieve 13718/3
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Depths of the Devoted",{
description="Defeat the following bosses in The Eternal Palace - Depths of the Devoted on any difficulty.",
achieveid={13719},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Defeat the Following Bosses in The Eternal Palace - Depths of the Devoted:
kill Lady Ashvane##153142 |achieve 13719/1
kill Orgozoa##152128 |achieve 13719/2
kill Silivaz the Zealous##152853
kill Pashmar the Fanatical##152852 |achieve 13719/3
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\The Circle of Stars",{
description="Defeat the following bosses in The Eternal Palace - The Circle of Stars on any difficulty.",
achieveid={13725},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Defeat the Following Bosses in The Eternal Palace - The Circle of Stars:
kill Za'qul##150859 |achieve 13725/1
kill Queen Azshara##155126 |achieve 13725/2
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Ny'alotha, the Waking City",{
description="Defeat the bosses of Ny'alotha, the Waking City on Normal difficulty or higher.",
achieveid={40963},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Inside Ny'alotha, the Waking City - Vision of Destiny:
kill Wrathion##156818
kill Maut##156523
kill The Prophet Skitra##161901
Defeat the Bosses of within the Vision of Destiny |achieve 40963/1
step
Inside Ny'alotha, the Waking City - Halls of Devotion:
kill Dark Inquisitor Xanesh##156575
kill Vexiona##157354
kill The Hivemind
kill Ra-den##156866
Defeat the Bosses of within the Halls of Devotion |achieve 40963/2
step
Inside in Ny'alotha, the Waking City - Gift of Flesh:
kill Shad'har the Insatiable##157231
kill Drest'agath##157602
kill Il'gynoth##158328
Defeat the Bosses of within the Gift of Flesh |achieve 40963/3
step
Inside Ny'alotha, the Waking City - The Waking Dream:
kill Il'gynoth##158328
kill N'Zoth the Corruptor##158041
Defeat the Bosses of within he Waking Dream |achieve 40963/4
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Vision of Destiny",{
description="Defeat the bosses of Ny'alotha - Vision of Destiny on any difficulty.",
achieveid={14193},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Defeat the Following Bosses in Ny'alotha, the Waking City - Vision of Destiny:
kill Wrathion##156818 |achieve 14193/1
kill Maut##156523 |achieve 14193/2
kill The Prophet Skitra##161901 |achieve 14193/3
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Halls of Devotion",{
description="Defeat the bosses of Ny'alotha - Halls of Devotion on any difficulty.",
achieveid={14194},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Defeat the Following Bosses in Ny'alotha, the Waking City - Halls of Devotion:
kill Dark Inquisitor Xanesh##156575 |achieve 14194/1
kill Vexiona##157354 |achieve 14194/2
kill The Hivemind |achieve 14194/3
kill Ra-den##156866 |achieve 14194/4
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle For Azeroth\\Gift of Flesh",{
description="Defeat the bosses of Ny'alotha - Gift of Flesh on any difficulty.",
achieveid={14195},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Defeat the Following Bosses in Ny'alotha, the Waking City - Gift of Flesh:
kill Shad'har the Insatiable##157231 |achieve 14195/1
kill Drest'agath##157602 |achieve 14195/2
kill Il'gynoth##158328 |achieve 14195/3
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\The Waking Dream",{
description="Defeat the 2 bosses in Ny'alotha - The Waking Dream on any difficulty.",
achieveid={14196},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Defeat the Following Bosses in Ny'alotha, the Waking City - The Waking Dream:
kill Il'gynoth##158328 |achieve 14196/1
kill N'Zoth the Corruptor##158041 |achieve 14196/2
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\I'm On Island Time",{
description="Aid Zandalar and Kul Tiras by completing the achievements below.",
achieveid={40956},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Hot Topic" Achievement |achieve 40956/1
Earn the "Sound Off" Achievement |achieve 40956/2
Earn the "Bwon Voyage" Achievement |achieve 40956/3
Earn the "Songs of Storms" Achievement |achieve 40956/4
Earn the "Dune Squad" Achievement |achieve 40956/5
Earn the "When the Drust Settles" Achievement |achieve 40956/6
Earn the "Loremaster of Zandalar" Achievement |achieve 40956/7
Earn the "Loremaster of Kul Tiras" Achievement |achieve 40956/8
Earn the "Battle for Azeroth Explorer" Achievement |achieve 40956/9
Earn the "Wide World of Quests" Achievement |achieve 40956/10
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\A Load of a Tale",{
description="Find and read the following volumes of Tales of de Loa in Zandalar.",
achieveid={13036},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
click Tales of de Loa: Gral##297074
|tip At the base of the tree.
Read the "Tales of de Loa: Gral" |achieve 13036/4 |goto Zuldazar/0 75.49,67.58
step
click Tales of de Loa: Rezan##297490
Read the "Tales of de Loa: Rezan" |achieve 13036/10 |goto Zuldazar/0 43.73,76.73
step
click Tales of de Loa: Jani##297528
|tip It looks like a scroll hanging on the wall.
Read the "Tales of de Loa: Jani" |achieve 13036/6 |goto Zuldazar/0 48.54,54.60
step
click Tales of de Loa: Pa'ku##297524
|tip On top of the building, at the waterfall level.
Read the "Tales of de Loa: Pa'ku" |achieve 13036/9 |goto Zuldazar/0 49.01,41.26
step
click Tales of de Loa: Shadra##297493
Read the "Tales of de Loa: Shadra" |achieve 13036/12 |goto Zuldazar/0 47.83,28.80
step
click Tales of de Loa: Gonk##297521
Read the "Tales of de Loa: Gonk" |achieve 13036/3 |goto Zuldazar/0 51.67,28.26
step
click Tales of de Loa: Zandalar##297700
|tip On the ground level.
Read the "Tales of de Loa: Zandalar" |achieve 13036/15 |goto Dazar'alor/0 53.25,9.28
step
click Tales of de Loa: Torcali##297885
|tip Between the barrels and the wall.
Read the "Tales of de Loa: Torcali" |achieve 13036/13 |goto Zuldazar/0 67.28,17.63
step
click Tales of de Loa: Krag'wa##297489
Read the "Tales of de Loa: Krag'wa" |achieve 13036/8 |goto Nazmir/0 58.91,48.66
step
click Tales of de Loa: Torga##297523
|tip Underwater.
Read the "Tales of de Loa: Torga" |achieve 13036/14 |goto Nazmir/0 72.80,7.65
step
click Tales of de Loa: Bwonsamdi##297491
Read the "Tales of de Loa: Bwonsamdi" |achieve 13036/2 |goto Nazmir/0 39.11,38.69
step
click Tales of de Loa: Hir'eek##297522
Read the "Tales of de Loa: Hir'eek" |achieve 13036/5 |goto Nazmir/0 39.53,54.65
step
click Tales of de Loa: Sethraliss##297485
Read the "Tales of de Loa: Sethraliss" |achieve 13036/11 |goto Vol'dun/0 49.57,24.43
step
click Tales of de Loa: Akunda##297495
Read the "Tales of de Loa: Akunda" |achieve 13036/1 |goto Vol'dun/0 42.17,62.13
step
click Tales of de Loa: Kimbul##297494
Read the "Tales of de Loa: Kimbul" |achieve 13036/7 |goto Vol'dun/0 27.70,62.12
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Hot Tropic",{
description="Experience Zandalari culture by completing the achievements listed below.",
achieveid={41202},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Complete the Follow Achievements:
Earn the "Adventurer of Zuldazar" Achievement |achieve 41202/1
Earn the "Treasures of Zuldazar" Achievement |achieve 41202/2
Earn the "Loa Expectations" Achievement |achieve 41202/3
|tip Loa Expectations must be done on a Horde character. |only if Alliance
Earn the "Bow to Your Masters" Achievement |achieve 41202/4
|tip Bow to Your Masters must be done on a Horde character. |only if Alliance
Earn the "Get Hek'd" Achievement |achieve 41202/5
Earn the "A Loa of a Tale" Achievement |achieve 41202/6
Earn the "Eating Out of the Palm of My Tiny Hand" Achievement  |achieve 41202/7
Earn the "Raptari Rider" Achievement |achieve 41202/8
|tip Raptari Rider must be done on a Horde character. |only if Alliance
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Sound Off",{
description="Experience Zandalari culture by completing the achievements listed below.",
achieveid={41205},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Adventurer of Tiragarde Sound" Achievement |achieve 41205/1
Earn the "Treasures of Tiragarde Sound" Achievement |achieve 41205/2
Earn the "Bless the Rains Down in Freehold" Achievement |achieve 41205/3
Earn the "Sailed in Sea Minor" Achievement |achieve 41205/4
Earn the "Three Sheets to the Wind" Achievement |achieve 41205/5
Earn the "Kul Tiran Up the Dance Floor" Achievement |achieve 41205/6
Earn the "The Long Con" Achievement |achieve 41205/7
|tip This achievement must be done on an Alliance character. |only if Horde
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Sailed in Sea Minor",{
description="Experience Zandalari culture by completing the achievements listed below.",
achieveid={13057},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
click Russel's Songbook##297906
|tip On top of the fireplace inside the building.
collect Forbidden Sea Shanty of the Lively Men##163714 |n
Find the Forbidden Sea Shanty "Forbidden Sea Shanty of the Lively Men" |achieve 13057/1 |goto Boralus/0 72.43,69.41
step
click Jay's Songbook##297905
|tip On the floor behind Jay the Tavern Bard in Hops inside the building.
collect Forbidden Sea Shanty of Inebriation##163716 |n
Find the Forbidden Sea Shanty "Forbidden Sea Shanty of Inebriation" |achieve 13057/3 |goto Boralus/0 53.14,17.66
step
Enter the cave |goto Tiragarde Sound/0 43.41,25.79 < 10
click Dusty Songbook##297933
|tip Inside the cave.
collect Forbidden Sea Shanty of Fruit Counting##163715 |n
Find the Forbidden Sea Shanty "Forbidden Sea Shanty of Fruit Counting" |achieve 13057/2 |goto Tiragarde Sound/0 43.48,25.59
step
kill Black-Eyed Bart##132086
collect Forbidden Sea Shanty of the Black Sphere##163718 |n
Find the Forbidden Sea Shanty "Forbidden Sea Shanty of the Black Sphere" |achieve 13057/5 |goto Tiragarde Sound/0 56.28,69.94
step
click Scoundrel's Songbook##297934
|tip On  the ground floor of the building, on the table.
collect Forbidden Sea Shanty of the Horse##163719 |n
Find the Forbidden Sea Shanty "Forbidden Sea Shanty of the Horse" |achieve 13057/6 |goto Tiragarde Sound/0 73.19,84.15
step
kill Barman Bill##129181
collect Forbidden Sea Shanty of Josephus##163717 |n
Find the Forbidden Sea Shanty "Forbidden Sea Shanty of Josephus" |achieve 13057/4 |goto Tiragarde Sound/0 76.09,82.88
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Bwon Voyage",{
description="Complete the Nazmir achievements listed below.",
achieveid={41203},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Adventurer of Nazmir" Achievement |achieve 41203/1
Earn the "Treasures of Nazmir" Achievement |achieve 41203/2
Earn the "Carved in Stone, Written in Blood" Achievement |achieve 41203/3
Earn the "It's Really Getting Out of Hand" Achievement |achieve 41203/4
Earn the "Eat Your Greens" Achievement |achieve 41203/5
Earn the "Hoppin' Sad" Achievement |achieve 41203/6
Earn the "Revenge is Best Served Speedily" Achievement |achieve 41203/7
|tip Revenge is Best Served Speedily must be done on a Horde character. |only if Alliance
Earn the "A Most Efficient Apocalypse" Achievement |achieve 41203/8
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\A Most Efficient Apocalypse",{
description="Complete the Nazmir achievements listed below.",
achieveid={13021},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
accept Cancel the Blood Troll Apocalypse##50665 |goto Nazmir/0 53.77,76.03
|tip You will accept this quest automatically.
step
talk Patch##134758
|tip On top of the robot.
Select _"Let's get in the A.F.M.O.D and stop that blood troll army."_
Speak with Patch to Board the A.F.M.O.D. |q 50665/1 |goto Nazmir/0 53.77,76.03 |future
step
_As You Fly:_
|tip Make sure to spam the ability bar and click as fast as you can.
|tip Try not to bomb the same area twice.
|tip Target Blood Spheres with at least 5 mobs around them.
|tip Target mobs around "Blood Troll Warmothers".
Board the A.F.M.O.D and Complete the Nazmir World Quest "Cancel the Blood Troll Apocalypse" in 30 Seconds While Not in a Group |achieve 13021
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Songs of Storms",{
description="Complete the eight Stormsong Valley achievements listed.",
achieveid={41206},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Adventurer of Stormsong Valley" Achievement |achieve 41206/1
Earn the "Treasures of Stormsong Valley" Achievement |achieve 41206/2
Earn the "Clever Use of MEchanical Explosives" Achievement |achieve 41206/3
Earn the "The Hills Sing" Achievement |achieve 41206/4
Earn the "Legends of the Tidesage" Achievement |achieve 41206/5
Earn the "Every Day I'm Truffling" Achievement |achieve 41206/6
Earn the "Let's Bee Friends" Achievement |achieve 41206/7
|tip Let's Bee Friends must be done on an Alliance character. |only if Horde
Earn the "Deadliest Cache" Achievement |achieve 41206/8
|tip Deadliest Cache must be done on an Alliance character. |only if Horde
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Dune Squad",{
description="Enjoy an Unforgettable Luncheon at a special location in Stormsong Valley.",
achieveid={41204},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Adventurer of Vol'dun" Achievement |achieve 41204/1
Earn the "Treasures of Vol'dun" Achievement |achieve 41204/2
Earn the "Scavenger of the Sands" Achievement |achieve 41204/3
Earn the "Dune Rider" Achievement |achieve 41204/4
Earn the "Scourge of Zem'lan" Achievement |achieve 41204/5
Earn the "Adept Sandfisher" Achievement |achieve 41204/6
Earn the "Champion of the Vulpera" Achievement |achieve 41204/7
|tip Champion of the Vulpera must be done on a Horde character. |only if Alliance
Earn the "Scavenge like a Vulpera" Achievement |achieve 41204/8
|tip Scavenge like a Vulpera must be done on a Horde character. |only if Alliance
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\When the Drust Settles",{
description="Enjoy an Unforgettable Luncheon at a special location in Stormsong Valley.",
achieveid={41207},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Adventurer of Drustvar" Achievement |achieve 41207/1
Earn the "Treasures of Drustvar" Achievement |achieve 41207/2
Earn the "Sausage Sampler" Achievement |achieve 41207/3
Earn the "Better, Faster, Stronger" Achievement |achieve 41207/4
Earn the "Drust the Facts, Ma'am" Achievement |achieve 41207/5
Earn the "Cursed Game Hunter" Achievement |achieve 41207/6
Earn the "Everything Old Is New Again" Achievement |achieve 41207/7
|tip Everything Old Is New Again must be done on an Alliance character. |only if Horde
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\War Stories",{
description="Complete 11 of the Battle for Azeroth Quest Achievements listed.",
achieveid={40955},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Welcome to Zandalar" Achievement |achieve 40955/1
|tip Welcome to Zandalar must be done on a Horde character. |only if Alliance
Earn the "Come Sail Away" Achievement |achieve 40955/2
|tip Come Sail Away must be done on an Alliance character. |only if Horde
Earn the "Two Sides to Every Tale" Achievement |achieve 40955/3
Earn the "The Fourth War" Achievement |achieve 40955/4 |only if Alliance
Earn the "The Fourth War" Achievement |achieve 40955/4 |only if Horde
Earn "The Shadow Hunter" Achievement |achieve 40955/5
|tip The Shadow Hunter must be done on a Horde character. |only if Alliance
Earn "The Pride of Kul Tiras" Achievement |achieve 40955/6
|tip The Pride of Kul Tiras must be done on an Alliance character. |only if Horde
Earn the "Spirits Be With You" Achievement |achieve 40955/7
|tip Spirits Be With You must be done on a Horde character. |only if Alliance
Earn the "In Teldrassil's Shadow" Achievement |achieve 40955/8
|tip In Teldrassil's Shadow must be done on an Alliance character. |only if Horde
Earn the "The Mechagonian Threat" Achievement |achieve 40955/9 |only if Alliance
Earn the "The Mechagonian Threat" Achievement |achieve 40955/9 |only if Horde
Earn the "Sunken Ambitions" Achievement |achieve 40955/10 |only if Alliance
Earn the "Unfathomable" Achievement |achieve 40995/10 |only if Horde
Earn the "The Corruptor's End" Achievement |achieve 40955/11
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Two Sides to Every Tale",{
description="Complete the following achievements on the continents of Zandalar and Kul Tiras.",
achieveid={13517},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "A Nation United" Achievement |achieve 13517/1
|tip A Nation United must be done on an Alliance character. |only if Horde
Earn the "Tides of Vengeance" Achievement |achieve 13517/2
|tip A Tides of Vengeance must be done on an Alliance character. |only if Horde
Earn the "Zandalar Forever!" Achievement |achieve 13517/3
|tip Zandalar Forever! must be done on a Horde character. |only if Alliance
Earn the "Tides of Vengeance" Achievement |achieve 13517/4
|tip Tides of Vengeance must be done on a Horde character. |only if Alliance
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\The Corruptor's End",{
description="Complete the Black Empire Campaign storyline.",
achieveid={14157},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Complete the "Whispers in the Dark" Questline |achieve 14157
|tip Refer to the Magni's Plan guide to accomplish this.
Click Here to Load the Magni's Plan Quest Guide |confirm |next "Leveling Guides\\Battle for Azeroth (10-70)\\Heart of Azeroth\\Magni's Plan"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Maximum Effort",{
description="Complete the 7 War Effort achievements listed.",
achieveid={40957},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "War is Hell" Achievement |achieve 40957/1
Earn the "War for the Shore" Achievement |achieve 40957/2
Earn the "The Dirty Five" Achievement |achieve 40957/3
Earn the "Azeroth at War: The Barrens" Achievement |achieve 40957/4
Earn the "Azeroth at War: After Lordaeron" Achievement |achieve 40957/5
Earn the "Azeroth at War: Kalimdor on Fire" Achievement |achieve 40957/6
Earn the "Frontline Warrior" Achievement |achieve 40957/7
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Frontline Warrior",{
description="Complete all six assaults.",
achieveid={13283,13284},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Complete the Following Incursions:
|tip Note that only one will be active at a time.
Earn the "A Sound Defense" Achievement |achieve 13283/1 |only if Alliance
Earn the "Storm's Rage" Achievement |achieve 13283/2 |only if Alliance
Earn the "A Drust Cause" Achievement |achieve 13283/3 |only if Alliance
Earn the "Many Fine Heroes" Achievement |achieve 13283/4 |only if Alliance
Earn the "March on the Marsh" Achievement |achieve 13283/5 |only if Alliance
Earn the "Ritual Rampage" Achievement |achieve 13283/6 |only if Alliance
Click Here to Load the Incursion Guide |confirm |next "Events Guides\\Battle for Azeroth\\Incursions" |only if Alliance
Earn the "Breaching Boralus" Achievement |achieve 13284/1 |only if Horde
Earn the "Romp In the Swamp" Achievement |achieve 13284/2 |only if Horde
Earn the "Isolated Victory" Achievement |achieve 13284/3 |only if Horde
Earn the "Shores of Zuldazar" Achievement |achieve 13284/4 |only if Horde
Earn the "In Every Dark Corner" Achievement |achieve 13284/5 |only if Horde
Earn the "Horde of Heroes" Achievement |achieve 13284/6 |only if Horde
Click Here to Load the Incursion Guide |confirm |next "Events Guides\\Battle for Azeroth\\Incursions" |only if Horde
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Undersea Usurper",{
description="Complete the Nazjatar achievements listed within.",
achieveid={13638},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Tour of the Depths" Achievement |achieve 13638/1
Earn the "Nazjatarget Eliminated" Achievement |achieve 13638/2
Earn the "I Thought You Said They'd Be Rare?" Achievement |achieve 13638/3
Earn the "Aqua Team Murder Force" Achievement |achieve 13638/4 |only if Alliance
Earn the "Aqua Team Murder Force" Achievement |achieve 13638/4 |only if Horde
Earn the "Trove Tracker" Achievement |achieve 13638/5
Earn the "A Fistful of Manapearls" Achievement |achieve 13638/6
Earn the "Terror of the Tadpoles" Achievement |achieve 13638/7
Earn the "Periodic Destruction" Achievement |achieve 13638/8
Earn the "Nothing To Scry About" Achievement |achieve 13638/9
Earn the "Mrrl's Secret Stash" Achievement |achieve 13638/10
Earn the "Back to the Depths!" Achievement |achieve 13638/11
Earn the "Puzzle Performer" Achievement |achieve 13638/12
Earn the "Explore Nazjatar" Achievement |achieve 13638/13
Earn the "Waveblade Ankoan" Achievement |achieve 13638/14 |only if Alliance
Earn the "The Unshackled" Achievement |achieve 13638/14 |only if Horde
Earn the "Subaquatic Support" Achievement |achieve 13638/15
Earn the "Sunken Ambitions" Achievement |achieve 13638/16 |only if Alliance
Earn the "Unfathomable" Achievement |achieve 13638/16 |only if Horde
Earn the "Feline Figurines Found" Achievement |achieve 13638/17
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Mecha-Done",{
description="Complete the Mechagon achievements listed.",
achieveid={13541},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn "The Mechagonian Threat" Achievement |achieve 13541/1 |only if Alliance
Earn "The Mechagonian Threat" Achievement |achieve 13541/1 |Only if Horde
Earn the "Rest in Pistons" Achievement |achieve 13541/2
Earn the "Outside Influences" Achievement |achieve 13541/3
Earn the "Junkyard Architect" Achievement |achieve 13541/4
Earn the "Junkyard Apprentice" Achievement |achieve 13541/5
Earn the "Junkyard Machinist" Achievement |achieve 13541/6
Earn the "Available in Eight Colors" Achievement |achieve 13541/7
Earn the "Junkyard Melomaniac" Achievement |achieve 13541/8
Earn the "Making the Mount" Achievement |achieve 13541/9
Earn the "Armed for Action" Achievement |achieve 13541/10
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Junkyard Machinist",{
description="Complete 100 construction projects in Mechagon.",
achieveid={13474},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Complete #100# Construction Projects on Mechagon Island |achieve 13474
|tip Construction projects appear on your minimap as small bronze-colored gears.
|tip Contributing to projects requires Spare Parts and Energy Cells.
|tip Empty Energy Cells and Spare Parts drop from creatures and chests all over Mechagon Island and are rewarded for completing quests.
|tip Empty Energy Cells can be charged at Bondo's Yard when the charging pylon is available.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Black Empire State of Mind",{
description="Repel the Black Empire by completing the achievements listed.",
achieveid={40959},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Defend the Vale" Achievement |achieve 40959/1
Earn the "Uldum Under Assault" Achievement |achieve 40959/2
Earn the "The Rajani" Achievement |achieve 40959/3
Earn the "Uldum Accord" Achievement |achieve 40959/4
Earn the "Combating the Corruption" Achievement |achieve 40959/5
Earn the "It's Not A Tumor!" Achievement |achieve 40959/6
Earn the "All Consuming" Achievement |achieve 40959/7
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\The Rajani",{
description="Earn Exalted status with the Rajani.",
achieveid={14156},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "The Rajani" Achievement |achieve 14156
|tip Refer to the "Rajani" reputation guide to accomplish this.
Click Here to Load the "Rajani" Reputation Guide |confirm |next "Reputation Guides\\Battle for Azeroth\\Rajani"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Uldum Accord",{
description="Earn Exalted status with the Uldum Accord.",
achieveid={14155},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Uldum Accord" Achievement |achieve 14155
|tip Refer to the "Uldum Accord" reputation guide to accomplish this.
Click Here to Load the "Uldum Accord" Guide |confirm |next "Reputation Guides\\Battle for Azeroth\\Uldum Accord"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Combating the Corruption",{
description="Kill 10 types of corrupted creatures in Uldum or Vale of Eternal Blossoms during Black Empire Assaults.",
achieveid={14159},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Slay #10# Different Corrupted Creatures That Can Appear During Black Empire Assaults |achieve 14159
'|kill Corrupted Acolyte##162249, Corrupted Assassin##162250, Corrupted Beheader##162252, Corrupted Bloodseeker##162290, Corrupted Bonestripper##159087, Corrupted Despoiler##156709, Corrupted Dominator##162246, Corrupted Doomsayer##162244, Corrupted Fleshbeast##158632, Corrupted Jailer##162247,Corrupted Mind Eater##162243, Corrupted Neferset Guard##158531, Corrupted Observer##162254, Corrupted Putrefaction##158706, Corrupted Summoner##162251, Corrupted Thaumaturge##162253, Corrupted Thoughtstealer##162241, Corrupted Tormentor##162245, Corrupted Watcher##162248
|tip There are 19 different ones that can appear throughout the Vale of Eternal Blossoms.
|tip They can appear all over the map.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\It's Not A Tumor!",{
description="Destroy 100 Corruption Tumors in Uldum or Vale of Eternal Blossoms during Black Empire Assaults.",
achieveid={14158},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Destroy #100# Corrupted Tumors that appear during Black Empire Assaults |achieve 14158
|tip If you have the 'N'lyeth, Sliver of N'Zoth' toy, the tumors will become neutral making it easier.
|tip Refer to their respective guides to accomplish this.
Vale of Eternal Blossoms Tumors [Vale of Eternal Blossoms New/0 84.50, 48.70]
Uldum Tumors [Uldum New/0 56.70,34.10]
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\All Consuming",{
description="Complete every unique Consuming Maw objective in Uldum and Vale of Eternal Blossoms during the Black Empire Assaults.",
achieveid={14161},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
label "Uldum"
Cleanse #7# Consuming Maws |achieve 14161 |or
|tip They aren't always active.
|tip You will likely need to wait for them to become active.
|tip They will only be active during "Assault: The Black Empire".
Jin Yang Road			|goto Vale of Eternal Blossoms New/0 46.37,57.09
The Summer Fields		|goto Vale of Eternal Blossoms New/0 81.51,49.43
Whitepetal Lake (underwater)	|goto Vale of Eternal Blossoms New/0 41.36,45.36
Click Here to Check Uldum |confirm |or
step
Cleanse #7# Consuming Maws |achieve 14161 |or
_Uldum Locations:_
|tip They aren't always active.
|tip You will likely need to wait for them to become active.
|tip They will only be active during "Assault: The Black Empire".
Vir'naal River Delta				|goto Uldum New/0 62.36,79.48
Vir'naal Oasis					|goto Uldum New/0 46.81,34.24
Ramkahen Legion Outpost / Vir'naal Oasis	|goto Uldum New/0 60.12,45.62
Vir'naal Oasis					|goto Uldum New/0 55.47,21.35
Click Here to Return to Uldum |confirm |next "Uldum" |or
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Defend the Vale",{
description="Defend the Vale of Eternal Blossoms from each of the Assaults.",
achieveid={14154},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Complete the Following Assaults in the Vale of Eternal Blossoms:
Assault: The Warring Clans |achieve 14154/1
Assault: The Endless Swarm |achieve 14154/2
Assault: The Black Empire |achieve 14154/3
Click Here to Load the "Vale of Eternal Blossoms Assaults" Guide |confirm |next "Daily Guides\\Battle for Azeroth\\Vale of Eternal Blossoms\\Vale of Eternal Blossoms Assaults"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Uldum Under Assault",{
description="Protect the denizens of Uldum from each of the Assaults.",
achieveid={13474},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Complete the Following Assaults in Uldum:
Assault: Amathet Advance |achieve 14153/1
Assault: Aqir Unearthed |achieve 14153/2
Assault: The Black Empire|achieve 14153/3
Click Here to Load the "Uldum Assaults" Guide |confirm |next "Daily Guides\\Battle for Azeroth\\\Uldum\\Uldum Assaults"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Full Heart, Can't Lose",{
description="Complete each of the Heart of Azeroth achievements listed.",
achieveid={40958},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Have a Heart" Achievement |achieve 40958/1
Earn the "The Heart Forge" Achievement |achieve 40958/2
Earn the "Power Is Beautiful" Achievement |achieve 40958/3
Earn the "My Heart Container is Full" Achievement |achieve 40958/4
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\The Heart Forge",{
description="Unlock the Heart Forge in the repaired Chamber of Heart.",
achieveid={13572},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "The Heart Forge" Achievement |achieve 13572
|tip Use the "Nazjatar" leveling guide to accomplish this.
Click Here to Open the "Nazjatar" Leveling Guide |confirm |next "Leveling Guides\\Battle for Azeroth (10-70)\\Kul Tiras\\Nazjatar\\Nazjatar" |only if Alliance
Click Here to Open the "Nazjatar" Leveling Guide |confirm |next "Leveling Guides\\Battle for Azeroth (10-70)\\Kul Tiras\\Nazjatar\\Nazjatar" |only if Horde
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Power Is Beautiful",{
description="Infuse the Heart of Azeroth with any Heart of Azeroth Essence at rank 4.",
achieveid={13771},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Power Is Beautiful" Achievement |achieve 13771
|tip Complete the 'Essential Empowerment' leveling guide to accomplish this.
Click Here to Load the "Essential Empowerment" Leveling Guide |confirm |next "Leveling Guides\\Battle for Azeroth (10-70)\\Heart of Azeroth\\Essential Empowerment"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\My Heart Container is Full",{
description="Apply an Essence of rank 3 or higher into every slot of the Heart of Azeroth.",
achieveid={13777},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "My Heart Container is Full" Achievement |achieve 13777
|tip Complete the 'Essential Empowerment' leveling guide to accomplish this.
Click Here to Load the "Essential Empowerment" Leveling Guide |confirm |next "Leveling Guides\\Battle for Azeroth (10-70)\\Heart of Azeroth\\Essential Empowerment"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Dressed to Kill: Battle for Azeroth",{
description="Complete 4 of the Battle for Azeroth appearance achievements listed.",
achieveid={41209},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "New Mog, G'huun This?" Achievement |achieve 41209/1
Earn the "Don't Warfront Me" Achievement |achieve 41209/2
Earn the "Daz'aling Attire" Achievement |achieve 41209/3
Earn the "Tall, Dark, and Sinister" Achievement |achieve 41209/4
Earn the "Under the Seams" Achievement |achieve 41209/5
Earn the "Never Lose, Never Choose To" Achievement |achieve 41209/6
Earn the "All Eyes On Me" Achievement |achieve 41209/7
Earn the "The Eyes Have It" Achievement |achieve 41209/8
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Under the Seams",{
description="Collect an armor set from The Eternal Palace.",
achieveid={13571},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Under the Seams" Achievement |achieve 13571
|tip This is accomplished by collecting your class transmag from an armor set found within 'The Eternal Palace'.
|tip It can be accomplished in any difficulty.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\Never Lose, Never Choose To",{
description="Collect any armor set from Battle for Azeroth PvP Season 3.",
achieveid={13585},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
talk Xander Silberman##143555 |only if Horde
|tip Save enough Honor to purchase 'Notorious Gladiator's' armor sets. |only if Horde
Earn the "Never Lose, Never Choose To" Achievement |achieve 13585 |only if Horde
talk Marshal Gabriel##143560 |only if Alliance
|tip Save enough Honor to purchase 'Notorious Gladiator's' armor sets. |only if Alliance
Earn the "Never Lose, Never Choose To" Achievement |achieve 13585 |only if Alliance
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\All Eyes On Me",{
description="Collect an armor set from Ny'alotha, the Waking City.",
achieveid={14058},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "All Eyes On Me" Achievement |achieve 14058
|tip This is accomplished by collecting your class transmag from an armor set found within the 'Ny'alotha, the Waking City'.
|tip It can be accomplished in any difficulty.
|tip This can be accomplished by doing Horrific Visions.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\The Eyes Have It",{
description="Collect any armor set from Battle for Azeroth PvP Season 4.",
achieveid={14059},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
talk Xander Silberman##143555 |only if Horde
|tip Save enough Honor to purchase 'Corrupted Gladiator's' armor sets. |only if Horde
Earn the "The Eyes Have It" Achievement |achieve 14059 |only if Horde
talk Marshal Gabriel##143560 |only if Alliance
|tip Save enough Honor to purchase 'Corrupted Gladiator's' armor sets. |only if Alliance
Earn the "The Eyes Have It" Achievement |achieve 14059 |only if Alliance
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\Battle For Azeroth\\A Farewell to Arms",{
description="Put an end to the Battle for Azeroth by completing the listed achievements.",
achieveid={40953},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Earn the "Uldir" Achievement |achieve 40953/1
Earn the "Battle of Dazar'alor" Achievement |achieve 40953/2
Earn the "Crucible of Storms" Achievement |achieve 40953/3
Earn the "The Eternal Palace" Achievement |achieve 40953/4
Earn the "Ny'alotha, the Waking City" Achievement |achieve 40953/5
Earn the "Battle for Azeroth Dungeon Hero" Achievement |achieve 40953/6
Earn the "I'm On Island Time" Achievement |achieve 40953/7
Earn the "War Stories" Achievement |achieve 40953/8
Earn the "Azerothian Diplomat" Achievement |achieve 40953/9
Earn the "Expedition Leader" Achievement |achieve 40953/10
Earn the "Maximum Effort" Achievement |achieve 40953/11
Earn the "Undersea Usurper" Achievement |achieve 40953/12
Earn the "Mecha-Done" Achievement |achieve 40953/13
Earn the "Black Empire State of Mind" Achievement |achieve 40953/14
Earn the "Through the Depths of Visions" Achievement |achieve 40953/15
Earn the "Full Heart, Can't Lose" Achievement |achieve 40953/16
Earn the "Dressed to Kill: Battle for Azeroth" Achievement |achieve 40953/17
Earn the "To All the Squirrels I Set Sail to See" Achievement |achieve 40953/18
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Uldir",{
description="Kill the bosses in the Halls of Containment, Crimson Descent and Heart of Corruption.",
achieveid={40960},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Complete the "Halls of Containment" Achievement |achieve 40960/1 |only if achieved(40960,1)
Halls of Containment: |only if not achieved(40960,1)
kill Taloc##137119 |achieve 12521/1 |only if not achieved(40960,1)
kill MOTHER##140853 |achieve 12521/2 |only if not achieved(40960,1)
kill Zek'voz##134445 |achieve 12521/3 |only if not achieved(40960,1)
Complete the "Crimson Descent" Achievement |achieve 40960/2 |only if achieved(40960,2)
Crimson Discent: |only if not achieved(40960,2)
kill Vectis##134442 |achieve 12522/1 |only if not achieved(40960,2)
kill Fetid Devourer##133298 |achieve 12522/2 |only if not achieved(40960,2)
kill Zul##138967 |achieve 12522/3 |only if not achieved(40960,2)
Complete the "Heart of Corruption" Achievement |achieve 40960/3 |only if achieved(40960,3)
Heart of Corruption: |only if not achieved(40960,3)
kill Mythrax##136383 |achieve 12523/1 |only if not achieved(40960,3)
kill G'huun##163405 |achieve 12523/2 |only if not achieved(40960,3)
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Halls of Containment",{
description="Kill the bosses in the Halls of Containment.",
achieveid={12521},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Inside the Uldir Raid:
|tip These are in the Halls of Containment section of the raid.
kill Taloc##137119 |achieve 12521/1
kill MOTHER##140853 |achieve 12521/2
kill Zek'voz##134445 |achieve 12521/3
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Crimson Descent",{
description="Kill the bosses in the Crimson Descent.",
achieveid={12522},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Inside the Uldir Raid:
|tip These are in the Crimson Descent section of the raid.
kill Vectis##134442 |achieve 12522/1
kill Fetid Devourer##133298 |achieve 12522/2
kill Zul##138967 |achieve 12522/3
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Heart of Corruption",{
description="Kill the bosses in the Heart of Corruption.",
achieveid={12523},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Inside the Uldir Raid:
|tip These are in the Heart of Corruption section of the raid.
kill Mythrax##136383 |achieve 12523/1
kill G'huun##163405 |achieve 12523/2
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Battle Raid\\Battle of Dazar'alor",{
description="Defeat the Bosses of Battle of Dazar'alot on Normal difficulty or higher.",
achieveid={40961},
patch='80001',
startlevel=50,
keywords={"Battle","For","Azeroth"},
},[[
step
Clear All Bosses in the Following Areas in the Siege of Dzar'alor on Normal Difficulty or Higher: |only if Alliance
Clear All Bosses in the Following Areas in the Defense of Dazar'alor on Normal Difficulty or Higher: |only if Horde
Clear Wing 1 |achieve 40961/1 |only if achieved(40961,1)
kill Ra'wani Kanae##144683 |achieve 13286/1 |only if not achieved(40961,1) |only if Alliance
kill Anathos Firecaller##146100 |only if Alliance
kill Ma'ra Grimfang##148238 |achieve 13286/3 |only if not achieved(40961,1) |only if Alliance
kill Grong the Revenant##144638 |achieve 13286/2 |only if not achieved(40961,1) |only if Alliance
kill Frida Ironbellows##144680 |achieve 13289/1 |only if not achieved(40961,1) |only if Horde
kill Grong##148117 |achieve 13289/2 |only if not achieved(40961,1) |only if Horde
kill Mestrah##144690 |only if not achieved(40961,1) |only if Horde
kill Manceroy Flamefist##146099 |only if not achieved(40961,1) |achieve 13289/3 |only if Horde
Clear Wing 2 |achieve 40961/2 |only if achieved(40961,2)
kill Opulence##147564 |achieve 13287/1 |only if not achieved(40961,2) |only if Alliance
Kill the Conclave of the Chosen |achieve 13287/2 |only if not achieved(40961,2) |only if Alliance
kill King Rastakhan##145616 |achieve 13287/3 |only if not achieved(40961,2) |only if Alliance
kill Opulence##147564 |achieve 13290/1 |only if not achieved(40961,2) |only if Horde
kill Pa'ku's Aspect##144747 |achieve 13290/2 |only if not achieved(40961,2) |only if Horde
kill King Rastakhan##147012 |achieve 13290/3 |only if not achieved(40961,2) |only if Horde
Clear Wing 3 |achieve 13289/3 |only if achieved(40961,3)
kill High Tinker Mekkatorque##144838 |achieve 13288/1 |only if not achieved(40961,3) |only if Alliance
kill Laminaria##146256 |achieve 13288/2 |only if not achieved(40961,3) |only if Alliance
kill Sister Katherine##146251 |only if not achieved(40961,3) |only if Alliance
kill Brother Joseph##146253 |achieve 13288/2 |only if not achieved(40961,3) |only if Alliance
kill Lady Jaina Proudmoore##149684 |achieve 13288/3 |only if not achieved(40961,3) |only if Alliance
kill High Tinker Mekkatorque##144838 |achieve 13291/1 |only if not achieved(40961,3) |only if Horde
kill Sister Katherine##146251 |only if not achieved(40961,3) |only if Horde
kill Brother Joseph##146253  |achieve 13291/2 |only if not achieved(40961,3) |only if Horde
kill Lady Jaina Proudmoore##149684 |achieve 13291/3 |only if not achieved(40961,3) |only if Horde
]])
