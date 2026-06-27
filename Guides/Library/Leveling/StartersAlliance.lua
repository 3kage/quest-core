-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Exile's Reach",{
description="This guide will assist you in completing the Exile's Reach questline.",
condition_suggested=function() return level >= 1 and level <= 10 and QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)",
},[[
step
_On the Ship Deck:_
talk Lady Jaina Proudmoore##156280
accept Warming Up##56775
step
_On the Ship Deck:_
kill Combat Dummy##160737
Destroy a Combat Dummy |q 56775/1
step
_On the Ship Deck:_
talk Lady Jaina Proudmoore##156280
turnin Warming Up##56775
step
_On the Ship Deck:_
talk Private Cole##160664
accept Stand Your Ground##58209
step
_On the Ship Deck:_
Watch the dialogue
kill Private Cole##157051 |usename Private Cole##160664
Spar with Private Cole |q 58209/1
step
_On the Ship Deck:_
Watch the dialogue
talk Private Cole##160664
turnin Stand Your Ground##58209
accept Brace for Impact##58208
step
_On the Ship Deck:_
Watch the dialogue
|tip Follow your allies.
talk Lady Jaina Proudmoore##156280
turnin Brace for Impact##58208
step
Reach the Murloc Hideaway |complete subzone("Murloc Hideaway") |q 55122 |future
step
talk Lady Jaina Proudmoore##156626
accept Murloc Mania##55122 |goto Exile's Reach/0 61.88,82.89
step
kill Murloc Watershaper##150229, Murloc Spearhunter##150228
|tip Loot them.
Recover #6# First Aid Kits from Defeated Murlocs |q 55122/1 |goto Exile's Reach/0 59.96,79.38
step
talk Lady Jaina Proudmoore##156626
turnin Murloc Mania##55122 |goto Exile's Reach/0 61.88,82.89
accept Emergency First Aid##54951 |goto Exile's Reach/0 61.88,82.89
step
clicknpc Kee-La##156612
Use the First Aid Kit on Kee-La |q 54951/2 |goto Exile's Reach/0 61.73,83.50
step
clicknpc Austin Huxworth##156610
Use the First Aid Kit on Austin Huxworth |q 54951/3 |goto Exile's Reach/0 61.37,82.60
step
clicknpc Bjorn Stouthands##156609
Use the First Aid Kit on Bjorn Stouthands |q 54951/1 |goto Exile's Reach/0 61.55,82.24
step
Watch the dialogue
talk Lady Jaina Proudmoore##156626
turnin Emergency First Aid##54951 |goto Exile's Reach/0 61.88,82.89
accept Finding the Lost Expedition##54952 |goto Exile's Reach/0 61.88,82.89
step
Travel North to Find Any Expedition Survivors |q 54952/1 |goto Exile's Reach/0 58.37,74.64
step
talk Captain Garrick##156651
turnin Finding the Lost Expedition##54952 |goto Exile's Reach/0 58.37,74.64
accept Cooking Meat##55174 |goto Exile's Reach/0 58.37,74.64
step
kill Coastal Goat##161130, Prickly Porcupine##161131, Coastal Albatross##161133
Collect #5# Raw Meat from Wildlife |q 55174/1 |goto Exile's Reach/0 58.93,72.13
step
click Campfire##339769
Cook the Meat on the Campfire |q 55174/2 |goto Exile's Reach/0 58.32,74.58
step
talk Alaria##156607
turnin Cooking Meat##55174 |goto Exile's Reach/0 58.36,74.47
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.64
|only if Druid
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick.
|tip On your minimap.
kill Captain Garrick##164577 |usename Captain Garrick##156651
|tip Follow her instructions.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Druid
step
talk Captain Garrick##156651
|tip Runs to this location.
turnin Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.63
|only if Druid
step
talk Alaria##156607
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Druid
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.87
|only if Druid
step
talk Alaria##175031
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Hunter
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.86
accept Taming the Wilds##59342 |goto Exile's Reach/0 62.72,69.86
|only if Hunter
step
Watch the dialogue
Learn Tame Beast from Austin |q 59342/1 |goto Exile's Reach/0 62.72,69.86
|only if Hunter
step
Tame Any Wildlife Beast |q 59342/2 |goto Exile's Reach/0 59.46,72.28
|tip Cast {o}Tame Beast{} on any beast enemy.
|only if Hunter
step
talk Austin Huxworth##154327
turnin Taming the Wilds##59342 |goto Exile's Reach/0 62.72,69.86
|only if Hunter
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.64
|only if Mage
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick.
|tip On your minimap.
kill Captain Garrick##164577 |usename Captain Garrick##156651
|tip Follow her instructions.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Mage
step
talk Captain Garrick##156651
|tip Runs to this location.
turnin Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.63
|only if Mage
step
talk Alaria##175031
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Mage
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.87
|only if Mage
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59339 |goto Exile's Reach/0 58.37,74.63
|only if Monk
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick.
|tip On your minimap.
kill Captain Garrick##164577 |usename Captain Garrick##156651
|tip Follow her instructions.
Use {y}Tiger Palm{} #6# Times on Captain Garrick |q 59339/1
Use {y}Blackout Kick{} #3# Times on Captain Garrick |q 59339/2
|only if Monk
step
talk Captain Garrick##156651
|tip Runs to this location.
turnin Enhanced Combat Tactics##59339 |goto Exile's Reach/0 58.37,74.63
|only if Monk
step
talk Alaria##175031
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Monk
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.87
|only if Monk
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.64
|only if Paladin
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick.
|tip On your minimap.
kill Captain Garrick##164577 |usename Captain Garrick##156651
|tip Follow her instructions.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Paladin
step
talk Captain Garrick##156651
|tip Runs to this location.
turnin Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.63
|only if Paladin
step
talk Alaria##175031
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Paladin
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.87
|only if Paladin
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.64
|only if Priest
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick.
|tip On your minimap.
kill Captain Garrick##164577 |usename Captain Garrick##156651
|tip Follow her instructions.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Priest
step
talk Captain Garrick##156651
|tip Runs to this location.
turnin Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.63
|only if Priest
step
talk Alaria##175031
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Priest
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.87
|only if Priest
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.63
|only if Rogue
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick.
|tip On your minimap.
kill Captain Garrick##164577 |usename Captain Garrick##156651
|tip Follow her instructions.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Rogue
step
talk Captain Garrick##156651
|tip Runs to this location.
turnin Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.63
|only if Rogue
step
talk Alaria##175031
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Rogue
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.87
|only if Rogue
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.64
|only if Shaman
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick.
|tip On your minimap.
kill Captain Garrick##164577 |usename Captain Garrick##156651
|tip Follow her instructions.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Shaman
step
talk Captain Garrick##156651
|tip Runs to this location.
turnin Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.63
|only if Shaman
step
talk Alaria##175031
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Shaman
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.87
|only if Shaman
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.64
|only if Warlock
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick.
|tip On your minimap.
kill Captain Garrick##164577 |usename Captain Garrick##156651
|tip Follow her instructions.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Warlock
step
talk Captain Garrick##156651
|tip Runs to this location.
turnin Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.63
|only if Warlock
step
talk Alaria##175031
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Warlock
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.87
|only if Warlock
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.63
|only if Warrior
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick.
|tip On your minimap.
kill Captain Garrick##164577 |usename Captain Garrick##156651
|tip Follow her instructions.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Warrior
step
talk Captain Garrick##156651
|tip Runs to this location.
turnin Enhanced Combat Tactics##59254 |goto Exile's Reach/0 58.37,74.64
|only if Warrior
step
talk Alaria##175031
accept Northbound##55173 |goto Exile's Reach/0 58.36,74.47
|only if Warrior
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto Exile's Reach/0 62.72,69.87
|only if Warrior
step
talk Austin Huxworth##154327
accept Forbidden Quilboar Necromancy##55184 |goto Exile's Reach/0 62.72,69.86
accept Down with the Quilboar##55186 |goto Exile's Reach/0 62.72,69.86
step
kill Quilboar Warrior##150237, Quilboar Geomancer##150238
Slay #7# Quilboars |q 55184/1 |goto Exile's Reach/0 61.64,62.99
step
kill Geolord Grek'og##151091 |q 55186/1 |goto Exile's Reach/0 58.90,63.02
step
talk Austin Huxworth##149915
turnin Forbidden Quilboar Necromancy##55184 |goto Exile's Reach/0 56.26,59.17
step
talk Lindie Springstock##149899
turnin Down with the Quilboar##55186 |goto Exile's Reach/0 56.17,59.12
accept The Scout-o-Matic 5000##55193 |goto Exile's Reach/0 56.17,59.12
step
Watch the dialogue
clicknpc Scout-o-Matic 5000##156518
Begin Flying with the Scout-o-Matic 5000 |invehicle |goto Exile's Reach/0 56.05,58.80 |q 55193
step
Watch the dialogue
Use the Scout-o-Matic 5000 to Scout the Area |q 55193/1 |goto Exile's Reach/0 55.04,54.20 |notravel
step
Watch the dialogue
Return to Lindie Springstock |outvehicle |goto Exile's Reach/0 56.07,58.80 |q 55193 |notravel
step
talk Lindie Springstock##149899
turnin The Scout-o-Matic 5000##55193 |goto Exile's Reach/0 56.17,59.12
accept Re-sizing the Situation##56034 |goto Exile's Reach/0 56.17,59.12
step
use the Re-Sizer v9.00.1##170557
|tip On Wandering Boars.
Test the Re-Sizer v9.00.1 on #3# Wandering Boars |q 56034/1 |goto Exile's Reach/0 57.00,58.02
'|clicknpc Wandering Boar##156716
step
talk Captain Garrick##156280
turnin Re-sizing the Situation##56034 |goto Exile's Reach/0 56.25,59.04
accept Ride of the Scientifically Enhanced Boar##55879 |goto Exile's Reach/0 56.25,59.04
step
clicknpc Giant Boar##156595
Ride the Giant Boar |q 55879/1 |goto Exile's Reach/0 56.53,58.43
step
kill 8 Monstrous Cadaver##157091 |q 55879/2 |goto Exile's Reach/0 53.05,53.84
|tip Larger undead enemies.
step
kill Torgok##162817 |q 55879/3 |goto Exile's Reach/0 51.01,52.80
|tip Inside the building.
step
Watch the dialogue
talk Wrathion##156799
turnin Ride of the Scientifically Enhanced Boar##55879 |goto Exile's Reach/0 52.59,53.35
step
talk Captain Garrick##245394
accept Stocking Up on Supplies##55194 |goto Exile's Reach/0 52.26,55.62
step
talk Quartermaster Richter##156800
Purchase Any Item from Quartermaster Richter |q 55194/1 |goto Exile's Reach/0 52.23,55.31
step
talk Quartermaster Richter##156800
Sell Any Item to Quartermaster Richter |q 55194/2 |goto Exile's Reach/0 52.23,55.31
step
talk Captain Garrick##245394
turnin Stocking Up on Supplies##55194 |goto Exile's Reach/0 52.26,55.62
step
talk Private Cole##156801
accept A Paladin's Service##58923 |goto Exile's Reach/0 52.08,55.29
|only if Paladin
step
talk Private Cole##156801
accept A Priest's End##58953 |goto Exile's Reach/0 52.08,55.29
|only if Priest
step
Look for the Corpses of the First Expedition Recruits |q 58953/1 |goto Exile's Reach/0 56.10,53.69
'|clicknpc Branven Hammerheart##163108
|only if Priest
step
talk Branven Hammerheart##163108
turnin A Priest's End##58953 |goto Exile's Reach/0 56.10,53.69
accept Resurrecting the Recruits##58960 |goto Exile's Reach/0 56.10,53.69
|only if Priest
step
Resurrect the Expedition Recruit |q 58960/1 |goto Exile's Reach/0 56.18,52.99 |count 1 hidden
|tip Cast {o}Resurrection{} on the {o}First Expedition Recruit{}.
'|clicknpc First Expedition Recruit##163137
|only if Priest
step
Resurrect the Expedition Recruit |q 58960/1 |goto Exile's Reach/0 56.25,53.44 |count 2 hidden
|tip Cast {o}Resurrection{} on the {o}First Expedition Recruit{}.
'|clicknpc First Expedition Recruit##163137
|only if Priest
step
Resurrect the Expedition Recruit |q 58960/1 |goto Exile's Reach/0 56.48,53.66 |count 3 hidden
|tip Cast {o}Resurrection{} on the {o}First Expedition Recruit{}.
'|clicknpc First Expedition Recruit##163137
|only if Priest
step
talk Branven Hammerheart##163108
turnin Resurrecting the Recruits##58960 |goto Exile's Reach/0 56.10,53.69
|only if Priest
step
talk Private Cole##156801
accept A Rogue's End##58917 |goto Exile's Reach/0 52.08,55.29
|only if Rogue
step
_During the Next Steps:_
Avoid the Elite Bear
|tip Cast {o}Stealth{} to sneak by the {o}elite bear{}.
|tip Walks around.
Click Here to Continue |confirm |q 58917
step
talk Coulston Nereus##162972
Select _"I'm in. How do I make this poison?"_ |gossip 51266
Select _"Get three withering hemlocks and make sure the giant bear isn't near me when I do it. Got it."_ |gossip 51267
Find the First Expedition's Rogue |q 58917/1 |goto Exile's Reach/0 45.64,56.12
|only if Rogue
step
click Withering Hemlock##341951
collect Withering Hemlock##174916 |q 58917/2 |goto Exile's Reach/0 44.77,56.43 |count 1 hidden
|only if Rogue
step
click Withering Hemlock##341951
collect Withering Hemlock##174916 |q 58917/2 |goto Exile's Reach/0 45.18,55.69 |count 2 hidden
|only if Rogue
step
click Withering Hemlock##341951
collect Withering Hemlock##174916 |q 58917/2 |goto Exile's Reach/0 45.09,54.67 |count 3 hidden
|only if Rogue
step
talk Coulston Nereus##163024
turnin A Rogue's End##58917 |goto Exile's Reach/0 45.65,56.13
accept The Deadliest of Poisons##58933 |goto Exile's Reach/0 45.65,56.13
|only if Rogue
step
Cast Instant Poison |q 58933/1
|only if Rogue
step
kill Gutgruk the Tough##163036 |usename Gutgruk the Tough##163031 |q 58933/2 |goto Exile's Reach/0 48.85,51.51
|tip Walks around.
|tip On your minimap.
|only if Rogue
step
talk Private Cole##156801
turnin The Deadliest of Poisons##58933 |goto Exile's Reach/0 52.08,55.29
|only if Rogue
step
talk Ghost Wolf##163329
accept A Shaman's Duty##59002 |goto Exile's Reach/0 52.30,55.65
|only if Shaman
step
click Veil Blossom##342366
collect Veil Blossom##174968 |q 59002/1 |goto Exile's Reach/0 52.12,51.65 |count 1 hidden
|only if Shaman
step
click Veil Blossom##342366
collect Veil Blossom##174968 |q 59002/1 |goto Exile's Reach/0 51.86,51.14 |count 2 hidden
|only if Shaman
step
click Veil Blossom##342366
collect Veil Blossom##174968 |q 59002/1 |goto Exile's Reach/0 52.52,51.01 |count 3 hidden
|only if Shaman
step
click Veil Blossom##342366
collect Veil Blossom##174968 |q 59002/1 |goto Exile's Reach/0 53.21,51.37 |count 4 hidden
|only if Shaman
step
click Campfire
Burn the Blossoms on the Campfire |q 59002/2 |goto Exile's Reach/0 52.24,55.53
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto Exile's Reach/0 54.39,58.46 |count 1 hidden
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto Exile's Reach/0 55.27,52.80 |count 2 hidden
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto Exile's Reach/0 55.40,50.79 |count 3 hidden
|only if Shaman
step
talk Ghost Wolf##163329
turnin A Shaman's Duty##59002 |goto Exile's Reach/0 52.30,55.65
|only if Shaman
step
talk Private Cole##156801
accept A Warlock's Bargain##58962 |goto Exile's Reach/0 52.08,55.29
|only if Warlock
step
clicknpc Hubert Lucas##163209
Select _"<Rise and retrieve the warlock's grimoire and finish the ritual to summon a voidwalker.>"_ |gossip 51202
Investigate the Dead Warlock's Body |q 58962/1 |goto Exile's Reach/0 52.52,45.86
|only if Warlock
step
click Old Grimoire##342259
Recover the Old Grimoire |q 58962/2 |goto Exile's Reach/0 52.60,45.85
|only if Warlock
step
use the Old Grimoire##174947
Summon the Voidwalker with the Grimoire |q 58962/3 |goto Exile's Reach/0 52.60,45.85
|only if Warlock
step
talk Summoned Voidwalker##163246
turnin A Warlock's Bargain##58962 |goto Exile's Reach/0 52.61,45.44
|only if Warlock
step
talk Private Cole##156801
accept A Warrior's End##58914 |goto Exile's Reach/0 52.08,55.29
|only if Warrior
step
talk Hjalmar the Undying##162943
|tip On the bridge.
|tip Walks around.
turnin A Warrior's End##58914 |goto Exile's Reach/0 51.48,47.86
accept Hjalmar's Final Execution##58915 |goto Exile's Reach/0 51.48,47.86
|only if Warrior
step
talk Hjalmar the Undying##162943
|tip On the bridge.
|tip Walks around.
Select _"I'm ready to fight you, Hjalmar. I'll give you your warrior's death with Execute."_ |gossip 51265
kill Hjalmar the Undying##162943
|tip Cast {o}Execute{} for the {o}final blow{}.
Slay Hjalmar the Undying with Execute |q 58915/1 |goto Exile's Reach/0 51.48,47.86
|only if Warrior
step
talk Private Cole##156801
turnin Hjalmar's Final Execution##58915 |goto Exile's Reach/0 52.08,55.29
|only if Warrior
step
talk Bjorn Stouthands##154300
accept Westward Bound##55965 |goto Exile's Reach/0 53.02,55.06
step
Watch the dialogue
talk Bjorn Stouthands##156891
turnin Westward Bound##55965 |goto Exile's Reach/0 51.18,59.61
step
talk Alaria##156803
accept Who Lurks in the Pit##55639 |goto Exile's Reach/0 51.11,59.50
step
Run down the ramp and enter the cave |goto Exile's Reach/0 51.03,60.45 < 7 |walk |only if not (subzone("Hrun's Barrow") and indoors())
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto Exile's Reach/0 52.05,60.01 |count 1 hidden
step
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto Exile's Reach/0 50.28,58.69 |count 2 hidden
step
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto Exile's Reach/0 49.69,61.95 |count 3 hidden
step
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto Exile's Reach/0 51.97,60.72 |count 4 hidden
step
click Thick Cocoon##339568
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto Exile's Reach/0 50.89,58.10 |count 5 hidden
step
kill Hrun the Exiled##156900
|tip Inside the cave.
Defeat Hrun to Rescue Ralia Dreamchaser |q 55639/2 |goto Exile's Reach/0 47.41,60.48
step
Watch the dialogue
|tip Inside the cave.
clicknpc Ralia Dreamchaser##156929
Ride Ralia Dreamchaser to Escape |q 55639/3 |goto Exile's Reach/0 47.78,60.28
step
talk Captain Garrick##245394
turnin Who Lurks in the Pit##55639 |goto Exile's Reach/0 52.26,55.61
accept Repair Yourself##85678 |goto Exile's Reach/0 52.26,55.61
step
talk Quartermaster Richter##156800
Speak With Quartmaster Richter to Repair All Items |q 85678/1 |goto Exile's Reach/0 52.23,55.31
step
talk Captain Garrick##245394
turnin Repair Yourself##85678 |goto Exile's Reach/0 52.26,55.61
step
talk Ralia Dreamchaser##156932
accept A Druid's Form##59350 |goto Exile's Reach/0 52.33,55.43
|only if Druid
step
click Druid Stone
Commune with the Druid Stone |q 59350/1 |goto Exile's Reach/0 45.38,49.24
|only if Druid
step
talk Ralia Dreamchaser##156932
turnin A Druid's Form##59350 |goto Exile's Reach/0 45.50,49.27
|only if Druid
step
talk Henry Garrick##156833
accept The Harpy Problem##55196 |goto Exile's Reach/0 53.51,52.31
step
talk Lightspawn##157114
accept Freeing the Light##54933 |goto Exile's Reach/0 58.19,50.21
step
click Ritual Pedestal
Disperse the First Necrotic Energy |q 54933/1 |goto Exile's Reach/0 57.44,49.69
step
click Ritual Pedestal
Disperse the Second Necrotic Energy |q 54933/2 |goto Exile's Reach/0 58.47,49.17
step
click Ritual Pedestal
Disperse the Third Necrotic Energy |q 54933/3 |goto Exile's Reach/0 58.99,50.66
step
click Ritual Pedestal
Disperse the Fourth Necrotic Energy |q 54933/4 |goto Exile's Reach/0 57.84,51.19
step
talk Yorah##162998
Select _"What does the Light wish of me?"_ |gossip 51269
Speak with the Ghost Paladin |q 58923/1 |goto Exile's Reach/0 57.57,52.21
|only if Paladin
step
talk Yorah##162998
turnin A Paladin's Service##58923 |goto Exile's Reach/0 57.57,52.21
accept The Divine's Shield##58946 |goto Exile's Reach/0 57.57,52.21
|only if Paladin
step
Use Divine Shield |q 58946/1
|tip Cast {o}Divine Shield{}.
|tip {o}HURRY{} in the next step.
|only if Paladin
step
click Necrotic Altar
Destroy the Necrotic Altar |q 58946/2 |goto Exile's Reach/0 57.15,52.66
|only if Paladin
step
talk Yorah##162998
turnin The Divine's Shield##58946 |goto Exile's Reach/0 57.57,52.21
|only if Paladin
step
Watch the dialogue
talk Lightspawn##157114
turnin Freeing the Light##54933 |goto Exile's Reach/0 58.19,50.21
step
talk Henry Garrick##156859
turnin The Harpy Problem##55196 |goto Exile's Reach/0 56.83,46.18
accept The Rescue of Meredy Huntswell##55763 |goto Exile's Reach/0 56.83,46.18
accept Purge the Totems##55881 |goto Exile's Reach/0 56.83,46.18
step
talk Kee-La##156860
accept Harpy Culling##55764 |goto Exile's Reach/0 56.93,46.25
stickystart "Slay_Harpies_And_Cohorts"
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto Exile's Reach/0 58.21,44.49 |count 1
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto Exile's Reach/0 58.85,42.94 |count 2
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto Exile's Reach/0 61.23,41.30 |count 3
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto Exile's Reach/0 59.00,39.08 |count 4
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto Exile's Reach/0 57.17,42.21 |count 5
step
talk Meredy Huntswell##153211
Select _"I'll fight the harpies that come. Can you use your magic to break free?"_ |gossip 49526
Kill the enemies that attack in waves
|tip Allies will help you.
kill Bloodbeak##153964
|tip Large bird that flies down.
Rescue Meredy Huntswell |q 55763/1 |goto Exile's Reach/0 54.29,41.61
step
label "Slay_Harpies_And_Cohorts"
kill Harpy Snatcher##152571, Harpy Boltcaller##152843, Hunting Worg##152998, Harpy Ambusher##155192
|tip Harpies and wolves.
Slay #10# Harpies and Cohorts |q 55764/1 |goto Exile's Reach/0 57.17,42.21
step
talk Kee-La##156860
turnin Harpy Culling##55764 |goto Exile's Reach/0 56.93,46.25
step
talk Meredy Huntswell##156882
turnin The Rescue of Meredy Huntswell##55763 |goto Exile's Reach/0 56.91,46.14
step
talk Henry Garrick##156859
turnin Purge the Totems##55881 |goto Exile's Reach/0 56.83,46.18
accept Message to Base##55882 |goto Exile's Reach/0 56.83,46.18
step
talk Captain Garrick##245394
turnin Message to Base##55882 |goto Exile's Reach/0 52.26,55.61
step
talk Austin Huxworth##161666
accept A Hunter's Trap##59355 |goto Exile's Reach/0 52.54,55.46
|only if Hunter
step
talk Meredy Huntswell##156886
Select _"Meredy, do you have an ice mote I could use?"_ |gossip 51803
Receive an Ice Mote from Meredy Huntswell |q 59355/1 |goto Exile's Reach/0 52.29,55.47
|only if Hunter
step
click Rusted Chains
collect Rusted Chain##175981 |q 59355/2 |goto Exile's Reach/0 52.24,53.03
|only if Hunter
step
click Old Spring
collect Old Spring##175980 |q 59355/3 |goto Exile's Reach/0 51.83,51.63
|only if Hunter
step
talk Austin Huxworth##161666
turnin A Hunter's Trap##59355 |goto Exile's Reach/0 52.54,55.46
accept Hunting the Stalker##59356 |goto Exile's Reach/0 52.54,55.46
|only if Hunter
step
Watch the dialogue
|tip Cast {o}Freezing Trap{}.
Capture the Stalker |q 59356/1 |goto Exile's Reach/0 52.40,54.36
|only if Hunter
step
Watch the dialogue
talk Austin Huxworth##161666
turnin Hunting the Stalker##59356 |goto Exile's Reach/0 52.54,55.46
accept The Art of Taming##60168 |goto Exile's Reach/0 52.54,55.46
|only if Hunter
step
Temporarily Dismiss Your Current Pet |q 60168/1 |goto Exile's Reach/0 52.54,55.46
|tip Cast {o}Dismiss Pet{}.
|only if Hunter
step
talk Austin Huxworth##161666
Select _"I'm ready to tame my pet, call them out."_ |gossip 49525
Watch the dialogue
|tip Cast {o}Tame Beast{} on the beast nearby.
Speak with Austin to Summon and Tame Your New Pet |q 60168/2 |goto Exile's Reach/0 52.54,55.46
|only if Hunter
step
talk Austin Huxworth##161666
Select _"I'd like to stable my pet here."_ |gossip 49523
Speak with Austin to Learn About Pet Stables |q 60168/3 |goto Exile's Reach/0 52.54,55.46
|only if Hunter
step
talk Austin Huxworth##161666
turnin The Art of Taming##60168 |goto Exile's Reach/0 52.54,55.46
|only if Hunter
step
talk Meredy Huntswell##156886
|tip Runs to this location.
accept A Mage's Knowledge##59352 |goto Exile's Reach/0 52.29,55.47
|only if Mage
step
click Meredy's Spellbook##346273
|tip Underwater.
Recover Meredy's Book from the Lake |q 59352/1 |goto Exile's Reach/0 51.95,49.84
|only if Mage
step
talk Meredy Huntswell##156886
turnin A Mage's Knowledge##59352 |goto Exile's Reach/0 52.29,55.47
|only if Mage
step
Watch the dialogue
talk Meredy Huntswell##156886
accept The Best Way to Use Sheep##59354 |goto Exile's Reach/0 52.29,55.46
|only if Mage
step
talk Meredy Huntswell##156886
Select _"I'm ready to practice polymorph."_ |gossip 51802
Speak with Meredy to Begin Sparring |q 59354/1 |goto Exile's Reach/0 52.29,55.46
|only if Mage
step
_Nearby:_
Watch the dialogue
|tip Follow Private Cole.
|tip On your minimap.
Practice Polymorph with Cole |q 59955/2
|tip Cast {o}Polymorph{} on {o}Private Cole{}.
|tip Attack him after.
'|clicknpc Private Cole##168373
|only if Mage
step
Watch the dialogue
talk Meredy Huntswell##156886
turnin The Best Way to Use Sheep##59354 |goto Exile's Reach/0 52.29,55.46
|only if Mage
step
talk Kee-La##156885
|tip Runs to this location.
accept A Monk's Focus##59347 |goto Exile's Reach/0 52.14,55.67
|only if Monk
step
talk Kee-La##164835
|tip Runs to this location.
Select _"I'm ready, let's begin to meditate."_ |gossip 51237
Watch the dialogue
Meditate with Kee-La |q 59347/1 |goto Exile's Reach/0 52.62,49.49
|only if Monk
step
talk Kee-La##164835
turnin A Monk's Focus##59347 |goto Exile's Reach/0 52.62,49.49
accept One Last Spar##59349 |goto Exile's Reach/0 52.62,49.49
|only if Monk
step
kill Kee-La##164868 |usename Kee-La##164835
|tip Cast {o}Touch of Death{} on her when she's {o}lower health than you{}.
|tip On your minimap.
Use Touch of Death on Kee-La |q 59349/1 |goto Exile's Reach/0 53.29,49.00
|only if Monk
step
talk Captain Garrick##245394
turnin One Last Spar##59349 |goto Exile's Reach/0 52.26,55.61
|only if Monk
step
talk Captain Garrick##245394
accept To Darkmaul Citadel##56344 |goto Exile's Reach/0 52.26,55.61
step
talk Lady Jaina Proudmoore##245397
|tip Runs to this location.
turnin To Darkmaul Citadel##56344 |goto Exile's Reach/0 48.90,49.51
accept Right Beneath Their Eyes##55981 |goto Exile's Reach/0 48.90,49.51
step
talk Meredy Huntswell##156943
Select _"I'm ready, transform me into an ogre and I'll sneak into their citadel."_ |gossip 50819
Watch the dialogue
Ask Meredy to Perform Ogre Transformation Spell |q 55981/1 |goto Exile's Reach/0 49.04,49.20
step
Enter Darkmaul Citadel |q 55981/2 |goto Exile's Reach/0 45.66,44.57
step
Find the Ogre Cooking Area |q 55981/3 |goto Exile's Reach/0 45.69,37.57
step
Wave to Gor'groth |q 55981/4 |goto Exile's Reach/0 45.69,37.57
|tip Perform the {o}/wave{} emote. |script DoEmote("WAVE")
step
Reach the Citadel Entrance |q 55981/6 |goto Exile's Reach/0 41.04,32.92
step
Watch the dialogue
talk Lady Jaina Proudmoore##156961
turnin Right Beneath Their Eyes##55981 |goto Exile's Reach/0 40.15,32.36
accept Controlling their Stones##55990 |goto Exile's Reach/0 40.15,32.36
step
talk Henry Garrick##156942
accept Like Ogres to the Slaughter##55988 |goto Exile's Reach/0 40.34,32.25
step
talk Captain Garrick##245667
accept Catapult Destruction##55989 |goto Exile's Reach/0 40.19,32.63
stickystart "Slay_Ogres"
step
kill Wug##153582
|tip Inside the building.
Recover Wug's Ward Stone |q 55990/2 |goto Exile's Reach/0 44.16,37.34
step
kill Jugnug##153583
|tip Inside the building.
Recover Jugnug's Ward Stone |q 55990/1 |goto Exile's Reach/0 47.55,34.19
step
click Catapult
Destroy the Catapult |q 55989/1 |goto Exile's Reach/0 47.05,36.37 |count 1 hidden
step
click Catapult
Destroy the Catapult |q 55989/1 |goto Exile's Reach/0 46.19,39.41 |count 2 hidden
step
click Catapult
Destroy the Catapult |q 55989/1 |goto Exile's Reach/0 45.08,41.59 |count 3 hidden
step
click Catapult
Destroy the Catapult |q 55989/1 |goto Exile's Reach/0 43.87,42.61 |count 4 hidden
step
kill Grunk##153581
|tip Inside the building.
Recover Grunk's Ward Stone |q 55990/3 |goto Exile's Reach/0 42.82,40.97
step
label "Slay_Ogres"
kill Ogre Shadowcaster##153242, Ogre Chef##154103, Ogre Brute##153239
Slay #8# Ogres |q 55988/1 |goto Exile's Reach/0 45.75,39.09
step
talk Captain Garrick##245667
turnin Catapult Destruction##55989 |goto Exile's Reach/0 40.19,32.63
step
talk Henry Garrick##156942
turnin Like Ogres to the Slaughter##55988 |goto Exile's Reach/0 40.34,32.25
step
click Ogre Runestone
Disable the Rune Holding Captain Kelra |q 55990/4 |goto Exile's Reach/0 39.96,32.44 |count 1 hidden
step
click Ogre Runestone
Disable the Rune Holding Captain Kelra |q 55990/4 |goto Exile's Reach/0 39.75,32.07 |count 2 hidden
step
click Ogre Runestone
Disable the Rune Holding Captain Kelra |q 55990/4 |goto Exile's Reach/0 40.05,31.98 |count 3 hidden
step
Watch the dialogue
talk Captain Kelra##156965
turnin Controlling their Stones##55990 |goto Exile's Reach/0 39.92,32.14
accept Dungeon: Darkmaul Citadel##55992 |goto Exile's Reach/0 39.92,32.14
step
Enter the Darkmaul Citadel Dungeon |q 55992/1
|tip Use the Group Finder.
step
_Inside the Dungeon:_
|tip Follow Jaina Proudmoore.
kill Kalecgos##156501
|tip Final boss.
Stop Gor'groth's Final Ritual |q 55992/2
'|clicknpc Captain Garrick##161350
step
_Inside the Dungeon:_
talk Kalecgos##156501
Select _"I'm ready to get out of this citadel."_ |gossip 134083
Speak with Kalecgos to Leave Darkmaul Citadel |q 55992/3
step
Watch the dialogue
talk Lady Jaina Proudmoore##245686
turnin Dungeon: Darkmaul Citadel##55992 |goto Exile's Reach/0 39.66,31.99
accept An End to Beginnings##55991 |goto Exile's Reach/0 39.66,31.99
step
talk Kalecgos##244389
Select _"Take me to the Dragon Isles and tell me about what's happening there."_ |gossip 133763
Watch the dialogue
Speak to Kalecgos to Travel to the Dragon Isles |q 55991/1 |goto Exile's Reach/0 39.97,32.23
step
Reach the Waking Shores |complete zone("The Waking Shores") |q 55991
step
talk Kalecgos##238913
turnin An End to Beginnings##55991 |goto The Waking Shores/0 81.98,31.47
accept What's Your Specialty?##87547 |goto The Waking Shores/0 81.98,31.47
step
Activate a Combat Specialization |q 87547/1
|tip Open your {o}Talents & Spellbook{}.
|tip Choose the {o}Specialization{} tab.
step
talk Kalecgos##238913
turnin What's Your Specialty?##87547 |goto The Waking Shores/0 81.98,31.47
accept Home Is Where the Hearth Is##87555 |goto The Waking Shores/0 81.98,31.47
step
Ride Any Mount from Your Mount Collection |q 87555/1
|tip Open your {o}Warband Collections{}.
step
talk Happy Hal##187412
Select _"Bind your hearthstone to this inn."_ |gossip 54925
Speak with Happy Hal to Get and Bind Your Hearthstone |q 87555/2 |goto The Waking Shores/0 81.31,31.90
step
talk Kalecgos##238913
turnin Home Is Where the Hearth Is##87555 |goto The Waking Shores/0 81.98,31.47
accept Aiding the Dragon Isles##87562 |goto The Waking Shores/0 81.98,31.47
step
talk Toddy Whiskers##189022
turnin Aiding the Dragon Isles##87562 |goto The Waking Shores/0 82.13,31.88
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Chromie Time",{
description="This guide will assist you in changing the expansion you will\n"..
"\nlevel up in by speaking with Chromie.\n",
condition_suggested=function() return level >= 10 and level <= 70 end,
startlevel=10.00,
endlevel=70.00,
},[[
step
talk Chromie##167032
turnin Adventurers Wanted: Chromie's Call##62567 |goto Stormwind City/0 56.26,17.32
|only if haveq(62567) or completedq(62567)
step
_Are You Eligible For Chromie Time?_
|tip If you already have {o}another max level character{}, you are {o}eligible{} for Chromie Time.
|tip Otherwise, you must level up in the {o}Dragon Isles (Dragonflight) zones{}.
|tip Chromie Time allows you to {o}choose a different expansion{} to level up to in.
No - Level in Dragonflight Zones	|confirm	|or	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
Yes - Choose a Different Expansion	|confirm	|or	|next "Chromie_Time_Start"
step
label "Chromie_Time_Start"
talk Chromie##167032
Select _"I'd like to return to the present timeline, Chromie."_ |gossip 51903
Return to the Present Timeline |complete not (chromietime() == TBC or chromietime() == WOTLK or chromietime() == CATA or chromietime() == MOP or chromietime() == WOD or chromietime() == LEG or chromietime() == BFA or chromietime() == SHA or chromietime() == DF)  |goto Stormwind City/0 56.26,17.32
step
talk Chromie##167032
Select _"(Recommended) Select a timeline."_ |gossip 51901
Choose an Expansion |complete false |goto Stormwind City/0 56.26,17.32 |or
'|complete chromietime() == TBC		|or	|next "Burning_Crusade"
'|complete chromietime() == WOTLK	|or	|next "Wrath_Of_The_Lich_King"
'|complete chromietime() == CATA	|or	|next "The_Cataclysm"
'|complete chromietime() == MOP		|or	|next "Mists_Of_Pandaria"
'|complete chromietime() == WOD		|or	|next "Warlords_Of_Draenor"
'|complete chromietime() == LEG		|or	|next "Legion"
'|complete chromietime() == BFA		|or	|next "Battle_For_Azeroth"
'|complete chromietime() == SHA		|or	|next "Shadowlands"
'|complete chromietime() == DF		|or	|next "Dragonflight"
step
label "Burning_Crusade"
accept Burning Crusade: To Outland!##60120 |or
'|accept Onward to Adventure: Outland##60959 |or
|tip You will accept this quest automatically.
step
talk Honor Hold Mage##150122
|tip Inside the tower.
Select _"I must report to the Dark Portal."_ |gossip 50005
Talk to the Honor Hold Mage |q 60120/1 |goto Stormwind City/0 49.11,87.35
|only if haveq(60120)
step
Go Through the Dark Portal |q 60120/2 |goto Blasted Lands/0 55.01,54.17
|only if haveq(60120)
step
Travel to Hellfire Peninsula |q 60959/1 |goto Hellfire Peninsula/0 87.00,49.00
|only if haveq(60959)
step
_Click the Complete Quest Box:_
turnin Burning Crusade: To Outland!##60120 |only if haveq(60120) or completedq(60120)
turnin Onward to Adventure: Outland##60959 |only if haveq(60959) or completedq(60959)
|next "Leveling Guides\\The Burning Crusade (10-70)\\Hellfire Peninsula (10-70)"
step
label "Wrath_Of_The_Lich_King"
accept Wrath of the Lich King: To Northrend!##60096	|or |only if haveq(60096)
accept Onward to Adventure: Northrend##60962		|or |only if haveq(60962)
|tip You will accept this quest automatically.
step
_Which Zone Do You Want to Start In?_
|tip It {o}doesn't matter{}, just preference.
Borean Tundra |confirm |next "Borean_Tundra"
Howling Fjord |confirm |next "Howling_Fjord"
step
label "Borean_Tundra"
talk Auctioneer Fitch##8719
|tip Inside the building.
buy Overcharged Capacitor##39682 |n
|tip This is for a {o}future quest{}.
|tip If you can't get one, skip it.
collect Overcharged Capacitor##39682 |goto Stormwind City/0 61.16,70.79 |q 11650 |future
step
Sail to Northrend |q 60096/1 |goto Borean Tundra/0 60.00,67.00
|tip Ride the boat to Borean Tundra.
|only if haveq(60096)
step
Travel to Northrend |q 60962/1 |goto Borean Tundra/0 60.00,67.00
|only if haveq(60962)
step
_Click the Complete Quest Box:_
turnin Wrath of the Lich King: To Northrend!##60096 |only if haveq(60096) or completedq(60096)
turnin Onward to Adventure: Northrend##60962 |only if haveq(60962) or completedq(60962)
|next "Leveling Guides\\Wrath of the Lich King (10-70)\\Borean Tundra (10-70)"
step
label "Howling_Fjord"
Sail to Northrend |q 60096/1 |goto Howling Fjord/0 59.76,63.24
|only if haveq(60096)
step
Travel to Northrend |q 60962/1 |goto Borean Tundra/0 60.00,67.00
|only if haveq(60962)
step
_Click the Complete Quest Box:_
turnin Wrath of the Lich King: To Northrend!##60096 |only if haveq(60096) or completedq(60096)
turnin Onward to Adventure: Northrend##60962 |only if haveq(60962) or completedq(60962)
|next "Leveling Guides\\Wrath of the Lich King (10-70)\\Howling Fjord (10-70)"
step
label "The_Cataclysm"
accept Catackysm: Onward to Adventure in the Eastern Kingdoms##60891
|tip You will accept this quest automatically.
step
click Hero's Call Board
Find the Hero's Call Board |q 60891/1 |goto Stormwind City/0 62.26,29.93
step
talk Chromie##172334
turnin Catackysm: Onward to Adventure in the Eastern Kingdoms##60891 |goto Stormwind City/0 62.65,30.90
step
_Choose a Leveling Zone:_
|tip Browse your {o}world map{} for {o}Eastern Kingdoms{} and {o}Kalimdor{}.
|tip Choose {o}any zone{} that fits your character's level, and load the {o}Leveling guide for that zone{} using the guide menu.
|tip Keep doing this until {o}Chromie Time ends{} and you need to go to the new zones.
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Mists_Of_Pandaria"
accept Mists of Pandaria: To Pandaria!##60125
|tip You will accept this quest automatically.
step
Visit Stormwind Keep |q 60125/1 |goto Stormwind City/0 81.08,37.34
|tip Inside the building.
step
talk Rell Nightwind##55789
turnin Mists of Pandaria: To Pandaria!##60125 |goto Stormwind City/0 78.95,39.82
accept The Mission##29548 |goto Stormwind City/0 78.95,39.82
step
talk Loretta Banks##165505
Select _"I need a flight to The Skyfire."_ |gossip 54294
Secure a Flight to The Skyfire |invehicle |q 29548 |goto Stormwind City/0 77.70,39.26
step
Fly to the Skyfire |outvehicle |q 29548
step
talk Sky Admiral Rogers##66292
|tip On the air ship.
Select _"I am ready to depart."_ |gossip 40614
Speak to Admiral Rogers on The Skyfire Gunship |q 29548/2 |goto Eastern Kingdoms/0 41.47,70.19
step
talk Sky Admiral Rogers##66292
|tip On the air ship.
turnin The Mission##29548 |goto The Jade Forest/0 42.03,92.75
|next "Leveling Guides\\Pandaria (10-70)\\The Jade Forest (10-70)"
step
label "Warlords_Of_Draenor"
accept Warlords of Draenor: The Dark Portal##34398
|tip You will accept this quest automatically.
step
talk Vanguard Battlemage##149626
|tip Inside the tower.
Select _"I must help Khadgar. Send me to the Blasted Lands!"_ |gossip 51033
Talk to the Vanguard Battlemage |q 34398/1 |goto Stormwind City/0 48.86,87.37
step
talk Zidormi##141489
Select _"Take me back to the present."_ |gossip 42959
Travel to the Present |complete not QC.InPhase("Old Blasted Lands") |goto Blasted Lands/0 48.16,7.28 |q 34398
step
talk Araazi##85731
fpath Shattered Beachhead |goto Blasted Lands/0 67.64,27.97
step
talk Archmage Khadgar##78423
Select _"FOR AZEROTH!"_ |gossip 43231
Speak with Archmage Khadgar |q 34398/2 |goto Blasted Lands/0 54.93,50.41
step
talk Archmage Khadgar##78558
turnin Warlords of Draenor: The Dark Portal##34398 |goto Assault on the Dark Portal/0 54.79,48.27
|next "Leveling Guides\\Draenor (10-70)\\Draenor Intro"
step
label "Legion"
accept Legion: Onward to Adventure: Broken Isles##60971
|tip You will accept this quest automatically.
step
Travel to the Broken Isles |q 60971/1 |goto Azsuna/0 47.00,40.89
step
_Click the Complete Quest Box:_
turnin Legion: Onward to Adventure: Broken Isles##60971
step
|next "Leveling Guides\\Legion (10-70)\\Death Knight\\Death Knight Intro & Artifacts"	|only if DeathKnight
|next "Leveling Guides\\Legion (10-70)\\Demon Hunter\\Demon Hunter Intro & Artifacts"	|only if DemonHunter
|next "Leveling Guides\\Legion (10-70)\\Druid\\Druid Intro & Artifacts"			|only if Druid
|next "Leveling Guides\\Legion (10-70)\\Hunter\\Hunter Intro & Artifacts"		|only if Hunter
|next "Leveling Guides\\Legion (10-70)\\Mage\\Mage Intro & Artifacts"			|only if Mage
|next "Leveling Guides\\Legion (10-70)\\Monk\\Monk Intro & Artifacts"			|only if Monk
|next "Leveling Guides\\Legion (10-70)\\Paladin\\Paladin Intro & Artifacts"		|only if Paladin
|next "Leveling Guides\\Legion (10-70)\\Priest\\Priest Intro & Artifacts"		|only if Priest
|next "Leveling Guides\\Legion (10-70)\\Rogue\\Rogue Intro & Artifacts"			|only if Rogue
|next "Leveling Guides\\Legion (10-70)\\Shaman\\Shaman Intro & Artifacts"		|only if Shaman
|next "Leveling Guides\\Legion (10-70)\\Warlock\\Warlock Intro & Artifacts"		|only if Warlock
|next "Leveling Guides\\Legion (10-70)\\Warrior\\Warrior Intro & Artifacts"		|only if Warrior
step
label "Battle_For_Azeroth"
talk Hero's Herald##49748
accept Battle for Azeroth: Tides of War##46727 |goto Stormwind City/0 62.17,30.14
step
Watch the dialogue
|tip Inside the building.
Attend the War Council in Stormwind Keep |q 46727/1 |goto Stormwind City/0 80.41,33.37
step
click Vision of Sailor's Memory
|tip Inside the building.
Witness the Vision of Sailor's Memory |q 46727/2 |goto Stormwind City/0 80.48,33.50
step
talk Anduin Wrynn##120756
|tip Inside the building.
turnin Tides of War##46727 |goto Stormwind City/0 80.26,33.13
|next "Leveling Guides\\Battle for Azeroth (10-70)\\Kul Tiras\\Tiragarde Sound (10-70)"
step
label "Shadowlands"
accept Shadowlands: A Chilling Summons##60545
|tip You will accept this quest automatically.
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_ |gossip 52724 |noautogossip
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.71,42.75 |or
|tip If you {o}already completed{} the Shadowlands intro, you can skip it.
Skip the Shadowlands Intro |complete completedq(59770) |goto Stormwind City/0 76.71,42.75 |or |next "Skip_Shadowlands_Intro"
step
Watch the dialogue
click Death Gate to Acherus
Take the Death Gate to Acherus |q 60545/2 |goto Stormwind City/0 77.07,42.10
step
Take the Teleporter to the Frozen Throne |q 60545/3 |goto Icecrown Citadel Intro/0 59.76,20.98
|tip Walk onto the {o}teleport pad nearby{}.
step
talk Highlord Bolvar Fordragon##169076
turnin Shadowlands: A Chilling Summons##60545 |goto Icecrown Citadel Intro/2 50.78,53.71
step
label "Skip_Shadowlands_Intro"
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Dragonflight"
_NOTE:_
Choose How to Level Up
|tip There are {o}two versions{} of the Leveling guides.
|tip {o}Full Zones (Story + Side Quests){} and {o}Story Only{}.
|tip The {o}Full Zone{} guides will {o}easily get you to level 70{}, with extra quests to spare.
|tip The {o}Story Only{} guides {o}may not{} get you to level 70, but then you can use the {o}full zone guides{} to do side quests to reach level 70.
|tip Click the line below to {o}choose how you want to level up{}.
Full Zone (Story + Side Quests) Guides		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
Story Only Guides				|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Death Knight Starter",{
author="QuestCore",
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return (raceclass('DeathKnight') and not completedq(13188)) end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13188) end,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=8,
endlevel=70,
},[[
step
talk The Lich King##25462
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.18
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 48,28.5
accept The Emblazoned Runeblade##12619 |goto Plaguelands: The Scarlet Enclave/0 48,28.5
step
click Battle-worn Sword##190584
collect Battle-worn Sword##38607 |c |goto Plaguelands: The Scarlet Enclave/0 47.4,31 |q 12619
step
use the Battle-worn Sword##38607
|tip Use it next to the Runeforge.
collect Runebladed Sword##38631 |q 12619/1 |goto Plaguelands: The Scarlet Enclave/0 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Emblazoned Runeblade##12619 |goto Plaguelands: The Scarlet Enclave/0 48,28.5
accept Runeforging: Preparation For Battle##12842 |goto Plaguelands: The Scarlet Enclave/0 48,28.5
step
Use the Runeforging ability near the Runeforge |cast Runeforging##53428
|tip Open your character's equipment window and engrave your weapon with a rune.
Emblazon Your Weapon |q 12842/1 |goto Plaguelands: The Scarlet Enclave/0 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin Runeforging: Preparation For Battle##12842 |goto Plaguelands: The Scarlet Enclave/0 48,28.5
accept The Endless Hunger##12848 |goto Plaguelands: The Scarlet Enclave/0 48,28.5
step
click Acherus Soul Prison##8115
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
Watch the dialogue
kill Unworthy Initiate##29565, Unworthy Initiate##29567
Dominate an Unworthy Initiate |q 12848/1 |goto Plaguelands: The Scarlet Enclave/0 48.50,28.98
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Endless Hunger##12848 |goto Plaguelands: The Scarlet Enclave/0 48,28.5
accept The Eye Of Acherus##12636 |goto Plaguelands: The Scarlet Enclave/0 48,28.5
step
talk The Lich King##25462
turnin The Eye Of Acherus##12636 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.18
accept Death Comes From On High##12641 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.18
step
click Eye of Acherus Control Mechanism##191609
Take Control of the Eye of Acherus |havebuff The Eye of Acherus##51852 |goto Plaguelands: The Scarlet Enclave/0 52.13,35.21 |q 12641
step
_Go Northeast:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the blacksmith building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Forge |q 12641/1
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the big fort building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Scarlet Hold |q 12641/3
step
_Go West:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the town hall building with a clock tower, with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Town Hall |q 12641/2
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the small church building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use the Recall Eye of Acherus ability |petaction 5
Click Here After You Return to Ebon Hold |confirm |c |q 12641
step
talk The Lich King##25462
turnin Death Comes From On High##12641 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.18
accept The Might Of The Scourge##12657 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.18
step
Walk onto the teleport pad |goto Plaguelands: The Scarlet Enclave/0 50.49,33.37 |n
Teleport Upstairs |goto Plaguelands: The Scarlet Enclave/0 50.13,32.49 < 10 |noway |c |q 12657
step
talk Highlord Darion Mograine##28444
turnin The Might Of The Scourge##12657 |goto Plaguelands: The Scarlet Enclave/0 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto Plaguelands: The Scarlet Enclave/0 48.88,29.76
step
talk Lord Thorval##28472
accept The Power Of Blood, Frost And Unholy##12849 |goto Plaguelands: The Scarlet Enclave/0 47.48,26.56
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area.
turnin Report To Scourge Commander Thalanor##12850 |goto Plaguelands: The Scarlet Enclave/0 50.70,35.09
accept The Scarlet Harvest##12670 |goto Plaguelands: The Scarlet Enclave/0 50.70,35.09
step
clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave/0 50.96,36.15
Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave/0 53.2,31.1 < 20 |noway |c |q 12670
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto Plaguelands: The Scarlet Enclave/0 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
accept Grand Theft Palomino##12680 |goto Plaguelands: The Scarlet Enclave/0 52.5,34.6
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
accept Death's Challenge##12733 |goto Plaguelands: The Scarlet Enclave/0 54.63,33.95
step
talk Death Knight Initiate##28406
|tip They are all around this area.
Select _"I challenge you, death knight!"_ |gossip 37188
kill Death Knight Initiate##28392+
Defeat #5# Death Knights in a Duel |q 12733/1 |goto Plaguelands: The Scarlet Enclave/0 53.48,33.15
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
turnin Death's Challenge##12733 |goto Plaguelands: The Scarlet Enclave/0 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
accept Tonight We Dine In Havenshire##12679 |goto Plaguelands: The Scarlet Enclave/0 53.2,36.9
stickystart "Slay_Scarlet_Crusaders"
stickystart "Citizens_Of_Havenshire"
step
click Abandoned Mail##190917
|tip It looks like a roll of parchment on top of the mailbox.
accept Abandoned Mail##12711 |goto Plaguelands: The Scarlet Enclave/0 55.26,46.15
step
label "Slay_Scarlet_Crusaders"
kill Scarlet Captain##28611, Scarlet Peasant##28557, Scarlet Infantryman##28609, Scarlet Medic##28608
Slay #10# Scarlet Crusaders |q 12678/1 |goto Plaguelands: The Scarlet Enclave/0 52.2,45.9
stickystart "Saronite_Arrows"
step
label "Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto Plaguelands: The Scarlet Enclave/0 56.4,45
step
label "Saronite_Arrows"
click Saronite Arrow##190691+
|tip They look like yellow and green arrows stuck in the ground around this area.
collect 15 Saronite Arrow##39160 |q 12679/1 |goto Plaguelands: The Scarlet Enclave/0 56.2,49.4
step
clicknpc Havenshire Stallion##28900, Havenshire Mare##28606, Havenshire Colt##28607, Havenshire Stallion##28605, Havenshire Mare##28899
|tip They look like horses.
|tip Watch out for Stable Master Kitrik, he's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto Plaguelands: The Scarlet Enclave/0 55.74,43.39 |c |q 12680
step
Use the Deliver Stolen Horse ability next to Salanar the Horseman
|tip He walks back and forth along this path.
Successfully Steal the Horse |q 12680/1 |goto Plaguelands: The Scarlet Enclave/0 52.8,34.1
'|clicknpc Salanar the Horseman##28653
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Grand Theft Palomino##12680 |goto Plaguelands: The Scarlet Enclave/0 52.5,34.6
accept Into the Realm of Shadows##12687 |goto Plaguelands: The Scarlet Enclave/0 52.5,34.6
step
kill Dark Rider of Acherus##28768+
|tip They ride around on horses around this area.
clicknpc Acherus Deathcharger##28302
|tip It's the horse they were riding on before you killed them.
Click Here After You Steal an Acherus Deathcharger |confirm |c |goto Plaguelands: The Scarlet Enclave/0 55.6,43.2 |q 12687
step
Use the Horseman's Call ability
Watch the dialogue
Complete the Horseman's Challenge |q 12687/1 |goto Plaguelands: The Scarlet Enclave/0 50.88,41.74
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Into the Realm of Shadows##12687 |goto Plaguelands: The Scarlet Enclave/0 52.5,34.6
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto Plaguelands: The Scarlet Enclave/0 52.3,34
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
turnin Tonight We Dine In Havenshire##12679 |goto Plaguelands: The Scarlet Enclave/0 53.2,36.9
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto Plaguelands: The Scarlet Enclave/0 52.3,34
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto Plaguelands: The Scarlet Enclave/0 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto Plaguelands: The Scarlet Enclave/0 54.07,35.03
step
use the Gift of the Harvester##39253
|tip Use it on Scarlet Miners.
|tip They appear at the entrance of the mine.
|tip Some will turn into Scarlet Ghosts and attack you.
|tip It has a pretty low success rate, just keep trying.
Click Here When 5 Scarlet Ghouls Are Following You |confirm |c |goto Plaguelands: The Scarlet Enclave/0 58.18,31.01 |q 12698
|tip The ghouls that count for the quest are more brown in color and have yellow circles around their feet.
'|clicknpc Scarlet Miner##28819, Scarlet Miner##28891, Scarlet Miner##28841, Scarlet Miner##28822
'|kill Scarlet Ghost##28846
step
Return #5# Scarlet Ghouls |q 12698/1 |goto Plaguelands: The Scarlet Enclave/0 54.07,35.03
'|clicknpc Scarlet Ghoul##28845
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto Plaguelands: The Scarlet Enclave/0 54.1,35
accept An Attack Of Opportunity##12700 |goto Plaguelands: The Scarlet Enclave/0 54.1,35
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto Plaguelands: The Scarlet Enclave/0 52.3,34
accept Massacre At Light's Point##12701 |goto Plaguelands: The Scarlet Enclave/0 52.3,34
step
Find the Inconspicuous Mine Cart |goto Plaguelands: The Scarlet Enclave/0 58.50,33.03 < 15 |c |q 12701
step
click Inconspicuous Mine Car##190767
Ride in the Inconspicuous Mine Cart |goto Plaguelands: The Scarlet Enclave/0 58.50,33.03 > 30 |c |q 12701
step
Ride to the Scarlet Fleet Ship |goto Plaguelands: The Scarlet Enclave/0 67.80,38.65 < 20 |c |q 12701
step
click Scarlet Cannon##176216
kill Scarlet Fleet Defender##28834, Scarlet Fleet Defender##28886
|tip Use the abilities on your action bar to shoot the soldiers on the beach.
Slay #100# Scarlet Defenders |q 12701/1 |goto Plaguelands: The Scarlet Enclave/0 67.73,39.01
step
Escape to Death's Breach |goto Plaguelands: The Scarlet Enclave/0 52.57,34.45 < 10 |noway |c |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto Plaguelands: The Scarlet Enclave/0 52.3,34
accept Victory At Death's Breach!##12706 |goto Plaguelands: The Scarlet Enclave/0 52.3,34
step
clicknpc Scourge Gryphon##29501 |goto Plaguelands: The Scarlet Enclave/0 53.09,32.48
Fly Up to Archerus |goto Plaguelands: The Scarlet Enclave/0 51.09,34.63 < 10 |noway |c |q 12706
step
talk Highlord Darion Mograine##28444
turnin Victory At Death's Breach!##12706 |goto Plaguelands: The Scarlet Enclave/0 48.87,29.76
accept The Will Of The Lich King##12714 |goto Plaguelands: The Scarlet Enclave/0 48.87,29.76
step
clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave/0 50.96,36.15
Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave/0 53.19,31.15 < 10 |noway |c |q 12714
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto Plaguelands: The Scarlet Enclave/0 53.47,36.55
accept The Crypt of Remembrance##12715 |goto Plaguelands: The Scarlet Enclave/0 53.47,36.55
step
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto Plaguelands: The Scarlet Enclave/0 55.9,52.4
step
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto Plaguelands: The Scarlet Enclave/0 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Crusader_Skulls"
stickystart "Citizens_Of_New_Avalaon"
step
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto Plaguelands: The Scarlet Enclave/0 57.8,61.8
step
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto Plaguelands: The Scarlet Enclave/0 62.05,60.24
step
kill Mayor Quimby##28945 |q 12719/1 |goto Plaguelands: The Scarlet Enclave/0 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
collect New Avalon Registry##39362 |q 12719/2 |goto Plaguelands: The Scarlet Enclave/0 52.45,71.00
step
label "Slay_Scarlet_Crusade_Soldiers"
kill Scarlet Crusader##28940, Scarlet Marksman##28610, Scarlet Commander##28936, Scarlet Preacher##28939
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto Plaguelands: The Scarlet Enclave/0 54.27,70.15
step
label "Crusader_Skulls"
kill Scarlet Crusader##28940, Scarlet Marksman##28610, Scarlet Commander##28936, Scarlet Preacher##28939, Citizen of New Avalon##28942, Citizen of New Avalon##28560, Citizen of New Avalon##28941, Citizen of New Avalon##28559
|tip Usually inside the buildings around this area.
collect 10 Crusader Skull##39328 |q 12716/3 |goto Plaguelands: The Scarlet Enclave/0 54.27,70.15
step
label "Citizens_Of_New_Avalaon"
kill Citizen of New Avalon##28942, Citizen of New Avalon##28560, Citizen of New Avalon##28941, Citizen of New Avalon##28559
|tip Usually inside the buildings around this area.
Slay #15# Citizens of New Avalon |q 12722/2 |goto Plaguelands: The Scarlet Enclave/0 54.27,70.15
step
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto Plaguelands: The Scarlet Enclave/0 54.66,57.43
step
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto Plaguelands: The Scarlet Enclave/0 55.9,52.4
accept Noth's Special Brew##12717 |goto Plaguelands: The Scarlet Enclave/0 55.9,52.4
step
click Plague Cauldron##190936
turnin Noth's Special Brew##12717 |goto Plaguelands: The Scarlet Enclave/0 56.15,51.98
step
use Ornate Jeweled Box##39418
collect Keleseth's Persuader##39371 |q 12720 |only if Frost
collect Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
step
Equip Keleseth's Persuaders |equipped Keleseth's Persuader##39371 |q 12720 |only if Frost
Equip Keleseth's Persuader |equipped Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
|tip Equip the two Keleseth's Persuaders in your bag. |only if Frost
|tip Equip the Keleseth's Persuader in your bag. |only if Blood or Unholy
step
kill Scarlet Crusader##28940, Scarlet Marksman##28610, Scarlet Commander##28936, Scarlet Preacher##28939
|tip Open the Ornate Jewelry Box and equip Keleseth's Persuader.
|tip Try not to kill them too fast, and stop attacking them when they start talking.
|tip Eventually one of the enemies will give you information.
Reveal the "Crimson Dawn" |q 12720/1 |goto Plaguelands: The Scarlet Enclave/0 55.8,65.8
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |c |q 12720
step
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
accept Behind Scarlet Lines##12723 |goto Plaguelands: The Scarlet Enclave/0 54.30,57.31
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto Plaguelands: The Scarlet Enclave/0 56.27,80.15
step
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto Plaguelands: The Scarlet Enclave/0 62.96,67.85
accept Bloody Breakout##12727 |goto Plaguelands: The Scarlet Enclave/0 62.96,67.85
step
Kill the enemies that attack in waves
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage done to you, so you'll live.
click High Inquisitor Valroth's Remains##191092
|tip It will be wherever you ended up killing High Inquisitor Valroth.
collect Valroth's Head##39510 |q 12727/1 |goto Plaguelands: The Scarlet Enclave/0 62.91,68.10
'|clicknpc Koltira Deathweaver##28912
step
click New Avalon Patrol Schedule##191084
|tip It looks like a thick book sitting on a long table upstairs in a big open room in the fort.
collect New Avalon Patrol Schedule##39504|q 12724/1 |goto Plaguelands: The Scarlet Enclave/0 63.0,68.3
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto Plaguelands: The Scarlet Enclave/0 56.27,80.15
accept A Cry For Vengeance!##12738 |goto Plaguelands: The Scarlet Enclave/0 56.27,80.15
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5
accept A Special Surprise##12742 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Human
accept A Special Surprise##12743 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only NightElf
accept A Special Surprise##12744 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Dwarf
accept A Special Surprise##12745 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Gnome
accept A Special Surprise##12746 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Draenei
accept A Special Surprise##28649 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Worgen
accept A Special Surprise##12739 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Tauren
accept A Special Surprise##12747 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only BloodElf
accept A Special Surprise##12748 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Orc
accept A Special Surprise##12749 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Troll
accept A Special Surprise##12750 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Scourge
accept A Special Surprise##28650 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Goblin
step
Watch the dialogue
kill Valok the Righteous##29070 |q 12746/1 |goto Plaguelands: The Scarlet Enclave/0 54.5,83.4
|tip Inside the building.
|only Draenei
step
Watch the dialogue
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto Plaguelands: The Scarlet Enclave/0 54.2,83.9
|tip Inside the building.
|only NightElf
step
Watch the dialogue
kill Goby Blastenheimer##29068 |q 12745/1 |goto Plaguelands: The Scarlet Enclave/0 53.9,83.8
|tip Inside the building.
|only Gnome
step
Watch the dialogue
kill Ellen Stanbridge##29061 |q 12742/1 |goto Plaguelands: The Scarlet Enclave/0 53.5,83.8
|tip Inside the building.
|only Human
step
Watch the dialogue
kill Donovan Pulfrost##29067 |q 12744/1 |goto Plaguelands: The Scarlet Enclave/0 54,83.3
|tip Inside the building.
|only Dwarf
step
Watch the dialogue
kill Lord Harford##49355 |q 28649/1 |goto Plaguelands: The Scarlet Enclave/0 54.14,83.29
|tip Inside the building.
|only Worgen
step
Watch the dialogue
kill Malar Bravehorn##29032 |q 12739/1 |goto Plaguelands: The Scarlet Enclave/0 54.50,83.85
|tip Inside the building.
|only Tauren
step
Watch the dialogue
kill Lady Eonys##29074 |q 12747/1 |goto Plaguelands: The Scarlet Enclave/0 54.28,83.31
|tip Inside the building.
|only BloodElf
step
Watch the dialogue
kill Kug Ironjaw##29072 |q 12748/1 |goto Plaguelands: The Scarlet Enclave/0 53.77,83.27
|tip Inside the building.
|only Orc
step
Watch the dialogue
kill Iggy Darktusk##29073 |q 12749/1 |goto Plaguelands: The Scarlet Enclave/0 53.80,83.75
|tip Inside the building.
|only Troll
step
Watch the dialogue
kill Antoine Brack##29071 |q 12750/1 |goto Plaguelands: The Scarlet Enclave/0 53.54,83.30
|tip Inside the building.
|only Scourge
step
Watch the dialogue
kill Gally Lumpstain##49356 |q 28650/1 |goto Plaguelands: The Scarlet Enclave/0 54.11,83.77
|tip Inside the building.
|only Goblin
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Human
turnin A Special Surprise##12743 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only NightElf
turnin A Special Surprise##12744 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Dwarf
turnin A Special Surprise##12745 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Gnome
turnin A Special Surprise##12746 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Draenei
turnin A Special Surprise##28649 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Worgen
turnin A Special Surprise##12739 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Tauren
turnin A Special Surprise##12747 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only BloodElf
turnin A Special Surprise##12748 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Orc
turnin A Special Surprise##12749 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Troll
turnin A Special Surprise##12750 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Scourge
turnin A Special Surprise##28650 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5 |only Goblin
accept A Sort Of Homecoming##12751 |goto Plaguelands: The Scarlet Enclave/0 52.9,81.5
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto Plaguelands: The Scarlet Enclave/0 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
step
use the Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto Plaguelands: The Scarlet Enclave/0 59.97,78.57
collect Scarlet Courier's Message##39647 |q 12754/2 |goto Plaguelands: The Scarlet Enclave/0 59.97,78.57
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
accept A Meeting With Fate##12755 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
step
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto Plaguelands: The Scarlet Enclave/0 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto Plaguelands: The Scarlet Enclave/0 65.65,83.82
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto Plaguelands: The Scarlet Enclave/0 56.26,79.84
step
click Portal to Acherus##8046 |goto Plaguelands: The Scarlet Enclave/0 56.18,80.04 |n
Teleport to Acherus |goto Plaguelands: The Scarlet Enclave/0 50.2,32.6 < 20 |noway |c |q 12757
step
talk Highlord Darion Mograine##28444
turnin Scarlet Armies Approach...##12757 |goto Plaguelands: The Scarlet Enclave/0 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto Plaguelands: The Scarlet Enclave/0 48.89,29.77
step
clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave/0 52.08,35.03 |n
Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave/0 53.2,31.1 < 20 |noway |c |q 12778
step
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto Plaguelands: The Scarlet Enclave/0 53.57,36.85
accept An End To All Things...##12779 |goto Plaguelands: The Scarlet Enclave/0 53.57,36.85
step
use the Horn of the Frostbrood##39700
Summon a Dragon to Ride |invehicle |c |q 12779
stickystart "Destroy_Scarlet_Ballistas"
step
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto Plaguelands: The Scarlet Enclave/0 55.8,61
|tip Use the abilities on your action bar.
step
label "Destroy_Scarlet_Ballistas"
Destroy #10# Scarlet Ballistas |q 12779/2 |goto Plaguelands: The Scarlet Enclave/0 55.8,61
|tip They look like big wooden crossbow machines around this area.
|tip Use the abilities on your action bar.
'|kill Scarlet Ballista##29104
step
Return to Death's Breach |goto Plaguelands: The Scarlet Enclave/0 52.47,37.18 < 20 |c |q 12779
|tip Don't click the red arrow to stop controlling the Frostbrood Vanquisher yet.
step
Stop Controlling the Frostbrood Vanquisher |outvehicle |c |goto Plaguelands: The Scarlet Enclave/0 52.53,37.39 |q 12779
|tip Click the red arrow on your action bar.
step
talk The Lich King##29110
turnin An End To All Things...##12779 |goto Plaguelands: The Scarlet Enclave/0 53.57,36.85
accept The Lich King's Command##12800 |goto Plaguelands: The Scarlet Enclave/0 53.57,36.85
step
talk Scourge Commander Thalanor##31082
|tip He paces back and forth.
turnin The Lich King's Command##12800 |goto Plaguelands: The Scarlet Enclave/0 33.99,30.36
accept The Light of Dawn##12801 |goto Plaguelands: The Scarlet Enclave/0 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then the battle has already started.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Select _"I am ready, Highlord.  Let the siege of Light's Hope begin!"_ |gossip 36227
|tip If he's here, but you can't choose this dialogue, that just means someone else already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here When the Battle Begins |confirm |c |goto Plaguelands: The Scarlet Enclave/0 34.44,31.10 |q 12801
step
Kill enemies around this area
|tip Follow your allies into battle.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto Plaguelands: The Scarlet Enclave/0 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto Plaguelands: The Scarlet Enclave/0 39.11,39.16
accept Taking Back Acherus##13165 |goto Plaguelands: The Scarlet Enclave/0 39.11,39.16
step
Use your Death Gate spell |cast Death Gate##50977
|tip Click the purple Death Gate portal that appears nearby.
Travel to Ebon Hold |goto Eastern Plaguelands/0 83.7,50.0 < 20 |noway |c |q 13165
step
talk Highlord Darion Mograine##29173
turnin Taking Back Acherus##13165 |goto Eastern Plaguelands/0 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto Eastern Plaguelands/0 83.44,49.46
step
Walk onto the teleport pad |goto Eastern Plaguelands/0 83.19,48.90 |n
Teleport Downstairs |goto Eastern Plaguelands/0 82.68,47.79 < 10 |noway |c |q 13166
step
kill Terrifying Abomination##31098, Val'kyr Battle-maiden##31095, Scourge Necromancer##31096, Patchwerk##31099
Slay #10# Scourge |q 13166/2 |goto Eastern Plaguelands/0 81.99,46.37
step
kill Patchwerk##31099 |q 13166/1 |goto Eastern Plaguelands/0 81.99,46.37
step
Walk onto the teleport pad |goto Eastern Plaguelands/0 83.28,49.12 |n
Teleport Upstairs |goto Eastern Plaguelands/0 83.28,49.12 < 5 |noway |c |q 13166
step
talk Highlord Darion Mograine##31084
turnin The Battle For The Ebon Hold##13166 |goto Eastern Plaguelands/0 83.44,49.46
accept Where Kings Walk##13188 |goto Eastern Plaguelands/0 83.44,49.46
step
clicknpc Portal to Stormwind##103186 |goto Eastern Plaguelands/0 83.65,51.34
Teleport to Stormwind City |goto Elwynn Forest/0 33.4,52 < 1000 |noway |c |q 13188
step
talk Anduin Wrynn##107574
|tip Inside the building.
turnin Where Kings Walk##13188 |goto Stormwind City/0 85.8,31.7
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Draenei Starter",{
author="QuestCore",
condition_valid=function() return raceclass('Draenei') end,
condition_valid_msg="Draenei only.",
condition_suggested=function() return raceclass('Draenei') and level <= 5 and not completedq(9312) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Kalimdor\\Azuremyst Isle (1-70)",
startlevel=1,
endlevel=70,
},[[
step
talk Megelon##16475 |goto Ammen Vale/0 61.2,29.5
accept You Survived!##9279
|only if Draenei
step
talk Proenitus##16477
turnin You Survived!##9279 |only Draenei |goto Ammen Vale/0 52.8,35.9
accept Replenishing the Healing Crystals##9280 |only if Draenei |goto Ammen Vale/0 52.8,35.9
accept Replenishing the Healing Crystals##9369 |only if not Draenei |goto Ammen Vale/0 52.8,35.9
step
kill Vale Moth##16520+
collect 6 Vial of Moth Blood##22889 |q 9280/1 |only if Draenei |goto Ammen Vale/0 50.9,28.8
collect 6 Vial of Moth Blood##22899 |q 9369/1 |only if not Draenei |goto Ammen Vale/0 50.9,28.8
step
talk Proenitus##16477
turnin Replenishing the Healing Crystals##9280 |only if Draenei |goto Ammen Vale/0 52.8,35.9
accept Urgent Delivery!##9409 |only Draenei |goto Ammen Vale/0 52.8,35.9
turnin Replenishing the Healing Crystals##9369 |only if not Draenei |goto Ammen Vale/0 52.8,35.9
accept Urgent Delivery!##9409 |only if not Draenei |goto Ammen Vale/0 52.8,35.9
step
talk Zalduun##16502
|tip He walks around inside the building.
turnin Urgent Delivery!##9409 |only if Draenei |goto Ammen Vale/0 51.71,42.12
accept Rescue the Survivors!##9283 |only if Draenei |goto Ammen Vale/0 51.71,42.12
accept Learning the Word##26970 |only if Draenei Priest |goto Ammen Vale/0 51.71,42.12
turnin Urgent Delivery!##9409 |only if not Draenei |goto Ammen Vale/0 51.71,42.12
step
talk Proenitus##16477
accept Botanist Taerix##9371 |goto Ammen Vale/0 52.73,35.90
step
talk Botanist Taerix##16514
turnin Botanist Taerix##9371 |goto Ammen Vale/0 49.9,37.4
accept Volatile Mutations##10302 |goto Ammen Vale/0 49.9,37.4
stickystart "Kill_Volatile_Mutations"
step
cast Gift of the Naaru##28880
|tip Cast it on a Draenei Survivor.
|tip They look like Draenei laying on the ground around this area.
Save a Draenei Survivor |q 9283/1 |goto Ammen Vale/0 48.3,30.4
'|clicknpc Draenei Survivor##16483
|only if haveq(9283)
step
label "Kill_Volatile_Mutations"
kill 8 Volatile Mutation##16516 |q 10302/1 |goto Ammen Vale/0 48.3,30.4
step
talk Botanist Taerix##16514
turnin Volatile Mutations##10302 |goto Ammen Vale/0 49.9,37.4
accept What Must Be Done...##9293 |goto Ammen Vale/0 49.9,37.4
step
talk Apprentice Vishael##20233
accept Botanical Legwork##9799 |goto Ammen Vale/0 49.7,37.5
step
talk Zalduun##16502
|tip He walks around inside the building.
turnin Rescue the Survivors!##9283 |goto Ammen Vale/0 51.71,42.12
|only if Draenei
step
talk Technician Zhanaa##17071
|tip Outside the building.
accept Spare Parts##37445 |goto Ammen Vale/0 50.5,47.9
step
talk Vindicator Aldar##16535 |goto Ammen Vale/0 50.6,48.7
accept Inoculation##37444
stickystart "Corrupted_Flowers"
step
kill Mutated Root Lasher##16517+
collect 10 Lasher Sample##22934 |q 9293/1 |goto Ammen Vale/0 36.6,48.5
step
label "Corrupted_Flowers"
click Corrupted Flower##182127+
|tip They look like flowers with red petals.
collect 3 Corrupted Flower##24416 |q 9799/1 |goto Ammen Vale/0 36.6,48.5
step
talk Apprentice Vishael##20233
turnin Botanical Legwork##9799 |goto Ammen Vale/0 49.7,37.5
step
talk Botanist Taerix##16514
turnin What Must Be Done...##9293 |goto Ammen Vale/0 49.9,37.4
accept Healing the Lake##9294 |goto Ammen Vale/0 49.9,37.4
step
use the Neutralizing Agent##22955
|tip Use it next to the giant pink crystal in the water.
Disperse the Neutralizing Agent |q 9294/1 |goto Ammen Vale/0 45.5,64.7
stickystart "Inoculate_Nestlewood_Owlkins"
step
click Emitter Spare Part##181283
|tip They look like pink crystals with gold parts spinning around them on the ground around this area.
collect 4 Emitter Spare Part##22978 |q 37445/1 |goto Ammen Vale/0 62.71,80.74
step
label "Inoculate_Nestlewood_Owlkins"
use the Inoculating Crystal##22962
|tip Use it on Nestlewood Owlkins.
|tip They look like yellow owlkins.
Inoculate #6# Nestlewood Owlkins |q 37444/1 |goto Ammen Vale/0 62.71,80.74
'|clicknpc Inoculated Nestlewood Owlkin##16518
step
talk Botanist Taerix##16514
turnin Healing the Lake##9294 |goto Ammen Vale/0 49.9,37.4
accept Vindicator Aldar##10304 |goto Ammen Vale/0 49.9,37.4
step
talk Technician Zhanaa##17071
turnin Spare Parts##37445 |goto Ammen Vale/0 50.50,47.86
step
talk Vindicator Aldar##16535
turnin Vindicator Aldar##10304 |goto Ammen Vale/0 50.6,48.7
turnin Inoculation##37444 |goto Ammen Vale/0 50.6,48.7
accept The Missing Scout##9309 |goto Ammen Vale/0 50.6,48.7
step
talk Tolaan##16546
turnin The Missing Scout##9309 |goto Ammen Vale/0 33.9,69.3
accept The Blood Elves##10303 |goto Ammen Vale/0 33.9,69.3
step
kill 10 Blood Elf Scout##16521 |q 10303/1 |goto Ammen Vale/0 26.79,75.87
step
talk Tolaan##16546
turnin The Blood Elves##10303 |goto Ammen Vale/0 33.9,69.3
accept Blood Elf Spy##9311 |goto Ammen Vale/0 33.9,69.3
step
kill Surveyor Candress##16522 |q 9311/1 |goto Ammen Vale/0 27.8,80.4
|tip You will automatically accept a quest after looting her.
accept Blood Elf Plans##9798 |goto Ammen Vale/0 27.8,80.4
step
talk Vindicator Aldar##16535
turnin Blood Elf Spy##9311 |goto Ammen Vale/0 50.6,48.7
turnin Blood Elf Plans##9798 |goto Ammen Vale/0 50.6,48.7
accept The Emitter##9312 |goto Ammen Vale/0 50.6,48.7
step
talk Technician Zhanaa##17071
turnin The Emitter##9312 |goto Ammen Vale/0 50.50,47.85
accept Travel to Azure Watch##9313 |goto Ammen Vale/0 50.50,47.85
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Dwarf Starter",{
author="QuestCore",
condition_valid=function() return raceclass('Dwarf') end,
condition_valid_msg="Dwarf only.",
condition_suggested=function() return raceclass('Dwarf') and level <= 5 and not completedq(24493) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Eastern Kingdoms\\Dun Morogh (1-70)",
startlevel=1,
endlevel=70,
},[[
step
talk Joren Ironstock##37081
accept Hold the Line!##24469 |goto Coldridge Valley 67.1,41.3
step
kill 6 Rockjaw Invader##37070 |q 24469/1 |goto Coldridge Valley 63.6,50.7
step
talk Joren Ironstock##37081
turnin Hold the Line!##24469 |goto Coldridge Valley 67.1,41.3
accept Give 'em What-For##24470 |goto Coldridge Valley 67.1,41.3
step
talk Sten Stoutarm##658
|tip He paces back and forth.
accept Aid for the Wounded##24471 |goto Coldridge Valley 65.55,41.99
stickystart "Rockjaw_Goons"
step
use Sten's First Aid Kit##49743
|tip Use it on Wounded Coldridge Mountaineers.
|tip They look like dwarves kneeling in the snow around this area.
Aid #4# Wounded Coldridge Mountaineers |q 24471/1 |goto Coldridge Valley 69.3,55.2
'|clicknpc Wounded Coldridge Mountaineer##37080, Wounded Coldridge Mountaineer##119385
step
label "Rockjaw_Goons"
kill 3 Rockjaw Goon##37073 |q 24470/1 |goto Coldridge Valley 63.29,57.04
step
talk Joren Ironstock##37081
turnin Give 'em What-For##24470 |goto Coldridge Valley 67.1,41.3
step
talk Sten Stoutarm##658
|tip He paces back and forth.
turnin Aid for the Wounded##24471 |goto Coldridge Valley 65.55,41.99
step
talk Joren Ironstock##37081
accept Lockdown in Anvilmar##24473 |goto Coldridge Valley 67.1,41.3
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin Lockdown in Anvilmar##24473 |goto Coldridge Valley 60.6,21.0
accept First Things First: We're Gonna Need Some Beer##24474
step
talk Grundel Harkin##1104
accept Dwarven Artifacts##24477 |goto Coldridge Valley 61.7,22.1
step
click Keg of Gnomenbrau##201611
collect Cask of Gnomenbrau##49746 |q 24474/3 |goto Coldridge Valley 68.2,27.9
step
click Keg of Stormhammer Stout##201610
collect Cask of Stormhammer Stout##49744 |q 24474/1 |goto Coldridge Valley 56.7,28.3
step
click Keg of Theramore Pale Ale##201609
collect Cask of Theramore Pale Ale##49745 |q 24474/2 |goto Coldridge Valley 39.82,29.36
step
click Forgotten Dwarven Artifacts##201608
|tip They look like stone tablet pieces on the ground around this area.
collect 5 Forgotten Dwarven Artifact##49749 |q 24477/1 |goto Coldridge Valley 32.11,31.98
step
talk Grundel Harkin##1104
turnin Dwarven Artifacts##24477 |goto Coldridge Valley 61.7,22.1
accept Make Hay While the Sun Shine##24486 |goto Coldridge Valley 61.7,22.1
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin First Things First: We're Gonna Need Some Beer##24474 |goto Coldridge Valley 61.8,22.5
accept All the Other Stuff##24475 |goto Coldridge Valley 61.8,22.5
stickystart "Raggedyoungwolf"
stickystart "Boarhaunch"
step
kill Rockjaw Scavenger##37105+
collect 5 Priceless Rockjaw Artifact##49751 |q 24486/1 |goto Coldridge Valley 51.6,47.6
step
label "Raggedyoungwolf"
kill Ragged Young Wolf##705+
collect 4 Ragged Wolf Hide##49748 |q 24475/2 |goto Coldridge Valley 49.5,57.7
step
label "Boarhaunch"
kill Small Crag Boar##708+
collect 3 Boar Haunch##49747 |q 24475/1 |goto Coldridge Valley 33.89,65.23
step
talk Grundel Harkin##1104
turnin Make Hay While the Sun Shine##24486 |goto Coldridge Valley 61.7,22.1
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin All the Other Stuff##24475 |goto Coldridge Valley 61.8,22.5
accept Whitebeard Needs Ye##24487 |goto Coldridge Valley 61.8,22.5
step
talk Grelin Whitebeard##786
turnin Whitebeard Needs Ye##24487 |goto Coldridge Valley 42.7,62.2
accept The Troll Menace##182 |goto Coldridge Valley 42.7,62.2
step
talk Apprentice Soren##1354
accept Trolling for Information##24489 |goto Coldridge Valley 43.2,63.1
step
talk Felix Whindlebolt##8416
accept A Refugee's Quandary##3361 |goto Coldridge Valley 41.9,63.5
stickystart "Frostmane_Troll_Whelps"
step
click Felix's Box##148499
collect Felix Box##10438 |q 3361/1 |goto Coldridge Valley 21.4,64.1
step
Watch the dialogue
Scout Soothsayer Mirim'koa |q 24489/3 |goto Coldridge Valley 21.23,66.03
step
click Felix's Chest##178084
collect Felix Chest##16313 |q 3361/2 |goto Coldridge Valley 30.97,84.02
step
Watch the dialogue
Scout Soothsayer Rikkari |q 24489/2 |goto Coldridge Valley 30.61,84.75
step
click Felix's Bucket of Bolt##4991
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto Coldridge Valley 49.14,80.37
step
Watch the dialogue
Scout Soothsayer Shi'kala |q 24489/1 |goto Coldridge Valley 49.14,80.37
step
label "Frostmane_Troll_Whelps"
kill 10 Frostmane Troll Whelp##706 |q 182/1 |goto Coldridge Valley 49.14,80.37
step
talk Apprentice Soren##1354
turnin Trolling for Information##24489 |goto Coldridge Valley 43.2,63.1
step
talk Grelin Whitebeard##786
turnin The Troll Menace##182 |goto Coldridge Valley 42.7,62.2
accept Ice and Fire##218 |goto Coldridge Valley 42.7,62.2
step
talk Felix Whindlebolt##8416
turnin A Refugee's Quandary##3361 |goto Coldridge Valley 41.9,63.5
stickystart "Frostmane_Blades"
stickystart "Frostmane_Novices"
step
kill Wayward Fire Elemental##37112 |q 218/2 |goto Coldridge Valley/9 66.7,29.2
|tip It paces around on the frozen pond inside the cave.
step
kill Grik'nir the Cold##808 |q 218/1 |goto Coldridge Valley/9 76.1,30.8
step
label "Frostmane_Blades"
kill 6 Frostmane Blade##37507 |q 218/4 |goto Coldridge Valley/9 76.12,24.16
|tip They are all around this cave.
step
label "Frostmane_Novices"
kill 3 Frostmane Novice##946 |q 218/3 |goto Coldridge Valley/9 76.12,24.16
|tip They are all around this cave.
step
talk Grelin Whitebeard##786
turnin Ice and Fire##218 |goto Coldridge Valley/0 42.7,62.2
accept A Trip to Ironforge##24490 |goto Coldridge Valley/0 42.7,62.2
step
talk Hands Springsprocket##6782
turnin A Trip to Ironforge##24490 |goto Coldridge Valley/0 87.53,44.47
accept Follow that Gyro-Copter!##24491 |goto Coldridge Valley/0 87.53,44.47
step
talk Milo Geartwinge##37113
turnin Follow that Gyro-Copter##24491 |goto Coldridge Valley/0 69.9,44.21
accept Pack Your Bags##24492 |goto Coldridge Valley/0 69.9,44.21
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
accept Don't Forget About Us##24493 |goto Coldridge Valley/0 61.8,22.5
step
click Leftover Boar Meat##201704
|tip On the table.
collect Leftover Boar Meat##49756 |q 24492/3 |goto Coldridge Valley/0 62.14,23.58
step
click Beer Barrel##201706
collect Coldridge Beer Flagon##49754 |q 24492/1 |goto Coldridge Valley/0 62.45,23.47
step
click Wolf-Hide Cloaks##201705
collect Ragged Wolf-Hide Cloak##57541 |q 24492/2 | goto Coldridge Valley/0 62.21,23.98
step
talk Milo Geartwinge##37113
turnin Pack Your Bags##24492 |goto Coldridge Valley/0 69.9,44.21
step
Fly to Kharanos |goto Dun Morogh/0 53.3,49.8 < 50 |noway |c |q 24493
step
talk Tharek Blackstone##1872
turnin Don't Forget About Us##24493 |goto Dun Morogh/0 53.1,50.0
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Gnome Starter",{
author="QuestCore",
condition_valid=function() return raceclass('Gnome') end,
condition_valid_msg="Gnome only.",
condition_suggested=function() return raceclass('Gnome') and level <= 5 and not completedq(26364) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Eastern Kingdoms\\Dun Morogh (1-70)",
startlevel=1,
endlevel=5
},[[
step
next "normalstart" |only Gnome
next "oddstart" |only if not Gnome
step
label "normalstart"
talk Nevin Twistwrench##45966
accept Pinned Down##27670 |goto Dun Morogh/10 34.0,32.2
step
kill 6 Crazed Leper Gnome##46391+ |q 27670/1 |goto Dun Morogh/10 43.89,32.84
step
talk Nevin Twistwrench##45966
turnin Pinned Down##27670 |goto Dun Morogh/10 34.0,32.2
accept Report to Carvo Blastbolt##28167 |goto Dun Morogh/10 34.0,32.2
step
talk Carvo Blastbolt##47250
turnin Report to Carvo Blastbolt##28167 |goto Dun Morogh/10 50.9,31.9
accept See to the Survivors##27671 |goto Dun Morogh/10 50.9,31.9
step
use the Teleport Beacon##62057
|tip Use it on Survivors.
|tip They look like cowering, unclothed gnomes around this area.
Rescue #6# Survivors |q 27671/1 |goto Dun Morogh/10 61.3,34.8
'|clicknpc Survivor##46268
step
talk Carvo Blastbolt##47250
turnin See to the Survivors##27671 |goto Dun Morogh/10 50.9,31.9
accept Withdraw to the Loading Room!##28169 |goto Dun Morogh/10 50.9,31.9
step
talk Gaffer Coilspring##46274
turnin Withdraw to the Loading Room!##28169 |goto Dun Morogh/10 53.1,82.2
accept Decontamination##27635 |goto Dun Morogh/10 53.1,82.2
step
clicknpc Sanitron 500##46185
Start the Decontamination Process |q 27635/1 |goto Dun Morogh/10 58.8,81.7
step
talk Technician Braggle##46255
turnin Decontamination##27635 |goto Dun Morogh/10 66.3,81.6
accept To the Surface##27674 |goto Dun Morogh/10 66.3,81.6
step
talk Torben Zapblast##46293
Select _"Send me to the surface, Torben."_ |gossip 37763
Speak to Torben Zapblast |q 27674/1 |goto Dun Morogh/10 67.2,84.0
step
talk Nevin Twistwrench##42396
turnin To the Surface##27674 |goto New Tinkertown/0 39.50,38.39
accept The Future of Gnomeregan##26202 |goto New Tinkertown/0 39.50,38.39 |only Gnome Warlock
accept The Future of Gnomeregan##26197 |goto New Tinkertown/0 39.50,38.39 |only Gnome Mage
accept The Future of Gnomeregan##26203 |goto New Tinkertown/0 39.50,38.39 |only Gnome Warrior
accept The Future of Gnomeregan##26206 |goto New Tinkertown/0 39.50,38.39 |only Gnome Rogue
accept The Future of Gnomeregan##26199 |goto New Tinkertown/0 39.50,38.39 |only Gnome Priest
accept The Future of Gnomeregan##31135 |goto New Tinkertown/0 39.50,38.39 |only Gnome Monk
accept The Future of Gnomeregan##41217 |goto New Tinkertown/0 39.50,38.39 |only Gnome Hunter
step
talk "Doc" Cogspin##42323
turnin The Future of Gnomeregan##26199 |goto New Tinkertown/0 39.4,28.4
accept Meet the High Tinker##26422 |goto New Tinkertown/0 39.4,28.4
|only Gnome Priest
step
talk Kelsey Steelspark##42366
turnin The Future of Gnomeregan##26206 |goto New Tinkertown/0 38.0,33.6
accept Meet the High Tinker##26423 |goto New Tinkertown/0 38.0,33.6
|only Gnome Rogue
step
talk Drill Sergeant Steamcrank##42324
turnin The Future of Gnomeregan##26203 |goto New Tinkertown/0 40.6,35.4
accept Meet the High Tinker##26425 |goto New Tinkertown/0 40.6,35.4
|only Gnome Warrior
step
talk Bipsi Frostflinger##42331
turnin he Future of Gnomeregan##26197 |goto New Tinkertown/0 41.1,29.1
accept Meet the High Tinker##26421 |goto New Tinkertown/0 41.1,29.1
|only Gnome Mage
step
talk Alamar Grimm##460
turnin The Future of Gnomeregan##26202 |goto New Tinkertown/0 37.7,38.0
accept Meet the High Tinker##26424 |goto New Tinkertown/0 37.7,38.0
|only Gnome Warlock
step
talk Xi Friend to the Small##63238
turnin The Future of Gnomeregan##31135 |goto New Tinkertown/0 40.1,35.6
accept Meet the High Tinker##31137 |goto New Tinkertown/0 40.1,35.6
|only Gnome Monk
step
talk Muffinus Chromebrew##103614
turnin The Future of Gnomeregan##41217 |goto New Tinkertown/0 41.9,31.6
accept Meet the High Tinker##41218 |goto New Tinkertown/0 41.9,31.6
|only Gnome Hunter
step
talk High Tinker Mekkatorque##42317
turnin Meet the High Tinker##31137 |goto New Tinkertown/0 38.7,32.8 |only Gnome Monk
turnin Meet the High Tinker##26424 |goto New Tinkertown/0 38.7,32.8 |only Gnome Warlock
turnin Meet the High Tinker##26421 |goto New Tinkertown/0 38.7,32.8 |only Gnome Mage
turnin Meet the High Tinker##26425 |goto New Tinkertown/0 38.7,32.8 |only Gnome Warrior
turnin Meet the High Tinker##26423 |goto New Tinkertown/0 38.7,32.8 |only Gnome Rogue
turnin Meet the High Tinker##26422 |goto New Tinkertown/0 38.7,32.8 |only Gnome Priest
turnin Meet the High Tinker##41218 |goto New Tinkertown/0 38.7,32.8 |only Gnome Hunter
accept The Fight Continues##26208 |goto New Tinkertown/0 38.7,32.8
step
Watch the dialogue
Learn about Operation: Gnomeregan |q 26208/1 |goto New Tinkertown/0 38.64,32.90
step
talk High Tinker Mekkatorque##42317
turnin The Fight Continues##26208 |goto New Tinkertown/0 38.64,32.90
accept A Triumph of Gnomish Ingenuity##26566 |goto New Tinkertown/0 38.64,32.90
step
talk Engineer Grindspark##42553
turnin A Triumph of Gnomish Ingenuity##26566 |goto New Tinkertown/0 40.6,28.1
accept Scrounging for Parts##26222 |goto New Tinkertown/0 40.6,28.1
step
click Spare Part##203964
|tip They look like metal machine parts on the ground all around this area, and inside buildings.
collect 7 Spare Part##57764 |q 26222/1 |goto New Tinkertown/0 39.74,30.27
step
talk Engineer Grindspark##42553
turnin Scrounging for Parts##26222 |goto New Tinkertown/0 40.6,28.1
accept A Job for the Multi-Bot##26205 |goto New Tinkertown/0 40.6,28.1
step
talk Tock Sprysprocket##42611
accept What's Left Behind##26264 |goto New Tinkertown/0 39.2,26.6
step
talk Corporal Fizzwhistle##42630
|tip He's outside, behind the building.
accept Dealing with the Fallout##26265 |goto New Tinkertown/0 38.2,40.2
stickystart "Kill_Living_Contaminants"
stickystart "Collect_Recovered_Possessions"
step
Clean Up #5# Toxic Geysers |q 26205/1 |goto New Tinkertown/0 37.1,50.6
|tip Stand next to Toxic Geysers.
|tip They look like green spots in the green pools that spew up green liquid.
step
label "Kill_Living_Contaminants"
kill 6 Living Contamination##42185+ |q 26265/1 |goto New Tinkertown/0 37.1,50.6
step
label "Collect_Recovered_Possessions"
kill Toxic Sludge##42184+
collect 6 Recovered Possession##57987 |q 26264/1 |goto New Tinkertown/0 37.1,50.6
step
talk Corporal Fizzwhistle##42630
turnin Dealing with the Fallout##26265 |goto New Tinkertown/0 38.2,40.2
step
talk Engineer Grindspark##42553
turnin A Job for the Multi-Bot##26205 |goto New Tinkertown/0 40.6,28.1
step
talk Tock Sprysprocket##42611
turnin What's Left Behind##26264 |goto New Tinkertown/0 39.2,26.6
step
talk Captain Tread Sparknozzle##42489
accept What's Keeping Kharmarn?##26316 |goto New Tinkertown/0 38.4,33.5
step
talk Kharmarn Palegrip##42708
turnin What's Keeping Kharmarn?##26316 |goto New Tinkertown/0 37.3,65.2
accept Get Me Explosives Back!##26285 |goto New Tinkertown/0 37.3,65.2
accept Missing in Action##26284 |goto New Tinkertown/0 37.3,65.2
stickystart "Stolen_Powder_Kegs"
step
click Makeshift Cages
|tip They look like bone cages with brown animal hides laying on them around this area.
Rescue #6# Captured Demolitionists |q 26284/1 |goto New Tinkertown/0 36.8,68.4
step
label "Stolen_Powder_Kegs"
kill Rockjaw Bonepicker##42221, Rockjaw Marauder##42222
collect 7 Stolen Powder Keg##58202 |q 26285/1 |goto New Tinkertown/0 36.8,68.4
step
talk Kharmarn Palegrip##42708
turnin Get Me Explosives Back!##26285 |goto New Tinkertown/0 37.3,65.2
turnin Missing in Action##26284 |goto New Tinkertown/0 37.3,65.2
accept Finishin' the Job##26318 |goto New Tinkertown/0 37.3,65.2
step
kill Boss Bruggor##42773 |q 26318/2 |goto New Tinkertown/8 29.6,49.5
|tip He paces in the back of the cave.
step
click Detonator##240525
Detonate the Trogg Tunnel |q 26318/1 |goto New Tinkertown/8 35.4,40.9
step
talk Kharmarn Palegrip##42708
turnin Finishin' the Job##26318 |goto New Tinkertown/0 37.3,65.2
accept One More Thing##26329 |goto New Tinkertown/0 37.3,65.2
step
talk High Tinker Mekkatorque##42317
turnin One More Thing##26329 |goto New Tinkertown/0 38.8,32.7
accept Crushcog's Minions##26331 |goto New Tinkertown/0 38.8,32.7
step
talk Hinkles Fastblast##42491
accept No Tanks!##26333 |goto New Tinkertown/0 38.2,33.7
stickystart "Kill_Crushcogs_Minions"
step
use the Techno-Grenade##58200
|tip Use it on Repaired Mechano-Tanks.
|tip They look like yellow crab machines.
Destroy #5# Repaired Mechano-Tanks |q 26333/1 |goto New Tinkertown/0 53.2,24.0
'|clicknpc Repaired Mechano-Tank##42224
step
label "Kill_Crushcogs_Minions"
kill Irradiated Technician##42223, Crushcog Battle Suit##42226
Kill #8# Crushcog's Minions |q 26331/1 |goto New Tinkertown/0 53.2,24.0
step
talk High Tinker Mekkatorque##42317
turnin Crushcog's Minions##26331 |goto New Tinkertown/0 38.8,32.7
step
talk Hinkles Fastblast##42491
turnin No Tanks!##26333 |goto New Tinkertown/0 38.2,33.7
step
talk Kelsey Steelspark##42366
accept Staging in Brewnall##26339 |goto New Tinkertown/0 38.0,33.6
step
talk Jarvi Shadowstep##42353
turnin Staging in Brewnall##26339 |goto New Tinkertown/0 48.7,52.9
accept Paint it Black##26342 |goto New Tinkertown/0 48.7,52.9
step
use the Paintinator##58203
|tip Use it on Crushcog Sentry-Bots.
Blind #5# Crushcog's Sentry-Bots |q 26342/1 |goto New Tinkertown/0 53.5,45.8
'|clicknpc Crushcog Sentry-Bot##42291
step
talk Jarvi Shadowstep##42353
turnin Paint it Black##26342 |goto New Tinkertown/0 48.7,52.9
accept Down with Crushcog!##26364 |goto New Tinkertown/0 48.7,52.9
step
talk High Tinker Mekkatorque##42849
Talk to High Tinker Mekkatorque |q 26364/1 |goto New Tinkertown/0 57.2,47.5
step
talk High Tinker Mekkatorque##42849
Select _"I'm ready to start the assault."_ |gossip 38798
|tip Follow your allies into battle.
use the Orbital Targeting Device##58253
|tip Use it on Razlo Crushcog.
Defeat Razlo Crushcog |q 26364/2 |goto New Tinkertown/0 57.2,47.5
'|clicknpc Razlo Crushcog##42839
step
talk Jarvi Shadowstep##42353
turnin Down with Crushcog!##26364 |goto New Tinkertown/0 48.7,52.9
accept On to Kharanos##26373 |goto New Tinkertown/0 48.7,52.9
step
label "oddstart"
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto Dun Morogh 49.9,45.0
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Human Starter",{
author="QuestCore",
condition_valid=function() return raceclass('Human') end,
condition_valid_msg="Human only.",
condition_suggested=function() return raceclass('Human') and level <= 5 and not completedq(26390) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Eastern Kingdoms\\Elwynn Forest (1-70)",
startlevel=1,
endlevel=5
},[[
step
talk Marshal McBride##197
accept Beating them Back!##28757 |goto Northshire/0 33.6,53.0 |only Human Mage
accept Beating them Back!##28762 |goto Northshire/0 33.6,53.0 |only Human Paladin
accept Beating them Back!##28763 |goto Northshire/0 33.6,53.0 |only Human Priest
accept Beating them Back!##28764 |goto Northshire/0 33.6,53.0 |only Human Rogue
accept Beating them Back!##28765 |goto Northshire/0 33.6,53.0 |only Human Warlock
accept Beating them Back!##28766 |goto Northshire/0 33.6,53.0 |only Human Warrior
accept Beating them Back!##28767 |goto Northshire/0 33.6,53.0 |only Human Hunter
accept Beating Them Back!##31139 |goto Northshire/0 33.6,53.0 |only Human Monk
accept Beating Them Back!##29078 |goto Northshire/0 33.6,53.0 |only if not Human
step
kill 6 Blackrock Battle Worg##49871 |q 28757/1 |goto Northshire/0 29.0,42.9 |only Human Mage
kill 6 Blackrock Battle Worg##49871 |q 28762/1 |goto Northshire/0 29.0,42.9 |only Human Paladin
kill 6 Blackrock Battle Worg##49871 |q 28763/1 |goto Northshire/0 29.0,42.9 |only Human Priest
kill 6 Blackrock Battle Worg##49871 |q 28764/1 |goto Northshire/0 29.0,42.9 |only Human Rogue
kill 6 Blackrock Battle Worg##49871 |q 28765/1 |goto Northshire/0 29.0,42.9 |only Human Warlock
kill 6 Blackrock Battle Worg##49871 |q 28766/1 |goto Northshire/0 29.0,42.9 |only Human Warrior
kill 6 Blackrock Battle Worg##49871 |q 28767/1 |goto Northshire/0 29.0,42.9 |only Human Hunter
kill 6 Blackrock Battle Worg##49871 |q 31139/1 |goto Northshire/0 29.0,42.9 |only Human Monk
kill 6 Blackrock Battle Worg##49871 |q 29078/1 |goto Northshire/0 29.0,42.9 |only if not Human
step
talk Marshal McBride##197
turnin Beating them Back!##28757 |goto Northshire/0 33.6,53.0	|only Human Mage
accept Lions for Lambs##28769 |goto Northshire/0 33.6,53.0	|only Human Mage
turnin Beating them Back!##28762 |goto Northshire/0 33.6,53.0	|only Human Paladin
accept Lions for Lambs##28770 |goto Northshire/0 33.6,53.0	|only Human Paladin
turnin Beating them Back!##28763 |goto Northshire/0 33.6,53.0	|only Human Priest
accept Lions for Lambs##28771 |goto Northshire/0 33.6,53.0	|only Human Priest
turnin Beating them Back!##28764 |goto Northshire/0 33.6,53.0	|only Human Rogue
accept Lions for Lambs##28772 |goto Northshire/0 33.6,53.0	|only Human Rogue
turnin Beating them Back!##28765 |goto Northshire/0 33.6,53.0	|only Human Warlock
accept Lions for Lambs##28773 |goto Northshire/0 33.6,53.0	|only Human Warlock
turnin Beating them Back!##28766 |goto Northshire/0 33.6,53.0	|only Human Warrior
accept Lions for Lambs##28774 |goto Northshire/0 33.6,53.0	|only Human Warrior
turnin Beating them Back!##28767 |goto Northshire/0 33.6,53.0	|only Human Hunter
accept Lions for Lambs##28759 |goto Northshire/0 33.6,53.0	|only Human Hunter
turnin Beating Them Back!##31139 |goto Northshire/0 33.6,53.0	|only Human Monk
accept Lions for Lambs##31140 |goto Northshire/0 33.6,53.0	|only Human Monk
turnin Beating Them Back!##29078 |goto Northshire/0 33.6,53.0	|only if not Human
accept Lions for Lambs##29079 |goto Northshire/0 33.6,53.0	|only if not Human
step
kill 8 Blackrock Spy##49874 |q 28769/1 |goto Northshire/0 25.4,41.1 |only Human Mage
kill 8 Blackrock Spy##49874 |q 28770/1 |goto Northshire/0 25.4,41.1 |only Human Paladin
kill 8 Blackrock Spy##49874 |q 28771/1 |goto Northshire/0 25.4,41.1 |only Human Priest
kill 8 Blackrock Spy##49874 |q 28772/1 |goto Northshire/0 25.4,41.1 |only Human Rogue
kill 8 Blackrock Spy##49874 |q 28773/1 |goto Northshire/0 25.4,41.1 |only Human Warlock
kill 8 Blackrock Spy##49874 |q 28774/1 |goto Northshire/0 25.4,41.1 |only Human Warrior
kill 8 Blackrock Spy##49874 |q 28759/1 |goto Northshire/0 25.4,41.1 |only Human Hunter
kill 8 Blackrock Spy##49874 |q 31140/1 |goto Northshire/0 25.4,41.1 |only Human Monk
kill 8 Blackrock Spy##49874 |q 29079/1 |goto Northshire/0 25.4,41.1 |only if not Human
|tip They creep around near the trees around this area.
step
talk Marshal McBride##197
turnin Lions for Lambs##28769 |goto Northshire/0 33.6,53.0	|only Human Mage
accept Join the Battle!##28784					|only Human Mage
turnin Lions for Lambs##28770 |goto Northshire/0 33.6,53.0	|only Human Paladin
accept Join the Battle!##28785					|only Human Paladin
turnin Lions for Lambs##28771 |goto Northshire/0 33.6,53.0	|only Human Priest
accept Join the Battle!##28786					|only Human Priest
turnin Lions for Lambs##28772 |goto Northshire/0 33.6,53.0	|only Human Rogue
accept Join the Battle!##28787					|only Human Rogue
turnin Lions for Lambs##28773 |goto Northshire/0 33.6,53.0	|only Human Warlock
accept Join the Battle!##28788					|only Human Warlock
turnin Lions for Lambs##28774 |goto Northshire/0 33.6,53.0	|only Human Warrior
accept Join the Battle!##28789					|only Human Warrior
turnin Lions for Lambs##28759 |goto Northshire/0 33.6,53.0	|only Human Hunter
accept Join the Battle!##28780					|only Human Hunter
turnin Lions for Lambs##31140 |goto Northshire/0 33.6,53.0	|only Human Monk
accept Join the Battle!##31143					|only Human Monk
turnin Lions for Lambs##29079 |goto Northshire/0 33.6,53.0	|only if not Human
accept Join the Battle!##29080 |goto Northshire/0 33.6,53.0	|only if not Human
step
talk Sergeant Willem##823
turnin Join the Battle!##28789 |goto Northshire/0 35.7,39.8	|only Human Warrior
accept They Sent Assassins##28797 |goto Northshire/0 35.7,39.8	|only Human Warrior
turnin Join the Battle!##28785 |goto Northshire/0 35.7,39.8	|only Human Paladin
accept They Sent Assassins##28793 |goto Northshire/0 35.7,39.8	|only Human Paladin
turnin Join the Battle!##28780 |goto Northshire/0 35.7,39.8	|only Human Hunter
accept They Sent Assassins##28791 |goto Northshire/0 35.7,39.8	|only Human Hunter
turnin Join the Battle!##28786 |goto Northshire/0 35.7,39.8	|only Human Priest
accept They Sent Assassins##28794 |goto Northshire/0 35.7,39.8	|only Human Priest
turnin Join the Battle!##28788 |goto Northshire/0 35.7,39.8	|only Human Warlock
accept They Sent Assassins##28796 |goto Northshire/0 35.7,39.8	|only Human Warlock
turnin Join the Battle!##28784 |goto Northshire/0 35.7,39.8	|only Human Mage
accept They Sent Assassins##28792 |goto Northshire/0 35.7,39.8	|only Human Mage
turnin Join the Battle!##28787 |goto Northshire/0 35.7,39.8	|only Human Rogue
accept They Sent Assassins##28795 |goto Northshire/0 35.7,39.8	|only Human Rogue
turnin Join the Battle!##31143 |goto Northshire/0 35.7,39.8	|only Human Monk
accept They Sent Assassins##31144 |goto Northshire/0 35.7,39.8	|only Human Monk
turnin Join the Battle!##29080 |goto Northshire/0 35.7,39.8	|only if not Human
accept They Sent Assassins##29081 |goto Northshire/0 35.7,39.8	|only if not Human
step
talk Brother Paxton##951
accept Fear No Evil##28813 |goto Northshire/0 35.01,38.26 |only Human Warrior
accept Fear No Evil##28809 |goto Northshire/0 35.01,38.26 |only Human Paladin
accept Fear No Evil##28806 |goto Northshire/0 35.01,38.26 |only Human Hunter
accept Fear No Evil##28810 |goto Northshire/0 35.01,38.26 |only Human Priest
accept Fear No Evil##28812 |goto Northshire/0 35.01,38.26 |only Human Warlock
accept Fear No Evil##28808 |goto Northshire/0 35.01,38.26 |only Human Mage
accept Fear No Evil##28811 |goto Northshire/0 35.01,38.26 |only Human Rogue
accept Fear No Evil##29082 |goto Northshire/0 35.01,38.26 |only if not Human
|only if not Monk
stickystart "injuredsoldiers"
step
kill 8 Goblin Assassin##50039 |q 28797/1 |goto Northshire/0 30.7,29.1 |only Human Warrior
kill 8 Goblin Assassin##50039 |q 28793/1 |goto Northshire/0 30.7,29.1 |only Human Paladin
kill 8 Goblin Assassin##50039 |q 28791/1 |goto Northshire/0 30.7,29.1 |only Human Hunter
kill 8 Goblin Assassin##50039 |q 28794/1 |goto Northshire/0 30.7,29.1 |only Human Priest
kill 8 Goblin Assassin##50039 |q 28796/1 |goto Northshire/0 30.7,29.1 |only Human Warlock
kill 8 Goblin Assassin##50039 |q 28792/1 |goto Northshire/0 30.7,29.1 |only Human Mage
kill 8 Goblin Assassin##50039 |q 28795/1 |goto Northshire/0 30.7,29.1 |only Human Rogue
kill 8 Goblin Assassin##50039 |q 29081/1 |goto Northshire/0 30.7,29.1 |only if not Human
step
label "injuredsoldiers"
clicknpc Injured Stormwind Infantry##50047+
|tip They look like dead Alliance soldiers laying on the ground around this area.
Revive #4# Injured Soldiers |q 28813/1 |goto Northshire/0 30.7,29.1 |only Human Warrior
Revive #4# Injured Soldiers |q 28809/1 |goto Northshire/0 30.7,29.1 |only Human Paladin
Revive #4# Injured Soldiers |q 28806/1 |goto Northshire/0 30.7,29.1 |only Human Hunter
Revive #4# Injured Soldiers |q 28810/1 |goto Northshire/0 30.7,29.1 |only Human Priest
Revive #4# Injured Soldiers |q 28812/1 |goto Northshire/0 30.7,29.1 |only Human Warlock
Revive #4# Injured Soldiers |q 28808/1 |goto Northshire/0 30.7,29.1 |only Human Mage
Revive #4# Injured Soldiers |q 28811/1 |goto Northshire/0 30.7,29.1 |only Human Rogue
Revive #4# Injured Soldiers |q 29082/1 |goto Northshire/0 30.7,29.1 |only if not Human
|only if not Monk
step
talk Brother Paxton##951
turnin Fear No Evil##28813 |goto Northshire/0 35.01,38.26 |only Human Warrior
turnin Fear No Evil##28809 |goto Northshire/0 35.01,38.26 |only Human Paladin
turnin Fear No Evil##28806 |goto Northshire/0 35.01,38.26 |only Human Hunter
turnin Fear No Evil##28810 |goto Northshire/0 35.01,38.26 |only Human Priest
turnin Fear No Evil##28812 |goto Northshire/0 35.01,38.26 |only Human Warlock
turnin Fear No Evil##28808 |goto Northshire/0 35.01,38.26 |only Human Mage
turnin Fear No Evil##28811 |goto Northshire/0 35.01,38.26 |only Human Rogue
turnin Fear No Evil##29082 |goto Northshire/0 35.01,38.26 |only if not Human
|only if not Monk
step
talk Sergeant Willem##823
turnin They Sent Assassins##28797 |goto Northshire/0 35.7,39.8	|only Human Warrior
accept The Rear is Clear##28823 |goto Northshire/0 35.7,39.8	|only Human Warrior
turnin They Sent Assassins##28793 |goto Northshire/0 35.7,39.8	|only Human Paladin
accept The Rear is Clear##28819 |goto Northshire/0 35.7,39.8	|only Human Paladin
turnin They Sent Assassins##28791 |goto Northshire/0 35.7,39.8	|only Human Hunter
accept The Rear is Clear##28817 |goto Northshire/0 35.7,39.8	|only Human Hunter
turnin They Sent Assassins##28794 |goto Northshire/0 35.7,39.8	|only Human Priest
accept The Rear is Clear##28820 |goto Northshire/0 35.7,39.8	|only Human Priest
turnin They Sent Assassins##28796 |goto Northshire/0 35.7,39.8	|only Human Warlock
accept The Rear is Clear##28822 |goto Northshire/0 35.7,39.8	|only Human Warlock
turnin They Sent Assassins##28792 |goto Northshire/0 35.7,39.8	|only Human Mage
accept The Rear is Clear##28818 |goto Northshire/0 35.7,39.8	|only Human Mage
turnin They Sent Assassins##28795 |goto Northshire/0 35.7,39.8	|only Human Rogue
accept The Rear is Clear##28821 |goto Northshire/0 35.7,39.8	|only Human Rogue
turnin They Sent Assassins##31144 |goto Northshire/0 35.7,39.8	|only Human Monk
accept The Rear is Clear##31145 |goto Northshire/0 35.7,39.8	|only Human Monk
turnin They Sent Assassins##29081 |goto Northshire/0 35.7,39.8	|only if not Human
accept The Rear is Clear##29083 |goto Northshire/0 35.7,39.8	|only if not Human
step
talk Marshal McBride##197
|tip Standing at the entrance of the building.
turnin The Rear is Clear##28823 |goto Northshire/0 33.6,53.0 |only Human Warrior
turnin The Rear is Clear##28819 |goto Northshire/0 33.6,53.0 |only Human Paladin
turnin The Rear is Clear##28817 |goto Northshire/0 33.6,53.0 |only Human Hunter
turnin The Rear is Clear##28820 |goto Northshire/0 33.6,53.0 |only Human Priest
turnin The Rear is Clear##28822 |goto Northshire/0 33.6,53.0 |only Human Warlock
turnin The Rear is Clear##28818 |goto Northshire/0 33.6,53.0 |only Human Mage
turnin The Rear is Clear##28821 |goto Northshire/0 33.6,53.0 |only Human Rogue
turnin The Rear is Clear##31145 |goto Northshire/0 33.6,53.0 |only Human Monk
turnin The Rear is Clear##29083 |goto Northshire/0 33.6,53.0 |only if not Human
accept Blackrock Invasion##26389 |goto Northshire/0 33.6,53.0
step
talk Milly Osworth##9296
accept Extinguishing Hope##26391 |goto Northshire/0 33.4,54.7
stickystart "Collect_Blackrock_Orc_Weapons"
step
use the Milly's Fire Extinguisher##58362
|tip Use it on Fires around the area.
Extinguish #8# Vineyard Fires |q 26391/1 |goto Northshire/0 54.4,78.6
step
label "Collect_Blackrock_Orc_Weapons"
kill Blackrock Invader##42937+
collect 8 Blackrock Orc Weapon##58361 |q 26389/1 |goto Northshire/0 54.4,78.6
step
talk Milly Osworth##9296
turnin Extinguishing Hope##26391 |goto Northshire/0 33.4,54.7
step
talk Marshal McBride##197
turnin Blackrock Invasion##26389 |goto Northshire/0 33.6,53.0
accept Ending the Invasion!##26390 |goto Northshire/0 33.6,53.0
step
kill Kurtok the Slayer##42938 |q 26390/1 |goto Northshire/0 65.1,48.1
step
talk Marshal McBride##197
turnin Ending the Invasion!##26390 |goto Northshire/0 33.6,53.0
accept Report to Goldshire##54 |goto Northshire/0 33.6,53.0
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Night Elf Starter",{
author="QuestCore",
condition_valid=function() return raceclass('NightElf') end,
condition_valid_msg="Night Elf only.",
condition_suggested=function() return raceclass('NightElf') and level <= 5 and not completedq(14039) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-70)\\Kalimdor\\Darkshore (5-70)",
startlevel=1,
endlevel=70,
},[[
step
talk Ilthalaine##2079
accept The Balance of Nature##28713 |goto Shadowglen/0 45.6,74.6
step
kill 6 Young Nightsaber##2031 |q 28713/1 |goto Shadowglen/0 45.2,80.8
step
talk Ilthalaine##2079
turnin The Balance of Nature##28713 |goto Shadowglen/0 45.6,74.6
accept Fel Moss Corruption##28714 |goto Shadowglen/0 45.6,74.6
step
talk Melithar Staghelm##2077
accept Demonic Thieves##28715 |goto Shadowglen/0 46.0,72.9
stickystart "Collect_Melithars_Stolen_Bags"
step
kill Grell##1988+
collect 6 Fel Moss##3297 |q 28714/1 |goto Shadowglen/0 36.9,78.2
step
label "Collect_Melithars_Stolen_Bags"
click Melithar's Stolen Bag##323+
|tip They look like tan leather sacks on the ground around this area.
collect 5 Melithar's Stolen Bags##46700 |q 28715/1 |goto Shadowglen/0 36.9,78.2
step
talk Melithar Staghelm##2077
turnin Demonic Thieves##28715 |goto Shadowglen/0 46.0,72.9
step
talk Ilthalaine##2079
turnin Fel Moss Corruption##28714 |goto Shadowglen/0 46.3,73.5
accept Priestess of the Moon##28723 |goto Shadowglen/0 46.3,73.5
step
talk Dentaria Silverglade##49479
turnin Priestess of the Moon##28723 |goto Shadowglen/0 42.5,50.6
accept Iverron's Antidote##28724 |goto Shadowglen/0 42.5,50.6
|only NightElf
step
click Moonpetal Lily##207346
|tip They are all around these ponds.
collect 7 Moonpetal Lily##10641 |q 28724/1 |goto Shadowglen/0 42.49,50.54
|only if haveq(28724)
step
talk Dentaria Silverglade##49479
turnin Iverron's Antidote##28724 |goto Shadowglen/0 42.5,50.6
accept The Woodland Protector##28725 |goto Shadowglen/0 42.5,50.6
|only NightElf
step
talk Tarindrella##49480
|tip She will appear next to you when you reach the entrance of the cave.
turnin The Woodland Protector##28725 |goto Teldrassil/2 44.5,82.2
accept Webwood Corruption##28726 |goto Teldrassil/2 44.5,82.2
|only NightElf
step
kill 12 Webwood Spider##1986 |q 28726/1 |goto Teldrassil/2 46.02,60.91
|tip They are all around inside this cave.
|only if haveq(28726) or completedq(28726)
step
_Next to you:_
talk Tarindrella##49480
turnin Webwood Corruption##28726
accept Vile Touch##28727
|only NightElf
step
kill Githyiss the Vile##1994 |q 28727/1 |goto Teldrassil/2 44.9,28.1
|only if haveq(28727)
step
_Next to you:_
talk Tarindrella##49480
turnin Vile Touch##28727
accept Signs of Things to Come##28728
|only NightElf
step
talk Dentaria Silverglade##49479
turnin Signs of Things to Come##28728 |goto Shadowglen/0 42.50,50.47
accept Teldrassil: Crown of Azeroth##28729 |goto Shadowglen/0 42.50,50.47
|only NightElf
step
use the Crystal Phial##5185
|tip Use it near the water.
collect Filled Crystal Phial##5184 |q 28729/1 |goto Shadowglen/0 50.3,33.7
|only if haveq(28729)
step
talk Dentaria Silverglade##49479
turnin Teldrassil: Crown of Azeroth##28729 |goto Shadowglen/0 42.50,50.49
accept Precious Waters##28730 |goto Shadowglen/0 42.50,50.49
|only NightElf
step
talk Tenaron Stormgrip##3514
|tip In a room at the top of the tree.
turnin Precious Waters##28730 |goto Shadowglen/0 47.2,55.9
accept Teldrassil: Passing Awareness##28731 |goto Shadowglen/0 47.2,55.9
|only NightElf
step
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto Shadowglen/0 54.6,84.7
step
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto Teldrassil/0 59.52,49.17
stickystart "Webwood_Spider_Silk"
step
kill Nightsaber##2042+
collect 2 Nightsaber Fang##3409 |q 488/1 |goto Teldrassil/0 60.5,52.5
There are more around [57.7,52.5]
step
label "Webwood_Spider_Silk"
kill Webwood Lurker##1998+
collect 2 Webwood Spider Silk##3412 |q 488/3 |goto Teldrassil/0 60.5,52.5
There are more around [57.7,52.5]
step
kill Strigid Owl##1995+
collect 2 Strigid Owl Feather##3411 |q 488/2 |goto Teldrassil/0 57.7,52.5
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto Teldrassil/0 59.55,49.24
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto Teldrassil/0 55.77,50.44
step
talk Tallonkai Swiftroot##3567
accept The Emerald Dreamcatcher##2438 |goto Teldrassil/0 55.55,49.98
step
talk Fidelio##40553
fpath Dolanaar |goto Teldrassil/0 55.5,50.4
step
talk Athridas Bearmantle##2078
accept A Troubling Breeze##475 |goto Teldrassil/0 55.7,52.0
step
talk Innkeeper Keldamyr##6736
turnin Dolanaar Delivery##2159 |goto Teldrassil/0 55.37,52.23
step
talk Innkeeper Keldamyr##6736
home Dolanaar |goto Teldrassil/0 55.37,52.23 |future |q 289
step
talk Corithras Moonrage##3515
turnin Teldrassil: Passing Awareness##28731 |goto Teldrassil/0 55.8,53.9
accept Teldrassil: The Refusal of the Aspects##929 |goto Teldrassil/0 55.8,53.9
|only NightElf
step
click Fel Cone##1673
|tip They look like big pine cones with green gas floating out of them on the ground around this area.
collect 3 Fel Cone##3418 |q 489/1 |goto Teldrassil/0 51.8,53.2
step
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto Teldrassil/0 59.5,49.2
step
use the Jade Phial##5619
|tip Use it near the water.
collect Filled Jade Phial##5639 |q 929/1 |goto Teldrassil/0 62.1,50.8
|only if haveq(929)
step
talk Gaerolas Talvethren##2107
|tip Upstairs in the house.
turnin A Troubling Breeze##475 |goto Teldrassil/0 64.6,51.2
accept Gnarlpine Corruption##476 |goto Teldrassil/0 64.6,51.2
step
click Tallonkai's Dresser##126158
|tip Inside the small house.
collect Emerald Dreamcatcher##8048 |q 2438/1 |goto Teldrassil/0 66.1,52.1
step
talk Syral Bladeleaf##2083
accept Nature's Reprisal##13946 |goto Teldrassil/0 55.77,50.44
step
talk Tallonkai Swiftroot##3567
turnin The Emerald Dreamcatcher##2438 |goto Teldrassil/0 55.55,49.98
accept Ferocitas the Dream Eater##2459 |goto Teldrassil/0 55.55,49.98
accept Twisted Hatred##932 |goto Teldrassil/0 55.55,49.98
step
talk Athridas Bearmantle##2078
turnin Gnarlpine Corruption##476 |goto Teldrassil/0 55.7,52.0
accept The Relics of Wakening##483 |goto Teldrassil/0 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
accept Resident Danger##13945 |goto Teldrassil/0 55.66,51.98
step
talk Corithras Moonrage##3515
turnin Teldrassil: The Refusal of the Aspects##929 |goto Teldrassil/0 55.8,53.9
|only NightElf
step
talk Nyoma##4265
accept Reminders of Home##6344 |goto Teldrassil/0 56.73,53.51
|only NightElf
stickystart "Kill_Gnarlpine_Mystics"
step
kill Ferocitas the Dream Eater##7234
collect Tallonkai's Jewel##8050 |q 2459/2 |goto Teldrassil/0 67.25,46.87
step
label "Kill_Gnarlpine_Mystics"
kill 7 Gnarlpine Mystic##7235 |q 2459/1 |goto Teldrassil/0 66.62,46.63
step
talk Tallonkai Swiftroot##3567
turnin Ferocitas the Dream Eater##2459 |goto Teldrassil/0 55.55,49.98
stickystart "Seeds"
step
kill Lord Melenas##2038
collect Melenas' Head##5221 |q 932/1 |goto Teldrassil/3 21.21,43.19
step
label "Seeds"
use the Ireroot Seeds##46716
|tip Use it on Sprites.
|tip They look like imps inside this cave.
Kill #12# Fel Rock Grellkin with Ireroot Seeds |q 13946/1 |goto Teldrassil/3 15.8,52.4
'|clicknpc Dark Sprite##2004, Rascal Sprite##2002, Shadow Sprite##2003
step
talk Syral Bladeleaf##2083
turnin Nature's Reprisal##13946 |goto Teldrassil/0 55.76,50.45
step
talk Tallonkai Swiftroot##3567
turnin Twisted Hatred##932 |goto Teldrassil/0 55.55,49.99
step
Approach Citarre Mapleheart |goto Teldrassil/0 55.58,51.70 < 10 |c |q 13945
step
talk Citarre Mapleheart##34761 |goto Teldrassil/0 55.58,51.70 |n
Select _"I'm ready to depart for Ban'ethil Barrow Den."_ |gossip 38299
Begin Riding to the Ban'ethil Barrow Den |goto Teldrassil/0 55.6,51.7 > 30 |noway |c |q 13945
step
Ride to the Ban'ethil Barrow Den |goto Teldrassil/0 45.68,50.49 < 15 |c |q 13945
stickystart "Slay_Banethil_Gnarlpine"
stickystart "Shaman_Voodoo_Charm"
step
talk Oben Rageclaw##7317
accept The Sleeping Druid##2541 |goto Teldrassil/4 41.17,83.85
step
_Next to you:_
talk Sentinel Huntress##34249
Select _"Where is the Rune of Nesting?"_ |gossip 37756
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of Nesting##2742
collect Rune of Nesting##3408 |q 483/4
step
_Next to you:_
talk Sentinel Huntress##34249
Select _"Where is the Black Feather Quill?"_ |gossip 37754
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Black Feather##2739
collect Black Feather Quill##3406 |q 483/2
step
_Next to you:_
talk Sentinel Huntress##34249
Select _"Where is the Sapphire of Sky?"_ |gossip 37755
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Sky##2741
collect Sapphire of Sky##3407 |q 483/3
step
_Next to you:_
talk Sentinel Huntress##34249
Select _"Where is the Raven Claw Talisman?"_ |gossip 37753
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Raven Claw##2740
collect Raven Claw Talisman##3405 |q 483/1
step
label "Shaman_Voodoo_Charm"
kill Gnarlpine Shaman##2009+
|tip All throughout the cave.
collect Shaman Voodoo Charm##8363 |q 2541/1
step
_Next to you:_
talk Sentinel Huntress##34249
Select _"Can you lead me to the exit?"_ |gossip 37751
|tip Follow the green mist trail that appears, until you see an area with 2 bridges.
|tip Don't actually leave the cave.
talk Oben Rageclaw##7317
turnin The Sleeping Druid##2541 |goto Teldrassil/4 41.30,83.78
accept Druid of the Claw##2561 |goto Teldrassil/4 41.30,83.78
step
kill Rageclaw##7318
|tip The doors will open as you approach them.
|tip You will be attacked immediately, so be ready.
use the Voodoo Charm##8149
|tip Use it on Rageclaw's corpse.
Release Oben Rageclaw's Spirit |q 2561/1 |goto Teldrassil/4 58.74,66.56
step
talk Oben Rageclaw##7317
turnin Druid of the Claw##2561 |goto Teldrassil/4 41.35,83.78
step
label "Slay_Banethil_Gnarlpine"
kill Gnarlpine Shaman##2009, Gnarlpine Defender##2010, Gnarlpine Augur##2011
|tip Inside the cave.
Slay #20# Ban'ethil Gnarlpine |q 13945/1
step
talk Athridas Bearmantle##2078
turnin The Relics of Wakening##483 |goto Teldrassil/0 55.7,52.0
accept Ursal the Mauler##486 |goto Teldrassil/0 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
turnin Resident Danger##13945 |goto Teldrassil/0 55.66,51.99
step
talk Fidelio##40553
turnin Reminders of Home##6344 |goto Teldrassil/0 55.47,50.42
accept To Darnassus##6341 |goto Teldrassil/0 55.47,50.42
|only NightElf
step
talk Sister Aquinne##7316
turnin To Darnassus##6341 |goto Darnassus/0 36.1,53.5
accept An Unexpected Gift##6342 |goto Darnassus/0 36.1,53.5
|only NightElf
step
talk Leora##40552
turnin An Unexpected Gift##6342 |goto Darnassus/0 36.6,47.9
accept Return to Nyoma##6343 |goto Darnassus/0 36.6,47.9
|only NightElf
step
talk Nyoma##4265
turnin Return to Nyoma##6343 |goto Teldrassil/0 56.73,53.52
|only NightElf
step
talk Moon Priestess Amara##2151
accept The Road to Darnassus##487 |goto Teldrassil/0 49.35,44.67
stickystart "Kill_Gnarlpine_Ambushers"
step
kill Ursal the Mauler##2039 |q 486/1 |goto Teldrassil/0 51.70,39.29
step
label "Kill_Gnarlpine_Ambushers"
kill 8 Gnarlpine Ambusher##2152 |q 487/1 |goto Teldrassil/0 51.33,37.36
step
talk Moon Priestess Amara##2151
turnin The Road to Darnassus##487 |goto Teldrassil/0 49.35,44.67
step
talk Athridas Bearmantle##2078
turnin Ursal the Mauler##486 |goto Teldrassil/0 55.7,52.0
step
talk Syral Bladeleaf##2083
accept Denalan's Earth##997 |goto Teldrassil/0 55.76,50.44
step
talk Denalan##2080
turnin Denalan's Earth##997 |goto Teldrassil/0 59.93,59.76
Watch the dialogue
accept Timberling Seeds##918 |goto Teldrassil/0 59.93,59.76
accept Timberling Sprouts##919 |goto Teldrassil/0 59.93,59.76
stickystart "Collect_Timberling_Sprouts"
stickystart "Collect_Timberling_Seeds"
step
click Strange Fruited Plant##6751
accept The Glowing Fruit##930 |goto Teldrassil/0 57.6,62.9
step
label "Collect_Timberling_Seeds"
kill Timberling##2022+
collect 6 Timberling Seed##5168 |q 918/1 |goto Teldrassil/0 57.55,62.45
step
label "Collect_Timberling_Sprouts"
click Timberling Sprout##4608
|tip They look like balls of green vines on the ground around this area.
collect 10 Timberling Sprout##5169 |q 919/1 |goto Teldrassil/0 57.55,62.45
step
talk Denalan##2080
turnin Timberling Seeds##918 |goto Teldrassil/0 59.93,59.76
accept Rellian Greenspyre##922 |goto Teldrassil/0 59.93,59.76
turnin Timberling Sprouts##919 |goto Teldrassil/0 59.93,59.76
turnin The Glowing Fruit##930 |goto Teldrassil/0 59.93,59.76
step
talk Corithras Moonrage##3515
accept Teldrassil: The Burden of the Kaldorei##7383 |goto Teldrassil/0 55.8,53.9
step
talk Rellian Greenspyre##3517
turnin Rellian Greenspyre##922 |goto Teldrassil/0 43.96,44.16
accept Mossy Tumors##923 |goto Teldrassil/0 43.96,44.16
step
kill Timberling Trampler##2027, Timberling Mire Beast##2029
|tip Follow the water north.
collect 5 Mossy Tumor##5170 |q 923/1 |goto Teldrassil/0 44.27,34.55
step
use the Amethyst Phial##18152
|tip Use it near the water.
collect Filled Amerthyst Phial##18151 |q 7383/1 |goto Teldrassil/0 40.5,29.9
step
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto Teldrassil/0 39.50,29.86
step
talk Priestess A'moora##7313
|tip She walks around.
accept Tears of the Moon##2518 |goto Teldrassil/0 39.25,29.73
stickystart "Collect_Bloodfeather_Belts"
step
click Strange Fronded Plant##6752
accept The Shimmering Frond##931 |goto Teldrassil/0 37.3,25.5
step
label "Collect_Bloodfeather_Belts"
kill Bloodfeather Fury##2019, Bloodfeather Wind Witch##2020, Bloodfeather Matriarch##2021
|tip They look like harpies.
collect 6 Bloodfeather Belt##5204 |q 937/1 |goto Teldrassil/0 37.3,25.5
step
kill Lady Sathrah##7319
|tip She's a gray spider that walks around this small area.
collect Silvery Spinnerets##8344 |q 2518/1 |goto Teldrassil/0 40.7,22.1
step
talk Priestess A'moora##7313
|tip She walks around.
turnin Tears of the Moon##2518 |goto Teldrassil/0 39.19,29.88
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto Teldrassil/0 39.50,29.86
step
talk Corithras Moonrage##3515
|tip He paces around.
turnin Teldrassil: The Burden of the Kaldorei##7383 |goto Teldrassil/0 41.07,45.73
accept Teldrassil: The Coming Dawn##933 |goto Teldrassil/0 41.07,45.73
step
talk Rellian Greenspyre##3517
turnin Mossy Tumors##923 |goto Teldrassil/0 44.0,44.2
step
talk Denalan##2080
turnin The Shimmering Frond##931 |goto Teldrassil/0 43.94,44.20
accept Oakenscowl##2499 |goto Teldrassil/0 43.94,44.20
step
use the Tourmaline Phial##5621
|tip Use it near the water.
collect Filled Tourmaline Phial##5645 |q 933/1 |goto Teldrassil/0 43.76,58.55
step
talk Tarindrella##1992
turnin Teldrassil: The Coming Dawn##933 |goto Teldrassil/0 42.51,58.19
accept The Vengeance of Elune##14005 |goto Teldrassil/0 42.51,58.19
step
kill Bough of Corruption##34521 |q 14005/1 |goto Teldrassil/0 40.7,69.3
|tip Use the abilities on your action bar.
step
talk Tarindrella##1992
turnin The Vengeance of Elune##14005 |goto Teldrassil/0 42.5,58.2
accept The Waters of Teldrassil##935 |goto Teldrassil/0 42.5,58.2
step
talk Corithras Moonrage##3515
|tip He paces around.
turnin The Waters of Teldrassil##935 |goto Teldrassil/0 41.05,45.69
accept Home of the Kaldorei##14039 |goto Teldrassil/0 41.05,45.69
step
kill Oakenscowl##2166
|tip He's a red and green elemental that walks around this area.
collect Gargantuan Tumor##8136 |q 2499/1 |goto Teldrassil/0 47.4,35.2
step
talk Denalan##2080
turnin Oakenscowl##2499 |goto Teldrassil/0 43.94,44.20
step
click Hero's Call Board##250720
accept Hero's Call: Darkshore!##28490 |goto Darnassus/0 44.96,49.87
|only Draenei,Dwarf,Gnome,Human
step
talk Sentinel Cordressa Briarbow##42936
|tip Upstairs inside the building.
accept Breaking Waves of Change##26383 |goto Darnassus/0 43.9,76.1
|only NightElf
step
talk Genn Greymane##48736
accept Breaking Waves of Change##26385 |goto Darnassus/0 48.2,14.7
|only Worgen
step
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin Home of the Kaldorei##14039 |goto Darnassus/0 43.0,78.1
step
Enter the Pink Portal |goto Darnassus/0 36.90,50.40 |n
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 26383 |only if haveq(26383)
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 26385 |only if haveq(26385)
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 28490 |only if haveq(28490)
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Worgen Starter",{
author="QuestCore",
condition_suggested=function() return raceclass('Worgen') and level <= 5 and not completedq(28517) and not raceclass("DeathKnight") and not QC.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(28517) or raceclass("DeathKnight") end,
condition_valid=function() return raceclass('Worgen') end,
condition_valid_msg="Worgen only.",
next="Leveling Guides\\Classic (1-70)\\Kalimdor\\Darkshore (5-70)",
startlevel=1,
endlevel=70,
},[[
step
talk Prince Liam Greymane##34850
accept Lockdown!##14078 |goto Gilneas City/0 59.14,23.88
step
talk Lieutenant Walden##34863
turnin Lockdown!##14078 |goto Gilneas City/0 54.63,16.72
accept Something's Amiss##14091 |goto Gilneas City/0 54.63,16.72
step
talk Prince Liam Greymane##34913
turnin Something's Amiss##14091 |goto Gilneas City/0 59.82,22.18
accept All Hell Breaks Loose##14093 |goto Gilneas City/0 59.82,22.18
accept Evacuate the Merchant Square##14098 |goto Gilneas City/0 59.82,22.18
step
talk Gwen Armstead##34936
accept Salvage the Supplies##14094 |goto Gilneas City/0 59.56,26.78
stickystart "Collect_Salvaged_Supplies"
stickystart "Evacuate_Market_Homes"
step
kill 8 Rampaging Worgen##34884 |q 14093/1 |goto Gilneas City/0 60.86,32.45
step
label "Collect_Salvaged_Supplies"
click Supply Crate##234563+
|tip They look like wooden crates on the ground around this area.
collect 4 Salvaged Supplies##46896 |q 14094/1 |goto Gilneas City/0 58.45,28.96
step
label "Evacuate_Market_Homes"
click Merchant Square Door##195327+
|tip They look like the wooden doors of the buildings around this area.
Evacuate #3# Market Homes |q 14098/1 |goto Gilneas City/0 63.20,34.78
step
talk Gwen Armstead##34936
turnin Salvage the Supplies##14094 |goto Gilneas City/0 59.56,26.78
step
talk Prince Liam Greymane##34913
turnin All Hell Breaks Loose##14093 |goto Gilneas City/0 59.82,22.18
turnin Evacuate the Merchant Square##14098 |goto Gilneas City/0 59.82,22.18
accept Royal Orders##14099 |goto Gilneas City/0 59.82,22.18
step
talk Gwen Armstead##35840
turnin Royal Orders##14099 |goto Gilneas City/0 70.77,55.04
accept Your Instructor##14265 |goto Gilneas City/0 70.77,55.04 |only Worgen Warrior
accept Someone's Looking for You##14269 |goto Gilneas City/0 70.77,55.04 |only Worgen Rogue
accept Shady Associates##14273 |goto Gilneas City/0 70.77,55.04 |only Worgen Warlock
accept Someone's Keeping Track of You##14275 |goto Gilneas City/0 70.77,55.04 |only Worgen Hunter
accept Arcane Inquiries##14277 |goto Gilneas City/0 70.77,55.04 |only Worgen Mage
accept Seek the Sister##14278 |goto Gilneas City/0 70.77,55.04 |only Worgen Priest
accept The Winds Know Your Name... Apparently##14280 |goto Gilneas City/0 70.77,55.04 |only Worgen Druid
step
talk Sergeant Cleese##35839
turnin Your Instructor##14265 |goto Gilneas City/0 67.56,64.27
accept Safety in Numbers##14286 |goto Gilneas City/0 67.56,64.27
only Worgen Warrior
step
talk Loren the Fence##35871
turnin Someone's Looking for You##14269 |goto Gilneas City/0 71.39,65.74
accept Safety in Numbers##14285 |goto Gilneas City/0 71.39,65.74
only Worgen Rogue
step
talk Vitus Darkwalker##35869
turnin Shady Associates##14273 |goto Gilneas City/0 71.44,64.43
accept Safety in Numbers##14287 |goto Gilneas City/0 71.44,64.43
only Worgen Warlock
step
talk Huntsman Blake##35874
turnin Someone's Keeping Track of You##14275 |goto Gilneas City/0 71.50,61.31
accept Safety in Numbers##14290 |goto Gilneas City/0 71.50,61.31
only Worgen Hunter
step
talk Myriam Spellwaker##35872
turnin Arcane Inquiries##14277 |goto Gilneas City/0 68.01,64.69
accept Safety in Numbers##14288 |goto Gilneas City/0 68.01,64.69
only Worgen Mage
step
talk Sister Almyra##35870
turnin Seek the Sister##14278 |goto Gilneas City/0 70.41,65.55
accept Safety in Numbers##14289 |goto Gilneas City/0 70.41,65.55
only Worgen Priest
step
talk Celestine of the Harvest##35873
turnin The Winds Know Your Name... Apparently##14280 |goto Gilneas City/0 70.18,65.90
accept Safety in Numbers##14291 |goto Gilneas City/0 70.18,65.90
only Worgen Druid
step
talk King Genn Greymane##35112
turnin Safety in Numbers##14286 |goto Gilneas City/0 65.79,77.68 |only Worgen Warrior
turnin Safety in Numbers##14285 |goto Gilneas City/0 65.79,77.68 |only Worgen Rogue
turnin Safety in Numbers##14287 |goto Gilneas City/0 65.79,77.68 |only Worgen Warlock
turnin Safety in Numbers##14290 |goto Gilneas City/0 65.79,77.68 |only Worgen Hunter
turnin Safety in Numbers##14288 |goto Gilneas City/0 65.79,77.68 |only Worgen Mage
turnin Safety in Numbers##14289 |goto Gilneas City/0 65.79,77.68 |only Worgen Priest
turnin Safety in Numbers##14291 |goto Gilneas City/0 65.79,77.68 |only Worgen Druid
accept Old Divisions##14157 |goto Gilneas City/0 65.79,77.68
step
talk Lord Godfrey##35115
accept While You're At It##24930 |goto Gilneas City/0 65.29,77.61
step
kill 5 Bloodfang Worgen##35118 |q 24930/1 |goto Gilneas City/0 60.77,70.91
step
talk Captain Broderick##50371
|tip Inside the building.
turnin Old Divisions##14157 |goto Gilneas City/0 57.93,75.57
accept The Prison Rooftop##28850 |goto Gilneas City/0 57.93,75.57
step
talk Lord Darius Crowley##35077
|tip Follow the stairs up.
turnin The Prison Rooftop##28850 |goto Gilneas City/0 55.22,62.93
accept By the Skin of His Teeth##14154 |goto Gilneas City/0 55.22,62.93
step
Kill the enemies that attack in waves
Survive While Holding Back the Worgen for 2 Minutes |q 14154/1 |goto Gilneas City/0 55.22,62.93
|tip You will receive a buff that lets you know how much time is remaining.
step
talk Lord Darius Crowley##35077
turnin By the Skin of His Teeth##14154 |goto Gilneas City/0 55.22,62.93
accept Brothers In Arms##26129 |goto Gilneas City/0 55.22,62.93
step
talk Lord Godfrey##35115
turnin While You're At It##24930 |goto Gilneas City/0 65.29,77.61
step
talk King Genn Greymane##35112
turnin Brothers In Arms##26129 |goto Gilneas City/0 65.79,77.68
accept The Rebel Lord's Arsenal##14159 |goto Gilneas City/0 65.79,77.68 |noobsolete
step
Click the Cellar Door |goto Gilneas City/0 55.70,81.57 < 5 |walk
talk Josiah Avery##35369
|tip Downstairs inside the cellar.
turnin The Rebel Lord's Arsenal##14159 |goto Gilneas City/0 56.76,85.44
step
talk Lorna Crowley##35378
|tip Downstairs inside the cellar.
accept From the Shadows##14204 |goto Gilneas City/0 56.87,81.44
step
kill 6 Bloodfang Lurker##35463 |q 14204/1 |goto Gilneas City/0 48.14,76.57
|tip Use the "Mastiff's Attack Lurker" ability on your pet action bar to help you find the Bloodfang Lurkers.
step
talk Lorna Crowley##35378
|tip Downstairs inside the cellar.
turnin From the Shadows##14204 |goto Gilneas City/0 56.87,81.44
accept Message to Greymane##14214 |goto Gilneas City/0 56.87,81.44
step
talk King Genn Greymane##35550
turnin Message to Greymane##14214 |goto Gilneas City/0 59.23,83.75
accept Save Krennan Aranas##14293 |goto Gilneas City/0 59.23,83.75
step
_While Riding the Horse:_
|tip You will begin riding a horse automatically.
Use the Rescue Krennan ability
|tip Spam the "Rescue Krennan" ability on your action bar when your horse takes a big leap.
|tip You should see Krennan Aranas dangling in a tree.
Rescue Krennan Aranas |q 14293/1
step
Return to Lord Godfrey |goto Gilneas City/0 56.49,78.26 < 15 |q 14293
step
talk Lord Godfrey##35906
turnin Save Krennan Aranas##14293 |goto Gilneas City/0 55.70,80.70
accept Time to Regroup##14294 |goto Gilneas City/0 55.70,80.70
step
talk King Genn Greymane##35911
turnin Time to Regroup##14294 |goto Gilneas City/0 30.39,73.15
step
talk Lord Darius Crowley##35552
accept Sacrifices##14212 |goto Gilneas City/0 31.10,72.36
step
clicknpc Click Crowley's Horse##44429
Ride Crowley's Horse |invehicle |goto Gilneas City/0 31.28,72.66 |q 14212
step
_While Riding the Horse:_
|tip You will begin riding a horse automatically.
Use the Throw Torch ability on Bloodfang Stalkers
|tip They will chase you.
Round Up #30# Bloodfang Stalkers |q 14212/1
step
Reach Tobias Mantle |goto Gilneas City/0 40.25,39.55 < 15 |q 14212
step
talk Tobias Mistmantle##35618
turnin Sacrifices##14212 |goto Gilneas City/0 40.55,39.42
accept By Blood and Ash##14218 |goto Gilneas City/0 40.55,39.42
step
clicknpc Rebel Cannon##35317
Get in the Cannon |invehicle |goto Gilneas City/0 38.79,37.41 |q 14218
step
kill 80 Bloodfang Stalker##35229 |q 14218/1 |goto Gilneas City/0 37.66,35.58
|tip Use the "Rebel Cannon" ability on your action bar.
step
talk Tobias Mistmantle##35618
turnin By Blood and Ash##14218 |goto Gilneas City/0 40.55,39.42
accept Never Surrender, Sometimes Retreat##14221 |goto Gilneas City/0 40.55,39.42
step
talk Lord Darius Crowley##35566
|tip Inside the building.
turnin Never Surrender, Sometimes Retreat##14221 |goto Gilneas City/0 48.93,52.77
accept Last Stand##14222 |goto Gilneas City/0 48.93,52.77
step
kill 8 Frenzied Stalker##35627 |q 14222/1 |goto Gilneas City/0 42.70,43.28
|tip Inside the building.
step
talk Lord Darius Crowley##35566
|tip Inside the building.
turnin Last Stand##14222 |goto Gilneas City/0 48.93,52.77
step
Watch the dialogue
talk King Genn Greymane##36332
accept Last Chance at Humanity##14375 |goto Gilneas/0 36.41,61.25
step
talk Lord Godfrey##36170
accept Among Humans Again##14313 |goto Gilneas/0 36.51,62.26
step
talk Krennan Aranas##36132
|tip Inside the building.
turnin Among Humans Again##14313 |goto Gilneas/0 37.41,63.24
accept In Need of Ingredients##14320 |goto Gilneas/0 37.41,63.24
step
click Crate of Mandrake Essence##196394
turnin In Need of Ingredients##14320 |goto Gilneas/0 32.77,66.40
step
clicknpc Slain Watchman##36205
|tip You may need to relog to interact with this NPC.
accept Invasion##14321 |goto Gilneas/0 32.76,66.15
step
talk Gwen Armstead##34571
|tip Inside the building.
turnin Invasion##14321 |goto Gilneas/0 37.41,63.35
accept Kill or Be Killed##14336 |goto Gilneas/0 37.41,63.35
step
talk Prince Liam Greymane##36140
|tip He walks around this area.
turnin Kill or Be Killed##14336 |goto Gilneas/0 35.45,66.44
accept Hold the Line##14347 |goto Gilneas/0 35.45,66.44
accept You Can't Take 'Em Alone##14348 |goto Gilneas/0 35.45,66.44
stickystart "Slay_Forsaken_Invaders"
step
click Black Gunpowder Kegs##196403+
|tip They look like brown barrels on the ground around this area.
collect Black Gunpowder Keg##49202 |n
use the Black Gunpowder Keg##49202
|tip Use it on Horrid Abominations.
|tip They look like big flesh monsters around this area.
'|clicknpc Horrid Abomination##36231
Throw Gunpowder Kegs at #4# Horrid Abominations |q 14348/1 |goto Gilneas/0 34.18,68.01
step
label "Slay_Forsaken_Invaders"
kill 10 Forsaken Invader##34511 |q 14347/1 |goto Gilneas/0 35.76,67.06
step
talk Prince Liam Greymane##36140
|tip He walks around this area.
turnin Hold the Line##14347 |goto Gilneas/0 35.45,66.44
turnin You Can't Take 'Em Alone##14348 |goto Gilneas/0 35.45,66.44
accept Holding Steady##14366 |goto Gilneas/0 35.45,66.44
step
talk Gwen Armstead##34571
|tip Inside the building.
turnin Holding Steady##14366 |goto Gilneas/0 37.41,63.35
accept The Allens' Storm Cellar##14367 |goto Gilneas/0 37.41,63.35
step
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin The Allens' Storm Cellar##14367 |goto Gilneas/0 28.97,63.93
accept Unleash the Beast##14369 |goto Gilneas/0 28.97,63.93
accept Two By Sea##14382 |goto Gilneas/0 28.97,63.93
step
talk Melinda Hammond##36291
|tip Downstairs inside the cellar.
accept Save the Children!##14368 |goto Gilneas/0 28.93,64.02
stickystart "Slay_Forsaken_Combatants"
step
talk James##36289
|tip He walks around this area.
Rescue James |q 14368/3 |goto Gilneas/0 28.58,66.75
step
talk Ashley##36288
|tip Upstairs inside the building.
Rescue Ashley |q 14368/2 |goto Gilneas/0 27.89,66.66
step
talk Cynthia##36287
Rescue Cynthia |q 14368/1 |goto Gilneas/0 29.59,69.31
step
kill Forsaken Machinist##36292
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |goto Gilneas/0 26.24,70.70 |q 14382
step
_Aim at the Ship:_
Launch Yourself Onto the Deck of the Forsaken Ship |goto Gilneas/0 24.68,75.90 < 30 |q 14382
|tip Use the "Launch" ability on your action bar.
step
kill Captain Anson##36397 |q 14382/1 |goto Gilneas/0 23.77,74.70
|tip Downstairs in the ship.
step
kill Forsaken Machinist##36292
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |goto Gilneas/0 29.60,74.13 |q 14382
step
_Aim at the Ship:_
Launch Yourself Onto the Deck of the Forsaken Ship |goto Gilneas/0 27.81,80.73 < 30 |q 14382
|tip Use the "Launch" ability on your action bar.
step
kill Captain Morris##36399 |q 14382/2 |goto Gilneas/0 26.85,79.32
|tip Downstairs in the ship.
step
label "Slay_Forsaken_Combatants"
kill Forsaken Footsoldier##36236, Forsaken Footsoldier##36810, Forsaken Sailor##36396
Slay #8# Forsaken Combatants |q 14369/1 |goto Gilneas/0 25.29,70.30
step
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin Unleash the Beast##14369 |goto Gilneas/0 28.97,63.93
turnin Two By Sea##14382 |goto Gilneas/0 28.97,63.93
step
talk Melinda Hammond##36291
|tip Downstairs inside the cellar.
turnin Save the Children!##14368 |goto Gilneas/0 28.93,64.02
step
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
accept Leader of the Pack##14386 |goto Gilneas/0 28.97,63.93
step
use the Mastiff Whistle##49240
|tip Use it near Dark Ranger Thyala.
kill Dark Ranger Thyala##36312 |q 14386/1 |goto Gilneas/0 23.48,67.53
step
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin Leader of the Pack##14386 |goto Gilneas/0 28.97,63.93
accept As the Land Shatters##14396 |goto Gilneas/0 28.97,63.93
step
talk Prince Liam Greymane##36451
turnin As the Land Shatters##14396 |goto Gilneas/0 29.04,65.04
accept Gasping for Breath##14395 |goto Gilneas/0 29.04,65.04
step
label "Find_Drowning_Watchmen"
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff Rescue Drowning Watchman##68735 |goto Gilneas/0 27.26,69.77 |q 14395
step
Rescue #4# Drowning Watchmen |q 14395/1 |goto Gilneas/0 29.04,65.04
Click here to find another Drowning Watchman |confirm |next "Find_Drowning_Watchmen"
step
talk Prince Liam Greymane##36451
turnin Gasping for Breath##14395 |goto Gilneas/0 29.04,65.04
accept Evacuation##14397 |goto Gilneas/0 29.04,65.04
step
talk Gwen Armstead##36452
turnin Evacuation##14397 |goto Gilneas/0 37.63,65.23
accept Grandma Wahl##14398 |goto Gilneas/0 37.63,65.23
accept The Hayward Brothers##14403 |goto Gilneas/0 37.63,65.23
accept The Crowley Orchard##14406 |goto Gilneas/0 37.63,65.23
step
talk Lorna Crowley##36457
turnin The Crowley Orchard##14406 |goto Gilneas/0 37.68,72.75
accept The Hungry Ettin##14416 |goto Gilneas/0 37.68,72.75
step
clicknpc Mountain Horse##36540
Ride a Mountain Horse |invehicle |goto Gilneas/0 39.70,79.03 |q 14416
step
clicknpc Mountain Horse##36540+
|tip Use the Round Up Horse ability on your action bar.
|tip Watch out for the elite Ettin walking around this area.
Round Up 4 Other Mountain Horses
confirm |q 14416
step
Rescue #5# Mountain Horses |q 14416/1 |goto Gilneas/0 37.68,72.75
step
talk Lorna Crowley##36457
turnin The Hungry Ettin##14416 |goto Gilneas/0 37.68,72.75
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma Wahl##14398 |goto Gilneas/0 32.52,75.48
accept Grandma's Lost It Alright##14399 |goto Gilneas/0 32.52,75.48
step
click Linen-Wrapped Book##196473
|tip It looks like a yellow book on the ground.
collect Linen-Wrapped Book##49280 |q 14399/1 |goto Gilneas/0 33.96,77.37
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Lost It Alright##14399 |goto Gilneas/0 32.52,75.48
accept I Can't Wear This##14400 |goto Gilneas/0 32.52,75.48
step
click Grandma's Good Clothes##196472
collect Grandma's Good Clothes##49279 |q 14400/1 |goto Gilneas/0 32.03,75.45
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin I Can't Wear This##14400 |goto Gilneas/0 32.52,75.48
accept Grandma's Cat##14401 |goto Gilneas/0 32.52,75.48
step
clicknpc Chance##36459
kill Lucius the Cruel##36461
collect Chance the Cat##49281 |q 14401/1 |goto Gilneas/0 35.16,74.82
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Cat##14401 |goto Gilneas/0 32.52,75.48
step
talk Sebastian Hayward##36456
turnin The Hayward Brothers##14403 |goto Gilneas/0 36.88,84.19
accept Not Quite Shipshape##14404 |goto Gilneas/0 36.88,84.19
accept Washed Up##14412 |goto Gilneas/0 36.88,84.19
stickystart "Slay_Forsaken_Castaways"
step
click Planks of Wood##196809
collect Planks of Wood##49338 |q 14404/2 |goto Gilneas/0 36.10,86.49
step
click Shipwright's Tools##196810
|tip Inside the building.
collect Shipwright's Tools##49337 |q 14404/1 |goto Gilneas/0 37.46,87.15
step
click Barrel of Coal Tar##196808
collect Coal Tar##49339 |q 14404/3 |goto Gilneas/0 37.57,85.97
step
label "Slay_Forsaken_Castaways"
kill 6 Forsaken Castaway##36488 |q 14412/1 |goto Gilneas/0 36.88,85.00
step
talk Sebastian Hayward##36456
turnin Not Quite Shipshape##14404 |goto Gilneas/0 36.88,84.19
turnin Washed Up##14412 |goto Gilneas/0 36.88,84.19
accept Escape By Sea##14405 |goto Gilneas/0 36.88,84.19
step
talk Gwen Armstead##36452
turnin Escape By Sea##14405 |goto Gilneas/0 37.63,65.23
accept To Greymane Manor##14465 |goto Gilneas/0 37.63,65.23
step
Travel to Greymane Manor |goto Gilneas/0 29.23,54.17 < 20 |q 14465
step
talk Queen Mia Greymane##36606
|tip Inside the building.
turnin To Greymane Manor##14465 |goto Gilneas/2 62.09,49.58
accept The King's Observatory##14466 |goto Gilneas/2 62.09,49.58
step
talk King Genn Greymane##36743
|tip At the top of the tower.
turnin The King's Observatory##14466 |goto Gilneas/3 41.94,20.21
accept Alas, Gilneas##14467 |goto Gilneas/3 41.94,20.21
step
talk King Genn Greymane##36743
|tip At the top of the tower.
accept Exodus##24438 |goto Gilneas/3 41.94,20.21
step
clicknpc Stagecoach Carriage##44928
Ride in the Stagecoach Carriage |invehicle |goto Gilneas/0 28.88,54.19 |q 24438
step
Travel to the Stagecoach Crash Site |goto Gilneas/0 51.6,80.0 < 20 |q 24438
step
talk Prince Liam Greymane##37065
turnin Exodus##24438 |goto Gilneas/0 51.81,80.49
accept Stranded at the Marsh##24468 |goto Gilneas/0 51.81,80.49
step
kill Swamp Crocolisk##37078+
Rescue #5# Crash Survivors |q 24468/1 |goto Gilneas/0 52.76,72.38
step
talk Prince Liam Greymane##37065
turnin Stranded at the Marsh##24468 |goto Gilneas/0 51.81,80.49
accept Introductions Are in Order##24472 |goto Gilneas/0 51.81,80.49
stickystart "Slay_Ogre_Minions"
step
click Koroth's Banner##201594
collect Koroth's Banner##49742 |q 24472/2 |goto Gilneas/0 46.75,83.20
step
label "Slay_Ogre_Minions"
kill 4 Ogre Minion##36293 |q 24472/1 |goto Gilneas/0 46.73,86.38
step
talk Prince Liam Greymane##37065
turnin Introductions Are in Order##24472 |goto Gilneas/0 51.81,80.49
accept Stormglen##24483 |goto Gilneas/0 51.81,80.49
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Stormglen##24483 |goto Gilneas/0 59.86,91.70
accept Pest Control##24484 |goto Gilneas/0 59.86,91.70
step
talk Willa Arnes##38792
|tip Inside the building.
home Stormglen Village |goto Gilneas/0 60.06,91.67 |q 24495 |future
step
talk Lorna Crowley##37815
|tip Inside the building.
accept Pieces of the Past##24495 |goto Gilneas/0 60.26,91.85
stickystart "Collect_Old_Journal_Pages"
step
kill 6 Vilebrood Skitterer##36813 |q 24484/1 |goto Gilneas/0 65.03,90.82
step
label "Collect_Old_Journal_Pages"
click Old Journal Page##201607+
|tip They look like pieces of paper laying on the ground and on boxes around this area.
collect 6 Old Journal Page##49760 |q 24495/1 |goto Gilneas/0 65.03,90.82
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Pest Control##24484 |goto Gilneas/0 59.86,91.70
accept Queen-Sized Troubles##24501 |goto Gilneas/0 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
turnin Pieces of the Past##24495 |goto Gilneas/0 60.26,91.85
step
kill Rygna##37045 |q 24501/1 |goto Gilneas/0 68.35,81.66
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Queen-Sized Troubles##24501 |goto Gilneas/0 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
accept The Blackwald##24578 |goto Gilneas/0 60.26,91.85
step
talk Belrysa Starbreeze##37822
|tip Inside the building.
turnin The Blackwald##24578 |goto Gilneas/0 63.34,82.91
accept Losing Your Tail##24616 |goto Gilneas/0 63.34,82.91
step
use Belrysa's Talisman##49944
|tip Use it to Break Free.
|tip Walk over the Freezing Trap lying in the road first.
kill Dark Scout##37953 |q 24616/1 |goto Gilneas/0 63.96,81.28
step
talk Belrysa Starbreeze##37822
|tip Inside the building.
turnin Losing Your Tail##24616 |goto Gilneas/0 63.35,82.91
accept Tal'doren, the Wild Home##24617 |goto Gilneas/0 63.35,82.91
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Tal'doren, the Wild Home##24617 |goto Gilneas/0 68.71,73.25
accept At Our Doorstep##24627 |goto Gilneas/0 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
accept Preparations##24628 |goto Gilneas/0 69.30,72.97
stickystart "Collect_Moonleaves"
step
kill 6 Howling Banshee##37757 |q 24627/1 |goto Gilneas/0 60.54,76.46
step
label "Collect_Moonleaves"
click Moonleaf##201914+
|tip They look like small plants at the base of trees around this area.
collect 6 Moonleaf##50017 |q 24628/1 |goto Gilneas/0 60.54,76.46
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin At Our Doorstep##24627 |goto Gilneas/0 68.71,73.25
accept Take Back What's Ours##24646 |goto Gilneas/0 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
turnin Preparations##24628 |goto Gilneas/0 69.30,72.97
step
use the Horn of Tal'doren##50134
|tip Use it near the Veteran Dark Rangers.
click Worn Coffer##201939
|tip Inside the building.
collect Mysterious Artifact##10442 |q 24646/1 |goto Gilneas/0 57.51,75.58
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Take Back What's Ours##24646 |goto Gilneas/0 68.71,73.25
accept Neither Human Nor Beast##24593 |goto Gilneas/0 68.71,73.25
step
click Well of Fury##201950
|tip Inside the hollow tree.
Activate the Well of Fury |q 24593/1 |goto Gilneas/0 68.97,72.81
step
click Well of Tranquility##201951
|tip Inside the hollow tree.
Activate the Well of Tranquility |q 24593/2 |goto Gilneas/0 69.25,73.10
step
click Well of Balance##201952
|tip Inside the hollow tree.
Activate the Well of Balance |q 24593/3 |goto Gilneas/0 69.14,73.52
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Neither Human Nor Beast##24593 |goto Gilneas/0 68.71,73.25
accept Return to Stormglen##24673 |goto Gilneas/0 68.71,73.25
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Return to Stormglen##24673 |goto Gilneas/0 59.86,91.71
accept Onwards and Upwards##24672 |goto Gilneas/0 59.86,91.71
step
talk Krennan Aranas##37874
turnin Onwards and Upwards##24672 |goto Gilneas/0 72.73,80.04
accept Betrayal at Tempest's Reach##24592 |goto Gilneas/0 72.73,80.04
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff Stealth##70456 |goto Gilneas/0 76.49,75.62 |q 24592
step
kill Baron Ashbury##37735 |q 24592/1 |goto Gilneas/0 85.29,74.27
|tip He walks around this area.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff Stealth##70456 |q 24592
step
kill Lord Walden##37733 |q 24592/2 |goto Gilneas/0 78.16,66.03
|tip He walks around this area and inside the building.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff Stealth##70456 |q 24592
step
talk King Genn Greymane##37876
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
turnin Betrayal at Tempest's Reach##24592 |goto Gilneas/0 78.27,72.07
accept Flank the Forsaken##24677 |goto Gilneas/0 78.27,72.07
step
talk Lord Hewell##38764 |goto Gilneas/0 78.33,71.88
Select _"I need a horse."_ |gossip 37938
Borrow a Horse |invehicle |goto Gilneas/0 78.33,71.88 |q 24677
step
Travel to Livery Outpost |goto Gilneas/0 71.61,39.59 < 20 |q 24677
step
talk Lorna Crowley##37783
turnin Flank the Forsaken##24677 |goto Gilneas/0 70.87,39.84
accept Liberation Day##24575 |goto Gilneas/0 70.87,39.84
step
talk Magda Whitewall##38143
accept Last Meal##24675 |goto Gilneas/0 70.65,39.70
step
talk Marcus##37803
|tip He walks around this area.
accept Slaves to No One##24674 |goto Gilneas/0 70.81,40.04
step
kill Brown Stag##37786+
collect 10 Side of Stag Meat##50219 |q 24675/1 |goto Gilneas/0 73.04,44.20
You can find more around [76.85,44.98]
stickystart "Free_Enslaved_Gilneans"
step
kill Brothogg the Slavemaster##37802 |q 24674/1 |goto Gilneas/1 54.36,81.07 |notravel
|tip Inside the mine.
step
label "Free_Enslaved_Gilneans"
kill Forsaken Slavedriver##37701+
collect Slaver's Key##49881+ |n
click Ball and Chain##207079
|tip They look like silver balls attached to the Enslaved Villagers' legs inside the mine.
Free #5# Enslaved Gilnean |q 24575/1 |goto Gilneas/1 60.77,55.58 |notravel
step
talk Lorna Crowley##37783
turnin Liberation Day##24575 |goto Gilneas/0 70.87,39.84
step
talk Magda Whitewall##38143
turnin Last Meal##24675 |goto Gilneas/0 70.65,39.70
step
talk Marcus##37803
|tip He walks around this area.
turnin Slaves to No One##24674 |goto Gilneas/0 70.81,40.04
step
talk Lorna Crowley##37783
accept Push Them Out##24676 |goto Gilneas/0 70.87,39.84
stickystart "Slay_Forsaken_Infantry"
step
kill Executor Cornell##37686 |q 24676/2 |goto Gilneas/0 72.85,28.42
step
kill Valnov the Mad##37685 |q 24676/3 |goto Gilneas/0 74.15,27.38
step
label "Slay_Forsaken_Infantry"
kill 4 Forsaken Infantry##37692 |q 24676/1 |goto Gilneas/0 73.49,29.14
step
talk Lorna Crowley##37783
turnin Push Them Out##24676 |goto Gilneas/0 70.87,39.84
accept The Battle for Gilneas City##24904 |goto Gilneas/0 70.87,39.84
step
clicknpc Damaged Catapult##38377
Take Control of the Damaged Catapult |invehicle |goto Gilneas City/0 60.11,77.28 |q 24904
step
kill Gorerot##38331 |q 24904/1 |goto Gilneas City/0 62.56,73.61
|tip He walks around this area.
|tip Use the "Fiery Boulder" ability on your action bar.
step
use the Rapier of the Gilnean Patriots##50334
|tip Use it to heal your Allies around this area.
kill Soultethered Banshee##38473+
|tip Kill the Soultethered Banshees to damage Lady Sylvanas Windrunner.
kill Lady Sylvanas Windrunner##38469
Complete the Battle for Gilneas City |q 24904/2 |goto Gilneas City/0 36.12,62.62
step
Watch the dialogue
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Battle for Gilneas City##24904 |goto Gilneas City/0 38.59,60.23
accept The Hunt For Sylvanas##24902 |goto Gilneas City/0 38.59,60.23
step
Follow Tobias Mistmantle
|tip He will appear on your minimap as a yellow dot.
Watch the dialogue
|tip Inside the building.
Hunt for Sylvanas |q 24902/1 |goto Gilneas City/0 45.08,52.46
step
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Hunt For Sylvanas##24902 |goto Gilneas City/0 38.59,60.23
accept Vengeance or Survival##24903 |goto Gilneas City/0 38.59,60.23
step
talk King Genn Greymane##38539
|tip Inside the building.
turnin Vengeance or Survival##24903 |goto Gilneas City/0 32.36,57.01
accept Slowing the Inevitable##24920 |goto Gilneas City/0 32.36,57.01
step
clicknpc Captured Riding Bat##38540
Ride the Captured Riding Bat |invehicle |goto Gilneas City/0 30.27,60.95 |q 24920
stickystart "Slay_Invading_Forsaken"
step
kill 6 Forsaken Catapult##38287 |q 24920/1 |goto Gilneas/0 55.52,32.28 |notravel
|tip Use the "Iron Bomb" ability on your action bar.
step
label "Slay_Invading_Forsaken"
kill 40 Invading Forsaken##38364 |q 24920/2 |goto Gilneas/0 55.52,32.28 |notravel
|tip Use the "Iron Bomb" ability on your action bar.
step
Return to Greymane Court |goto Gilneas City/0 30.27,60.95 < 10 |notravel |q 24920
|tip Use the "Fly Back" ability on your action bar.
step
talk King Genn Greymane##38539
|tip Inside the building.
turnin Slowing the Inevitable##24920 |goto Gilneas City/0 32.36,57.01
accept Knee-Deep##24678 |goto Gilneas City/0 32.36,57.01
step
use the Half-Burnt Torch##50220
|tip Use it repeatedly to keep the rats and spiders from attacking you.
Enter the House |goto Gilneas/0 49.78,57.95 < 10 |q 24678
step
talk Krennan Aranas##38144
turnin Knee-Deep##24678 |goto Gilneas/0 49.82,56.93
accept Laid to Rest##24602 |goto Gilneas/0 49.82,56.93
step
click Disturbed Soil##201871+
|tip They look like piles of dirt on the ground around this area.
collect 5 Unearthed Memento##49921 |q 24602/1 |goto Gilneas/0 48.29,55.48
step
talk Krennan Aranas##38144
turnin Laid to Rest##24602 |goto Gilneas/0 49.82,56.93
accept Patriarch's Blessing##24679 |goto Gilneas/0 49.82,56.93
step
use the Blessed Offerings##51956
Place the Offering |q 24679/1 |goto Gilneas/0 48.87,53.05
step
talk Krennan Aranas##38144
turnin Patriarch's Blessing##24679 |goto Gilneas/0 49.82,56.93
accept Keel Harbor##24680 |goto Gilneas/0 49.82,56.93
step
talk Lord Darius Crowley##38149
turnin Keel Harbor##24680 |goto Gilneas/0 41.93,37.63
accept They Have Allies, But So Do We##24681 |goto Gilneas/0 41.93,37.63
step
clicknpc Glaive Thrower##38150
Take Control of a Glaive Thrower |invehicle |goto Gilneas/0 42.41,37.81 |q 24681
stickystart "Slay_Wolfmaw_Outriders"
stickystart "Slay_Orcish_War_Machines"
step
kill 40 Orc Raider##37916 |q 24681/1 |goto Gilneas/0 33.93,36.89
|tip Use the abilities on your action bar.
step
label "Slay_Wolfmaw_Outriders"
kill 8 Wolfmaw Outrider##37938 |q 24681/2 |goto Gilneas/0 33.93,36.89
|tip Use the abilities on your action bar.
step
label "Slay_Orcish_War_Machines"
kill 4 Orcish War Machine##37921 |q 24681/3 |goto Gilneas/0 26.95,32.33
|tip They look like wooden siege vehicles spread out around this area.
|tip Use the abilities on your action bar.
step
Return to Keel Harbor |goto Gilneas/0 39.39,37.99 < 20 |q 24681
step
Click the yellow arrow on your action bar |outvehicle |q 24681
step
talk Lord Darius Crowley##38149
turnin They Have Allies, But So Do We##24681 |goto Gilneas/0 41.93,37.63
step
talk Lorna Crowley##43727
accept Endgame##26706 |goto Gilneas/0 41.65,36.51
step
Watch the dialogue
clicknpc Hippogryph##43747
|tip Wait until Tobias Mistmantle says "Hop on a hippogryph, now's our chance!" nearby.
Ride the Hippogryph |invehicle |goto Gilneas/0 41.65,36.18 |q 26706
step
Watch the dialogue
|tip Click the Coiled Rope to be lowered down, then follow and protect Lorna Crowley.
|tip She will go to the bottom level of the gunship and plant explosives.
kill Korm Bonegrind##43567
Destroy the Gunship |q 26706/1
step
Return to Keel Harbor |goto Gilneas/0 42.65,38.26 < 20 |q 26706
step
talk Lorna Crowley##43727
turnin Endgame##26706 |goto Gilneas/0 41.65,36.51
step
talk Admiral Nightwind##36616
accept Rut'theran Village##14434 |goto Gilneas/0 42.59,35.95
step
talk Krennan Aranas##42968
accept The Howling Oak##28517 |goto Teldrassil/0 55.23,89.18
step
talk Genn Greymane##48736
|tip Inside the hollow tree.
turnin The Howling Oak##28517 |goto Darnassus/0 48.13,14.42
accept Breaking Waves of Change##26385 |goto Darnassus/0 48.13,14.42
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Demon Hunter Starter",{
description="This guide will walk you through completing the introductory Demon Hunter quests.",
condition_valid=function() return raceclass('DemonHunter') and level >= 8 end,
condition_valid_msg="You must be a Demon Hunter and at least level 8 to complete this guide!",
condition_suggested=function() return raceclass('DemonHunter') and level >= 8 end,
condition_suggested_exclusive=true,
startlevel=8.00,
},[[
step
Watch the dialogue
talk Kayn Sunfury##93011
accept The Invasion Begins##40077 |goto Mardum, the Shattered Abyss C/0 22.08,55.83
step
kill Foul Felstalker##98482, Hellish Imp##98483, Imp Mother##98497, Mo'arg Brute##98484, Wrath Warrior##98486
Slay #15# Demons |q 40077/1 |goto Mardum, the Shattered Abyss C/0 26.30,63.05
step
click Legion Banner##250560
Change the Legion Banner |q 40077/2 |goto Mardum, the Shattered Abyss C/0 28.66,62.92
step
talk Kayn Sunfury##98229
turnin The Invasion Begins##40077 |goto Mardum, the Shattered Abyss C/0 28.60,63.06
accept Enter the Illidari: Ashtongue##40378 |goto Mardum, the Shattered Abyss C/0 28.60,63.06
step
click Legion Gateway Activator##241757
Summon the Ashtongue Forces |q 40378/1 |goto Mardum, the Shattered Abyss C/0 31.57,61.89
step
Watch the dialogue
clicknpc Felsaber##101518
Accept Illidan's Gift |q 40378/2 |goto Mardum, the Shattered Abyss C/0 31.53,62.37
step
Find Allari to the Southeast |q 40378/3 |goto Mardum, the Shattered Abyss C/0 32.18,69.63
step
talk Allari the Souleater##94410
turnin Enter the Illidari: Ashtongue##40378 |goto Mardum, the Shattered Abyss C/0 33.94,70.05
accept Set Them Free##38759 |goto Mardum, the Shattered Abyss C/0 33.94,70.05
accept Eye On the Prize##39049 |goto Mardum, the Shattered Abyss C/0 33.94,70.05
step
talk Sevis Brightflame##100982
accept Enter the Illidari: Coilskar##40379 |goto Mardum, the Shattered Abyss C/0 33.94,69.96
step
kill Anguish Jailer##95226+
collect Soulwrought Key##128227 |q 38759/1 |goto Mardum, the Shattered Abyss C/0 38.29,73.76
step
clicknpc Jailer Cage##103381
Free Cyana Nightglaive |q 38759/3 |goto Mardum, the Shattered Abyss C/0 39.34,71.72
step
clicknpc Jailer Cage##103381
Free Belath Dawnblade |q 38759/2 |goto Mardum, the Shattered Abyss C/0 41.73,73.22
step
kill Inquisitor Baleful##93105
Slay Inquisitor Baleful & Take His Power |q 39049/1 |goto Mardum, the Shattered Abyss C/0 42.64,79.34
step
talk Ashtongue Mystic##99914
Select _"Mystic, thank you for your sacrifice."_ |gossip 45047
Sacrifice the Soul |q 40379/1 |goto Mardum, the Shattered Abyss C/0 43.44,72.69
step
click Legion Gateway Activator##241757
Summon the Coilskar Forces |q 40379/2 |goto Mardum, the Shattered Abyss C/0 43.79,72.04
step
clicknpc Jailer Cage##103381
Free Mannethrel Darkstar |q 38759/5 |goto Mardum, the Shattered Abyss C/0 41.57,66.68
step
clicknpc Jailer Cage##103381
|tip Inside the small cave.
Free Izal Whitemoon |q 38759/4 |goto Mardum, the Shattered Abyss C/0 38.62,67.90
step
talk Jace Darkweaver##93759
turnin Set Them Free##38759 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
turnin Eye On the Prize##39049 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
turnin Enter the Illidari: Coilskar##40379 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
accept Meeting With the Queen##39050 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
step
click Nether Crucible##243335
Complete the Ritual |q 39050/1 |goto Mardum, the Shattered Abyss C/0 38.75,60.52
step
talk Jace Darkweaver##93759
turnin Meeting With the Queen##39050 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
accept Enter the Illidari: Shivarra##38765 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
accept Before We're Overrun##38766 |goto Mardum, the Shattered Abyss C/0 38.80,60.64
step
clicknpc Spire Stabilizer##6477+
|tip They look like {o}large green floating crystals{}.
kill Doom Commander Beliash##93221
Slay Beliash & Take His Power |q 38766/1 |goto Mardum, the Shattered Abyss C/0 35.16,39.57
step
talk Sevis Brightflame##99915
Select _"Sevis, I need to sacrifice you in order to power the final gateway."_ |gossip 45048
Select _"I'm certain, Sevis. I need to sacrifice you to power the gateway."_ |gossip 45101
Make the Sacrifice |q 38765/1 |goto Mardum, the Shattered Abyss C/0 39.69,39.47
step
click Legion Gateway Activator##241757
Summon the Shivarra Forces |q 38765/2 |goto Mardum, the Shattered Abyss C/0 40.36,38.42
step
talk Kayn Sunfury##93127
turnin Enter the Illidari: Shivarra##38765 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
turnin Before We're Overrun##38766 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
accept Orders for Your Captains##38813 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
step
talk Lady S'theno##93693
Select _"Milady, you will take your naga north. Disrupt the ritual the demons are performing at their Soul Engine."_ |gossip 44410
Brief Lady Lady S'theno |q 38813/2 |goto Mardum, the Shattered Abyss C/0 59.24,46.13
step
talk Matron Mother Malevolence##94435
Select _"Matron Mother, I need you to take your shivan across the gap to the Forge of Corruption. Make them suffer."_ |gossip 44865
Brief Matron Mother Malevolence |q 38813/3 |goto Mardum, the Shattered Abyss C/0 60.98,46.97
step
talk Battlelord Gaardoun##90247
Select _"Battlelord, your forces will assault The Doom Fortress to the southeast. Stop the mass of their demons from attacking us."_ |gossip 42930
Brief Battlelord Gaardoun |q 38813/1 |goto Mardum, the Shattered Abyss C/0 62.18,46.29
step
talk Kayn Sunfury##93127
turnin Orders for Your Captains##38813 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
accept Give Me Sight Beyond Sight##39262 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
step
talk Jace Darkweaver##96436
Select _"Yes, Jace, I will use my spectral sight to look into the cave."_ |gossip 45064
Speak with Jace Darkweaver |q 39262/1 |goto Mardum, the Shattered Abyss C/0 64.05,52.29
step
Face the Cave & Use Spectral Sight |q 39262/2 |goto Mardum, the Shattered Abyss C/0 63.86,53.13
|tip Use your {o}Spectral Sight{} ability.
|tip Look toward the {o}wall of boulders{}.
step
talk Jace Darkweaver##96436
turnin Give Me Sight Beyond Sight##39262 |goto Mardum, the Shattered Abyss C/0 64.05,52.29
accept Hidden No More##39495 |goto Mardum, the Shattered Abyss C/0 64.05,52.29
step
kill Fel Lord Caza##96441
|tip Upstairs inside the cave.
Slay Caza & Take His Power |q 39495/1 |goto Mardum, the Shattered Abyss C/1 60.93,62.58
step
Leave the cave |goto Mardum, the Shattered Abyss C/0 63.76,53.61 < 15 |walk |only if subzone("Cryptic Hollow") and indoors()
talk Kayn Sunfury##93127
turnin Hidden No More##39495 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
accept Stop the Bombardment##38727 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
step
talk Cyana Nightglaive##96420
accept Their Numbers Are Legion##38819 |goto Mardum, the Shattered Abyss C/0 60.54,44.87
step
talk Allari the Souleater##96655
accept Into the Foul Creche##38725 |goto Mardum, the Shattered Abyss C/0 60.52,44.67
stickystart "Complete_The_War_Progress"
step
click Illidari Banner##243968
Watch the dialogue
Destroy the Doom Fortress Devastator |q 38727/1 |goto Mardum, the Shattered Abyss C/0 69.28,48.78
step
click Illidari Banner##243968
Watch the dialogue
Destroy the Forge of Corruption Devastator |q 38727/2 |goto Mardum, the Shattered Abyss C/0 75.01,41.09
step
talk Kor'vas Bloodthorn##98711
turnin Into the Foul Creche##38725 |goto Mardum, the Shattered Abyss C/0 73.16,33.82
accept The Imp Mother's Tome##40222 |goto Mardum, the Shattered Abyss C/0 73.16,33.82
stickystop "Complete_The_War_Progress"
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 73.84,31.80 < 15 |walk
kill Prolifica##98986
|tip Inside the cave.
collect Tome of Fel Secrets##129957 |q 40222/1 |goto Mardum, the Shattered Abyss C/0 77.12,27.69
stickystart "Complete_The_War_Progress"
step
Leave the cave |goto Mardum, the Shattered Abyss C/0 73.84,31.80 < 15 |walk |only if subzone("Foul Creche") and indoors()
click Illidari Banner##243968
Watch the dialogue
Destroy the Soul Engine Devastator |q 38727/3 |goto Mardum, the Shattered Abyss C/0 66.40,30.40
step
label "Complete_The_War_Progress"
kill Doom Slayer##93716, Fel Weaver##97706, Fiendish Creeper##99759, Fury Champion##97034, Hulking Forgefiend##96402, King Voras##97059, Queen's Centurion##96277, Burning Soulstalker##96278, Volatile Minion##96280, Vile Soulmaster##102724, Mardum Executioner##96279, Soul Fragment##101753, Vile Soulmaster##97014, General Volroth##97370
clicknpc Doom Fortress Stabilizer##101947+
|tip They look like {o}large green floating crystals{}.
|tip They can also have {o}different names{}.
clicknpc Demon Hunter##100543, Demon Hunter##100545
|tip They look like {o}NPCs laying with red tear drops above them{}.
Complete the War Progress |q 38819/1 |goto Mardum, the Shattered Abyss C/0 65.73,28.83
step
talk Kayn Sunfury##93127
turnin Stop the Bombardment##38727 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
turnin Their Numbers Are Legion##38819 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
step
talk Kor'vas Bloodthorn##99045
turnin The Imp Mother's Tome##40222 |goto Mardum, the Shattered Abyss C/0 60.51,44.83
accept Fel Secrets##40051 |goto Mardum, the Shattered Abyss C/0 60.51,44.83
step
click Tome of Fel Secrets##245112
Choose Between Havoc & Vengeance |q 40051/1 |goto Mardum, the Shattered Abyss C/0 60.54,44.77
step
talk Kayn Sunfury##93127
turnin Fel Secrets##40051 |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |oncomplete QC:QuestRewardConfirm()
step
talk Kayn Sunfury##93127
accept Cry Havoc and Let Slip the Illidari!##39516 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
|only if Havoc Demonhunter
step
talk Kayn Sunfury##93127
accept Vengeance Will Be Mine!##39515 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
|only if Vengeance Demonhunter
step
talk Cyana Nightglaive##96420
Select _"Listen closely, Cyana. This is what I learned from the Tome of Fel Secrets."_ |gossip 44440 |only if Havoc Demonhunter
Select _"Listen closely, Cyana. This is what I learned from the Tome of Fel Secrets."_ |gossip 44441 |only if Vengeance Demonhunter
Teach Cyana |q 39515/2 |goto Mardum, the Shattered Abyss C/0 60.55,44.86 |only if haveq(39515) or completedq(39515)
Teach Cyana |q 39516/2 |goto Mardum, the Shattered Abyss C/0 60.55,44.86 |only if haveq(39516) or completedq(39516)
step
talk Kor'vas Bloodthorn##99045
Select _"Are you ready to learn the Legion's secrets, Kor'vas?"_ |gossip 44442 |only if Havoc Demonhunter
Select _"Are you ready to learn the Legion's secrets, Kor'vas?"_ |gossip 44443 |only if Vengeance Demonhunter
Teach Kor'vas |q 39515/4 |goto Mardum, the Shattered Abyss C/0 60.51,44.82 |only if haveq(39515) or completedq(39515)
Teach Kor'vas |q 39516/4 |goto Mardum, the Shattered Abyss C/0 60.51,44.82 |only if haveq(39516) or completedq(39516)
step
talk Kayn Sunfury##93127
Select _"Kayn, I will teach you what I've learned of the demonic mysteries."_ |gossip 44408 |only if Havoc Demonhunter
Select _"Kayn, I will teach you what I've learned of the demonic mysteries."_ |gossip 44409 |only if Vengeance Demonhunter
Teach Kayn |q 39515/3 |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |only if haveq(39515) or completedq(39515)
Teach Kayn |q 39516/3 |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |only if haveq(39516) or completedq(39516)
step
talk Allari the Souleater##96655
Select _"Allari, these are the secrets I've uncovered."_ |gossip 44405 |only if Havoc Demonhunter
Select _"Allari, these are the secrets I've uncovered."_ |gossip 44406 |only if Vengeance Demonhunter
Teach Allari |q 39515/1 |goto Mardum, the Shattered Abyss C/0 60.52,44.66 |only if haveq(39515) or completedq(39515)
Teach Allari |q 39516/1 |goto Mardum, the Shattered Abyss C/0 60.52,44.66 |only if haveq(39516) or completedq(39516)
step
talk Mannethrel Darkstar##96652
Select _"Mannethrel, prepare yourself. I am going to fill you with the power of the Legion's secrets."_ |gossip 44661 |only if Havoc Demonhunter
Select _"Mannethrel, prepare yourself. I am going to fill you with the power of the Legion's secrets."_ |gossip 44662 |only if Vengeance Demonhunter
Teach Mannethrel |q 39515/5 |goto Mardum, the Shattered Abyss C/0 60.26,44.59 |only if haveq(39515) or completedq(39515)
Teach Mannethrel |q 39516/5 |goto Mardum, the Shattered Abyss C/0 60.26,44.59 |only if haveq(39516) or completedq(39516)
step
talk Kayn Sunfury##93127
turnin Cry Havoc and Let Slip the Illidari!##39516 |or |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |only if haveq(39516) or completedq(39516)
turnin Vengeance Will Be Mine!##39515 |or |goto Mardum, the Shattered Abyss C/0 60.51,44.75 |only if haveq(39515) or completedq(39515)
accept On Felbat Wings##39663 |goto Mardum, the Shattered Abyss C/0 60.51,44.75
step
talk Izal Whitemoon##96653
Select _"Whitemoon, I'll be taking one of your felbats. We're going to get what we came here for."_ |gossip 44646
Ride to the Fel Hammer |q 39663/1 |goto Mardum, the Shattered Abyss C/0 62.52,44.90
step
Begin Riding to the Fel Hammer |invehicle |goto Mardum, the Shattered Abyss C/0 62.52,44.90 |q 39663
step
Ride to the Fel Hammer |outvehicle |goto Mardum, the Shattered Abyss C/0 69.94,44.39 |q 39663 |notravel
step
talk Cyana Nightglaive##97297
turnin On Felbat Wings##39663 |goto Mardum, the Shattered Abyss C/0 69.93,44.23
accept The Keystone##38728 |goto Mardum, the Shattered Abyss C/0 69.93,44.23
step
kill Brood Queen Tyranna##93802
|tip Inside the building.
collect Sargerite Keystone##124672 |q 38728/1 |goto Mardum, the Shattered Abyss C/0 69.87,40.53
step
Find the Way Downstairs |q 38728/2 |goto Mardum, the Shattered Abyss C/0 71.02,41.76
step
talk Kayn Sunfury##97303
|tip Downstairs inside the building.
turnin The Keystone##38728 |goto Mardum, the Shattered Abyss C/0 69.86,37.89
step
Watch the dialogue
talk Kayn Sunfury##97303
|tip Downstairs inside the building.
accept Return to the Black Temple##38729 |goto Mardum, the Shattered Abyss C/0 69.86,37.89
step
click Sargerite Keystone##251314
|tip Downstairs inside the building.
Activate the Sargerite Keystone |q 38729/1 |goto Mardum, the Shattered Abyss C/0 69.85,37.80
step
click Fel Portal##244466
|tip Downstairs inside the building.
turnin Return to the Black Temple##38729 |goto Mardum, the Shattered Abyss C/0 69.85,37.51
step
talk Maiev Shadowsong##92718
accept Breaking Out##38672 |goto Vault of the Wardens/1 80.06,36.57
step
clicknpc Altruis's Cell##103655
Free Altruis |q 38672/1 |goto Vault of the Wardens/1 78.59,38.29
step
clicknpc Kayn's Cell##103658
Free Kayn |q 38672/2 |goto Vault of the Wardens/1 78.56,34.93
step
Watch the dialogue
Wait for Altruis and Kayn |complete readyq(38672) or completedq(38672) |goto Vault of the Wardens/1 77.93,35.59
step
click Lever##211284
turnin Breaking Out##38672 |goto Vault of the Wardens/1 77.93,35.59
step
talk Kayn Sunfury##92980
accept Rise of the Illidari##38690 |goto Vault of the Wardens/1 74.47,35.97
step
talk Altruis the Sufferer##92986
accept Fel Infusion##38689 |goto Vault of the Wardens/1 74.40,37.16
stickystart "Regain_Fel_Energy"
step
click Warden Cells##244588+
|tip They look {o}green glass cases along the walls{}.
|tip The {o}clickable ones{} will have a {o}slight yellow glowing border{} around them.
Free #8# Imprisoned Illidari |q 38690/1 |goto Vault of the Wardens/1 69.11,36.51
step
label "Regain_Fel_Energy"
kill Fel Shocktrooper##92776, Savage Felstalker##92782
Regain #100# Fel Energy |q 38689/1 |goto Vault of the Wardens/1 69.11,36.51
step
talk Altruis the Sufferer##92986
turnin Fel Infusion##38689 |goto Vault of the Wardens/1 49.67,49.34
step
talk Kayn Sunfury##96665
turnin Rise of the Illidari##38690 |goto Vault of the Wardens/1 49.18,49.44
step
talk Maiev Shadowsong##92718
accept Stop Gul'dan!##40253 |goto Vault of the Wardens/1 49.46,49.75 |or
'|accept Stop Gul'dan!##38723 |or
step
kill Crusher##66724
kill Sledge##92990
|tip A {o}Brutal Attacks buff{} switches between them.
|tip The buff {o}increases their damage{}.
|tip {o}Fight{} the one who {o}doesn't have the buff{}.
Slay Crusher & Sledge & Take Their Power |q 40253/2 |goto Vault of the Wardens/1 49.90,77.60 |only if haveq(40253) or completedq(40253)
Slay Crusher & Sledge & Take Their Power |q 38723/2 |goto Vault of the Wardens/1 49.90,77.60 |only if haveq(38723) or completedq(38723)
step
talk Kayn Sunfury##96665
turnin Stop Gul'dan!##40253 |goto Vault of the Wardens/1 50.80,72.80 |only if haveq(40253) or completedq(40253)
turnin Stop Gul'dan!##38723 |goto Vault of the Wardens/1 50.80,72.80 |only if haveq(38723) or completedq(38723)
accept Grand Theft Felbat##39682 |goto Vault of the Wardens/1 50.80,72.80
step
clicknpc Vampiric Felbat##96659
|tip Follow the {o}winding path up{}.
Begin Riding the Vampiric Felbat to the Upper Vault |invehicle |goto Vault of the Wardens/1 48.47,20.16 |q 39682
step
Ride a Vampiric Felbat to the Upper Vault |q 39682/1
step
talk Kor'vas Bloodthorn##97643
turnin Grand Theft Felbat##39682 |goto Vault of the Wardens/2 41.34,47.35
accept Frozen in Time##39685 |goto Vault of the Wardens/2 41.34,47.35
accept Beam Me Up##39684 |goto Vault of the Wardens/2 41.34,47.35
step
talk Allari the Souleater##96675
accept Forged in Fire##40254 |goto Vault of the Wardens/2 41.12,47.16 |or
'|accept Forged in Fire##39683 |or
step
kill Immolanth##96682
Slay Immolanth & Take His Power |q 40254/1 |goto Vault of the Wardens/2 46.79,17.11 |only if haveq(40254) or completedq(40254)
Slay Immolanth & Take His Power |q 39683/1 |goto Vault of the Wardens/2 46.79,17.11 |only if haveq(39683) or completedq(39683)
step
click Reflective Mirror##244449
|tip {o}Avoid{} the stuff on the ground.
Rotate the Mirror |q 39684/1 |goto Vault of the Wardens/2 70.62,49.58
step
clicknpc Countermeasures##99240
Activate the Eastern Countermeasure |q 39685/1 |goto Vault of the Wardens/2 50.11,78.10
step
clicknpc Countermeasures##99240
Activate the Southern Countermeasure |q 39685/2 |goto Vault of the Wardens/2 46.85,84.26
step
clicknpc Countermeasures##99240
Activate the Western Countermeasure |q 39685/3 |goto Vault of the Wardens/2 43.41,78.25
step
talk Allari the Souleater##96675
turnin Frozen in Time##39685 |goto Vault of the Wardens/2 41.12,47.17
turnin Beam Me Up##39684 |goto Vault of the Wardens/2 41.12,47.17
turnin Forged in Fire##40254 |goto Vault of the Wardens/2 41.12,47.17 |only if haveq(40254) or completedq(40254)
turnin Forged in Fire##39683 |goto Vault of the Wardens/2 41.12,47.17 |only if haveq(39683) or completedq(39683)
accept All The Way Up##39686 |goto Vault of the Wardens/2 41.12,47.17
step
Ascend to the Hall of Judgement |q 39686/1 |goto Vault of the Wardens/2 46.73,48.24
|tip {o}Wait for the elevator{} to come down, then ride it up.
step
talk Kor'vas Bloodthorn##97644
turnin All The Way Up##39686 |goto Vault of the Wardens/3 24.43,55.82
accept A New Direction##40373 |goto Vault of the Wardens/3 24.43,55.82
step
click Pool of Judgement
View the Pool of Judgement |q 40373/1 |goto Vault of the Wardens/3 24.40,53.08
step
talk Kor'vas Bloodthorn##97644
Select _"Will it be Kayn or Altruis?"_ |gossip 44913
|tip {o}Choose{} to side with {o}Kayn Sunfury{} or {o}Altruis the Sufferer{}.
|tip Choose {o}whichever you agree with{}, it doesn't matter.
Choose Between Kayn and Altruis |q 40373/2 |goto Vault of the Wardens/3 24.43,55.82
step
talk Kor'vas Bloodthorn##97644
turnin A New Direction##40373 |goto Vault of the Wardens/3 24.43,55.82
accept Between Us and Freedom##39688 |goto Vault of the Wardens/3 24.43,55.82 |or
accept Between Us and Freedom##39694 |or
'|accept Between Us and Freedom##40255 |or
'|accept Between Us and Freedom##40256 |or
step
kill Bastillax##96783
Slay Bastillax & Take His Power |q 39688/1 |goto Vault of the Wardens/3 50.38,77.52 |only if haveq(39688) or completedq(39688)
Slay Bastillax & Take His Power |q 39694/1 |goto Vault of the Wardens/3 50.38,77.52 |only if haveq(39694) or completedq(39694)
Slay Bastillax & Take His Power |q 40255/1 |goto Vault of the Wardens/3 50.38,77.52 |only if haveq(40255) or completedq(40255)
Slay Bastillax & Take His Power |q 40256/1 |goto Vault of the Wardens/3 50.38,77.52 |only if haveq(40256) or completedq(40256)
step
talk Kayn Sunfury##96666
|tip {o}Altruis the Sufferer{} may be here instead.
|tip It depends who {o}you chose to side with{}.
turnin Between Us and Freedom##39688 |goto Vault of the Wardens/3 84.12,82.84 |only if haveq(39688) or completedq(39688)
turnin Between Us and Freedom##39694 |goto Vault of the Wardens/3 84.12,82.84 |only if haveq(39694) or completedq(39694)
turnin Between Us and Freedom##40255 |goto Vault of the Wardens/3 84.12,82.84 |only if haveq(40255) or completedq(40255)
turnin Between Us and Freedom##40256 |goto Vault of the Wardens/3 84.12,82.84 |only if haveq(40256) or completedq(40256)
'|talk Altruis the Sufferer##96669
step
talk Archmage Khadgar##97978
accept Illidari, We Are Leaving##39690 |goto Vault of the Wardens/3 85.98,84.32 |or
'|accept Illidari, We Are Leaving##39689 |or
step
talk Archmage Khadgar##97978
turnin Illidari, We Are Leaving##39690 |goto Vault of the Wardens/3 85.98,84.32 |only if haveq(39690) or completedq(39690)
turnin Illidari, We Are Leaving##39689 |goto Vault of the Wardens/3 85.98,84.32 |only if haveq(39689) or completedq(39689)
step
talk Archmage Khadgar##97296
accept The Call of War##39691 |goto Stormwind City/0 72.55,47.01
step
Enter the Throne Room |q 39691/1 |goto Stormwind City/0 84.39,33.74
|tip Inside the building.
step
talk Jace Darkweaver##102585
|tip Inside the building.
turnin The Call of War##39691 |goto Stormwind City/0 84.39,33.74
accept Second Sight##44471 |goto Stormwind City/0 84.39,33.74
step
Use Spectral Sight |q 44471/1 |goto Stormwind City/0 84.39,33.74
|tip Use your {o}Spectral Sight{} ability.
|tip Inside the building.
step
talk Jace Darkweaver##102585
|tip Inside the building.
turnin Second Sight##44471 |goto Stormwind City/0 84.39,33.74
accept Demons Among Them##44463 |goto Stormwind City/0 84.39,33.74
step
talk Anduin Wrynn##100429
|tip Inside the building.
Select _"This cannot wait. There are demons among your ranks. Let me show you."_ |gossip 45043
Warn Anduin Wrynn |q 44463/1 |goto Stormwind City/0 85.87,31.60
step
kill Felblade Assassin##100993+
|tip Inside the building.
Slay #5# Demons |q 44463/2 |goto Stormwind City/0 84.80,32.50
step
talk Anduin Wrynn##100973
|tip Inside the building.
turnin Demons Among Them##44463 |goto Stormwind City/0 85.77,31.74
accept A Weapon of the Alliance##44473 |goto Stormwind City/0 85.77,31.74
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin A Weapon of the Alliance##44473 |goto Stormwind City/0 40.26,77.69
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto Stormwind City/0 40.30,77.70 |or
'|accept In the Blink of an Eye##44184 |goto Stormwind City/0 40.30,77.70 |or
step
talk Kirin Tor Emissary##149616
|tip Inside the tower.
Select _"The Kirin Tor requires my aid. Send me to Dalaran!"_ |gossip 51032
Talk to the Kirin Tor Emissary to Teleport You to Dalaran |q 44663/1 |goto Stormwind City/0 49.00,87.57 |only if haveq(44663) or completedq(44663)
Talk to the Kirin Tor Emissary to Teleport You to Dalaran |q 44184/1 |goto Stormwind City/0 49.00,87.57 |only if haveq(44184) or completedq(44184)
step
talk Archmage Khadgar##113986
|tip Inside the building.
Select _"I am ready, begin the teleportation of Dalaran to the Broken Isles."_ |gossip 45530
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if haveq(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if haveq(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if haveq(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if haveq(44184) or completedq(44184)
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Dark Iron Dwarf Starter",{
condition_valid=function() return raceclass('DarkIronDwarf') and not raceclass('DeathKnight') end,
condition_valid_msg="Dark Iron Dwarf only.",
condition_suggested=function() return raceclass('DarkIronDwarf') and level < 10.50 and not completedq(53500) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Moira Thaurissan##144152
accept Fer the Alliance##51486 |goto Shadowforge City/0 56.43,31.84
step
talk Ambassador Moorgard##133362
turnin Fer the Alliance##51486 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##53500 |goto Stormwind City/0 53.06,15.26
step
talk Chromie##167032
Find Chromie |q 53500/1 |goto Stormwind City/0 56.26,17.32
step
talk Mudrik Leger##143978
turnin Stranger in a Strange Land##53500 |goto Stormwind City/0 56.19,17.69
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Kul Tiran Starter",{
condition_valid=function() return raceclass('KulTiran') and not raceclass('DeathKnight') end,
condition_valid_msg="Kul Tiran only.",
condition_suggested=function() return raceclass('KulTiran') and level < 10.50 and not completedq(55146) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Katherine Proudmoore##150941
|tip Inside the building.
accept For the Alliance##55142 |goto Boralus/0 67.71,21.78
step
click Portal to Stormwind
|tip Inside the building.
Take the Portal to Stormwind |q 55142/1 |goto Boralus/0 70.11,16.79
step
talk Ambassador Moorgard##133362
turnin For the Alliance##55142 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##55146 |goto Stormwind City/0 53.06,15.26
step
talk Chromie##167032
Find Chromie |q 55146/1 |goto Stormwind City/0 56.26,17.32
step
talk Provisioner Fray##150947
turnin Stranger in a Strange Land##55146 |goto Stormwind City/0 56.19,17.69
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Lightforged Draenei Starter",{
condition_valid=function() return raceclass('LightforgedDraenei') and not raceclass('DeathKnight') end,
condition_valid_msg="Lightforged Draenei only.",
condition_suggested=function() return raceclass('LightforgedDraenei') and level < 10.50 and not completedq(50313) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Captain Fareeya##130993
accept For the Alliance##49772 |goto Vindicaar Scenario/1 49.22,43.80
step
talk Ambassador Moorgard##133362
turnin For the Alliance##49772 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##50313 |goto Stormwind City/0 53.06,15.26
step
talk Chromie##167032
Find Chromie |q 50313/1 |goto Stormwind City/0 56.26,17.32
step
talk Vindicator Minkey##131334
turnin Stranger in a Strange Land##50313 |goto Stormwind City/0 56.19,17.69
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Mechagnome Starter",{
condition_valid=function() return raceclass('Mechagnome') and not raceclass('DeathKnight') end,
condition_valid_msg="Mechagnome only.",
condition_suggested=function() return raceclass('Mechagnome') and level < 10.50 and not completedq(58147) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Gelbin Mekkatorque##159587
accept For the Alliance##58146 |goto Mechagon City/1 18.65,67.50
step
Teleport to Stormwind |q 58146/1 |goto Mechagon City/1 20.44,59.96
|tip Step onto the grate.
step
talk Ambassador Moorgard##133362
turnin For the Alliance##58146 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##58147 |goto Stormwind City/0 53.06,15.26
step
talk Chromie##167032
Find Chromie |q 58147/1 |goto Stormwind City/0 56.26,17.32
step
talk Lulana##160600
turnin Stranger in a Strange Land##58147 |goto Stormwind City/0 56.19,17.69
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Void Elf Starter",{
condition_valid=function() return raceclass('VoidElf') and not raceclass('DeathKnight') end,
condition_valid_msg="Void Elf only.",
condition_suggested=function() return raceclass('VoidElf') and level < 10.50 and not completedq(50305) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Alleria Windrunner##131345
accept For the Alliance##49788 |goto Telogrus Rift/0 28.54,22.27
step
talk Ambassador Moorgard##133362
turnin For the Alliance##49788 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##50305 |goto Stormwind City/0 53.06,15.26
step
talk Chromie##167032
Find Chromie |q 50305/1 |goto Stormwind City/0 56.26,17.32
step
talk Keira Onyxraven##131347
turnin Stranger in a Strange Land##50305 |goto Stormwind City/0 56.19,17.69
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Allied Race Death Knight Starter",{
description="This guide will walk you through completing the brief introduction for Pandaren and Allied Race Death Knights.",
condition_suggested=function() return raceclass{'pandaren','voidelf','lightforgeddraenei','darkirondwarf','kultiran','mechagnome'} and raceclass('DeathKnight') and level < 10.50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass{'pandaren','voidelf','lightforgeddraenei','darkirondwarf','kultiran','mechagnome'} and raceclass('DeathKnight') and level < 10.50 end,
condition_valid_msg="You must be a Pandaren or Allied Race Death Knight to complete this guide!",
condition_end=function() return completedq(58902) end,
startlevel=10,
endlevel=11,
},[[
step
talk The Lich King##163016
accept Death's Power Grows##58877 |goto The Frozen Throne/0 49.51,90.71
step
Swear Fealty |q 58877/1 |goto The Frozen Throne/0 49.51,90.71
|tip Use the {o}Swear Fealty{} ability.
|tip It appears as a button on the screen.
step
talk The Lich King##163016
turnin Death's Power Grows##58877 |goto The Frozen Throne/0 49.51,90.71
accept Defender of Azeroth##58902 |goto The Frozen Throne/0 49.51,90.71
step
talk Highlord Darion Mograine##161709
Select _"Reporting for duty."_ |gossip 51183
Speak with Highlord Darion Mograine |q 58902/1 |goto The Frozen Throne/0 50.70,71.16
step
click Death Gate
Use the Death Gate |q 58902/3 |goto The Frozen Throne/0 49.97,38.80
step
talk Chromie##167032
Talk to Chromie |q 58902/4 |goto Stormwind City/0 56.26,17.30
step
_Click the Complete Quest Box:_
turnin Defender of Azeroth##58902
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Non-Evoker Dracthyr Starter",{
condition_valid=function() return (raceclass('Dracthyr') and not raceclass('Evoker')) and not raceclass('DeathKnight') end,
condition_valid_msg="Dracthyr only.",
condition_suggested=function() return (raceclass('Dracthyr') and not raceclass('Evoker')) and level < 10.50 and not completedq(50305) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Scalecommander Emberthal##229075
accept Shaking the Dust Off##84423 |goto The War Creche/1 43.02,89.43
accept Forward, To Adventure!##84424 |goto The War Creche/1 43.01,89.49
step
click Portal to Stormwind
Use the Portal to Go to Chromie |q 84424/3 |goto The War Creche/1 43.80,81.13
step
talk Chromie##167032
turnin Forward, To Adventure!##84424 |goto Stormwind City/0 56.26,17.31
|next "Leveling Guides\\Starter Guides\\Chromie Time"
]])
QuestCore:RegisterGuide("Leveling Guides\\Starter Guides\\Haranir Starter",{
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Hagar##245090
|tip Inside the building.
accept Initiation Day##90957 |goto Harandar/0 34.81,24.94
step
kill 6 Invasive Drifter##245118 |q 90957/1 |goto Harandar/0 36.11,25.64
step
talk Dalnir##245102
turnin Initiation Day##90957 |goto Harandar/0 35.26,23.34
accept Roots Above All##90958 |goto Harandar/0 35.26,23.34
step
clicknpc Pesky Sludger##245117+
|tip White creatures.
click Invasive Fungi+
|tip Clusters of mushrooms.
click Withered Plant##246277+
|tip Large bushy plants.
|tip Run away when you click and kill the enemy that spawns.
Remove Pests |q 90958/1 |goto Harandar/0 35.88,25.31
step
click Shield
Investigate the Mysterious Voice |q 90958/2 |goto Harandar/0 36.64,25.14
step
talk Dalnir##245102
turnin Roots Above All##90958 |goto Harandar/0 35.26,23.34
step
talk Orweyna##245879
accept Traditional Duties##90959 |goto Harandar/0 35.29,23.51
step
Watch the dialogue
Meet Dalnir at the Den of Remembrance |q 90959/1 |goto Harandar/0 35.29,23.51
step
Find the Outsider |q 90959/2 |goto Harandar/0 35.46,27.32
step
kill Vicious Saptor##245114
Rescue the Outsider |q 90959/3 |goto Harandar/0 35.65,27.81
step
talk Alton Parsons##245104
Select _"<Tell Alton to head to the Den of Remembrance for help.>"_ |gossip 134366
Direct the Outsider to Safety |q 90959/4 |goto Harandar/0 35.61,27.95
step
talk Orweyna##245881
turnin Traditional Duties##90959 |goto Harandar/0 34.01,26.93
step
talk Hagar##245096
accept My Story, My Legacy##90960 |goto Harandar/0 34.02,26.90
step
click Legacy Stone of True Self
|tip Inside the cave.
Inspect the Legacy Stone of True Self |q 90960/1 |goto Harandar/0 33.61,28.25
step
talk Forgotten Song##246456
|tip Inside the cave.
Select _"<Reach out and touch the song.>"_ |gossip 134378
Watch the dialogue
Conclude the Vision of True Self |q 90960/2 |goto Harandar/0 33.61,28.24
step
click Legacy Stone of True Calling
|tip Inside the cave.
Watch the dialogue
Inspect the Legacy Stone of True Calling |q 90960/3 |goto Harandar/0 33.26,27.39
step
Watch the dialogue
|tip Inside the cave.
Conclude the Vision of True Calling |q 90960/4 |goto Harandar/0 33.26,27.39
step
click Legacy Stone of the Goddess Guidance
|tip Inside the cave.
clicknpc Forgotten Song##246456
|tip It spawns after clicking the Legacy Stone.
Watch the dialogue
Inspect the Legacy Stone of the Goddess Guidance |q 90960/5 |goto Harandar/0 32.37,27.36
step
talk Hagar##245097
|tip Inside the cave.
Select _"<Tell Hagar of the visions.>"_ |gossip 134388
Talk to Hagar |q 90960/6 |goto Harandar/0 31.91,27.39
step
click Legacy Stone
|tip Inside the cave.
Paint the Legacy Stone |q 90960/7 |goto Harandar/0 31.86,27.50
step
talk Hagar##245097
|tip Inside the cave.
turnin My Story, My Legacy##90960 |goto Harandar/0 31.91,27.39
accept Stranger in a New Land##90961 |goto Harandar/0 31.91,27.39
step
talk Hagar##245097
|tip Inside the cave.
Select _"My journey is my own."_ |gossip 134394
Talk to Hagar About the Ceremony |q 90961/1 |goto Harandar/0 31.91,27.39
step
click Rootway to Orgrimmar
|tip Inside the cave.
Enter the Rootway |q 90961/2 |goto Harandar/0 31.80,27.37
step
talk Ambassador Moorgard##133362
turnin Stranger in a New Land##90961 |goto Stormwind City/0 53.05,15.26
accept Choose a Path##94445 |goto Stormwind City/0 53.05,15.26
step
talk Chromie##167032
Talk to Chromie |q 94445/1 |goto Stormwind City/0 56.26,17.32
step
talk Envoy Manat##249187
turnin Choose a Path##94445 |goto Stormwind City/0 53.86,12.34
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Dark Iron Dwarf Race Unlock",{
description="This guide will walk you through unlocking the Dark Iron Dwarf allied race.",
condition_suggested=function() return achieved(12510) and not achieved(12515) end,
condition_valid=function() return level >= 50 end,
condition_valid_msg="You must be level 50 or higher to use this guide.",
condition_end=function() return achieved(12515) end,
patch='80001',
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept The Call for Allies##49929 |goto Stormwind City/0 Stormwind City/0 52.05,13.40
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin The Call for Allies##49929 |goto Stormwind City/0 52.05,13.40
accept A Choice of Allies##50239 |goto Stormwind City/0 Stormwind City/0 52.05,13.40
step
click Dark Iron Dwarf
|tip Inside the building.
Learn About the Dark Iron Dwarves |q 50239/3 |goto Stormwind City/0 51.78,13.91
step
click Lightforged Draenei
|tip Inside the building.
Learn About the Lightforged Draenei |q 50239/1 |goto Stormwind City/0 51.90,13.73
step
click Mechagnome
|tip Inside the building.
Learn About the Mechagnomes |q 50239/5 |goto Stormwind City/0 51.66,13.50
step
click Void Elf
|tip Inside the building.
Learn About the Void Elves |q 50239/2 |goto Stormwind City/0 52.22,13.20
step
click Kul Tiran
|tip Inside the building.
Learn About the Kul Tirans |q 50239/4 |goto Stormwind City/0 52.34,13.04
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin A Choice of Allies##50239 |goto Stormwind City/0 52.05,13.40
accept Blackrock Depths##51813 |goto Stormwind City/0 52.05,13.40
step
talk Moira Thaurissan##133197
|tip Inside the building.
Select _"I am ready to go to Blackrock Depths."_ |gossip 48178
Transport to Blackrock Depths |scenariostart Blackrock Depths##1571 |goto Stormwind City/0 51.88,14.05 |q 51813
step
Watch the dialogue
Meet the Dark Iron at the Black Anvil |scenariogoal 1/40480 |goto Blackrock Scenario/0 56.66,31.33 |q 51813
step
click Crate o' Azerite##292617
Pick Up the Azerite Crate |havebuff Carry Azerite Crate##274627 |goto Blackrock Scenario/0 55.84,31.93 |q 51813
step
click Place Crate o' Azerite##292882
Place the Azerite on the Black Anvil |scenariogoal 2/40528 |goto Blackrock Scenario/0 56.66,31.33 |q 51813
step
kill Congealed Azerite##139689, Unleashed Azerite##139687, Unbound Azerite##139686
|tip They attack in waves.
Defeat the Azerite Elementals |scenariogoal 3/40527 |goto Blackrock Scenario/0 56.66,31.33 |q 51813
step
Watch the dialogue
Receive Orders from Moira |scenariogoal 4/40540 |goto Blackrock Scenario/0 57.05,30.34 |q 51813
step
kill 8 Venture Co. Skyscorcher##139268 |scenariogoal 5/40539 |goto Blackrock Scenario/0 47.51,45.31 |q 51813
step
kill Azerite Extractor##139272, Wanton Sapper##139267, Fanatical Driller##140504, Venture Co. Earthshaper##139896
|tip {o}Avoid the spiked metal mines{} on the ground.
Defend the Dark Iron Highway |scenariogoal 6/40545 |goto Blackrock Scenario/0 29.27,56.58 |q 51813
step
kill Rixxa Fluxflame##139273 |scenariogoal 7/40547 |goto Blackrock Scenario/0 35.72,63.83 |q 51813
|tip You only need to get her to {o}about 70% health{}.
step
Return to the Black Anvil |scenariogoal 8/40548 |goto Blackrock Scenario/0 56.66,31.33 |q 51813
step
Complete the Blackrock Depths Scenario |q 51813/1 |goto Blackrock Scenario/0 57.04,30.34
step
talk Moira Thaurissan##140309
turnin Blackrock Depths##51813 |goto Blackrock Scenario/0 57.04,30.34
accept The MOTHERLODE!!: Ironfoe##53351 |goto Blackrock Scenario/0 57.04,30.34
step
clicknpc Mole Machine to Stormwind##143567
Return to Stormwind |complete zone("Stormwind City") |goto Blackrock Scenario/0 57.50,30.09 |q 53351
step
talk Moira Thaurissan##133197
|tip Inside the building.
Select _"I entrust you to handle this mission <Skip the dungeon quest>."_ |gossip 48181
collect Ironfoe##163708 |q 53351/1 |goto Stormwind City/0 51.88,14.05
step
talk Moira Thaurissan##133197
|tip Inside the building.
turnin The MOTHERLODE!!: Ironfoe##53351 |goto Stormwind City/0 51.88,14.05
accept Molten Core##53342 |goto Stormwind City/0 51.88,14.05
step
Watch the dialogue
|tip Inside the building.
Retrieve a Shocking Amount o' Dark Iron Ingots |q 53342/1 |goto Stormwind City/0 51.88,14.05
step
talk Moira Thaurissan##133197
|tip Inside the building.
Select _"I am ready to go to Molten Core."_ |gossip 48179
Transport to Molten Core |complete subzone("The Molten Core") |goto Stormwind City/0 51.88,14.05 |q 53342
step
clicknpc The Tank##143390
Board the Tank |invehicle |goto Blackrock Scenario/1 29.15,26.42 |q 53342
step
Follow the path |goto Blackrock Scenario/1 43.38,62.89 < 20 |walk
Ride Through the Molten Core |outvehicle |goto Blackrock Scenario/1 52.84,65.18 |q 53342
|tip Kill enemies as you travel to this location.
|tip Use the abilities on your action bar.
step
Watch the dialogue
kill Gezzrok the Keeper##143542
|tip Follow the spiral path to get to him.
click Molten Core##297702
|tip It looks like a huge {o}floating ball of lava{} nearby.
collect Fragment o' the Molten Core##163693 |q 53342/2 |goto Blackrock Scenario/1 56.08,56.67
step
clicknpc Mole Machine to Stormwind##143567
Return to Stormwind |complete zone("Stormwind City") |goto Blackrock Scenario/1 57.24,59.13 |q 53342
step
talk Moira Thaurissan##133197
|tip Inside the building.
turnin Molten Core##53342 |goto Stormwind City/0 51.88,14.05
accept Firelands##53352 |goto Stormwind City/0 51.88,14.05
step
talk Moira Thaurissan##133197
|tip Inside the building.
Select _"I am ready to go to the Firelands."_ |gossip 48180
Travel to the Firelands |complete not zone ("Stormwind City") |goto Stormwind City/0 51.88,14.05 |q 53352
step
Watch the dialogue
kill Dark Iron Cultist##143645
Speak with the Bridgekeeper |scenariogoal 1/41550 |goto Firelands Scenario/0 49.21,29.52 |q 53352
step
kill Blazing Elemental##143405, Molten Giant##143414, Flamewalker Sentinel##143415, Ancient Core Hound##143416, Dark Iron Cultist##143645, Lava Burster##143648
|tip Inside and outside the building.
|tip Make sure to kill {o}every enemy{} you see.
|tip To get to the building, {o}cross the bridge{} after it {o}appears{}.
Defeat the Cultists and Their Allies |scenariogoal 2/41551 |goto Firelands Scenario/1 50.80,67.20 |q 53352
step
Watch the dialogue
|tip Inside the building.
|tip At the end of the path.
Confront High-Justice Grimstone |scenariogoal 3/41563 |goto Firelands Scenario/1 50.52,20.81 |q 53352
|tip You will be attacked.
step
kill High Justice Grimstone##143607 |scenariogoal 4/41561 |goto Firelands Scenario/1 50.52,20.81 |q 53352
step
Watch the dialogue
|tip Inside the building.
Approach the Lava Pool to Infuse the Molten Core with the Power of Ragnaros |scenariogoal 5/41562 |goto Firelands Scenario/1 50.52,19.27 |q 53352
Charge the Fragment of the Molten Core |q 53352/1 |goto Firelands Scenario/1 50.52,19.27
step
clicknpc Mole Machine to Stormwind##143567
|tip Inside the building.
Return to Stormwind |complete zone("Stormwind City") |goto Firelands Scenario/1 50.29,21.35 |q 53352
step
talk Moira Thaurissan##133197
|tip Inside the building.
turnin Firelands##53352 |goto Stormwind City/0 51.88,14.05
accept Forged in Fire an' Flame##51474 |goto Stormwind City/0 51.88,14.05
step
talk Moira Thaurissan##133197
|tip Inside the building.
Select _"I am ready to go to Blackrock Depths."_ |gossip 48178
Travel to Blackrock Depths |complete subzone("Hall of Crafting") |goto Stormwind City/0 51.88,14.05 |q 51474
step
click Fragment 'o the Molten Core##298887
Repair the Black Anvil |q 51474/1 |goto Blackrock Scenario/0 56.65,31.36
step
talk Moira Thaurissan##140309
turnin Forged in Fire an' Flame##51474 |goto Blackrock Scenario/0 57.19,30.88
accept Dark Iron Dwarves##53566 |goto Blackrock Scenario/0 57.19,30.88
step
clicknpc Mole Machine to Stormwind##143567
Return to Stormwind |complete zone("Stormwind City") |goto Blackrock Scenario/0 57.50,30.09 |q 53566
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin Dark Iron Dwarves##53566 |goto Stormwind City/0 52.08,13.43
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Dark Iron Dwarf Mole Machine Locations",{
description="This guide will walk you through unlocking the Dark Iron Dwarf Mole Machine locations.",
condition_end=function() return completedq(80109) end,
patch='80001',
},[[
step
clicknpc Dark Iron Mole Machine##144281
Unlock the Throne of Flame Mole Machine |q 53601 |goto Mount Hyjal/0 57.17,77.11 |future
step
clicknpc Dark Iron Mole Machine##144280
Unlock The Great Divide Mole Machine |q 53600 |goto Southern Barrens/0 39.12,9.29 |future
step
clicknpc Dark Iron Mole Machine##144271
Unlock the Fire Plume Ridge Mole Machine |q 53591 |goto Un'Goro Crater/0 52.90,55.77 |future
step
clicknpc Dark Iron Mole Machine##144274
Unlock the Nethergarde Keep Mole Machine |q 53594 |goto Blasted Lands/0 61.97,12.81 |future
step
clicknpc Dark Iron Mole Machine##144267
|tip Down inside Blackrock Mountain near the Blackrock Depths portal.
Unlock The Masonary Mole Machine |q 53587 |goto Burning Steppes/16 33.33,24.77 |future
step
clicknpc Dark Iron Mole Machine##144265
Unlock the Aerie Peak Mole Machine |q 53585 |goto The Hinterlands/0 13.52,46.80 |future
step
clicknpc Dark Iron Mole Machine##144279
Unlock the Fel Pits Mole Machine |q 53599 |goto Shadowmoon Valley/0 50.77,35.31 |future
|tip If directed to Zidormi but they are not there keep flying North and the waypoint will update.
step
clicknpc Dark Iron Mole Machine##144277
Unlock the Skald Mole Machine |q 53597 |goto Blade's Edge Mountains/0 72.42,17.66 |future
step
clicknpc Dark Iron Mole Machine##144276
Unlock the Ruby Dragonshrine Mole Machine |q 53596 |goto Dragonblight/0 45.35,49.92 |future
step
clicknpc Dark Iron Mole Machine##144266
Unlock the Argent Tournament Grounds Mole Machine |q 53586 |goto Icecrown/0 76.97,18.67 |future
step
clicknpc Dark Iron Mole Machine##144278
Unlock the Stormstout Brewery Mole Machine |q 53598 |goto Valley of the Four Winds/0 31.52,73.61 |future
step
clicknpc Dark Iron Mole Machine##144275
Unlock the One Keg Mole Machine |q 53595 |goto Kun-Lai Summit/0 57.70,62.80 |future
step
clicknpc Dark Iron Mole Machine##144268
Unlock the Blackrock Foundry Overlook Mole Machine |q 53588 |goto Gorgrond/0 46.69,38.75 |future
step
clicknpc Dark Iron Mole Machine##144270
Unlock the Elemental Plateau Machine |q 53590 |goto Nagrand D/0 65.74,8.27 |future
step
clicknpc Dark Iron Mole Machine##144273
Unlock the Neltharion's Vault Mole Machine |q 53593 |goto Highmountain/0 44.66,72.89 |future
step
clicknpc Dark Iron Mole Machine##144269
Unlock the Broken Shore Mole Machine |q 53589 |goto Broken Shore/0 71.71,48.01 |future
step
Next you will unlock BFA zones
|tip You must do the intro quests to unlock access to the Zandalar continent.
confirm
step
talk Hero's Herald##49748
accept Battle for Azeroth: Tides of War##46727 |goto Stormwind City/0 62.17,30.14
|only if not haveq(59641) and not completedq(59641)
step
Watch the dialogue
|tip Inside the building.
Attend the War Council |q 46727/1 |goto Stormwind City/0 80.27,33.13
'|clicknpc Anduin Wrynn##120756
|only if haveq(46727)
step
clicknpc Vision of Sailor's Memory##139645
|tip Inside the building.
Witness the Vision of the Sailor's Memory |q 46727/2 |goto Stormwind City/0 80.48,33.50
|only if haveq(46727)
step
talk Anduin Wrynn##120756
|tip Inside the building.
turnin Battle for Azeroth: Tides of War##46727 |goto Stormwind City/0 80.26,33.13
accept The Nation of Kul Tiras##46728 |goto Stormwind City/0 80.26,33.13
|only if (haveq(46727) or completedq(46727)) and not completedq(46728)
step
talk Lady Jaina Proudmoore##120590
Select _"I'm ready to set sail!"_ |gossip 47615 |noautogossip
_Or_
Select _"I've heard this tale before... <Skip the Kul Tiras introductory quests and begin your journey in Boralus.>"_ |gossip 47616 |noautogossip
|tip You {o}skip the intro{} if you've {o}already done it{} on a previous character.
Speak with Lady Jaina Proudmoore |q 46728/1 |goto Stormwind City/0 22.79,24.69
|only if haveq(46728)
step
Travel to Boralus |complete zone("Boralus") |q 46728
|only if haveq(46728)
step
talk Lady Jaina Proudmoore##120922
turnin The Nation of Kul Tiras##46728 |goto Boralus/0 65.57,50.75 |only if haveq(46728) or completedq(46728)
accept Daughter of the Sea##51341 |goto Boralus/0 65.57,50.75
step
Watch the dialogue
|tip You will be teleported automatically.
Attend the Audience with Katherine Proudmoore |q 51341/1
step
Travel to Tol Dagor |complete zone("Tol Dagor Isle") |q 51341
step
talk Flynn Fairwind##121239
|tip Inside the building.
turnin Daughter of the Sea##51341 |goto Tol Dagor Isle/0 47.38,46.26
accept Out Like Flynn##47098 |goto Tol Dagor Isle/0 47.38,46.26
step
Watch the dialogue
|tip Inside the building.
clicknpc Flynn Fairwind##121239
|tip He walks to this location.
Punch Flynn |q 47098/1 |goto Tol Dagor Isle/0 46.63,45.52
step
Watch the dialogue
|tip Inside the building.
click Cell Block Lever
Pull the Cell Block Lever |q 47098/2 |goto Tol Dagor Isle/0 46.60,41.15
step
click Equipment Locker##213651
|tip Inside the building.
Recover the Equipment |q 47098/3 |goto Tol Dagor Isle/0 46.95,44.47
step
kill Block Warden Carmine##124024 |q 47098/4 |goto Tol Dagor Isle/0 40.28,54.77
|tip Inside the building.
step
click Glittering Gunpowder
|tip Inside the building.
collect Glittering Gunpowder##160326 |q 47098/5 |goto Tol Dagor Isle/0 43.57,54.08
step
click Cell Block Gate
|tip Inside the building.
Watch the dialogue
Open the Cell Block Gate |q 47098/6 |goto Tol Dagor Isle/0 43.09,36.95
step
Run down the stairs |goto Tol Dagor Isle/0 49.13,40.48 < 10 |walk
Enter the Sewers |q 47098/7 |goto Tol Dagor Isle/0 39.10,51.40
|tip Walk into the {o}tunnel{}.
|tip Downstairs inside the building.
step
Follow the path through the tunnel to the exit |goto Tol Dagor Isle/0 51.12,47.46 < 10 |walk
clicknpc Getaway Boat##124030
|tip Run around the mountain.
Board the Getaway Boat |q 47098/8 |goto Tol Dagor Isle/0 60.98,26.32
step
Watch the dialogue
Travel to Boralus |complete zone("Boralus") |q 47098
step
talk Taelia##121235
turnin Out Like Flynn##47098 |goto Boralus/0 75.70,23.59
accept Get Your Bearings##47099 |goto Boralus/0 75.70,23.59
step
Watch the dialogue
Visit the Ferry Dock |q 47099/1 |goto Boralus/0 74.25,24.58
step
Watch the dialogue
|tip Inside the building.
Visit the Tradewinds Counting House |q 47099/2 |goto Boralus/0 75.57,17.92
step
Watch the dialogue
|tip Inside the building.
Visit the Snug Harbor Tavern |q 47099/3 |goto Boralus/0 73.63,13.05
step
Watch the dialogue
Visit the Flight Master |q 47099/4 |goto Boralus/0 67.14,15.35
step
talk Joan Weber##124725
fpath Tradewinds Market |goto Boralus/0 66.97,15.01
step
_Next to you:_
talk Taelia
turnin Get Your Bearings##47099
accept The Old Knight##46729
'|talk Taelia##124630
step
Jump down and enter the building |goto Boralus/0 68.83,21.11 < 10 |walk
Watch the dialogue
|tip In the doorway of the building.
Find Cyrus Crestfall |q 46729/1 |goto Boralus/0 67.08,23.47
step
Watch the dialogue
talk Cyrus Crestfall##122370
|tip Inside the building.
Select _"<Shake his hand.>"_ |gossip 48242
Speak with Cyrus Crestfall |q 46729/2 |goto Boralus/0 68.01,21.89
step
Watch the dialogue
|tip Inside the building.
Hear Cyrus' Tale |q 46729/3 |goto Boralus/0 68.01,21.89
step
talk Taelia##121235
|tip Inside the building.
turnin The Old Knight##46729 |goto Boralus/0 68.17,21.97
accept Sanctum of the Sages##47186 |goto Boralus/0 68.17,21.97
step
Watch the dialogue
|tip Inside the building.
talk Cyrus Crestfall##122370
accept Ferry Pass##52128 |goto Boralus/0 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto Boralus/0 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto Boralus/0 68.01,21.89
step
talk 7th Legion Magus##137066
|tip Inside the building.
Select _"The local authority has given us permission to open portals here."_ |gossip 48276
Speak with the 7th Legion Magus |q 47186/1 |goto Boralus/0 70.74,16.31
step
talk Taelia##121235
|tip Inside the building.
turnin Sanctum of the Sages##47186 |goto Boralus/0 68.17,21.97
accept A Nation Divided##47189 |goto Boralus/0 68.17,21.97
step
clicknpc Scouting Map##139522
|tip Inside the building.
Inspect the Scouting Map |q 47189/1 |goto Boralus/0 68.38,22.10
step
talk Taelia##121235
|tip Inside the building.
turnin A Nation Divided##47189 |goto Boralus/0 68.17,21.97
step
talk Halford Wyrmbane##135612
accept The Zandalar Campaign##51569 |goto Boralus/0 69.27,26.99
step
click Zandalar Campaign
accept Foothold: Nazmir##51571 |goto 69.38,26.98 |or |only if not completedq(51571) and not completedq(51569)
|tip You just need to be able to get access to Zandalar.
step
_Click the Quest Complete Box:_
turnin Foothold: Nazmir##51571
step
Choose a Foothold |q 51569/1 |goto Boralus/0 69.38,26.98 |only if haveq(51569)
Choose a Foothold |q 51961/1 |goto Boralus/0 69.38,26.98 |only if haveq(51961)
Review the Final Foothold |q 52443/1 |goto Boralus/0 69.38,26.98 |only if haveq(52443)
step
talk Halford Wyrmbane##135612
turnin The Zandalar Campaign##51569 |goto 69.27,26.99 |only if haveq(51569)
turnin The Ongoing Campaign##51961 |goto 69.27,26.99 |only if haveq(51961)
turnin The Final Foothold##52443 |goto 69.28,26.99 |only if haveq(52443)
accept Heart of Darkness##51088 |goto 69.27,26.99
step
talk Grand Admiral Jes-Tereth##135681
|tip At the top of the ship.
Select _"(Quest) Set sail for Nazmir."_ |gossip 48164
Speak with Jes-Tereth to Travel to Nazmir |q 51088/1 |goto 67.95,26.69
step
Watch the dialogue
Travel Down the Razorjaw River |goto Nazmir/0 61.08,37.72 < 7 |c |q 51088 |notravel
step
Watch the dialogue
Travel to Fort Victory |q 51088/2 |goto 61.95,40.79
step
talk Selina Duskraven##134451
fpath Fort Victory |goto 62.35,41.38 |q 51088
step
talk Brann Bronzebeard##136432
turnin Heart of Darkness##51088 |goto 62.03,41.60
step
clicknpc Dark Iron Mole Machine##218949
Unlock the Zalamar Invasion Mole Machine |q 80099 |goto Nazmir/0 34.34,45.13 |future
step
clicknpc Dark Iron Mole Machine##218950
Unlock the Xibala Incursion Mole Machine |q 80100 |goto Zuldazar/0 38.24,72.37 |future
step
clicknpc Dark Iron Mole Machine##218952
Unlock the Tidebreak Summit Mole Machine |q 80102 |goto Stormsong Valley/0 64.22,29.44 |future
step
clicknpc Dark Iron Mole Machine##218951
Unlock the Wailing Tideways Mole Machine |q 80101 |goto Tiragarde Sound/0 88.21,71.53 |future
step
Next you will unlock Shadowlands zones
|tip You must do the intro quests to unlock access to the Shadowlands zones.
confirm
step
talk Highlord Darion Mograine##176554
accept Shadowlands: A Chilling Summons##60545 |goto Stormwind City/0 76.56,42.71
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_ |gossip 52724 |noautogossip
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.71,42.75 |or
|tip If you {o}already completed{} the Shadowlands intro, you can skip it.
Skip the Shadowlands Intro |complete completedq(59770) |goto Stormwind City/0 76.71,42.75 |or
step
Watch the dialogue
click Death Gate to Acherus
Take the Death Gate to Acherus |q 60545/2 |goto Stormwind City/0 77.07,42.10
step
Take the Teleporter to the Frozen Throne |q 60545/3 |goto Icecrown Citadel Intro/0 59.76,20.98
|tip Walk onto the {o}teleport pad nearby{}.
step
talk Highlord Bolvar Fordragon##169076
turnin Shadowlands: A Chilling Summons##60545 |goto Icecrown Citadel Intro/2 50.78,53.71
step
talk Highlord Bolvar Fordragon##169076
accept Through the Shattered Sky##59751 |goto Icecrown Citadel Intro/2 50.78,53.71
step
Watch the dialogue
Hear Bolvar's Instructions |q 59751/1 |goto Icecrown Citadel Intro/2 50.78,53.71
step
click Shard of Domination
Carry the First Shard |havebuff texture:968649 |goto Icecrown Citadel Intro/2 49.79,51.71 |q 59751
step
click Place Shard
Place the First Shard |q 59751/2 |goto Icecrown Citadel Intro/2 54.90,44.70
step
click Shard of Domination
Carry the Second Shard |havebuff texture:968649 |goto Icecrown Citadel Intro/2 49.79,51.71 |q 59751
step
click Place Shard
Place the Second Shard |q 59751/3 |goto Icecrown Citadel Intro/2 54.87,59.64
step
click Shard of Domination
Carry the Third Shard |havebuff texture:968649 |goto Icecrown Citadel Intro/2 49.79,51.71 |q 59751
step
click Place Shard
Place the Third Shard |q 59751/4 |goto Icecrown Citadel Intro/2 44.88,59.79
step
click Shard of Domination
Carry the Fourth Shard |havebuff texture:968649 |goto Icecrown Citadel Intro/2 49.79,51.71 |q 59751
step
click Place Shard
Place the Fourth Shard |q 59751/5 |goto Icecrown Citadel Intro/2 44.74,44.91
step
click Shard of Domination
Watch the dialogue
Complete the Ritual |q 59751/6 |goto Icecrown Citadel Intro/2 49.79,51.71
step
Enter the Maw |goto The Maw Intro/0 19.19,57.51 < 50 |noway |c |q 59751
step
talk Highlord Darion Mograine##165918
turnin Through the Shattered Sky##59751 |goto The Maw Intro/0 19.31,57.22
accept A Fractured Blade##59752 |goto The Maw Intro/0 19.31,57.22
step
_Next to you:_
talk Highlord Darion Mograine
accept Mawsworn Menace##59907
'|talk Highlord Darion Mograine##166723
stickystart "Rally_Death_Knights"
stickystart "Slay_Mawsworn_Forces"
step
talk Wilona Thorne##170624
accept Ruiner's End##59753 |goto The Maw Intro/0 22.96,51.90
step
label "Rally_Death_Knights"
clicknpc Knight of the Ebon Blade##166963, Knight of the Ebon Blade##166605
|tip They look like {o}neutral Death Knight NPCs{}.
|tip If they are fighting, {o}kill the enemies they are fighting{} to rally them.
Rally #10# Death Knights |q 59752/1 |goto The Maw Intro/0 22.37,51.41
step
label "Slay_Mawsworn_Forces"
kill Mawsworn Guard##165860, Crucible Seeker##165974, Mawsworn Soulrender##165992
Slay #8# Mawsworn Forces |q 59907/1 |goto The Maw Intro/0 22.37,51.41
step
_Next to you:_
talk Highlord Darion Mograine
turnin A Fractured Blade##59752
turnin Mawsworn Menace##59907
'|talk Highlord Darion Mograine##166723
step
kill Ruiner Maroth##166714 |q 59753/1 |goto The Maw Intro/0 19.32,46.08
|tip Use the {o}Ebon Clarion{} button ability.
|tip You will {o}summon allies{} to help you fight.
step
Regroup with Mograine |q 59753/2 |goto The Maw Intro/0 21.50,41.96
step
talk Highlord Darion Mograine##165918
turnin Ruiner's End##59753 |goto The Maw Intro/0 21.50,41.96
accept Fear to Tread##59914 |goto The Maw Intro/0 21.50,41.96
step
Find the First Clue |q 59914/1 |goto The Maw Intro/0 22.21,43.12
step
Find the Second Clue |q 59914/2 |goto The Maw Intro/0 20.90,38.90
step
Find the Third Clue |q 59914/3 |goto The Maw Intro/0 21.70,35.69
step
Watch the dialogue
Find Jaina |q 59914/4 |goto The Maw Intro/0 22.30,32.94
step
talk Lady Jaina Proudmoore##166980
turnin Fear to Tread##59914 |goto The Maw Intro/0 22.30,32.94
accept On Blackened Wings##59754 |goto The Maw Intro/0 22.30,32.94
step
Watch the dialogue
Follow Jaina |q 59754/1 |goto The Maw Intro/0 22.30,32.94
step
kill 6 Mawsworn Harbinger##165983 |q 59754/2 |goto The Maw Intro/0 22.30,32.94
'|kill Mawsworn Harbinger##177071
step
talk Lady Jaina Proudmoore##166980
turnin On Blackened Wings##59754 |goto The Maw Intro/0 23.16,31.72
accept A Flight from Darkness##59755 |goto The Maw Intro/0 23.16,31.72
step
talk Lady Jaina Proudmoore##166980
Select _"I am ready."_ |gossip 53556
Begin Following Lady Jaina Proudmoore |goto The Maw Intro/0 23.16,31.72 > 15 |c |q 59755
step
Watch the dialogue
|tip Follow {o}Lady Jaina Proudmoore{} and protect her as she walks.
|tip She eventually walks to this location inside the cave.
Escort Jaina to Forlorn Respite |q 59755/1 |goto The Maw Intro/0 24.46,36.23
'|clicknpc Lady Jaina Proudmoore##167154
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
turnin A Flight from Darkness##59755 |goto The Maw Intro/0 24.46,36.23
accept A Moment's Respite##59756 |goto The Maw Intro/0 24.46,36.23
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
Select _"Tell me about this place."_ |gossip 51881
Watch the dialogue
Speak to Jaina |q 59756/1 |goto The Maw Intro/0 24.46,36.23
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
Select _"Tell me more of the Jailer."_ |gossip 51882
Watch the dialogue
Ask About the Jailer |q 59756/2 |goto The Maw Intro/0 24.85,36.27
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
Select _"What about the others who were taken?"_ |gossip 51883
Watch the dialogue
Ask About the Other Captives |q 59756/3 |goto The Maw Intro/0 24.88,36.01
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
turnin A Moment's Respite##59756 |goto The Maw Intro/0 24.46,36.23
step
talk Highlord Darion Mograine##165918
|tip Inside the cave.
accept Field Seance##59757 |goto The Maw Intro/0 24.54,36.04
step
Leave the cave |goto The Maw Intro/0 25.49,32.58 < 20 |walk |only if subzone("Forlorn Respite") and indoors()
kill Malice Shadow##165909+
|tip Click them when they {o}become unattackable{}.
Command #5# Malice Shadows |q 59757/1 |goto The Maw Intro/0 27.59,32.11
step
_Next to you:_
talk Highlord Darion Mograine
turnin Field Seance##59757
accept Speaking to the Dead##59758
'|talk Highlord Darion Mograine##166723
step
kill Tormented Amalgamation##165976
|tip Click it when it {o}becomes unattackable{}.
Command the Tormented Amalgamation |q 59758/1 |goto The Maw Intro/0 27.95,30.86
step
_Next to you:_
talk Highlord Darion Mograine
turnin Speaking to the Dead##59758
accept Soul in Hand##59915
'|talk Highlord Darion Mograine##166723
step
Enter the cave |goto The Maw Intro/0 25.50,32.56 < 20 |walk
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
turnin Soul in Hand##59915 |goto The Maw Intro/0 24.46,36.23
accept The Lion's Cage##59759 |goto The Maw Intro/0 24.46,36.23
step
Leave the cave |goto The Maw Intro/0 25.49,32.58 < 20 |walk |only if subzone("Forlorn Respite") and indoors()
Cross the bridge |goto The Maw Intro/0 24.05,25.87 < 30 |only if walking
Reach the Upper Tremaculum |q 59759/1 |goto The Maw Intro/0 27.61,17.47
|tip Walk onto the teleport pad.
step
Watch the dialogue
Find Anduin |q 59759/2 |goto The Maw Intro/0 25.85,14.98
step
talk Lady Jaina Proudmoore##166980
Select _"<Lie low and observe.>"_ |gossip 54098
Speak to Jaina |q 59759/3 |goto The Maw Intro/0 25.85,14.98
step
talk Anduin Wrynn##167833
turnin The Lion's Cage##59759 |goto The Maw Intro/0 25.05,13.41
accept The Afflictor's Key##59760 |goto The Maw Intro/0 25.05,13.41
accept An Undeserved Fate##59761 |goto The Maw Intro/0 25.05,13.41
stickystart "Release_Shackled_Souls"
step
Locate the Teleport Pad |goto The Maw Intro/0 28.26,19.02 < 20 |c |q 59761
step
Use the Teleport Pad |goto The Maw Intro/0 28.26,19.02
|tip Walk onto the teleport pad.
Teleport to the Ground |goto The Maw Intro/0 27.54,17.32 < 10 |noway |c |q 59761
step
Run up the stairs |goto The Maw Intro/0 27.49,14.45 < 20 |only if walking
kill Phael the Afflictor##167834
collect Afflictor's Key##178558 |q 59760/1 |goto The Maw Intro/0 28.62,11.95
step
label "Release_Shackled_Souls"
kill Mawsworn Willbreaker##167942, Tremaculum Sentinel##167704, Tremaculum Warden##175269
collect Mawsworn Key##178553+ |n
click Mawsteel Cage+
|tip They look like {o}silver cages{}.
Release #15# Shackled Souls |q 59761/1 |goto The Maw Intro/0 29.37,15.33
step
Use the Teleport Pad |goto The Maw Intro/0 27.63,17.41
|tip Walk onto the teleport pad.
Teleport Back Up to Anduin |goto The Maw Intro/0 28.20,18.90 < 10 |noway |c |q 59760
step
click Mawforged Lock
Open the Mawforged Lock |q 59760/2 |goto The Maw Intro/0 24.95,13.52 |count 1
step
click Mawforged Lock
Open the Mawforged Lock |q 59760/2 |goto The Maw Intro/0 25.15,13.28 |count 2
step
talk Anduin Wrynn##167833
turnin The Afflictor's Key##59760 |goto The Maw Intro/0 25.05,13.41
turnin An Undeserved Fate##59761 |goto The Maw Intro/0 25.05,13.41
accept From the Mouths of Madness##59776 |goto The Maw Intro/0 25.05,13.41
step
Watch the dialogue
click Portal to Forlorn Respite
Take the Portal to Forlorn Respite |q 59776/1 |goto The Maw Intro/0 25.36,13.91
step
talk Highlord Darion Mograine##165918
|tip Inside the cave.
Select _"Make it talk."_ |gossip 54157
Watch the dialogue
Speak to Darion Mograine |q 59776/2 |goto The Maw Intro/0 24.31,37.18
step
Watch the dialogue
|tip Inside the cave.
talk Highlord Darion Mograine##165918
turnin From the Mouths of Madness##59776 |goto The Maw Intro/0 24.31,37.18
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
accept By and Down the River##59762 |goto The Maw Intro/0 24.28,37.04
step
Leave the cave |goto The Maw Intro/0 25.49,32.58 < 20 |walk |only if subzone("Forlorn Respite") and indoors()
Watch the dialogue
|tip On the bridge.
Cross the River of Souls |q 59762/1 |goto The Maw Intro/0 30.02,36.60
step
Escape the River |q 59762/2 |goto The Maw Intro/0 29.45,41.41
step
talk Lady Jaina Proudmoore##166980
turnin By and Down the River##59762 |goto The Maw Intro/0 29.78,42.44
step
talk Thrall##166981
accept Wounds Beyond Flesh##59765 |goto The Maw Intro/0 29.50,43.80
step
_Next to you:_
talk Thrall
accept A Good Axe##59766
'|talk Thrall##167827
stickystart "Find_A_Suitable_Weapon"
step
kill Mawsworn Soulrender##169687+
collect Wither Blade##180050 |q 59765/1 |goto The Maw Intro/0 31.84,41.78
step
label "Find_A_Suitable_Weapon"
click Mawsworn Armaments+
|tip They look like {o}weapon racks{}.
Find a Suitable Weapon |q 59766/1 |goto The Maw Intro/0 31.84,41.78
step
_Next to you:_
talk Thrall
turnin Wounds Beyond Flesh##59765
turnin A Good Axe##59766
accept Draw Out the Darkness##60644
'|talk Thrall##167827
step
click Place Blade
Watch the dialogue
kill Withering Presence##169759 |q 60644/2 |goto The Maw Intro/0 29.51,43.88
step
Watch the dialogue
talk Baine Bloodhoof##168162
turnin Draw Out the Darkness##60644 |goto The Maw Intro/0 29.46,43.88
step
talk Lady Jaina Proudmoore##166980
accept The Path to Salvation##59767 |goto The Maw Intro/0 29.47,44.02
step
Watch the dialogue
talk Lady Jaina Proudmoore##166980
|tip She walks to this location.
Select _"I am ready."_ |gossip 53556
Speak to Jaina |q 59767/1 |goto The Maw Intro/0 31.83,44.41
step
Watch the dialogue
Become Invisible |havebuff Mass Invisibility##327876 |goto The Maw Intro/0 31.83,44.41 |q 59767
step
Watch the dialogue
|tip {o}Follow your allies{} as they walk.
|tip They eventually walk to this location.
|tip {o}Avoid enemies with blue circles{} beneath them.
Reach the Eroded Waygate |q 59767/2 |goto The Maw Intro/0 42.49,42.36
step
talk Anduin Wrynn##167833
turnin The Path to Salvation##59767 |goto The Maw Intro/0 42.49,42.18
accept Stand as One##59770 |goto The Maw Intro/0 42.49,42.18
step
click Eroded Waystone
Touch the Eroded Waystone |q 59770/1 |goto The Maw Intro/0 42.38,42.16
step
kill Mawsworn Harbinger##168585, Mawsworn Guard##168588, Mawsworn Sorcerer##168586
|tip They attack in waves.
Survive the Jailer's Onslaught |q 59770/2 |goto The Maw Intro/0 42.57,42.17
step
click Eroded Waystone
turnin Stand as One##59770 |goto The Maw Intro/0 42.37,42.16
step
talk Attendant Protector##168252
Select _"Where am I? Have I escaped the Maw?"_ |gossip 53754
Try to Communicate |q 60129/1 |goto Oribos/0 23.80,49.66
step
Watch the dialogue
|tip Follow the {o}Protector Captain{} as he walks.
|tip He eventually walks to this location.
Follow the Guards into Oribos |q 60129/2 |goto Oribos/0 40.37,65.26
step
talk Overseer Kah-Delen##167425
Select _"Are you in charge here? Where am I?"_ |gossip 52683
Speak to Kah-Delen |q 60129/3 |goto Oribos/0 39.89,66.48
step
talk Overseer Kah-Delen##167425
turnin Stranger in an Even Stranger Land##60129 |goto Oribos/0 39.89,66.48
accept No Place for the Living##60148 |goto Oribos/0 39.89,66.48
step
talk Overseer Kah-Delen##167425
Select _"Yes, I escaped the Maw."_ |gossip 52684
Speak to the Overseers |q 60148/1 |goto Oribos/0 39.89,66.48
step
Watch the dialogue
Listen to the Overseers |q 60148/2 |goto Oribos/0 39.89,66.48
step
talk Tal-Inara##167486
turnin No Place for the Living##60148 |goto Oribos/0 40.84,65.82
accept Audience with the Arbiter##60149 |goto Oribos/0 40.84,65.82
step
talk Tal-Inara##167486
Select _"I will join you."_ |gossip 53751
Accompany Tal-Inara to Visit the Arbiter |q 60149/1 |goto Oribos/0 40.84,65.82
step
Watch the dialogue
|tip You will be teleported automatically.
Enter the Crucible |goto Oribos/3 48.75,48.71 < 10 |noway |c |q 60149
step
talk Tal-Inara##167486
Select _"What is this place?"_ |gossip 52950
Watch the dialogue
Ask About the Arbiter |q 60149/2 |goto Oribos/3 50.85,51.43
step
Watch the dialogue
Listen to Tal-Inara |q 60149/3 |goto Oribos/3 50.85,51.43
step
talk Tal-Inara##167486
Select _"I am ready to return."_ |gossip 52951
Watch the dialogue
Talk to Tal-Inara to Retun |q 60149/4 |goto Oribos/3 50.85,51.43
step
Return to the Ring of Fates |goto Oribos/0 40.02,65.59 < 10 |noway |c |q 60149
step
talk Overseer Kah-Delen##167425
turnin Audience with the Arbiter##60149 |goto Oribos/0 39.90,66.46
accept Tether to Home##60150 |goto Oribos/0 39.90,66.46
step
click Shadowlands Map
Affix the Helm of Domination |q 60150/1 |goto Oribos/0 39.83,68.70
step
Watch the dialogue
See if it Works |q 60150/2 |goto Oribos/0 39.83,68.70
step
talk Highlord Bolvar Fordragon##164079
turnin Tether to Home##60150 |goto Oribos/0 40.27,64.73
accept A Doorway Through the Veil##60151 |goto Oribos/0 40.27,64.73
step
talk Ebon Blade Acolyte##172378
Select _"Let's head outside."_ |gossip 52737
Speak to the Acolyte |q 60151/1 |goto Oribos/0 40.01,63.90
step
Watch the dialogue
|tip Follow the {o}Ebon Blade Acolyte{} as he walks.
|tip He eventually walks to this location.
Head to the Landing |q 60151/2 |goto Oribos/0 21.83,50.50
step
talk Ebon Blade Acolyte##167682
Select _"Summon the portals here."_ |gossip 53475
Watch the dialogue
Establish Portals Back to Azeroth |q 60151/3 |goto Oribos/0 21.83,50.50
step
Return to the Overseers |q 60151/4 |goto Oribos/0 40.34,66.63
step
talk Overseer Kah-Sher##167424
turnin A Doorway Through the Veil##60151 |goto Oribos/0 40.34,66.63
accept The Eternal City##60152 |goto Oribos/0 40.34,66.63
step
talk Foreman Au'brak##167738
Select _"What is available here?"_ |gossip 54345
Visit the Hall of Shapes |q 60152/3 |goto Oribos/0 40.31,32.65
step
talk Caretaker Kah-Rahm##174564
Select _"What is this Hall of Holding?"_ |gossip 53876
Visit the Hall of Holding |q 60152/4 |goto Oribos/0 60.53,31.28
step
talk Host Ta'rela##156688
Select _"Thank you for the kind welcome to your Inn."_ |gossip 51494
Visit the Innkeeper |q 60152/5 |goto Oribos/0 67.46,50.33
step
talk Fatescribe Roh-Tahl##164173
Select _"What is this place?"_ |gossip 51612
Speak to the Fatescribe |q 60152/2 |goto Oribos/0 79.00,49.13
step
Follow the path |goto Oribos/0 63.59,50.29 < 10 |walk
talk Overseer Ta'readon##156768
Select _"What is this bazaar?"_ |gossip 54343
Visit the Hall of Curiosities |q 60152/1 |goto Oribos/0 64.38,68.33
step
talk Fatescribe Roh-Tahl##164173
turnin The Call of Fate##62801 |goto Oribos/0 79.00,49.13
|only if haveq(62801) or completedq(62801)
step
talk Fatescribe Roh-Tahl##164173
turnin Fate's Reminder##63771 |goto Oribos/0 79.00,49.13
|only if haveq(63771) or completedq(63771)
step
Return to the Enclave |q 60152/6 |goto Oribos/0 39.88,66.41
step
talk Overseer Kah-Delen##167425
turnin The Eternal City##60152 |goto Oribos/0 39.88,66.41
step
talk Highlord Bolvar Fordragon##164079
accept Understanding the Shadowlands##60154 |goto Oribos/0 40.27,64.74
step
talk Tal-Inara##167486
Select _"Can you help us find answers?"_ |gossip 53752
Watch the dialogue
Speak to Tal-Inara |q 60154/1 |goto Oribos/0 40.84,65.85
step
Watch the dialogue
Listen to Tal-Inara |q 60154/2 |goto Oribos/0 40.84,65.85
step
talk Overseer Kah-Sher##167424
Select _"I will go with you."_ |gossip 54348
Speak to Kah-Sher |q 60154/3 |goto Oribos/0 40.31,66.63
step
Watch the dialogue
|tip Follow {o}Overseer Kah-Sher{} as he walks.
|tip He eventually walks to this location.
Follow Kah-Sher |q 60154/4 |goto Oribos/0 52.06,57.87
step
click To Ring of Transference
Take the Transport Pad to the Ring of Transference |q 60154/5 |goto Oribos/0 52.06,57.87
step
talk Overseer Kah-Sher##167424
turnin Understanding the Shadowlands##60154 |goto Oribos/1 50.48,62.52
accept The Path to Bastion##60156 |goto Oribos/1 50.48,62.52
step
Watch the dialogue
|tip Follow {o}Overseer Kah-Sher{} as he walks.
|tip He eventually walks to this location.
Follow Kah-Sher to the Gate |q 60156/1 |goto Oribos/1 64.48,53.52
step
click Ancient Focus
Activate the Gateway to Bastion |q 60156/2 |goto Oribos/1 63.89,51.60
step
talk Overseer Kah-Sher##172416
turnin The Path to Bastion##60156 |goto Oribos/1 64.48,53.52
step
talk Pathscribe Roh-Avonavi##175133
accept Seek the Ascended##59773 |goto Oribos/1 64.17,49.55
step
talk Pathscribe Roh-Avonavi##175133
Select _"I am ready. Send me to Bastion."_
Speak to Roh-Avonavi to Travel to Bastion |q 59773/1 |goto Oribos/1 64.17,49.55
step
Travel to Bastion |goto Bastion/0 36.97,76.23 < 10 |c |q 59773 |notravel
step
talk Kleia##166227
turnin Seek the Ascended##59773 |goto Bastion/0 37.52,76.45
step
clicknpc Dark Iron Mole Machine##218955
Unlock The Eternal Forge Mole Machine |q 80105 |goto Bastion/0 51.75,13.12 |future
step
clicknpc Dark Iron Mole Machine##218956
Unlock the Soryn's Meadow Mole Machine |q 80106 |goto Ardenweald/0 66.46,50.57 |future
step
clicknpc Dark Iron Mole Machine##218954
Unlock the Scorched Crypt Mole Machine |q 80104 |goto Revendreth/0 19.91,38.78 |future
step
clicknpc Dark Iron Mole Machine##218953
Unlock the Valley of a Thousand Legs Mole Machine |q 80103 |goto Maldraxxus/0 53.51,59.78 |future
step
clicknpc Dark Iron Mole Machine##218957
Unlock The Slagmire Mole Machine |q 80107 |goto The Waking Shores/0 32.36,54.88 |future
step
clicknpc Dark Iron Mole Machine##218958
Unlock the Vakthros Summit Mole Machine |q 80108 |goto The Azure Span/0 80.09,38.97 |future
step
clicknpc Dark Iron Mole Machine##218959
Unlock the Obsidian Rest Mole Machine |q 80109 |goto Zaralek Cavern/0 52.71,27.67 |future
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Kul Tiran Race Unlock",{
description="This guide will walk you through unlocking the Kul Tiran allied race.",
condition_suggested=function() return (achieved(13467) and achieved(12891)) and not achieved(13163) end,
condition_end=function() return achieved(13163) end,
patch='80105',
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept The Call for Allies##49929 |goto Stormwind City/0 Stormwind City/0 52.05,13.40
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin The Call for Allies##49929 |goto Stormwind City/0 52.05,13.40
accept A Choice of Allies##50239 |goto Stormwind City/0 Stormwind City/0 52.05,13.40
step
click Dark Iron Dwarf
|tip Inside the building.
Learn About the Dark Iron Dwarves |q 50239/3 |goto Stormwind City/0 51.78,13.91
step
click Lightforged Draenei
|tip Inside the building.
Learn About the Lightforged Draenei |q 50239/1 |goto Stormwind City/0 51.90,13.73
step
click Mechagnome
|tip Inside the building.
Learn About the Mechagnomes |q 50239/5 |goto Stormwind City/0 51.66,13.50
step
click Void Elf
|tip Inside the building.
Learn About the Void Elves |q 50239/2 |goto Stormwind City/0 52.22,13.20
step
click Kul Tiran
|tip Inside the building.
Learn About the Kul Tirans |q 50239/4 |goto Stormwind City/0 52.34,13.04
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin A Choice of Allies##50239 |goto Stormwind City/0 52.05,13.40
accept Made in Kul Tiras##54706 |goto Stormwind City/0 52.05,13.40
step
talk Cyrus Crestfall##122370
|tip Inside the building.
Select _"I am told you know where to find the shipwright, Dorian Atwater?"_ |gossip 48243
Speak to Cyrus |q 54706/2 |goto Boralus/0 67.99,21.91
step
Watch the dialogue
|tip Inside the building.
talk Cyrus Crestfall##122370
turnin Made in Kul Tiras##54706 |goto Boralus/0 68.00,21.91
accept The Master Shipwright##55039 |goto Boralus/0 68.00,21.91
step
talk Lady Jaina Proudmoore##148798
|tip Inside the building.
Select _"<Take the letter.>"_ |gossip 50746
collect Letter from the Lord Admiral##166462 |q 55039/1 |goto Boralus/0 67.95,22.21
step
talk Cyrus Crestfall##150515
turnin The Master Shipwright##55039 |goto Stormsong Valley/0 59.39,70.27
accept Fish Tales and Distant Sails##55043 |goto Stormsong Valley/0 59.39,70.27
step
talk Talkative Brennadam Citizen##150522+
|tip You may need to talk to many of them.
Select _"Do you know where I can find Dorian Atwater?"_ |gossip 50031
Learn Dorian's Location |q 55043/1 |goto Stormsong Valley/0 58.78,69.26
step
talk Cyrus Crestfall##150515
|tip Inside the building.
turnin Fish Tales and Distant Sails##55043 |goto Stormsong Valley/0 58.67,70.36
accept Home, Home On the Range##54708 |goto Stormsong Valley/0 58.67,70.36
step
Find the Homestead |q 54708/1 |goto Stormsong Valley/0 49.94,50.03
step
talk Old Atwater##148872
Select _"Are you Dorian Atwater?"_ |gossip 51048
Meet the Shipwright |q 54708/2 |goto Stormsong Valley/0 49.94,50.03
step
Meet the Actual Shipwright |q 54708/3 |goto Stormsong Valley/0 50.23,49.87
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Dorian Atwater##148870
turnin Home, Home On the Range##54708 |goto Stormsong Valley/0 50.23,49.87
accept I'm Too Old for This Ship##54721 |goto Stormsong Valley/0 50.23,49.87
step
clicknpc Hurricane##150581
|tip {o}Keep trying{} until the goal completes.
Saddle Hurricane |q 54721/1 |goto Stormsong Valley/0 50.37,50.46
step
talk Dorian Atwater##148870
turnin I'm Too Old for This Ship##54721 |goto Stormsong Valley/0 66.12,47.36
accept Covering Our Masts##54723 |goto Stormsong Valley/0 66.12,47.36
accept The Deep Ones##54725 |goto Stormsong Valley/0 66.12,47.36
stickystart "Slay_Drowned_Forces"
step
click Fog Ward
Southern Fog Ward |q 54723/1 |goto Stormsong Valley/0 66.91,44.68
step
click Fog Ward
Place the Western Fog Ward |q 54723/2 |goto Stormsong Valley/0 65.94,43.50
step
click Fog Ward
Place the Northern Fog Ward |q 54723/3 |goto Stormsong Valley/0 67.95,41.97
step
label "Slay_Drowned_Forces"
kill Drowned Harbinger##148912, Grasp of the Deep##148916, Drowned Convert##148911, Umbral Hulk##148913
Slay #12# Drowned Forces |q 54725/1 |goto Stormsong Valley/0 66.90,43.07
step
talk Dorian Atwater##148870
turnin Covering Our Masts##54723 |goto Stormsong Valley/0 66.12,47.36
turnin The Deep Ones##54725 |goto Stormsong Valley/0 66.12,47.36
accept Frame Work##54726 |goto Stormsong Valley/0 66.12,47.36
step
Watch the dialogue
|tip Inside the building.
talk Dorian Atwater##148870
turnin Frame Work##54726 |goto Tiragarde Sound/0 68.95,20.55
accept Team Carry##54727 |goto Tiragarde Sound/0 68.95,20.55
step
click Heavy Lumber+
|tip They look like {o}large piles of logs{}.
|tip Use the abilities that appear on your action bar.
Collect #4# Heavy Lumber |q 54727/1 |goto Tiragarde Sound/0 67.69,17.52
step
Watch the dialogue
|tip Follow {o}Dorian{} as she walks.
|tip Use the abilities on your action bar.
|tip She eventually walks to this location.
Follow Dorian to the Drop Point |q 54727/2 |goto Tiragarde Sound/0 67.10,12.33
'|clicknpc Dorian Atwater##149036
step
Watch the dialogue
talk Dorian Atwater##148870
turnin Team Carry##54727 |goto Tiragarde Sound/0 67.10,12.33
accept This Lumber is Haunted##54728 |goto Tiragarde Sound/0 67.10,12.33
accept The Bleak Hills##54729 |goto Tiragarde Sound/0 67.10,12.33
step
Seek out Thornspeaker Birchgrove in Gol Koval |q 54728/1 |goto Tiragarde Sound/0 67.11,12.34
step
talk Thornspeaker Birchgrove##139926
turnin This Lumber is Haunted##54728 |goto Drustvar/0 61.88,59.33
accept Gorak Tul's Influence##54730 |goto Drustvar/0 61.88,59.33
step
kill Vengeful Bones##128703, Awoken Guardian##126355, Ancient Sentinel##126542
click Empowered Major Cairn+
|tip They look like {o}larger stone slabs{} standing upright.
click Empowered Minor Cairn+
|tip They look like {o}smaller stone slabs{} standing upright.
Fill the Drust Vessel |q 54730/1 |goto Drustvar/0 61.26,66.10
step
talk Thornspeaker Birchgrove##139926
turnin Gorak Tul's Influence##54730 |goto Drustvar/0 61.88,59.33
accept Balance in All Things##54731 |goto Drustvar/0 61.88,59.33
step
talk Arthur Tradewind##149293
Select _"Can you take me to the High Thornspeaker?"_ |gossip 50185
clicknpc Arthur Tradewind##149294
Ride with Ulfar |invehicle |goto Drustvar/0 61.85,59.37 |q 54731
step
Watch the dialogue
Travel to Ulfar's Den |outvehicle |goto Drustvar/0 46.27,44.96 |q 54731 |notravel
step
talk Ulfar##141159
|tip Inside the cave.
Select _"Tell me how I can help."_ |gossip 49067
Watch the dialogue
Speak to Ulfar |q 54731/1 |goto Drustvar/0 45.20,45.84
step
click Ancient Seedling
|tip Inside the cave.
Begin the Ritual |q 54731/2 |goto Drustvar/0 44.97,45.83
step
Restore Balance |q 54731/3 |goto Drustvar/0 44.97,45.83
|tip Run over the {o}green orbs{} that appear on the ground.
|tip {o}Avoid{} the {o}blue orbs{}.
|tip Inside the cave.
step
Watch the dialogue
|tip Inside the cave.
talk Ulfar##141159
turnin Balance in All Things##54731 |goto Drustvar/0 45.21,45.84
step
Find Chelsea Wright |q 54729/1 |goto Drustvar/0 33.16,30.38
step
Watch the dialogue
talk Chelsea Wright##150884
turnin The Bleak Hills##54729 |goto Drustvar/0 33.17,30.37
accept Drop It!##54732 |goto Drustvar/0 33.17,30.37
step
Enter the cave |goto Drustvar/0 36.32,29.25 < 15 |walk
Watch the dialogue
|tip Follow the {o}Wicker Beast{} as it walks.
|tip It eventually leads you into a cave.
click Storeroom Keys##322620
|tip Inside the cave.
collect Storehouse Key##167168 |q 54732/1 |goto Drustvar/0 36.60,28.88
'|clicknpc Wicker Beast##150891
step
talk Wicker Beast##150885
|tip Inside the cave.
turnin Drop It!##54732 |goto Drustvar/0 36.62,28.84
accept Her Dog Days Are Over##55136 |goto Drustvar/0 36.62,28.84
step
click Gnawed Bone##322638
collect Gnawed Bone##167174 |q 55136/3 |goto Drustvar/0 35.31,28.91
step
click Worn Collar##322636
collect Worn Collar##167172 |q 55136/1 |goto Drustvar/0 36.01,30.95
step
click Squeaky Toy##322637
|tip Inside the building.
collect Squeaky Toy##167173 |q 55136/2 |goto Drustvar/0 34.60,30.55
step
talk Chelsea Wright##150884
turnin Her Dog Days Are Over##55136 |goto Drustvar/0 33.17,30.37
accept Make it Wright##54733 |goto Drustvar/0 33.17,30.37
step
click Storage Crate
turnin Make it Wright##54733 |goto Drustvar/0 33.11,30.30
step
talk Bound Sky##149252
|tip It moves to this location.
accept Summons from Dorian##54734 |goto Drustvar/0 33.04,30.39
step
talk Dorian Atwater##148870
turnin Summons from Dorian##54734 |goto Stormsong Valley/0 66.51,44.24
step
talk Lady Jaina Proudmoore##148798
accept A Worthy Crew##54735 |goto Stormsong Valley/0 66.50,44.29
step
talk Tandred Proudmoore##149474
Select _"Jaina sent me to speak with you."_ |gossip 50526
Speak to Tandred Proudmoore |q 54735/1 |goto Boralus/0 42.99,56.31
step
talk Brother Pike##149481
Select _"Tandred Proudmoore is putting together a crew. He needs a tidesage. Are you interested?"_ |gossip 50940
Recruit Brother Pike |q 54735/2 |goto Boralus/0 75.97,22.98
step
talk Lieutenant Tarenfold##151040
Select _"Tandred Proudmoore is putting together a crew. He needs a master gunner. Are you interested?"_ |gossip 50527
Recruit Lieutenant Tarenfold |q 54735/3 |goto Tiragarde Sound/0 56.68,61.18
step
talk Rosaline Madison##149486
Select _"Tandred Proudmoore is putting together a crew. He needs a first mate. Are you interested?"_ |gossip 50528
Watch the dialogue
Recruit the Outriggers |q 54735/4 |goto Tiragarde Sound/0 35.26,24.15
step
talk Dorian Atwater##148870
Select _"Well, you heard the man."_ |gossip 50529
Watch the dialogue
Recruit Boatswain |q 54735/5 |goto Stormsong Valley/0 67.63,44.89
step
talk Lady Jaina Proudmoore##148798
turnin A Worthy Crew##54735 |goto Stormsong Valley/0 67.62,44.67
accept Blessing of the Tides##54851 |goto Stormsong Valley/0 67.62,44.67
step
Watch the dialogue
talk Lady Jaina Proudmoore##148798
Select _"Anduin's Wrath"_ |gossip 50742
Name the Vessel |q 54851/1 |goto Stormsong Valley/0 67.62,44.67
step
click Rowboat
Bless the Vessel |q 54851/2 |goto Stormsong Valley/0 68.14,45.68
step
talk Lady Jaina Proudmoore##148798
turnin Blessing of the Tides##54851 |goto Stormsong Valley/0 71.13,44.02
accept Allegiance of Kul Tiras##53720 |goto Stormsong Valley/0 71.13,44.02
step
click Captain's Helm
Sail to Stormwind Harbor |q 53720/1 |goto Stormsong Valley/0 71.17,44.02
step
talk Anduin Wrynn##149518
turnin Allegiance of Kul Tiras##53720 |goto Stormwind City/0 22.53,18.39
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Lightforged Draenei Race Unlock",{
description="This guide will walk you through unlocking the Lightforged Draenei allied race.",
condition_suggested=function() return achieved(12066) and not achieved(12243) end,
condition_end=function() return achieved(12243) end,
patch='70305',
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept The Call for Allies##49929 |goto Stormwind City/0 Stormwind City/0 52.05,13.40
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin The Call for Allies##49929 |goto Stormwind City/0 52.05,13.40
accept A Choice of Allies##50239 |goto Stormwind City/0 Stormwind City/0 52.05,13.40
step
click Dark Iron Dwarf
|tip Inside the building.
Learn About the Dark Iron Dwarves |q 50239/3 |goto Stormwind City/0 51.78,13.91
step
click Lightforged Draenei
|tip Inside the building.
Learn About the Lightforged Draenei |q 50239/1 |goto Stormwind City/0 51.90,13.73
step
click Mechagnome
|tip Inside the building.
Learn About the Mechagnomes |q 50239/5 |goto Stormwind City/0 51.66,13.50
step
click Void Elf
|tip Inside the building.
Learn About the Void Elves |q 50239/2 |goto Stormwind City/0 52.22,13.20
step
click Kul Tiran
|tip Inside the building.
Learn About the Kul Tirans |q 50239/4 |goto Stormwind City/0 52.34,13.04
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin A Choice of Allies##50239 |goto Stormwind City/0 52.05,13.40
accept The Lightforged##49698 |goto Stormwind City/0 52.05,13.40
step
clicknpc Lightforged Beacon##130758
Board the Vindicaar |complete subzone("The Vindicaar") |goto Stormwind City/0 48.05,11.06 |q 49698
step
talk Captain Fareeya##130549
turnin The Lightforged##49698 |goto Vindicaar Scenario/1 43.83,27.05
accept Forge of Aeons##49266 |goto Vindicaar Scenario/1 43.83,27.05
step
clicknpc Lightforged Beacon##130511
Begin the Forge of Aeons Scenario |complete subzone("Forge of Aeons") |goto Vindicaar Scenario/1 49.90,46.22 |q 49266
step
Meet with T'paartos |scenariogoal Meet with T'paartos##1/37571 |goto Draenei Scenario/0 88.01,44.45 |q 49266
step
Follow T'paartos |scenariogoal Follow T'paartos##2/37710 |goto Draenei Scenario/0 88.76,28.34 |q 49266
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
See the Past |scenariogoal See the past##3/37711 |goto Draenei Scenario/0 88.76,28.34 |q 49266
step
Enter the Swamp |scenariogoal Swamp entered##4/37712 |goto Draenei Scenario/0 83.67,32.38 |q 49266
step
Watch the dialogue
Find the Child |scenariogoal Child found##5/37718 |goto Draenei Scenario/0 66.79,29.70 |q 49266
step
kill Swamp Serpent##128115 |scenariogoal Swamp Serpent slain##6/37717 |goto Draenei Scenario/0 66.79,29.70 |q 49266
step
Find the Refuge |scenariogoal Refuge found##7/37931 |goto Draenei Scenario/0 57.10,23.78 |q 49266
step
clicknpc Crystal##128036
|tip Inside the underground cave.
|tip You will be attacked.
Collect the Crystal |scenariogoal Crystal collected##8/37932 |goto Draenei Scenario/0 47.01,27.36 |q 49266
step
kill Crystal Fury##128038 |scenariogoal Crystal Fury slain##9/37968 |goto Draenei Scenario/0 47.55,27.88 |q 49266
|tip Inside the underground cave.
step
kill Doubt##128120, Fear##128713
Conquer #7# Doubts and Fears |scenariogoal Doubts and Fears conquered##10/37933 |goto Draenei Scenario/0 39.41,36.12 |q 49266
step
Find the Cave |scenariogoal Cave found##11/38069 |goto Draenei Scenario/0 16.63,46.71 |q 49266
step
kill Terror##128427
|tip Inside the underground cave.
Defeat Terror |scenariogoal Terror defeated##12/38070 |goto Draenei Scenario/0 8.61,50.26 |q 49266
step
Follow T'paartos |scenariogoal Follow T'paartos##13/38071 |goto Draenei Scenario/0 45.67,59.90 |q 49266
|tip Follow {o}T'paartos{} as he walks.
|tip He eventually walks to this location.
'|clicknpc T'paartos##127827
step
clicknpc T'paartos##128424
Free T'paartos |scenariogoal T'paartos freed##14/38072 |goto Draenei Scenario/0 46.80,65.95 |q 49266
step
Follow T'paartos |scenariogoal Follow T'paartos##15/38103 |goto Draenei Scenario/0 66.64,77.57 |q 49266
|tip Follow {o}T'paartos{} as he walks.
|tip He eventually walks to this location.
'|clicknpc T'paartos##127827
step
clicknpc T'paartos##128550
|tip Follow {o}T'paartos{} as he walks down the spiral path.
|tip Inside the underground cave.
Free Kind |scenariogoal Kind##16/38082 |goto Draenei Scenario/0 68.44,77.13 |q 49266
'|clicknpc T'paartos##127827
step
clicknpc T'paartos##128561
|tip Follow {o}T'paartos{} as he walks.
|tip Inside the underground cave.
Free Brave |scenariogoal Brave##16/38084 |goto Draenei Scenario/0 65.72,73.60 |q 49266
'|clicknpc T'paartos##127827
step
clicknpc T'paartos##128560
|tip Follow {o}T'paartos{} as he walks.
|tip Inside the underground cave.
Free Strong |scenariogoal Strong##16/38083 |goto Draenei Scenario/0 72.31,86.51 |q 49266
'|clicknpc T'paartos##127827
step
clicknpc T'paartos##128562
|tip Follow {o}T'paartos{} as he walks.
|tip Inside the underground cave.
Free Boastful |scenariogoal Boastful##16/38085 |goto Draenei Scenario/0 69.63,68.26 |q 49266
'|clicknpc T'paartos##127827
step
clicknpc T'paartos##128563
|tip Follow {o}T'paartos{} as he walks.
|tip Inside the underground cave.
Free Frightened |scenariogoal Frightened##16/38086 |goto Draenei Scenario/0 63.02,74.48 |q 49266
'|clicknpc T'paartos##127827
step
clicknpc T'paartos##128566
|tip Follow {o}T'paartos{} as he walks.
|tip Inside the underground cave.
Free Inadequate |scenariogoal Inadequate##16/38087 |goto Draenei Scenario/0 69.57,77.86 |q 49266
'|clicknpc T'paartos##127827
step
kill T'paartos the Fallen##127924
|tip Follow {o}T'paartos{} as he walks.
|tip Inside the underground cave.
Watch the dialogue
Help T'paartos |scenariogoal Help T'paartos##17/38088 |goto Draenei Scenario/0 73.72,94.30 |q 49266
'|clicknpc T'paartos##127827
step
clicknpc Lightforged Beacon##127964
|tip Inside the underground cave.
Leave the Forge of Aeons |complete subzone("The Vindicaar") |goto Draenei Scenario/0 71.67,95.43 |q 49266
step
talk Captain Fareeya##130549
turnin Forge of Aeons##49266 |goto Vindicaar Scenario/1 48.41,39.51
step
talk High Exarch Turalyon##130810
accept For the Light!##50071 |goto Vindicaar Scenario/1 47.53,40.22
step
click Portal to Stormwind
|tip Downstairs inside the building.
Return to Stormwind |complete zone("Stormwind City") |goto Vindicaar Scenario/2 43.29,24.97 |q 50071
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin For the Light!##50071 |goto Stormwind City/0 52.07,13.41
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Mechagnome Race Unlock",{
description="This guide will walk you through unlocking the Mechagnome allied race.",
condition_suggested=function() return achieved(13553) and not achieved(14013) end,
condition_end=function() return achieved(14013) end,
patch='80300',
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept The Call for Allies##49929 |goto Stormwind City/0 Stormwind City/0 52.05,13.40
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin The Call for Allies##49929 |goto Stormwind City/0 52.05,13.40
accept A Choice of Allies##50239 |goto Stormwind City/0 Stormwind City/0 52.05,13.40
step
click Dark Iron Dwarf
|tip Inside the building.
Learn About the Dark Iron Dwarves |q 50239/3 |goto Stormwind City/0 51.78,13.91
step
click Lightforged Draenei
|tip Inside the building.
Learn About the Lightforged Draenei |q 50239/1 |goto Stormwind City/0 51.90,13.73
step
click Mechagnome
|tip Inside the building.
Learn About the Mechagnomes |q 50239/5 |goto Stormwind City/0 51.66,13.50
step
click Void Elf
|tip Inside the building.
Learn About the Void Elves |q 50239/2 |goto Stormwind City/0 52.22,13.20
step
click Kul Tiran
|tip Inside the building.
Learn About the Kul Tirans |q 50239/4 |goto Stormwind City/0 52.34,13.04
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin A Choice of Allies##50239 |goto Stormwind City/0 52.05,13.40
accept Urgent Care##58214 |goto Stormwind City/0 52.05,13.40
step
talk Kelsey Steelspark##160101
turnin Urgent Care##58214 |goto Boralus/0 73.13,16.92
accept Waning Energy##57486 |goto Boralus/0 73.13,16.92
step
talk Kelsey Steelspark##157997
turnin Waning Energy##57486 |goto Boralus/0 36.90,62.55
accept Someone Who Can Help##57487 |goto Boralus/0 36.90,62.55
step
clicknpc Homing Copter##158230
Acquire the Homing Copter |q 57487/1 |goto Boralus/0 49.49,40.17
step
clicknpc Mekkatorque's Escape Pod##160046
Watch the dialogue
Send the Escape Pod to Mechagon |q 57487/2 |goto Boralus/0 36.74,62.62
step
clicknpc Homing Copter##204917
|tip It flies to this location.
Ride the Homing Copter to Mechagon |q 57487/3 |goto Boralus/0 36.84,63.47
step
Begin Riding the Homing Copter to Mechagon |invehicle |q 57487
step
Ride the Homing Copter to Mechagon |outvehicle |goto Mechagon Island/0 73.78,35.63 |q 57487
step
Meet Prince Erazmin |q 57487/4 |goto Mechagon Island/0 74.11,36.99 |notravel
step
talk Prince Erazmin##149816
turnin Someone Who Can Help##57487 |goto Mechagon Island/0 74.11,36.99
step
talk Waren Gearhart##150555
accept The Current Schematic##57488 |goto Mechagon Island/0 73.12,33.36
step
kill Malfunctioning Scraphound##151301, Malfunctioning Scrapbot##151640
collect 6 Acquisitioned Machine Part##172521 |q 57488/2 |goto Mechagon Island/0 72.64,45.52
step
kill Congealed Oil##150698, Slime Elemental##151792
collect 4 Heat Tolerant Ooze##172522 |q 57488/1 |goto Mechagon Island/0 74.01,61.04
step
talk Waren Gearhart##150555
turnin The Current Schematic##57488 |goto Mechagon Island/0 73.12,33.36
step
talk Prince Erazmin##158145
accept Voyage to Safety##57490 |goto Mechagon Island/0 73.04,33.43
step
Watch the dialogue
Activate the Piston and Crew |q 57490/1 |goto Mechagon Island/0 63.13,37.64
step
kill Rust-Eye the Clever##158851 |q 57490/2 |goto Mechagon Island/0 86.95,73.84
step
Retrieve the Pod |q 57490/3 |goto Mechagon Island/0 86.95,73.84
step
Watch the dialogue
Deliver the Pod |q 57490/4 |goto Mechagon Island/0 73.55,32.11
step
talk Waren Gearhart##150555
turnin Voyage to Safety##57490 |goto Mechagon Island/0 73.13,33.35
step
talk Christy Punchcog##160232
accept Better... Stronger... Less Dead##57491 |goto Mechagon Island/0 73.19,33.47
step
kill Insurgent Cycloid##159271
|tip It walks around this area.
collect Omni Electromagnetic Amplifier##173026 |q 57491/2 |goto Mechagon Island/0 54.30,27.52
step
kill Insurgent Crawler##159262
|tip It walks around this area.
collect Flux Energized Servos##173028 |q 57491/3 |goto Mechagon Island/0 54.30,52.36
step
kill HK-3 Aerial Dissuasion Unit##159261
|tip It flies around this area.
collect Neural Accelerator##172511 |q 57491/1 |goto Mechagon Island/0 34.97,59.87
step
talk Christy Punchcog##160232
turnin Better... Stronger... Less Dead##57491 |goto Mechagon Island/0 73.51,31.88
step
talk Prince Erazmin##158145
accept Him?##57492 |goto Mechagon Island/0 73.04,33.43
step
talk Pegi Cogster##159558
Select _"What do you want in a leader?"_ |gossip 49517
Speak with Pegi Cogster |q 57492/3 |goto Mechagon Island/0 74.30,34.82
step
talk Flouresce Brightgear##159571
Select _"What do you want in a leader?"_ |gossip 49519
Speak with Flouresce Brightgear |q 57492/5 |goto Mechagon Island/0 75.43,36.02
step
talk Quimby Sparklighter##159570
Select _"What makes a good leader?"_ |gossip 49518
Speak with Quimby Sparklighter |q 57492/4 |goto Mechagon Island/0 72.09,38.64
step
talk Idee Quickcoil##159567
Select _"What makes a good leader?"_ |gossip 49516
Speak with Idee Quickcoil |q 57492/2 |goto Mechagon Island/0 71.29,34.28
step
talk Stuard Sharpsprocket##159545
Select _"Why do you appreciate Gelbin Mekkatorque?"_ |gossip 49520
Speak with Stuard Sharpsprocket |q 57492/6 |goto Mechagon Island/0 69.93,32.06
step
talk Elya Codepunch##159559
Select _"What do you want in a leader?"_ |gossip 49586
Speak with Elya Codepunch |q 57492/1 |goto Mechagon Island/0 70.46,30.94
step
talk Prince Erazmin##158145
turnin Him?##57492 |goto Mechagon Island/0 73.04,33.43
step
talk Christy Punchcog##160232
accept Mental Attunement##57493 |goto Mechagon Island/0 73.51,31.89
step
click Synchroscope##159574
Initiate the Synchronization |q 57493/1 |goto Mechagon Island/0 73.59,32.87
step
Watch the dialogue
Complete the Synchronization |q 57493/2 |goto Mechagon Island/0 73.55,32.09
step
clicknpc Mekkatorque's Escape Pod##158100
Open the Escape Pod |q 57493/3 |goto Mechagon Island/0 73.55,32.09
step
talk Christy Punchcog##160232
turnin Mental Attunement##57493 |goto Mechagon Island/0 73.51,31.89
accept A Strong Heart##57494 |goto Mechagon Island/0 73.51,31.89
step
Find Kelsey |q 57494/1 |goto Mechagon Island/0 59.54,55.83
step
kill Insurgent Coilbearer##159751 |q 57494/2 |goto Mechagon Island/0 59.50,55.88
step
Watch the dialogue
Retrieve the Unit |q 57494/3 |goto Mechagon Island/0 59.50,55.88
step
click Spark Reactor##159785
Deliver the Spark Reactor |q 57494/4 |goto Mechagon Island/0 73.59,32.15
step
Watch the dialogue
Calibrate the Circuit |q 57494/5 |goto Mechagon Island/0 73.59,32.15
step
click Genny##159573
Activate the Generator |q 57494/6 |goto Mechagon Island/0 73.72,31.84
step
Defibrillate Mekkatorque |q 57494/7 |goto Mechagon Island/0 73.54,32.11
|tip Use the {o}Resuscitation{} ability.
|tip It appears as a button on the screen.
step
talk Prince Erazmin##158145
turnin A Strong Heart##57494 |goto Mechagon Island/0 73.03,33.43
step
talk Gelbin Mekkatorque##159587
|tip He walks to this location.
accept Ascension##57496 |goto Mechagon Island/0 73.07,33.58
step
Take the Teleporter to Mechagon City |q 57496/1 |goto Mechagon Island/0 72.35,31.27
|tip Step onto the grate.
step
Teleport to Mechagon City |complete zone("Mechagon City") |q 57496
step
kill Blastatron X-81##160087 |q 57496/2 |goto Mechagon City/1 65.46,48.18
|tip {o}Avoid{} the {o}blue areas{} on the ground.
step
talk Gelbin Mekkatorque##162806
turnin Ascension##57496 |goto Mechagon City/1 58.14,41.20
accept The Future of Mechagon##57495 |goto Mechagon City/1 58.14,41.20
step
Teleport to the High Tinkertory |q 57495/1 |goto Mechagon City/1 47.91,31.46
|tip Step onto the grate.
step
Witness the Speech |q 57495/2 |goto Mechagon City/1 19.99,66.06
|tip Inside the building.
step
talk Gelbin Mekkatorque##159587
|tip Inside the building.
turnin The Future of Mechagon##57495 |goto Mechagon City/1 18.70,67.41
step
talk Kelsey Steelspark##157997
|tip Inside the building.
accept Propagate the News##57497 |goto Mechagon City/1 17.80,65.60
step
Teleport to Stormwind |q 57497/1 |goto Mechagon City/1 20.42,59.84
|tip Step onto the grate.
|tip Inside the building.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin Propagate the News##57497 |goto Stormwind City/0 52.06,13.41
]])
QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Void Elf Race Unlock",{
description="This guide will walk you through unlocking the Void Elf allied race.",
condition_suggested=function() return achieved(12066) and not achieved(12242) end,
condition_end=function() return achieved(12242) end,
patch='70305',
},[[
step
Reach Level 40 |ding 40
|tip You must be level 40 to start allied race quests.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept The Call for Allies##49929 |goto Stormwind City/0 52.05,13.40
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin The Call for Allies##49929 |goto Stormwind City/0 52.05,13.40
accept A Choice of Allies##50239 |goto Stormwind City/0 52.05,13.40
step
click Dark Iron Dwarf
|tip Inside the building.
Learn About the Dark Iron Dwarves |q 50239/3 |goto Stormwind City/0 51.78,13.91
step
click Lightforged Draenei
|tip Inside the building.
Learn About the Lightforged Draenei |q 50239/1 |goto Stormwind City/0 51.90,13.73
step
click Mechagnome
|tip Inside the building.
Learn About the Mechagnomes |q 50239/5 |goto Stormwind City/0 51.66,13.50
step
click Void Elf
|tip Inside the building.
Learn About the Void Elves |q 50239/2 |goto Stormwind City/0 52.22,13.20
step
click Kul Tiran
|tip Inside the building.
Learn About the Kul Tirans |q 50239/4 |goto Stormwind City/0 52.34,13.04
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin A Choice of Allies##50239 |goto Stormwind City/0 52.05,13.40
accept The Ghostlands##49787 |goto Stormwind City/0 52.05,13.40
step
click Rift to Ghostlands
|tip Inside the building.
Travel to the Ghostlands |q 49787/1 |goto Stormwind City/0 52.39,13.29
step
click Umbric's Notes - Sanctum of the Moon
|tip Inside the building.
Locate Umbric's Notes - Sanctum of the Moon |q 49787/2 |goto Ghostlands/0 33.63,34.46
step
click Umbric's Notes - Andilien Estate
|tip Inside the building.
Locate Umbric's Notes - Andilien Estate |q 49787/3 |goto Ghostlands/0 46.87,54.97
step
click Teleportation Console
|tip Up on the balcony of the building.
Teleport to the Dawnstar Spire |complete subzone("Dawnstar Spire") |goto Ghostlands/0 79.65,17.51 |q 49787
step
click Umbric's Notes - Dawnstar Spire
|tip At the top of the building.
Locate Umbric's Notes - Dawnstar Spire |q 49787/4 |goto Ghostlands/0 79.64,19.68
step
talk Alleria Windrunner##126321
|tip At the top of the building.
turnin The Ghostlands##49787 |goto Ghostlands/0 79.69,19.62
accept Telogrus Rift##48962 |goto Ghostlands/0 79.69,19.62
step
click Rift to Telogrus
|tip At the top of the building.
Enter the Rift to Telogrus |complete subzone("Telogrus Rift") |goto Ghostlands/0 79.64,19.86 |q 48962
step
talk Magister Umbric##126646
Select _"What is this place?"_ |gossip 47941
Speak with Umbric |scenariogoal Speak with Umbric##1/37328 |goto Void Elf Scenario/0 47.83,73.88 |q 48962
step
Watch the dialogue
|tip Follow {o}Magister Umbric{} and {o}Alleria Windrunner{} as they walk.
|tip They eventually walk to this location.
Walk with Umbric and Alleria |scenariogoal Walk with Umbric and Alleria.##2/37282 |goto Void Elf Scenario/0 49.30,76.78 |q 48962
'|clicknpc Magister Umbric##126646, Alleria Windrunner##126602
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##3/38503 |goto Void Elf Scenario/0 48.97,72.91 |q 48962
step
kill Netherguard Transmogrifier##126493, Netherguard Adept##126492, Netherguard Phaseblade##126491, Creeping Void##126489
|tip Follow {o}Alleria Windrunner{}.
|tip She will help you fight.
Repel the Void |scenariostage 4 |goto Void Elf Scenario/0 39.30,54.49 |q 48962
'|clicknpc Alleria Windrunner##126602
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##5/38971 |goto Void Elf Scenario/0 37.32,49.26 |q 48962
step
kill Dark Manifestation##126559+
Close the Rift |scenariogoal Rift sealed##6/37295 |goto Void Elf Scenario/0 28.92,40.34 |q 48962
step
kill Nhr'ghesh##126589
Defeat Nhr'ghesh |scenariogoal Nhr'ghesh defeated##7/37296 |goto Void Elf Scenario/0 28.92,40.34 |q 48962
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##8/38972 |goto Void Elf Scenario/0 28.89,38.30 |q 48962
step
click Voidforge
Shut Down the Voidforge |scenariogoal Voidforges shut down##9/37329 |goto Void Elf Scenario/0 29.00,27.81 |count 1 |q 48962
step
click Voidforge
Shut Down the Voidforge |scenariogoal Voidforges shut down##9/37329 |goto Void Elf Scenario/0 28.49,21.70 |count 2 |q 48962
step
click Voidforge
Shut Down the Voidforge |scenariogoal Voidforges shut down##9/37329 |goto Void Elf Scenario/0 26.21,24.46 |count 3 |q 48962
step
kill Nether-Prince Durzaan##126470
Defeat Nether-Prince Durzaan |scenariogoal Nether-Walker defeated##10/37284 |goto Void Elf Scenario/0 27.90,24.09 |q 48962
Complete the "Telogrus Rift" Scenario |q 48962/1 |goto Void Elf Scenario/0 27.90,24.09
step
click Rift to Stormwind
Leave the Telogrus Rift |complete zone("Stormwind City") |goto Void Elf Scenario/0 27.95,24.50 |q 48962
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin Telogrus Rift##48962 |goto Stormwind City/0 52.06,13.41 |complete achieved(12242)
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Death Knight Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('DeathKnight') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="You must be a Death Knight to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Raise Dead |scenariogoal 2/30662
step
_On the Deck of the Airship:_
Watch the dialogue
Use Outbreak on the Target Dummy |scenariogoal 3/30663
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Festering Strike ability on the Target Dummy
|tip It appears on your action bar.
Use Festering Strike on the Target Dummy |scenariogoal 4/30664
step
_On the Deck of the Airship:_
Watch the dialogue
Use Festering Strike then Scourge Strike on the Target Dummy |scenariogoal 5/30665
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Coil on the Target Dummy |scenariogoal 6/30666
|tip Use your other abilities to generate Runic Power.
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Outbreak |scenariogoal 7/30663
Use Festering Strike |scenariogoal 7/30664
Use Scourge Strike |scenariogoal 7/30665
Use Death Coil |scenariogoal 7/30666
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Strike |scenariogoal Use Death Strike##8/31703
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Grip |scenariogoal 9/30667
step
_On the Deck of the Airship:_
Watch the dialogue
Use Army of the Dead |scenariogoal 10/31018
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 12/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Demon Hunter Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('DemonHunter') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DemonHunter') end,
condition_valid_msg="You must be a Demon Hunter to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Fel Rush |scenariogoal 2/38303
step
_On the Deck of the Airship:_
Watch the dialogue
Use Demon's Bite on the Target Dummy #3# Times |scenariogoal 3/38304
step
_On the Deck of the Airship:_
Watch the dialogue
Use Chaos Strike on the Target Dummy |scenariogoal 4/38305
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Watch the dialogue
Use Eye Beam on the Target Dummy |scenariogoal 5/38308
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Use Demon's Bite |scenariogoal 6/38304
Use Eye Beam |scenariogoal 6/38308
Use Chaos Strike |scenariogoal 6/38305
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Use Blade Dance to kill the Arcane Constructs |scenariogoal 7/38307 |goto Boralus/0 0.00,0.00
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 7/29840
|tip Use Demon's Bite to build fury.
|tip Then use Blade Dance and Eye Beam to destroy the Arcane Constructs.
step
_On the Deck of the Airship:_
Watch the dialogue
Use Metamorphasis |scenariogoal 8/38306
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
Defeat Both Attackers |scenariogoal 10/30919
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariogoal 11/0
|tip Use Demon's Bite to build fury.
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Druid Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Druid') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Druid') end,
condition_valid_msg="You must be a Druid to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Moonkin Form |scenariogoal 2/32840
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Moonfire on the Target Dummy |scenariogoal 3/32841
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Sunfire on the Target Dummy |scenariogoal 3/32842
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Wrath on the Target Dummy |scenariogoal 4/32843
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Starsurge on the Target Dummy |scenariogoal 5/32844
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Starfire on the Target Dummy |scenariogoal 6/32845
|only if Balance
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 6/29840
|only if Balance
step
_On the Deck of the Airship:_
Cast Moonfire |scenariogoal 7/32841
Cast Sunfire |scenariogoal 7/32842
Cast Wrath |scenariogoal 7/32843
Cast Starsurge |scenariogoal 7/32844
Cast Starfire |scenariogoal 7/32845
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Use Regrowth to Heal Yourself |scenariogoal 8/30432
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Entangling Roots |scenariogoal 9/32846
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Use Cat Form to Shapeshift into a Cat |scenariogoal 2/30425
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Prowl to Enter Stealth |scenariogoal 3/30426
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rake on the Target Dummy |scenariogoal 4/30428
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Shred on the Target Dummy |scenariogoal 5/30427
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Ferocious Bite with Combo Points on the Target Dummy |scenariogoal 6/30430
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rip with Combo Points on the Target Dummy |scenariogoal 7/30429
|only if Feral
step
_On the Deck of the Airship:_
Use Rake |scenariogoal 8/30428
Use Shred |scenariogoal Use Shred##8/30427
Use Ferocious Bite |scenariogoal 8/30430
Use Rip |scenariogoal 8/30429
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Dash to Move Faster in Cat Form |scenariogoal 9/30431
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Regrowth to Heal Yourself |scenariogoal 10/30432
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariostage 12
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Feral
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Hunter Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Hunter') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a Hunter to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Call Pet |scenariogoal 2/29828
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Kill Command to Command your Pet to Attack the Target Dummy |scenariogoal 3/29829
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Barbed Shot on the Target Dummy |scenariogoal 4/40240
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Cobra Shot on the Target Dummy |scenariogoal 5/29831
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Bestial Wrath |scenariogoal 6/29832
|only if BeastMastery
step
_On the Deck of the Airship:_
Use Kill Command |scenariogoal 7/29829
Use Barbed Shot |scenariogoal 7/40240
Use Cobra Shot |scenariogoal 7/29831
Use Beastial Wrath |scenariogoal 7/29832
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Multi-Shot on the Arcane Constructs |scenariogoal 8/29839
|only if BeastMastery
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feign Death |scenariogoal 9/29835
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Call Pet |scenariogoal 2/29828
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Harpoon on the Target Dummy |scenariogoal 3/34617
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Raptor Strike on the Target Dummy |scenariogoal 4/34622
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Kill Command on the Target Dummy |scenariogoal 5/40249
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Serpent Sting on the Target Dummy |scenariogoal 6/40243
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Wildfire Bomb on the Target Dummy |scenariogoal 7/40244
|only if Survival
step
_On the Deck of the Airship:_
Use Wildfire Bomb on the Target Dummy |scenariogoal 8/40244
Use Kill Command on the Target Dummy |scenariogoal 8/40249
Use Serpent Sting on the Target Dummy |scenariogoal 8/40243
Use Raptor Strike on the Target Dummy |scenariogoal 8/34622
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feign Death |scenariogoal 9/29835
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
|only if Survival
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Mage Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Mage') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Mage') end,
condition_valid_msg="You must be a Mage to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Summon Water Elemental |scenariogoal 2/29591
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Frostbolt on the Target Dummy |scenariogoal 3/30560
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Ice Lance on the Target Dummy |scenariogoal 4/30561
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Ice Lance with Fingers of Frost |scenariogoal 5/30614
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Flurry while under the Effects of Brainfreeze |scenariogoal 6/34628
step
_On the Deck of the Airship:_
Cast Frostbolt |scenariogoal 7/30560
Cast Ice Lance |scenariogoal 7/30561
Cast Flurry |scenariogoal 7/34687
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Blink |scenariogoal 8/29248
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Frost Nova to Freeze the Enemy |scenariogoal 9/30623
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Blizzard on the Arcane Constructs |scenariogoal 10/30622
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 10/29840
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 12/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Monk Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Monk') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="You must be a Monk to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Tiger Palm on the Target Dummy |scenariogoal 2/30392
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rising Sun Kick on the Target Dummy |scenariogoal 3/30393
step
_On the Deck of the Airship:_
Watch the dialogue
Use Blackout Kick on the Target Dummy |scenariogoal 4/30395
step
_On the Deck of the Airship:_
Watch the dialogue
Use Fists of Fury on the Target Dummy |scenariogoal 5/30396
step
_On the Deck of the Airship:_
Use Tiger Palm |scenariogoal 6/30392
Use Rising Sun Kick |scenariogoal 6/30393
Use Blackout Kick |scenariogoal 6/30395
Use Fists of Fury |scenariogoal 6/30396
step
_On the Deck of the Airship:_
Watch the dialogue
Use Roll |scenariogoal 7/30397
step
_On the Deck of the Airship:_
Watch the dialogue
Use Vivify to Heal Yourself |scenariogoal 8/40572
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Paladin Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Paladin') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Paladin') end,
condition_valid_msg="You must be a Paladin to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Judgement on the Target Dummy |scenariogoal 2/29793
step
_On the Deck of the Airship:_
Watch the dialogue
Use Blade of Justice on the Target Dummy |scenariogoal 3/29773
step
_On the Deck of the Airship:_
Watch the dialogue
Use Crusader Strike on the Target Dummy |scenariogoal 4/29769
step
_On the Deck of the Airship:_
Watch the dialogue
Use Templar's Verdict on the Target Dummy |scenariogoal 5/29770
step
_On the Deck of the Airship:_
Use Judgement |scenariogoal 6/29793
Use Blade of Justice |scenariogoal 6/29773
Use Crusader Strike |scenariogoal 6/29769
Use Templar's Verdict |scenariogoal 6/29770
step
_On the Deck of the Airship:_
Watch the dialogue
Earn 3 Holy Power and then Use Divine Storm |scenariogoal 7/32067
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 7/29840
step
_On the Deck of the Airship:_
Watch the dialogue
Use Divine Shield |scenariogoal 8/29771
step
_On the Deck of the Airship:_
Watch the dialogue
Allow Fireball to be Cast on You |scenariogoal 8/29797
step
_On the Deck of the Airship:_
Watch the dialogue
Use Flash of Light to Heal Yourself |scenariogoal 9/29772
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Priest Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Priest') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Priest') end,
condition_valid_msg="You must be a Priest to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Shadow Word: Pain on the Target Dummy |scenariogoal 2/30502
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Penance on the Target Dummy |scenariogoal 3/30503
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Smite on the Target Dummy |scenariogoal 4/30504
step
_On the Deck of the Airship:_
Cast Shadow Word: Pain |scenariogoal 5/30502
Cast Penance |scenariogoal 5/30503
Cast Smite |scenariogoal 5/30504
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Psychic Scream to Fear the Enemies Around You |scenariogoal 6/30520
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Power Word: Shield on Yourself |scenariogoal 7/34732
step
_On the Deck of the Airship:_
Watch the dialogue
Allow Fireball to be Cast on You |scenariogoal 7/29797
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Power Word: Shield on Yourself |scenariogoal 8/34732
step
_On the Deck of the Airship:_
Heal Yourself Through Atonement |scenariogoal 8/40714
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Rogue Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Rogue') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Rogue') end,
condition_valid_msg="You must be a Rogue to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Deadly Poison |scenariogoal 2/30644
step
_On the Deck of the Airship:_
Watch the dialogue
Use Stealth |scenariogoal 3/29617
step
_On the Deck of the Airship:_
Watch the dialogue
Use Garrote on the Target Dummy |scenariogoal 4/30645
step
_On the Deck of the Airship:_
Watch the dialogue
Use Mutilate on the Target Dummy |scenariogoal 5/30646
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rupture on the Target Dummy |scenariogoal 6/30647
step
_On the Deck of the Airship:_
Watch the dialogue
Use Envenom on the Target Dummy |scenariogoal 7/30648
step
_On the Deck of the Airship:_
Use Garrote |scenariogoal 8/30645
Use Mutilate |scenariogoal 8/30646
Use Rupture |scenariogoal 8/30647
Use Envenom |scenariogoal 8/30648
step
_On the Deck of the Airship:_
Watch the dialogue
Use Vanish |scenariogoal 9/29646
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Shaman Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Shaman') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Shaman') end,
condition_valid_msg="You must be a Shaman to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Flame Shock on the Target Dummy |scenariogoal 2/29959
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lava Burst on the Target Dummy |scenariogoal 3/29960
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lightning Bolt on the Target Dummy |scenariogoal 4/29961
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Earth Shock on the Target Dummy |scenariogoal 5/29962
|only if Elemental
step
_On the Deck of the Airship:_
Cast Flame Shock |scenariogoal 6/29959
Cast Lava Burst |scenariogoal 6/29960
Cast Lightning Bolt |scenariogoal 6/29961
Cast Earth Shock |scenariogoal 6/29962
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Hex on the Soldier |scenariogoal 7/29963
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Chain Lightning on the Arcane Constructs |scenariogoal 8/29964
|only if Elemental
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Healing Surge to Heal Yourself |scenariogoal 9/32737
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Fire Elemental |scenariogoal 10/31313
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 12/30919
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Flametongue on the Target Dummy |scenariogoal 2/32847
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Rockbiter on the Target Dummy |scenariogoal 3/32848
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lava Lash on the Target Dummy |scenariogoal 4/32849
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Stormstrike on the Target Dummy |scenariogoal 5/32850
|only if Enhancement
step
_On the Deck of the Airship:_
Cast Lava Lash |scenariogoal 6/32849
Cast Flametongue |scenariogoal 6/32847
Cast Rockbiter |scenariogoal 6/32848
Cast Stormstrike |scenariogoal 6/32850
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Hex on the Attacker |scenariogoal 7/29963
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Healing Surge to Heal Yourself |scenariogoal 8/29965
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feral Spirit |scenariogoal 9/32851
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Enhancement
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Warlock Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Warlock') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warlock') end,
condition_valid_msg="You must be a Warlock to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Seething Shore/0 0.00,0.00 > 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Summon Voidwalker |scenariogoal 2/29810
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Agony on the Target Dummy |scenariogoal 3/29811
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Corruption on the Target Dummy |scenariogoal 4/29812
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Shadow Bolt on the Target Dummy |scenariogoal 5/40241
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Unstable Affliction on the Target Dummy |scenariogoal 6/29814
step
_On the Deck of the Airship:_
Cast Agony |scenariogoal 7/29811
Cast Corruption |scenariogoal 7/29812
Cast Unstable Affliction |scenariogoal 7/29814
Cast Shadow Bolt |scenariogoal 7/40241
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Drain Life on the Target Dummy |scenariogoal 8/40242
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Fear on the Soldier |scenariogoal 9/29815
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])
QuestCore:RegisterGuide("Leveling Guides\\Boosted Characters\\Boosted Character Warrior Intro",{
description="This guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Warrior') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warrior') end,
condition_valid_msg="You must be a Warrior to complete this guide!",
startlevel=50.00,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Select _"I'm ready to begin."_
Talk to General Bret Hughes |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Seething Shore/0 0.00,0.00 > 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Charge on the Target Dummy |scenariogoal 2/30115
step
_On the Deck of the Airship:_
Watch the dialogue
Use Mortal Strike on the Target Dummy |scenariogoal 3/30116
step
_On the Deck of the Airship:_
Watch the dialogue
Use Slam on the Target Dummy |scenariogoal 4/30117
step
_On the Deck of the Airship:_
Watch the dialogue
Use Overpower on the Target Dummy |scenariogoal 5/40181
step
_On the Deck of the Airship:_
Use Overpower |scenariogoal 6/40181
Use Mortal Strike |scenariogoal 6/30116
Use Slam |scenariogoal 6/30117
step
_On the Deck of the Airship:_
Watch the dialogue
kill Arcane Construct##101738+
Kill an Arcane Construct and then Use Victory Rush on the Others |scenariogoal 7/30119
step
_On the Deck of the Airship:_
Watch the dialogue
Use Whirlwind on the Arcane Constructs |scenariogoal 8/30120
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
step
_On the Deck of the Airship:_
Watch the dialogue
Use Heroic Leap |scenariogoal 9/30121
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Select _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-70)\\Shadowlands Intro & Main Story Questline"
]])--@@TRIALEND
