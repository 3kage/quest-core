-- QuestCore bundled guide (mists)
if not QuestCore then return end
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Anglers Dailies",{
expansion="mists",
mopready=true,
startlevel=90,
description="This guide will take you through The Anglers dailies Becoming Exalted with The Anglers allows you to purchase a companion pet, fishing poles, and water mounts.",
patch='50100'
},[[
step
talk Arnold Leland##5493 |only if Alliance
|tip Fishing is required to accept daily quests from this faction. |only if Alliance
Train Apprentice Fishing |skillmax Fishing,75 |goto Stormwind City/0 54.99,69.64 |only if Alliance
|tip You'll likely want higher for some of the dailies requiring fishing to accomplish. |only if Alliance
|tip
talk Lumak##3332 |only if Horde
|tip Fishing is required to accept daily quests from this faction. |only if Horde
|tip You'll likely want higher for some of the dailies requiring fishing to accomplish. |only if Horde
Train Apprentice Fishing  |skillmax Fishing,75 |goto Orgrimmar/1 66.44,41.93 |only if Horde
step
label "dailies"
talk Fisherman Haito##59584
accept Shocking!##30584 |goto Krasarang Wilds/0 67.93,45.23 |or
accept Jagged Abalone##30586 |goto Krasarang Wilds/0 67.93,45.23 |or
|tip
Click here if no quests are available |confirm
step
talk Angler Shen##59586
accept Snapclaw##30700 |goto Krasarang Wilds/0 67.56,43.50 |or
accept Fishing for a Bruising##30588 |goto Krasarang Wilds/0 67.56,43.50 |or
|tip
Click here if no quests are available |confirm
step
talk John "Big Hook" Marsock##60674
accept Bright Bait##30754 |goto Krasarang Wilds/0 68.33,43.50 |or
accept Jumping the Shark##30753 |goto Krasarang Wilds/0 68.33,43.50 |or
|tip
Click here if no quests are available |confirm
step
talk Trawler Yotimo##60135
accept Armored Carp##30613 |goto Krasarang Wilds/0 67.62,42.50 |or
accept Huff & Puff##30658 |goto Krasarang Wilds/0 67.62,42.50 |or
|tip
Click here if no quests are available |confirm
step
talk Elder Fisherman Rassan##60673
accept What Lurks Below##30585 |goto Krasarang Wilds/0 68.34,42.08 |or
accept Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds/0 68.34,42.08 |or
|tip
Click here if no quests are available |confirm
step
talk Fo Fook##60675
accept Piranha!##30763 |goto Krasarang Wilds/0 67.21,41.15 |or
accept Viseclaw Soup##30701 |goto Krasarang Wilds/0 67.21,41.15 |or
|tip
Click here if no quests are available |confirm
step
talk Fiznix##60136
accept Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds/0 67.48,44.59
accept Scavenger Hunt##30698 |goto Krasarang Wilds/0 67.48,44.59
|tip
Click here if no quests are available |confirm
step
Ride a Goblin Fishing Raft |havebuff spell:116032 |q 30698 |goto Krasarang Wilds/0 67.50,44.80
|only if haveq(30698) or completedq(30698)
step
Fish From Shipwreck Debris
|tip Use your fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris.
collect #15# Rusty Shipwreck Debris##80830 |q 30698/1 |goto Krasarang Wilds/0 64.30,50.70
You can find more Debris at [64.30,50.60]
|only if haveq(30698) or completedq(30698)
step
clicknpc Frenzied Reef Shark##60408
Ride the Shark |invehicle Frenzied Reef Shark##60408 |goto Krasarang Wilds/0 68.40,43.10 |q 30753
|only if haveq(30753) or completedq(30753)
step
kill Frenzied Reef Shark##60408 |q 30753/1
|tip Use the abilities on your hotbar to kill the shark.
|tip Spam abilities, making sure each are on cooldown.
|only if haveq(30753) or completedq(30753)
step
click Jagged Abalone##211118
collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto Krasarang Wilds/0 69.42,39.92
|tip Underwater around this area.
|only if haveq(30586) or completedq(30586)
step
Enter the underwater cave |goto Krasarang Wilds/0 71.30,38.50 < 5
kill Snapclaw##60401
collect Snapclaw's Claw##80831 |q 30700/1 |goto Krasarang Wilds/0 73.90,38.40
|only if haveq(30700) or completedq(30700)
step
Fish in the Open Water
collect 7 Dojani Eel##80260 |q 30584/1 |goto Krasarang Wilds/0 65.60,30.50
|only if haveq(30584) or completedq(30584)
stickystart "Collect_16_Viseclaw_Fisher_Eyes"
step
kill 8 Riverblade Raider##59714+ |q 30588/1 |goto Krasarang Wilds/0 62.40,40.90
|only if haveq(30588) or completedq(30588)
step
label "Collect_16_Viseclaw_Fisher_Eyes"
Kill Viseclaw enemies around this area |kill Viseclaw Fry##61090, Viseclaw Fisher##58880,Flesh-Eating Sandsnapper##65823, Viseclaw Scuttler##58881, Viseclaw Fry##61090
collect 16 Viseclaw Fisher Eye##80832 |q 30701/1 |goto Krasarang Wilds/0 55.10,45.70
|only if haveq(30701) or completedq(30701)
step
click Suncrawler##211474
|tip It looks like a red and orange bug on threes around this area.
collect 7 Suncrawler##81116 |q 30754/1 |goto Krasarang Wilds/0 59.80,38.80
|only if haveq(30754) or completedq(30754)
step
use the Goblin Fishing Bomb##80599
kill Sting Ray##60278+
collect 3 Stinger##80600 |q 30678/1 |goto Krasarang Wilds/0 59.30,46.30
|only if haveq(30678) or completedq(30678)
step
Fish in the Open Water
collect 5 Wolf Piranha##81122 |q 30763/1 |goto Krasarang Wilds/0 36.80,43.30
|only if haveq(30763) or completedq(30763)
stickystart "Collect_Beloved_Ring"
step
Fish in the Open Water
|tip Fish in the Mysterious Whirlpool until Narjon the Gulper appears.
|tip When Narjon spawns, make sure to equip your weapon quickly.
kill Narjon the Gulper##59689 |q 30585/1 |goto Krasarang Wilds/0 34.40,31.40
|only if haveq(30585) or completedq(30585)
step
label "Collect_Beloved_Ring"
kill Narjon the Gulper##59689 |notinsticky
collect Beloved Ring##80262 |q 30585/2 |goto Krasarang Wilds/0 34.40,31.40
|only if haveq(30585) or completedq(30585)
step
use the Anglers Fishing Spear##80403
|tip Use it near Prickly Puffers.
|tip The closer you are the easier it is to hit the fish.
kill Prickly Puffer##60037
|tip Underwater around this area.
collect 5 Prickly Puffer Spine##80529 |q 30658/1 |goto Krasarang Wilds/0 51.40,62.20
|only if haveq(30658) or completedq(30658)
step
click Pristine Crane Egg##211160
collect Pristine Crane Egg##80303 |q 30598/1 |goto Krasarang Wilds/0 65.20,47.50
|only if haveq(30598) or completedq(30598)
step
use the Anglers Fishing Spear##80403
|tip Use your Anglers Fishing Spear near an Armored Carp.
|tip The closer you are the easier it is to hit the fish.
kill Armored Carp##59936+
|tip Underwater around this area.
collect 5 Armored Carp##80437 |q 30613/1 |goto Krasarang Wilds/0 70.10,51.20
|only if haveq(30613) or completedq(30613)
step
use the Pristine Crane Egg##80303
|tip Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
Fish in the Open Water
collect Silver Goby##80310 |q 30598/2 |goto Krasarang Wilds/0 68.20,42.70
|only if haveq(30598) or completedq(30598)
step
talk Elder Fisherman Rassan##60673
turnin What Lurks Below##30585 |goto Krasarang Wilds/0 68.34,42.08 |only if haveq(30585) or completedq(30585)
turnin Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds/0 68.34,42.08 |only if haveq(30598) or completedq(30598)
|only if haveq(30585,30598) or completedq(30585,30598)
step
talk Fiznix##60136
turnin Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds/0 67.48,44.59 |only if haveq(30678) or completedq(30678)
turnin Scavenger Hunt##30698 |goto Krasarang Wilds/0 67.48,44.59 |only if haveq(30698) or completedq(30698)
|only if haveq(30678,30698) or completedq(30678,30698)
step
talk Angler Shen##59586
turnin Snapclaw##30700 |goto Krasarang Wilds/0 67.56,43.50 |only if haveq(30700) or completedq(30700)
turnin Fishing for a Bruising##30588 |goto Krasarang Wilds/0 67.56,43.50 |only if haveq(30588) or completedq(30588)
|only if haveq(30700,30588) or completedq(30700,30588)
step
talk Trawler Yotimo##60135
turnin Armored Carp##30613 |goto Krasarang Wilds/0 67.62,42.50 |only if haveq(30613) or completedq(30613)
turnin Huff & Puff##30658 |goto Krasarang Wilds/0 67.62,42.50 |only if haveq(30658) or completedq(30658)
|only if haveq(30613,30658) or completedq(30613,30658)
step
talk Fisherman Haito##59584
turnin Shocking!##30584 |goto Krasarang Wilds/0 67.93,45.23 |only if haveq(30584) or completedq(30584)
turnin Jagged Abalone##30586 |goto Krasarang Wilds/0 67.93,45.23 |only if haveq(30586) or completedq(30586)
|only if haveq(30584,30586) or completedq(30584,30586)
step
talk John "Big Hook" Marsock##60674
turnin Bright Bait##30754 |goto Krasarang Wilds/0 68.33,43.50 |only if haveq(30754) or completedq(30754)
turnin Jumping the Shark##30753 |goto Krasarang Wilds/0 68.33,43.50 |only if haveq(30753) or completedq(30753)
|only if haveq(30754,30753) or completedq(30754,30753)
step
talk Fo Fook##60675
turnin Piranha!##30763 |goto Krasarang Wilds/0 67.21,41.15 |only if haveq(30763) or completedq(30763)
turnin Viseclaw Soup##30701 |goto Krasarang Wilds/0 67.21,41.15 |only if haveq(30701) or completedq(30701)
|only if haveq(30763,30701) or completedq(30763,30701)
step
You have completed the available daily quests |complete false or not completedq(30585,30598,30678,30698,30700,30588,30613,30658,30584,30586,30754,30753,30763,30701) |next "dailies"
|tip New quests will become available with the next daily server reset.
|tip |only if rep("The Anglers")>=Revered
'|talk Nat Pagle##63721 |goto Krasarang Wilds/0 68.40,43.40 |only if rep("The Anglers")>=Revered
|tip Purchase Grand Commendation of the Angler from Nat Pagle if possible. |only if rep("The Anglers")>=Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this. |only if rep("The Anglers")>=Revered
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The August Celestials Dailies",{
expansion="mists",
mopready=true,
completion={"quests"},
startlevel=90,
description="This guide will take you through The August Celestials dailies Becoming Exalted with The August Celestials allows you to purchase flying mounts and armor for your character.",
patch='50100'
},[[
step
label "dailies"
talk Sage Whiteheart##64032
|tip The following quests will only be available the first time you are sent to a new area. |only if not completedq(31378,31376,31382,31380)
|tip They are random and Sage Lotusbloom will only have one at a time. |only if not completedq(31378,31376,31382,31380)
|tip If no quest is available, ask her how you can help the August Celestials today. |only if completedq(31378,31376,31382,31380)
|tip Then click on whichever spirit needs you today. |only if completedq(31378,31376,31382,31380)
accept Challenge At The Temple of the Red Crane##31378 |goto Vale of Eternal Blossoms/0 84.62,63.78 |next "Cradle_of_Chi-Ji" |only if not completedq(31378) |or
accept Attack At The Temple of the Jade Serpent##31376 |goto Vale of Eternal Blossoms/0 84.62,63.78 |next "Temple_of_the_Jade_Serpent" |only if not completedq(31377) |or
accept Defense At Niuzao Temple##31382 |goto Vale of Eternal Blossoms/0 84.62,63.78 |next "Temple_of_the_Black_Ox" |only if not completedq(31382) |or
accept Trial At The Temple of the White Tiger##31380 |goto Vale of Eternal Blossoms/0 84.62,63.78 |next "Temple_of_the_White_Tiger" |only if not completedq(31380) |or
Click Here to Complete "Niuzao the Black Ox" Daily Quests |goto Vale of Eternal Blossoms/0 84.62,63.78 |confirm |next "Temple_of_the_Black_Ox" |only if completedq(31378,31376,31382,31380)
Click Here to Complete "Yu'lon the Jade Serpent" Daily Quests |goto Vale of Eternal Blossoms/0 84.62,63.78 |confirm |next "Temple_of_the_Jade_Serpent" |only if completedq(31378,31376,31382,31380)
Click Here to Complete "Xuen the White Tiger" Daily Quests |goto Vale of Eternal Blossoms/0 84.62,63.78 |confirm |next "Temple_of_the_White_Tiger" |only if completedq(31378,31376,31382,31380)
Click Here to Complete "Chi-Ji the Red Crane" Daily Quests |goto Vale of Eternal Blossoms/0 84.62,63.78 |confirm |next "Cradle_of_Chi-Ji" |only if completedq(31378,31376,31382,31380)
|only if Alliance
step
label "dailies"
talk Sage Lotusbloom##64001
|tip The following quests will only be available the first time you are sent to a new area. |only if not completedq(31379,31377,31383,31381)
|tip They are random and Sage Lotusbloom will only have one at a time. |only if not completedq(31379,31377,31383,31381)
|tip If no quest is available, ask her how you can help the August Celestials today. |only if completedq(31379,31377,31383,31381)
|tip Then click on whichever spirit needs you today. |only if completedq(31379,31377,31383,31381)
accept Challenge At The Temple of the Red Crane##31379 |goto Vale of Eternal Blossoms/0 62.79,23.39 |next "Cradle_of_Chi-Ji" |only if not completedq(31379) |or
accept Attack At The Temple of the Jade Serpent##31377 |goto Vale of Eternal Blossoms/0 62.79,23.39 |next "Temple_of_the_Jade_Serpent" |only if not completedq(31377) |or
accept Defense At Niuzao Temple##31383 |goto Vale of Eternal Blossoms/0 62.79,23.39 |next "Temple_of_the_Black_Ox" |only if not completedq(31383) |or
accept Trial At The Temple of the White Tiger##31381 |goto Vale of Eternal Blossoms/0 62.79,23.39 |next "Temple_of_the_White_Tiger" |only if not completedq(31381) |or
Click Here to Complete "Niuzao the Black Ox" Daily Quests |goto Vale of Eternal Blossoms/0 62.79,23.39 |confirm |next "Temple_of_the_Black_Ox" |only if completedq(31379,31377,31383,31381)
Click Here to Complete "Yu'lon the Jade Serpent" Daily Quests |goto Vale of Eternal Blossoms/0 62.79,23.39 |confirm |next "Temple_of_the_Jade_Serpent" |only if completedq(31379,31377,31383,31381)
Click Here to Complete "Xuen the White Tiger" Daily Quests |goto Vale of Eternal Blossoms/0 62.79,23.39 |confirm |next "Temple_of_the_White_Tiger" |only if completedq(31379,31377,31383,31381)
Click Here to Complete "Chi-Ji the Red Crane" Daily Quests |goto Vale of Eternal Blossoms/0 62.79,23.39 |confirm |next "Cradle_of_Chi-Ji" |only if completedq(31379,31377,31383,31381)
|only if Horde
step
label "Cradle_of_Chi-Ji"
talk Thelonius##60506
turnin Challenge At The Temple of the Red Crane##31378 |goto Krasarang Wilds/0 31.30,63.40 |only if Alliance
turnin Challenge At The Temple of the Red Crane##31379 |goto Krasarang Wilds/0 31.30,63.40 |only if Horde
|only if haveq(31378,31379) or completedq(31378,31379)
step
talk Thelonius##60506
accept Students of Chi-Ji##30718 |goto Krasarang Wilds/0 31.34,63.43
accept Champion of Chi-Ji##30740 |goto Krasarang Wilds/0 31.34,63.43 |only if achieved(7287)
|tip If quests are offered, you will not be able to accept all of these quests. |only if achieved(7287)
|tip
Click here if no quests are available |confirm
step
talk Yan Quillpaw##60529
|tip He walks around this area.
accept Gifts of the Great Crane##30717 |goto Krasarang Wilds/0 31.51,63.74
|tip
Click here if no quests are available |confirm
step
talk Kuo-Na Quillpaw##60528
|tip She walks around this area.
accept Chasing Hope##30716 |goto Krasarang Wilds/0 31.13,63.55
|tip
Click here if no quests are available |confirm
step
talk Champion of Chi-Ji##60546
Let's fight!
Defeat a Champion of Chi-Ji |q 30740/1 |goto Krasarang Wilds/0 34.60,82.00
|only if haveq(30740)
stickystart "Duel_10_Students_of_Chiji"
stickystart "Collect_10_Gift_of_the_Great_Crane"
step
Find #3# Spirits of the Crane |q 30716/1 |goto Krasarang Wilds/0 35.17,74.50
|tip They are stealthed and you need to run into them.
You can find more around:
[Krasarang Wilds/0 33.55,70.30]
[Krasarang Wilds/0 28.08,70.47]
step
label "Duel_10_Students_of_Chiji"
|kill Student of Chi-Ji##60602, Student of Chi-Ji##60603, Student of Chi-Ji##60601
|tip They are all around the island.
Duel #10# Students of Chi-Ji |q 30718/1 |goto Krasarang Wilds/0 31.49,74.31
step
label "Collect_10_Gift_of_the_Great_Crane"
click Cerulean Gift of the Crane##211451
click Crimson Gift of the Crane##211453
click Bronze Gift of the Crane##211452
|tip The Gifts look like feathers laying around on the ground.
collect #10# Gift of the Great Crane##80938+ |q 30717/1 |goto Krasarang Wilds/0 32.06,76.94
step
talk Kuo-Na Quillpaw##60528
|tip She walks around this area.
turnin Chasing Hope##30716 |goto Krasarang Wilds/0 31.13,63.55
step
talk Yan Quillpaw##60529
|tip He walks around this area.
turnin Gifts of the Great Crane##30717 |goto Krasarang Wilds/0 31.51,63.74
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds/0 31.34,63.43
accept Ellia Ravenmane##30725 |goto Krasarang Wilds/0 31.34,63.43 |or			|only if questonmap({418},30725)
accept Minh Do-Tan##30726 |goto Krasarang Wilds/0 31.34,63.43 |or			|only if questonmap({418},30726)
accept Ellia Ravenmane: Rematch##30727 |goto Krasarang Wilds/0 31.34,63.43 |or		|only if questonmap({418},30727)
accept Fat Long-Fat##30728 |goto Krasarang Wilds/0 31.34,63.43 |or			|only if questonmap({418},30728)
accept Julia Bates##30729 |goto Krasarang Wilds/0 31.34,63.43 |or			|only if questonmap({418},30729)
accept Dextrous Izissha##30730 |goto Krasarang Wilds/0 31.34,63.43 |or			|only if questonmap({418},30730)
accept Kuo-Na Quillpaw##30731 |goto Krasarang Wilds/0 31.34,63.43 |or			|only if questonmap({418},30731)
accept Ellia Ravenmane: Revenge##30732 |goto Krasarang Wilds/0 31.34,63.43 |or		|only if questonmap({418},30732)
accept Tukka-Tuk##30733 |goto Krasarang Wilds/0 31.34,63.43 |or				|only if questonmap({418},30733)
accept Huck Wheelbarrow##30734 |goto Krasarang Wilds/0 31.34,63.43 |or			|only if questonmap({418},30734)
accept Mindel Sunspeaker##30735 |goto Krasarang Wilds/0 31.34,63.43 |or			|only if questonmap({418},30735)
accept Yan Quillpaw##30736 |goto Krasarang Wilds/0 31.34,63.43 |or			|only if questonmap({418},30736)
accept Fat Long-Fat: Rematch##30737 |goto Krasarang Wilds/0 31.34,63.43 |or		|only if questonmap({418},30737)
accept Thelonius##30738 |goto Krasarang Wilds/0 31.34,63.43 |or				|only if questonmap({418},30738)
accept Ellia Ravenmane: Redemption##30739 |goto Krasarang Wilds/0 31.34,63.43 |or	|only if questonmap({418},30739)
Click here if no quests are available |confirm
|only if not achieved(7287)
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds/0 31.34,63.43 |only if haveq(30718) or completedq(30718)
turnin Champion of Chi-Ji##30740 |goto Krasarang Wilds/0 31.34,63.43 |only if haveq(30740) or completedq(30740)
|only if achieved(7287)
|next "end"
step
talk Fat Long-Fat##60534
|tip On top of the building.
Select _"Let's fight!"_ |gossip 126147
Defeat Fat Long-Fat |q 30728/1 |goto Krasarang Wilds/0 32.00,70.70
|only if haveq(30728) or completedq(30728)
step
talk Ellia Ravenmane##60530
Select _"Let's fight!"_ |gossip 126144
Defeat Ellia Ravenmane |q 30725/1 |goto Krasarang Wilds/0 31.85,71.19
|only if haveq(30725) or completedq(30725)
step
talk Mindel Sunspeaker##60541
Let's fight!
Defeat Mindel Sunspeaker |q 30735/1 |goto Krasarang Wilds/0 32.10,69.90
|only if haveq(30735) or completedq(30735)
step
talk Minh Do-Tan##60532
Select _"Let's fight!"_ |gossip 126145
Defeat Minh Do-Tan |q 30726/1 |goto Krasarang Wilds/0 31.98,76.47
|only if haveq(30726) or completedq(30726)
step
talk Tukka-Tuk##60539
Let's fight!
Defeat Tukka-Tuk |q 30733/1 |goto Krasarang Wilds/0 34.10,75.10
|only if haveq(30733) or completedq(30733)
step
talk Ellia Ravenmane##60545
Let's fight!
Defeat Ellia Ravenmane |q 30739/1 |goto Krasarang Wilds/0 36.40,75.60
|only if haveq(30739) or completedq(30739)
step
talk Dextrous Izissha##60536
Let's fight!
Defeat Dextrous Izissha |q 30730/1 |goto Krasarang Wilds/0 31.70,80.30
|only if haveq(30730) or completedq(30730)
step
talk Fat Long-Fat##60543
Let's fight!
Defeat Fat Long-Fat |q 30737/1 |goto Krasarang Wilds/0 34.80,82.60
|only if haveq(30737) or completedq(30737)
step
talk Kuo-Na Quillpaw##60537
Let's fight!
Defeat Kuo-Na Quillpaw |q 30731/1 |goto Krasarang Wilds/0 36.60,74.80
|only if haveq(30731) or completedq(30731)
step
talk Ellia Ravenmane##60533
Select _"Let's fight!"_ |gossip 126146
Defeat Ellia Ravenmane |q 30727/1 |goto Krasarang Wilds/0 35.17,75.05
|only if haveq(30727) or completedq(30727)
step
talk Julia Bates##60535
Select _"Let's fight!"_ |gossip 126148
Defeat Julia Bates |q 30729/1 |goto Krasarang Wilds/0 28.90,75.50
|only if haveq(30729) or completedq(30729)
step
talk Huck Wheelbarrow##60540
Let's fight!
Defeat Huck Wheelbarrow |q 30734/1 |goto Krasarang Wilds/0 27.90,70.30
|only if haveq(30734) or completedq(30734)
step
talk Yan Quillpaw##60542
Let's fight!
Defeat Yan Quillpaw |q 30736/1 |goto Krasarang Wilds/0 36.50,76.20
|only if haveq(30736) or completedq(30736)
step
talk Ellia Ravenmane##60538
Let's fight!
Defeat Ellia Ravenmane |q 30732/1 |goto Krasarang Wilds/0 34.50,83.30
|only if haveq(30732) or completedq(30732)
step
talk Thelonius##60544
Let's fight!
Defeat Thelonius |q 30738/1 |goto Krasarang Wilds/0 28.80,72.40
|only if haveq(30738) or completedq(30738)
step
talk Thelonius##60506
turnin Ellia Ravenmane##30725 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30725) or completedq(30725)
turnin Minh Do-Tan##30726 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30726) or completedq(30726)
turnin Ellia Ravenmane: Rematch##30727 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30727) or completedq(30727)
turnin Fat Long-Fat##30728 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30728) or completedq(30728)
turnin Julia Bates##30729 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30729) or completedq(30729)
turnin Dextrous Izissha##30730 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30730) or completedq(30730)
turnin Kuo-Na Quillpaw##30731 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30731) or completedq(30731)
turnin Ellia Ravenmane: Revenge##30732 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30732) or completedq(30732)
turnin Tukka-Tuk##30733 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30733) or completedq(30733)
turnin Huck Wheelbarrow##30734 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30734) or completedq(30734)
turnin Mindel Sunspeaker##30735 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30735) or completedq(30735)
turnin Yan Quillpaw##30736 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30736) or completedq(30736)
turnin Fat Long-Fat: Rematch##30737 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30737) or completedq(30737)
turnin Thelonius##30738 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30738) or completedq(30738)
turnin Ellia Ravenmane: Redemption##30739 |goto Krasarang Wilds/0 31.34,63.43 |or |only if haveq(30739) or completedq(30739)
|only if not achieved(7287)
|next "end"
step
label "Temple_of_the_Jade_Serpent"
talk Elder Sage Tai-Feng##57324
|tip Inside the building.
turnin Attack At The Temple of the Jade Serpent##31376 |goto The Jade Forest/0 53.91,61.95 |only if haveq(31376) or completedq(31376) |only if Alliance
turnin Attack At The Temple of the Jade Serpent##31377 |goto The Jade Forest/0 53.91,61.95 |only if haveq(31377) or completedq(31377) |only if Horde
accept Arrows of Fortune##30065 |goto The Jade Forest/0 53.91,61.95
accept Hidden Power##30066 |goto The Jade Forest/0 53.91,61.95
accept The Darkness Around Us##30006 |goto The Jade Forest/0 53.91,61.95
|tip
Click here if no quests are available |confirm
step
talk Elder Sage Storm-Sing##57319
accept Behind the Masks##30063 |goto The Jade Forest/0 53.88,61.91
accept Saving the Sutras##30064 |goto The Jade Forest/0 53.88,61.91
|tip
Click here if no quests are available |confirm
stickystart "Collect_10_Defenders_Arrow"
stickystart "Collect_8_Mask_of_Doubt"
stickystart "Collect_6_Ancient_Mantras"
stickystart "Slay_15_Sha_Invaders"
step
click Ancient Sutra##210086
collect 6 Ancient Sutra##77432 |q 30064/1 |goto The Jade Forest/0 56.39,50.99
|only if haveq(30064) or completedq(30064)
step
label "Collect_10_Defenders_Arrow"
click Defender's Arrow##210087
collect 10 Defender's Arrow##77452+ |q 30065/1 |goto The Jade Forest/0 56.10,53.04
|only if haveq(30065) or completedq(30065)
step
label "Collect_6_Ancient_Mantras"
clicknpc Yu'lon Guardian##57400,57326,58186
clicknpc Yu'lon Adept##57316
use the Stack of Mantras##77475
|tip They look like books with red bindings on the ground around this area.
Deliver #6# Ancient Mantras |q 30066/1 |goto The Jade Forest/0 56.52,52.43
|only if haveq(30066) or completedq(30066)
step
label "Collect_8_Mask_of_Doubt"
Kill Lingering enemies around this area |kill Lingering Doubt##57396, Lingering Doubt##57327
collect 8 Mask of Doubt##77419+ |q 30063/1 |goto The Jade Forest/0 54.50,54.10
|only if haveq(30063) or completedq(30063)
step
label "Slay_15_Sha_Invaders"
Kill enemies around this area |kill Final Doubt##57330+, Lingering Doubt##57396+, Shadow Of Doubt##57389
Slay #15# Sha Invaders |q 30006/1 |goto The Jade Forest/0 56.31,51.03
[The Jade Forest/0 52.36,56.82]
[The Jade Forest/0 54.39,53.94]
|only if haveq(30006) or completedq(30006)
step
talk Elder Sage Storm-Sing##57319
turnin Behind the Masks##30063 |goto The Jade Forest/0 53.88,61.91 |only if haveq(30063) or completedq(30063)
turnin Saving the Sutras##30064 |goto The Jade Forest/0 53.88,61.91 |only if haveq(30064) or completedq(30064)
|only if haveq(30063,30064) or completedq(30063,30064)
step
talk Elder Sage Tai-Feng##57324
turnin Arrows of Fortune##30065 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30065) or completedq(30065)
turnin Hidden Power##30066 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30066) or completedq(30066)
turnin The Darkness Around Us##30006 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30006) or completedq(30006)
accept Flames of the Void##30068 |goto The Jade Forest/0 53.91,61.95 |or
accept The Shadow of Doubt##30067 |goto The Jade Forest/0 53.91,61.95 |or
accept Hidden Power##30066 |goto The Jade Forest/0 53.91,61.95 |or
|tip
Click here if no quests are available |confirm
step
label "Collect_6_Ancient_Mantras"
clicknpc Yu'lon Guardian##57400,57326,58186
clicknpc Yu'lon Adept##57316
use the Stack of Mantras##77475
Deliver #6# Ancient Mantras |q 30066/1 |goto The Jade Forest/0 55.30,57.40
|only if haveq(30066) or completedq(30066)
step
kill Shadow of Doubt##57389 |q 30067/1 |goto The Jade Forest/0 57.50,62.30
|only if haveq(30067) or completedq(30067)
step
clicknpc War Serpent##57871
Ride the War Serpent |invehicle |goto The Jade Forest/0 54.10,60.90 |q 30068
|only if haveq(30068) or completedq(30068)
step
click Void Flame
|tip They look like swirling black fire.
|tip If you run out of water you can refill it in the river.
River Location [goto The Jade Forest/0 53.90,58.00]
|tip Look for small light-blue patches of swirling water and then fly over them.
Douse #6# Void Flames |q 30068/1
|only if haveq(30068) or completedq(30068)
step
Click the Leave Vehicle button |outvehicle |goto The Jade Forest/0 53.91,61.95
|only if haveq(30068) or completedq(30068)
step
talk Elder Sage Tai-Feng##57324
turnin The Shadow of Doubt##30067 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30067) or completedq(30067)
turnin Flames of the Void##30068 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30068) or completedq(30068)
turnin Hidden Power##30066 |goto The Jade Forest/0 53.91,61.95 |only if haveq(30066) or completedq(30066)
accept The Shadow of Doubt##30067 |goto The Jade Forest/0 53.90,61.95
accept Flames of the Void##30068 |goto The Jade Forest/0 53.90,61.95
|tip
Click here if no quests are available |confirm
step
kill Shadow of Doubt##57389
Shadow of Doubt slain |q 30067/1 |goto The Jade Forest/0 57.52,62.25
|only if haveq(30067) or completedq(30067)
step
clicknpc War Serpent##57871
Ride the War Serpent |invehicle |goto The Jade Forest/0 54.10,60.90 |q 30068
|only if haveq(30068) or completedq(30068)
step
River Location [The Jade Forest/0 53.90,58.00]
|tip Look for small light-blue patches of swirling water and then fly over them.
Douse #6# Void Flames |q 30068/1 |goto The Jade Forest/0 53.79,54.09
|tip They look like swirling black fire all around this area.
|tip If you run out of water you can refill it in the river.
|only if haveq(30068) or completedq(30068)
step
Click the Leave Vehicle button |outvehicle |goto The Jade Forest/0 53.91,61.95
|only if haveq(30068) or completedq(30068)
step
talk Elder Sage Tai-Feng##57324
turnin The Shadow of Doubt##30067 |goto The Jade Forest/0 53.96,61.88 |only if haveq(30067) or completedq(30067)
turnin Flames of the Void##30068 |goto The Jade Forest/0 53.90,61.95 |only if haveq(30068) or completedq(30068)
|next "end"
step
label "Temple_of_the_White_Tiger"
talk Xuen##60968
turnin Trial At The Temple of the White Tiger##31380 |goto Kun-Lai Summit/0 67.26,55.89 |only if Alliance
turnin Trial At The Temple of the White Tiger##31381 |goto Kun-Lai Summit/0 67.26,55.89 |only if Horde
|only if haveq(31380,31381) or completedq(31380,31381)
step
talk Xuen##60968
accept Round 1: Brewmaster Chani##30879 |goto Kun-Lai Summit/0 67.26,55.89 |or
accept Round 1: The Streetfighter##30880 |goto Kun-Lai Summit/0 67.26,55.89 |or
accept Contending With Bullies##31517 |goto Kun-Lai Summit/0 67.26,55.89
|tip
Click here if no quests are available |confirm
step
kill Shonuf##64757 |q 31517/1 |goto Kun-Lai Summit/0 71.10,55.80
|only if haveq(31517) or completedq(31517)
step
talk Brewmaster Chani##60996
|tip Pull her out of {o}Bitter Brew{}.
|tip Interrupt or move away from {o}The Steamer{} when she channels it.
Select _"I challenge you."_ |gossip 126193
Defeat Brewmaster Chani: |q 30879/1 |goto Kun-Lai Summit/0 70.95,51.81
|only if haveq(30879) or completedq(30879)
step
talk Lun-Chi##60994
Select _"I challenge you."_ |gossip 126195
Defeat The Streetfighter |q 30880/1 |goto Kun-Lai Summit/0 70.95,51.81
|only if haveq(30880) or completedq(30880)
step
talk Xuen##60968
turnin Round 1: Brewmaster Chani##30879 |goto Kun-Lai Summit/0 70.29,51.28 |only if haveq(30879) or completedq(30879)
turnin Round 1: The Streetfighter##30880 |goto Kun-Lai Summit/0 70.29,51.28 |only if haveq(30880) or completedq(30880)
turnin Contending With Bullies##31517 |goto Kun-Lai Summit/0 70.29,51.28 |only if haveq(31517) or completedq(31517)
accept Round 2: Clever Ashyo & Ken-Ken##30881 |goto Kun-Lai Summit/0 70.29,51.28 |or
accept Round 2: Kang Bramblestaff##30882 |goto Kun-Lai Summit/0 70.29,51.28 |or
|tip
Click here if no quests are available |confirm
step
talk Kang Bramblestaff##60978
|tip Inside the building.
Select _"I challenge you."_ |gossip 126201
Defeat Kang Bramblestaff |q 30882/1 |goto Kun-Lai Summit/0 71.68,45.27
|only if haveq(30882) or completedq(30882)
step
talk Clever Ashyo##60980
Select _"I challenge you."_ |gossip 126194
|tip Focus down Ken-Ken first.
|tip Swap to Ashyo when Ken-Ken uses {o}Ken-Ken Rampage{} until it ends.
|tip Ashyo will summon Water Spouts and Healing Spheres.
|tip Damage down {o}Healing Spheres{} and avoid Water Spouts.
Defeat Ken-Ken |q 30881/2 |goto Kun-Lai Summit/0 71.67,45.32
Defeat Clever Ashyo |q 30881/1 |goto Kun-Lai Summit/0 71.67,45.32
|only if haveq(30881) or completedq(30881)
step
talk Xuen##60968
|tip Inside the building.
turnin Round 2: Clever Ashyo & Ken-Ken##30881 |goto Kun-Lai Summit/0 71.77,44.87 |only if haveq(30881) or completedq(30881)
turnin Round 2: Kang Bramblestaff##30882 |goto Kun-Lai Summit/0 71.77,44.87 |only if haveq(30882) or completedq(30882)
accept Round 3: The Wrestler##30883 |goto Kun-Lai Summit/0 71.77,44.87 |or
accept Round 3: Master Boom Boom##30885 |goto Kun-Lai Summit/0 71.77,44.87 |or
|tip
Click here if no quests are available |confirm
|only if haveq(30882,30881) or completedq(30882,30881)
step
talk Master Boom Boom##61013
|tip Inside the building.
Select _"I challenge you."_ |gossip 126203
Defeat Master Boom Boom |q 30885/1 |goto Kun-Lai Summit/0 66.69,46.49
|tip Avoid {o}Dynamite{} that appears on the ground during the encounter.
|tip Move out of the center of the arena when the fuse to the Boom Box is lit.
|only if haveq(30885) or completedq(30885)
step
talk The Wrestler##60997
|tip Click chairs around to room to boost your damage for 10 seconds.
|tip Avoid standing in {o}Sling Sweat{} puddles.
Select _"I challenge you."_ |gossip 126196
Defeat The Wrestler |q 30883/1 |goto Kun-Lai Summit/0 66.72,46.53
|only if haveq(30883) or completedq(30883)
step
talk Xuen##60968
|tip Inside the building.
turnin Round 3: The Wrestler##30883 |goto Kun-Lai Summit/0 66.40,46.34 |only if haveq(30883) or completedq(30883)
turnin Round 3: Master Boom Boom##30885 |goto Kun-Lai Summit/0 66.40,46.34 |only if haveq(30885) or completedq(30885)
accept Round 4: The P.U.G.##30907 |goto Kun-Lai Summit/0 66.40,46.34 |or
accept Round 4: Master Windfur##30902 |goto Kun-Lai Summit/0 66.40,46.34 |or
|tip
Click here if no quests are available |confirm
step
talk Master Windfur##61012
Select _"I challenge you."_ |gossip 126202
Defeat Master Windfur |q 30902/1 |goto Kun-Lai Summit/0 68.80,43.69
|only if haveq(30902) or completedq(30902)
step
Enter the building |goto Kun-Lai Summit/0 69.00,43.70 < 15
talk Healiss##61004
|tip Focus down Healiss first.
|tip Save interrupts/stuns for {g}Jungle Remedy{}.
|tip Focus down Tankiss before Hackiss.
Select _"I challenge you."_ |gossip 126199 |goto Kun-Lai Summit/0 69.00,43.74
Defeat Healiss |q 30907/2 |goto Kun-Lai Summit/0 69.29,43.41
Defeat Hackiss |q 30907/1 |goto Kun-Lai Summit/0 69.29,43.41
Defeat Tankiss|q 30907/3 |goto Kun-Lai Summit/0 69.31,43.42
|only if haveq(30907) or completedq(30907)
step
talk Xuen##60968
|tip Inside the building.
turnin Round 4: The P.U.G.##30907 |goto Kun-Lai Summit/0 68.48,44.59 |only if haveq(30907) or completedq(30907)
turnin Round 4: Master Windfur##30902 |goto Kun-Lai Summit/0 68.48,44.59 |only if haveq(30902) or completedq(30902)
|only if haveq(30907,30902) or completedq(30907,30902)
step
talk Lin Tenderpaw##60981
|tip Walking around this area.
accept The Torch of Strength##31492 |goto Kun-Lai Summit/0 68.50,56.50
|tip
Click here if no quests are available |confirm |next "end"
step
Enter the first temple |goto Kun-Lai Summit/0 69.60,53.00 < 25 |walk
Enter the second temple |goto Kun-Lai Summit/0 66.90,51.20 < 25 |walk
|tip Avoid the roaming tornadoes.
|tip Mounting or touching the tornadoes will send you back to the start of the quest.
click The Strong Brazier##214628
Light the Strong Brazier |q 31492/1 |goto Kun-Lai Summit/0 68.60,46.60
|only if haveq(31492) or completedq(31492)
step
talk Lin Tenderpaw##60981
|tip Walking around this area.
turnin The Torch of Strength##31492 |goto Kun-Lai Summit/0 68.50,56.50 |next "end"
|only if haveq(31492) or completedq(31492)
step
Routing to the End |next "end"
step
label "Temple_of_the_Black_Ox"
talk Ogo the Elder##61580
turnin Defense At Niuzao Temple##31382 |goto Townlong Steppes/0 39.35,62.30 |only if haveq(31382) or completedq(31382) |only if Alliance
turnin Defense At Niuzao Temple##31383 |goto Townlong Steppes/0 39.35,62.30 |only if haveq(31383) or completedq(31383) |only if Horde
accept The Siege Swells##30956 |goto Townlong Steppes/0 39.35,62.30 |or
accept The Unending Siege##30952 |goto Townlong Steppes/0 39.35,62.30 |or
|tip
Click here if no quests are available |confirm
step
talk Ogo the Younger##61581
accept The Big Guns##30959 |goto Townlong Steppes/0 39.34,62.21 |or
accept A Blade is a Blade##30954 |goto Townlong Steppes/0 39.34,62.21 |or
|tip
Click here if no quests are available |confirm
step
talk Yak-Keeper Kyana##61585
accept Fallen Sentinels##30953 |goto Townlong Steppes/0 39.15,62.07
|tip
Click here if no quests are available |confirm
step
talk Sentinel Commander Qipan##61584
accept The Overwhelming Swarm##30957 |goto Townlong Steppes/0 39.41,61.96
|tip
Click here if no quests are available |confirm
step
talk High Adept Paosha##61583
|tip Walking around this area.
accept In Battle's Shadow##30958 |goto Townlong Steppes/0 38.95,62.44 |or
accept Paying Tribute##30955 |goto Townlong Steppes/0 38.95,62.44 |or
|tip
Click here if no quests are available |confirm
stickystart "Throw_10_Loose_Stones"
stickystart "Heal_8_Niuzao_Sentinels"
stickystart "Collect_6_Food_for_Niuzao"
stickystart "Collect_10_Sra'thik_Weapons"
stickystart "Kill_4_Sra'thik_Attackers"
stickystart "Kill_12_Sra'thik_Attackers"
stickystart "Kill_25_Sra'thik_Attackers"
step
use the Pot of Fire##82346
Cause #3# Sri'thik War Wagons to Explode |q 30959/1 |goto Townlong Steppes/0 43.60,57.52
|tip A group of enemies will spawn once they explode.
you can find more around:
[Townlong Steppes/0 43.72,62.50]
[Townlong Steppes/0 39.68,57.02]
|only if haveq(30957) or completedq(30957)
step
label "Throw_10_Loose_Stones"
click Loose Brick##211752
|tip On the ground all around this area.
Throw #10# Loose Stones up to Niuzao Stonemasons |q 30958/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30958) or completedq(30958)
step
label "Heal_8_Niuzao_Sentinels"
use the Yak's Milk Flask##82381
|tip Use them on Wounded Niuzao Sentinels.
clicknpc Wounded Niuzao Sentinel##61570
|tip Normal healing spells will also work.
Heal #8# Niuzao Sentinels |q 30953/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30953) or completedq(30953)
step
label "Collect_6_Food_for_Niuzao"
click Niuzao Food Supply##212133
Gather #6# Food for Niuzao |q 30955/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30955) or completedq(30955)
step
label "Collect_10_Sra'thik_Weapons"
click Sra'thik Weapon##211766
|tip After you kill a Sra'thik, a weapon may drop.
collect 10 Sra'thik Weapon##82353 |q 30954/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30954) or completedq(30954)
step
label "Kill_4_Sra'thik_Attackers"
kill 4 Sra'thik Kunchong##61509+ |q 30957/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30957) or completedq(30957)
step
label "Kill_12_Sra'thik_Attackers"
kill Sra'thik Warcaller##61502+, Sra'thik Swiftclaw##61508+
Slay #12# Sra'thik attackers |q 30952/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30952) or completedq(30952)
step
label "Kill_25_Sra'thik_Attackers"
kill Sra'thik Swiftclaw##61508+, Sra'thik Warcaller##61502+, Sra'thik Fleshrender##61514+
Slay #25# Sri'thik attackers |q 30956/1 |goto Townlong Steppes/0 40.99,60.35
|only if haveq(30956) or completedq(30956)
step
talk Ogo the Elder##61580
turnin The Siege Swells##30956 |goto Townlong Steppes/0 39.35,62.30 |only if haveq(30956) or completedq(30956)
turnin The Unending Siege##30952 |goto Townlong Steppes/0 39.35,62.30 |only if haveq(30952) or completedq(30952)
|only if haveq(30956,30952) or completedq(30956,30952)
step
talk Ogo the Younger##61581
turnin The Big Guns##30959 |goto Townlong Steppes/0 39.34,62.21 |only if haveq(30959) or completedq(30959)
turnin A Blade is a Blade##30954 |goto Townlong Steppes/0 39.34,62.21 |only if haveq(30954) or completedq(30954)
|only if haveq(30959,30954) or completedq(30959,30954)
step
talk Yak-Keeper Kyana##61585
turnin Fallen Sentinels##30953 |goto Townlong Steppes/0 39.15,62.07 |only if haveq(30953) or completedq(30953)
turnin In Battle's Shadow##30958 |goto Townlong Steppes/0 39.15,62.07 |only if haveq(30958) or completedq(30958)
|only if haveq(30953,30958) or completedq(30953,30958)
step
talk Sentinel Commander Qipan##61584
turnin The Overwhelming Swarm##30957 |goto Townlong Steppes/0 39.41,61.96
|only if haveq(30957) or completedq(30957)
step
talk High Adept Paosha##61583
turnin Paying Tribute##30955 |goto Townlong Steppes/0 38.95,62.44
|only if haveq(30955) or completedq(30955)
step
label "end"
You have completed the available daily quests |complete false or not completedq(30006,30063,30064,30065,30066,30067,30068,30716,30717,30718,30726,30727,30728,30729,30730,30731,30732,30733,30734,30735,30736,30737,30738,30739,30740,30956,30952,30959,30954,30953,30957,30958,30955,30879,30880,31517,30881,30882,30883,30885,30907,30902,31492) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
|tip  |only if rep("August Celestials")>=Revered
'|talk Sage Whiteheart##64032 |goto Vale of Eternal Blossoms/0 62.79,23.39 |only if rep("The August Celestials")>=Revered
|tip Purchase the Grand Commendation of the August Celestials from Sage Whiteheart if possible. |only if rep("The August Celestials")>=Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this. |only if rep("The August Celestials")>=Revered
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies",{
expansion="mists",
mopready=true,
completion={"quests",10,11,18},
patch='50001',
startlevel=90,
description="This guide will take you through the Order of the Cloud Serpent dailies Becoming Exalted with The Order of the Cloud Serpent allows you to purchase flying mounts and designs for companion pets.",
},[[
step
label "start"
Proceeding to Order of the Cloud Serpent Dailies |complete completedq(30142) |next "dailies" |only if completedq(30142)
Moving to the Order of the Cloud Serpent prequests. |next |complete not completedq(30142) |only if not completedq(30142)
step
talk Elder Anli##58564
|tip She walks around this area.
accept Wild Things##30134 |goto The Jade Forest/0 57.74,44.95
step
talk Instructor Tong##58225
turnin Wild Things##30134 |goto The Jade Forest/0 65.33,31.64
accept Beating the Odds##30135 |goto The Jade Forest/0 65.33,31.64
accept Empty Nests##30136 |goto The Jade Forest/0 65.33,31.64
accept Egg Collection##30137 |goto The Jade Forest/0 65.33,31.64
stickystart "Slay_8_Slitherscale_Saurok"
stickystart "Collect_6_Serpent_Eggs"
step
use the Silken Rope##78947
|tip Use it on Windward Hatchlings.
click Windward Hatchling##58243
|tip Gather all 6 at once.
|tip There are multiple nests around the area, so if one is closer than the marked, use it.
Return #6# Windward Hatchlings to their nests |q 30136/1 |goto The Jade Forest/0 65.80,31.20
Search For Hatchlings Around Here [The Jade Forest/0 64.58,29.54]
step
label "Slay_8_Slitherscale_Saurok"
kill Slitherscale Ripper##58212, Slitherscale Eggdrinker##63532
Slay #8# Slitherscale Saurok |q 30135/1 |goto The Jade Forest/0 68.10,31.20
step
label "Collect_6_Serpent_Eggs"
click Serpent Egg##215392
collect 6 Serpent Egg##78959 |q 30137/1 |goto The Jade Forest/0 68.10,31.20
step
talk Instructor Tong##58225
turnin Beating the Odds##30135 |goto The Jade Forest/0 65.33,31.64
turnin Empty Nests##30136 |goto The Jade Forest/0 65.33,31.64
turnin Egg Collection##30137 |goto The Jade Forest/0 65.33,31.64
Watch the dialogue
accept Choosing the One##30138 |goto The Jade Forest/0 65.33,31.64
step
Choose You Egg
|tip Pick your favorite color between the selection.
talk Instructor Tong##58225
turnin Choosing the One##30138 |goto The Jade Forest/0 65.33,31.64
step
talk Instructor Tong##58225
|tip You will only accept one of the following quests.
accept The Rider's Journey##30139 |goto The Jade Forest/0 65.33,31.64 |or
accept The Rider's Journey##30140 |goto The Jade Forest/0 65.33,31.64 |or
accept The Rider's Journey##30141 |goto The Jade Forest/0 65.33,31.64 |or
step
talk Instructor Skythorn##58228
turnin The Rider's Journey##30139 |goto The Jade Forest/0 57.56,45.11 |only if haveq(30139) or completedq(30139)
turnin The Rider's Journey##30140 |goto The Jade Forest/0 57.56,45.11 |only if haveq(30140) or completedq(30140)
turnin The Rider's Journey##30141 |goto The Jade Forest/0 57.56,45.11 |only if haveq(30141) or completedq(30141)
accept It's A...##30142 |goto The Jade Forest/0 57.56,45.11
step
Watch the Cutscene
Watch Your Egg Hatch |q 30142/1 |goto The Jade Forest/0 57.56,45.11
step
talk Instructor Skythorn##58228
turnin It's A...##30142 |goto The Jade Forest/0 57.56,45.11
step
label "dailies"
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671 |only if rep("Order of the Cloud Serpent") < Revered
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674 |only if rep("Order of the Cloud Serpent") >= Revered
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
|tip It moves around this area.
accept Catch!##30151 |goto The Jade Forest/0 57.52,45.36 |or 2
accept Pooped##31704 |goto The Jade Forest/0 57.52,45.36 |or 2
accept Pooped##31716 |goto The Jade Forest/0 57.52,45.36 |or 2
accept Feeding Time##30156 |only if questonmap({418},30156) |or 2
accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest/0 57.52,45.36 |or 2
accept Sweet as Honey##30150 |goto The Jade Forest/0 57.52,45.36 |or 2
|tip
Click here if no quests are available |confirm
step
talk Instructor Skythorn##58228
accept Restoring the Balance##30155 |goto The Jade Forest/0 57.56,45.11 |or 2
accept Disarming the Enemy##30158 |goto The Jade Forest/0 57.56,45.11 |or 2
accept Thinning The Pack##31698 |goto The Jade Forest/0 57.56,45.11 |or 2
accept Weeping Widows##31706 |goto The Jade Forest/0 57.56,45.11 |or 2
accept A Tangled Web##31707 |goto The Jade Forest/0 57.56,45.11 |or 2
accept Monkey Mischief##31712 |goto The Jade Forest/0 57.56,45.11 |or 2
|tip
Click here if no quests are available |confirm
step
talk Jenova Longeye##58413
|tip Walking around the area.
accept Just a Flesh Wound##30148 |goto The Jade Forest/0 57.50,44.70 |only if skill('First Aid') >= 525
accept A Feast for the Senses##30149 |goto The Jade Forest/0 57.50,44.70
accept Fragments of the Past##30147 |goto The Jade Forest/0 57.50,44.70 |only if skill('Archaeology') >= 525
accept Snack Time##30146 |goto The Jade Forest/0 57.50,44.70
|tip If your fishing skill is low, fish from pools.
She can also be here [The Jade Forest/0 57.32,45.34]
|tip
Click here if no quests are available |confirm
step
talk Elder Anli##58564
|tip Walking around this area.
accept Slitherscale Suppression##31194 |goto The Jade Forest/0 57.63,44.95 |or 2
accept Madcap Mayhem##31703 |goto The Jade Forest/0 57.63,44.95 |or 2
accept Dark Huntress##31701 |goto The Jade Forest/0 57.63,44.95 |or 2
accept On The Prowl##31702 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Seed of Doubt##31711 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Trainer's Challenge: Ace Longpaw##31717 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Trainer's Challenge: Suchi the Sweet##31720 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Trainer's Challenge: Big Bao##31718 |goto The Jade Forest/0 57.63,44.95 |or 2
accept The Big Kah-Oona##31715 |goto The Jade Forest/0 57.63,44.95 |or 2
|tip
Click here if no quests are available |confirm
step
talk Ningna Darkwheel##58509
accept Sprite Fright##31699 |goto The Jade Forest/0 58.26,45.05 |or
accept The Shoe Is On The Other Foot##31700 |goto The Jade Forest/0 58.26,45.05 |or
|tip
Click here if no quests are available |confirm
step
talk Suchi the Sweet##58510
accept Preservation##30159 |goto The Jade Forest/0 58.47,44.70 |or
accept Emptier Nests##30157 |goto The Jade Forest/0 58.47,44.70 |or
|tip
Click here if no quests are available |confirm
step
talk Big Bao##58508
accept Lingering Doubt##31709 |goto The Jade Forest/0 57.49,44.02 |or
|tip
Click here if no quests are available |confirm
step
talk Qua-Ro Whitebrow##58511
accept Serpent's Scale##31708 |goto The Jade Forest/0 57.29,43.47 |or
accept Saving the Serpents##31714 |goto The Jade Forest/0 57.29,43.47 |or
|tip
Click here if no quests are available |confirm
step
talk Ace Longpaw##58506
accept The Big Brew-haha##31713 |goto The Jade Forest/0 58.02,43.70 |or
|tip
Click here if no quests are available |confirm
step
talk Instructor Windblade##58420
accept The Sky Race##30152 |goto The Jade Forest/0 58.61,43.65 |or
|tip
Click here if no quests are available |confirm
step
talk Instructor Windblade##58420
Tell her you are ready to start the Sky Race.
Ride your Dragon! |invehicle |goto The Jade Forest/0 58.61,43.65
|only if haveq(30152) or completedq(30152)
stickystart "Finish_the_Race"
step
map The Jade Forest/0
path loop on; follow strict; dist 50
path	60.60,39.40	59.70,31.50	61.30,25.20	66.30,36.00	66.20,42.40
path	66.80,51.40	64.00,51.00	60.40,52.90	61.80,54.50	58.70,46.80
path	58.40,46.40	58.10,46.00
Follow this path
|tip Collect the checked flags hanging off of the checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
Pass #10# Checkpoints |q 30152/1
|only if haveq(30152) or completedq(30152)
step
label "Finish_the_Race"
map The Jade Forest/0									|notinsticky
path loop on; follow strict; dist 50							|notinsticky
path	60.60,39.40	59.70,31.50	61.30,25.20	66.30,36.00	66.20,42.40	|notinsticky
path	66.80,51.40	64.00,51.00	60.40,52.90	61.80,54.50	58.70,46.80	|notinsticky
path	58.40,46.40	58.10,46.00							|notinsticky
Follow this path									|notinsticky
Pass Underneath the Finish Line |q 30152/2
|only if haveq(30152) or completedq(30152)
step
talk Qua-Ro Whitebrow##58511
|tip Challenge him to a duel!
Defeat Qua-Ro Whitebrow |q 31721/1 |goto The Jade Forest/0 57.29,43.47
|only if haveq(31721) or completedq(31721)
step
talk Ace Longpaw##58506
|tip Challenge him to a duel!
Defeat Ace Longpaw |q 31717/1 |goto The Jade Forest/0 58.02,43.70
|only if haveq(31717) or completedq(31717)
step
talk Big Bao##58508
|tip Challenge him to a duel!
Defeat Big Bao |q 31718/1 |goto The Jade Forest/0 57.49,44.02
|only if haveq(31718) or completedq(31718)
step
talk Suchi the Sweet##58510
|tip Challenge him to a duel!
Defeat Suchi the Sweet |q 31720/1 |goto The Jade Forest/0 58.47,44.70
|only if haveq(31720) or completedq(31720)
stickystart "Slay_8_Slitherscale_Saurok"
stickystart "Collect_5_Slitherscale_Harpoons"
stickystart "Collect_8_Stolen_Eggs"
stickystart "Feed_Your_Hatchling"
step
kill Slitherscale Lizard-Lord##63536 |q 31194/1 |goto The Jade Forest/0 69.80,31.30
|only if haveq(31194) or completedq(31194)
step
label "Slay_8_Slitherscale_Saurok"
Kill Slitherscale enemies around this area |kill Slitherscale Ripper##58212, Slitherscale Eggdrinker##63532
Slay #8# Slitherscale Saurok |q 30155/1 |goto The Jade Forest/0 68.10,31.20
|only if haveq(30155) or completedq(30155)
step
label "Collect_5_Slitherscale_Harpoons"
click Slitherscale Weapons##210277
collect 5 Slitherscale Harpoon##79025 |q 30158/1 |goto The Jade Forest/0 68.10,31.20
|only if haveq(30158) or completedq(30158)
step
label "Collect_8_Stolen_Eggs"
click Serpent Egg##215392
collect 8 Stolen Egg##79067 |q 30159/1 |goto The Jade Forest/0 68.10,31.20
|only if haveq(30159) or completedq(30159)
step
label "Feed_Your_Hatchling"
Kill Saltback enemies around this area |kill Saltback Turtle##58218, Saltback Yearling##58219
collect 15 Saltback Meat Scrap##79028 |n
use the Saltback Meat Scrap##79028
collect 3 Saltback Meat##79027 |n
use the Saltback Meat##79027
Feed Your Hatchling #3# Times |q 30156/1 |goto The Jade Forest/0 64.60,33.30
|only if haveq(30156) or completedq(30156)
step
use the Bouncy Ball##79043
|tip Catch the Bouncy Ball whenever your Hatchling tosses it up.
|tip This will be every second throw.
Catch the Ball #8# Times |q 30151/1 |goto The Jade Forest/0 57.20,45.20
|only if haveq(30151) or completedq(30151)
step
kill Giant Siftworm##67084
click Hatchling Poop##214863
|tip They tend to be near Giant Siftworms.
collect 5 Tiny Bag of Poop##89052 |q 31704/1 |goto The Jade Forest/0 55.10,46.50
|only if haveq(31704) or completedq(31704)
step
kill Giant Siftworm##67084
click Hatchling Poop##214863
|tip They tend to be near Giant Siftworms.
collect 5 Big Bag of Poop##89053 |q 31716/1 |goto The Jade Forest/0 55.10,46.50
|only if haveq(31716) or completedq(31716)
step
_Next to you:_
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671 |only if rep("Order of the Cloud Serpent") < Revered
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674 |only if rep("Order of the Cloud Serpent") >= Revered
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
turnin Pooped##31704 |goto The Jade Forest/0 57.52,45.36
|only if haveq(31704) or completedq(31704)
step
_Next to you:_
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671  |only if rep("Order of the Cloud Serpent") < Revered
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674 |only if rep("Order of the Cloud Serpent") >= Revered
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
turnin Pooped##31716 |goto The Jade Forest/0 57.52,45.36
|only if haveq(31716) or completedq(31716)
stickystart "Kill_Windward_Saber"
stickystart "Collect_5_Tiger_Flanks"
stickystart "Kill_7_Shadowfae_Tricksters"
stickystart "Kill_8_Windward_Alpha"
stickystart "Collect_14_Stolen_Boots"
step
kill Shadowfae Madcap##65613 |q 31703/1 |goto The Jade Forest/0 62.70,27.40
|tip Inside the cave.
|only if haveq(31703) or completedq(31703)
step
kill Windward Huntress##63538 |q 31701/1 |goto The Jade Forest/0 64.70,25.70
|tip Inside the cave.
|only if haveq(31701) or completedq(31701)
step
label "Kill_Windward_Saber"
kill Windward Saber##65612 |q 31702/1 |goto The Jade Forest/0 63.80,22.30
|only if haveq(31702) or completedq(31702)
step
label "Collect_5_Tiger_Flanks"
kill Windward Tiger##63537
collect 5 Tiger Flank##85282 |q 30154/1 |goto The Jade Forest/0 62.80,24.70
|only if haveq(30154) or completedq(30154)
step
label "Kill_7_Shadowfae_Tricksters"
kill 7 Shadowfae Trickster##65635+ |q 31699/1 |goto The Jade Forest/0 62.80,24.70
|only if haveq(31699) or completedq(31699)
step
label "Kill_8_Windward_Alpha"
Kill Windward enemies around this area |kill Windward Alpha##67085, Windward Tiger##63537
Slay #8# Windward Tigers |q 31698/1 |goto The Jade Forest/0 62.80,24.70
|only if haveq(31698) or completedq(31698)
step
label "Collect_14_Stolen_Boots"
click Stolen Boots##214868
|tip They will likely be surrounded by Shadowfae Tricksters.
collect 14 Stolen Boots##89054 |q 31700/1 |goto The Jade Forest/0 62.80,24.70
|only if haveq(31700) or completedq(31700)
stickystart "Collect_100_Tiny_Spider_Eyes"
stickystart "Kill_7_Weeping_Widow"
stickystart "Collect_25_Serpent_Scales"
stickystart "Free_5_SriLa_Villagers"
step
Enter the cave |goto The Jade Forest/0 58.00,31.70 < 10 |walk
use the Sha Attunement Device##88966
|tip Use the Sha Attunement Device next to the Disturbance.
Measure the Northeastern Sha Disturbance |q 31709/2 |goto The Jade Forest/15 62.70,25.70
|only if haveq(31709) or completedq(31709)
step
use the Sha Attunement Device##88966
|tip Use the Sha Attunement Device next to this Disturbance.
Measure the Northwestern Sha Disturbance |q 31709/1 |goto The Jade Forest/15 37.00,31.90
|only if haveq(31709) or completedq(31709)
step
Enter the cave |goto The Jade Forest/0 57.72,31.68 < 10 |walk
|tip At the base of the mountain.
kill Seed of Doubt##65614 |q 31711/1 |goto The Jade Forest/15 35.70,40.20
|only if haveq(31711) or completedq(31711)
step
use the Sha Attunement Device##88966
|tip Use the Sha Attunement Device next to this Disturbance.
Measure the Southern Sha Disturbance |q 31709/3 |goto The Jade Forest/15 61.00,74.10
|only if haveq(31709) or completedq(31709)
step
label "Collect_100_Tiny_Spider_Eyes"
Enter the cave |goto The Jade Forest/15 58.00,31.70 < 10
kill Widowspawn##65658+
collect 100 Tiny Spider Eye##88907 |q 31710/1
|only if haveq(31710) or completedq(31710)
step
label "Kill_7_Weeping_Widow"
kill 7 Weeping Widow##65653+ |q 31706/1
|only if haveq(31706) or completedq(31706)
step
label "Collect_25_Serpent_Scales"
click Serpent's Scale##214844
collect 25 Serpent's Scale##88895 |q 31708/1
|only if haveq(31708) or completedq(31708)
step
label "Free_5_SriLa_Villagers"
kill Widow's Web##65634+
Free #5# Sri-La Villagers |q 31707/1
|only if haveq(31707) or completedq(31707)
stickystart "Collect_10_Rescued_Serpents"
stickystart "Kill_Oona_Brewchugger"
stickystart "Kill_13_Oona_Goons"
step
Enter the cave |goto The Jade Forest/0 57.70,27.70 < 10 |walk
kill 1 Lord Oona##65628 |q 31715/1 |goto The Jade Forest/16 45.80,77.80
|tip Inside the cave.
|only if haveq(31715) or completedq(31715)
step
label "Collect_10_Rescued_Serpents"
clicknpc Serpent##128767
collect 10 Rescued Serpent##88894 |q 31714/1 |goto The Jade Forest/16 55.20,28.40
|only if haveq(31714) or completedq(31714)
step
label "Kill_Oona_Brewchugger"
kill Oona Brewchugger##65624
click Stolen Sri-La Keg##214986
collect 100 Sri-La Stout##88855 |q 31713/1 |goto The Jade Forest/16 55.20,28.40
|only if haveq(31713) or completedq(31713)
step
label "Kill_13_Oona_Goons"
Kill Oona enemies around this area |kill Oona Goon##65621, Oona Brewchugger##65624, Oona Tuna-Catcher##65623
Slay #13# Oona Hozen  |q 31712/1 |goto The Jade Forest/16 55.20,28.00
|only if haveq(31712) or completedq(31712)
step
use the Silken Rope##78947
|tip Use it on Windward Hatchlings.
Return #6# Windward Hatchlings |q 30157/1 |goto The Jade Forest/0 64.57,30.34
You can find them around [The Jade Forest/0 65.15,30.07]
|tip They are nest made of stone surrounded by green pillars.
|only if haveq(30157) or completedq(30157)
step
kill Honeykeeper##58363+
collect 30 Honeycomb##79030 |q 30150/1 |goto The Jade Forest/0 55.10,47.20
|only if haveq(30150) or completedq(30150)
step
Fish in the Open Water
collect 10 Sugar Minnow##79046|q 30146/1|goto The Jade Forest/0 59.74,42.21
|tip Save any Golden Carp to make Fish Cakes.
|only if haveq(30146) or completedq(30146)
step
talk Ace Longpaw##58506
turnin The Big Brew-haha##31713 |goto The Jade Forest/0 58.02,43.70
|only if haveq(31713) or completedq(31713)
step
collect 8 Windwool Bandage##72985 |q 30148 |or
_Or_
collect 8 Heavy Windwool Bandage##72986 |q 30148 |or
|tip Create them with Tailoring or purchase them from the auction house.
|tip Either bandage will work.
|only if haveq(30148) or completedq(30148)
step
clicknpc Injured Hatchling##58416
use the Windwool Bandage##72985
use the Heavy Windwool Bandage##72986
Bandage #8# Injured Hatchlings |q 30148/1 |goto The Jade Forest/0 63.90,31.10
|only if haveq(30148) or completedq(30148)
step
collect 5 Fish Cake##74641 |q 30149/1
|tip Create them with Pandaria Cooking recipes or purchase them from the auction house.
|tip Each one requires two Golden Carp.
|only if haveq(30149) or completedq(30149)
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Slitherscale Suppression##31194 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31194) or completedq(31194)
turnin Dark Huntress##31701 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31701) or completedq(31701)
turnin On The Prowl##31702 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31702) or completedq(31702)
turnin Restoring the Balance##30155 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30155) or completedq(30155)
turnin Disarming the Enemy##30158 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30158) or completedq(30158)
turnin Madcap Mayhem##31703 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31703) or completedq(31703)
turnin The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30154) or completedq(30154)
turnin Sprite Fright##31699 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31699) or completedq(31699)
turnin Thinning The Pack##31698 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31698) or completedq(31698)
turnin The Shoe Is On The Other Foot##31700 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31700) or completedq(31700)
turnin Weeping Widows##31706 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31706) or completedq(31706)
turnin The Seed of Doubt##31711 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31711) or completedq(31711)
turnin A Tangled Web##31707 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31707) or completedq(31707)
turnin The Sky Race##30152 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30152) or completedq(30152)
turnin The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30152) or completedq(30152)
turnin The Trainer's Challenge: Ace Longpaw##31717 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31717) or completedq(31717)
turnin The Trainer's Challenge: Suchi the Sweet##31720 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31720) or completedq(31720)
turnin The Trainer's Challenge: Big Bao##31718 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31718) or completedq(31718)
turnin Preservation##30159 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30159) or completedq(30159)
turnin Lingering Doubt##31709 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31709) or completedq(31709)
turnin Emptier Nests##30157 |goto The Jade Forest/0 57.63,44.95 |only if haveq(30157) or completedq(30157)
turnin Monkey Mischief##31712 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31712) or completedq(31712)
turnin The Big Kah-Oona##31715 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31715) or completedq(31715)
turnin Saving the Serpents##31714 |goto The Jade Forest/0 57.63,44.95 |only if haveq(31714) or completedq(31714)
|only if haveq(31194,31701,31702,30155,30158,31703,30154,31699,31698,31700,31706,31711,31707,30152,31721,31717,31720,31718,30159,31709,30157,31712,31715,31714) or completedq(31194,31701,31702,30155,30158,31703,30154,31699,31698,31700,31706,31711,31707,30152,31721,31717,31720,31718,30159,31709,30157,31712,31715,31714)
step
_Next to you:_
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671  |only if rep("Order of the Cloud Serpent") < Revered
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674  |only if rep("Order of the Cloud Serpent") >= Revered
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
turnin Tiny Treats##31710 |goto The Jade Forest/0 57.52,45.36 |only if haveq(31710) or completedq(31710)
turnin Sweet as Honey##30150 |goto The Jade Forest/0 57.52,45.36 |only if haveq(30150) or completedq(30150)
turnin Feeding Time##30156 |goto The Jade Forest/0 57.52,45.36 |only if haveq(30156) or completedq(30156)
turnin Pooped##31704 |goto The Jade Forest/0 57.52,45.36 |only if haveq(31704) or completedq(31704)
turnin The Easiest Way To A Serpent's Heart##30154 |only if haveq(30154) or completedq(30154)
|only if haveq(31710,30150,30156,31704,30154) or completedq(31710,30150,30156,31704,30154)
step
Locate a Dig Site in a Mist of Pandaria Zone
|tip They look like small shovel icons on your world map that spawn in random places.
|tip Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip Use your Survey ability inside the dig site area.
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments
collect 6 Serpentrider Relic## |q 30147/1
|only if haveq(30147) or completedq(30147)
step
talk Jenova Longeye##58413
|tip Walking around the area.
turnin Just a Flesh Wound##30148 |goto The Jade Forest/0 57.50,44.70 |only if haveq(30148) or completedq(30148)
turnin A Feast for the Senses##30149 |goto The Jade Forest/0 57.50,44.70 |only if haveq(30149) or completedq(30149)
turnin Fragments of the Past##30147 |goto The Jade Forest/0 57.50,44.70 |only if haveq(30147) or completedq(30147)
turnin Snack Time##30146 |goto The Jade Forest/0 57.50,44.70 |only if haveq(30146) or completedq(30146)
|only if haveq(30148,30149,30147,30146) or completedq(30148,30149,30147,30146)
step
_Next to you:_
Talk to your Hatchling |talk Your Hatchling##65669, Your Hatchling##65670, Your Hatchling##65671 |only if rep("Order of the Cloud Serpent") < Revered
Talk to your Cloud Serpent |talk Your Cloud Serpent##65673, Your Hatchling##65672, Your Cloud Serpent##65674 |only if rep("Order of the Cloud Serpent") >= Revered
|tip Your Hatchling or Cloud Serpent is whichever color egg you chose in the prequests.
turnin Sweet as Honey##30150 |goto The Jade Forest/0 57.52,45.36
|only if haveq(30150)
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Catch!##30151 |goto The Jade Forest/0 57.63,44.95
|only if haveq(30151)
step
talk Elder Anli##58564
|tip Walking around this area.
accept Needle Me Not##31705 |goto The Jade Forest/0 57.63,44.95
|only if completedq(30151)
step
use Golden Honey##89113
kill Orchard Needler |q 31705/1 |goto The Jade Forest/0 57.00,41.20
|only if haveq(31705) or completedq(31705)
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Needle Me Not##31705 |goto The Jade Forest/0 57.63,44.95
|next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
|next "revered" |only if rep("Order of the Cloud Serpent")==Revered
|next "end" |only if rep("Order of the Cloud Serpent")<=Revered
step
label "revered"
talk Elder Anli##58564
|tip Walking around this area.
accept They Grow Like Weeds##30143 |goto The Jade Forest/0 57.63,44.95
step
talk Instructor Windblade##58420
Select _"Instructor Windblade, how is my serpent doing?"_ |gossip 125863
Speak to Instructor Windblade |q 30143/1 |goto The Jade Forest/0 58.61,43.65
step
talk Instructor Windblade##58420
turnin They Grow Like Weeds##30143 |goto The Jade Forest/0 58.61,43.65
accept Flight Training: Ring Round-Up##30144 |goto The Jade Forest/0 58.61,43.65
step
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58430
|tip The choice of Cloud Serpent may vary depending on which you first chose.
Ride Your Cloud Serpent |invehicle Golden Cloud Serpent##58429 |c |goto The Jade Forest/0 58.58,43.50
|only if haveq(30144)
step
Fly Through #6# Cloud Rings |q 30144/1 |goto The Jade Forest/0 60.61,35.48
|tip They look like rings of clouds around this area.
step
Click the Leave Vehicle button |outvehicle |c |goto The Jade Forest/0 58.61,43.65
step
talk Instructor Windblade##58420
turnin Flight Training: Ring Round-Up##30144 |goto The Jade Forest/0 58.61,43.65
accept Flight Training: Full Speed Ahead##30145 |goto The Jade Forest/0 58.61,43.65
step
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
|tip The choice of Cloud Serpent may vary depending on which you first chose.
Ride your Cloud Serpent |invehicle |c
|only if haveq(30145)
step
Finish the course |q 30145/1
|tip Follow Instructor Windblade through the course.
|tip Her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide.
|tip If you move too slowly or get too far away from the guide, the course will restart.
step
talk Instructor Windblade##58420
turnin Flight Training: Full Speed Ahead##30145 |goto The Jade Forest/0 58.61,43.65
accept Flight Training: In Due Course##30187 |goto The Jade Forest/0 58.61,43.65
step
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
|tip The choice of Cloud Serpent may vary depending on which you first chose.
Ride your Cloud Serpent |invehicle |c
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 60.74,39.36 |count 1
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 59.73,31.58 |count 2
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 61.28,25.30 |count 3
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 66.33,36.00 |count 4
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 66.11,42.39 |count 5
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 66.83,51.28 |count 6
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 64.05,51.01 |count 7
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint|q 30187/1 |goto The Jade Forest/0 60.42,53.05 |count 8
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 61.75,54.54 |count 9
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
Pass through the Checkpoint |q 30187/1 |goto The Jade Forest/0 58.76,46.76 |count 10
|tip Collect the checked flags hanging off of the Checkpoint balloons.
|tip As you fly, gain speed by flying through cloud rings.
|only if haveq(30187)
step
talk Instructor Windblade##58420
turnin Flight Training: In Due Course##30187 |goto The Jade Forest/0 58.61,43.65
|next "end"
step
label "exalted"
talk Elder Anli##58564
|tip Walking around this area.
accept Riding the Skies##31811 |goto The Jade Forest/0 57.64,44.95 |or
accept Riding the Skies##30188 |goto The Jade Forest/0 57.64,44.95 |or
step
Watch the cinematic
Join the Order of the Cloud Serpent |q 31811/1 |only if haveq(31811) or completedq(31811)
oin the Order of the Cloud Serpent |q 30188/1 |only if haveq(30188) or completedq(30188)
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Riding the Skies##31811 |goto The Jade Forest/0 57.64,44.95 |only if haveq(31811) or completedq(31811)
turnin Riding the Skies##30188 |goto The Jade Forest/0 57.64,44.95 |only if haveq(30188) or completedq(30188)
step
Proceeding to the next step |next "end" |only if default
Proceeding to Riding the Skies Quest |next "exalted" |only if rep('Order of the Cloud Serpent')==Exalted
step
label "exalted"
talk Elder Anli##58564
|tip Walking around this area.
accept Riding the Skies##31810 |goto The Jade Forest/0 57.70,44.90
step
talk Elder Anli##58564
|tip Walking around this area.
turnin Riding the Skies##31810 |goto The Jade Forest/0 57.70,44.90
step
label "end"
You have completed the available daily quests |complete false or not completedq(31704,31716,31713,31194,31701,31702,30155,30158,31703,30154,31699,31698,31700,31706,31711,31707,30152,31721,31717,31720,31718,30159,31709,30157,31712,31715,31714,31710,30150,30156,31704,30154,30148,30149,30147,30146,30150,30151,31705) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
'|talk San Redscale##58414  |only if rep("Order of the Cloud Serpent")>=Revered
|tip |only if rep("Order of the Cloud Serpent")>=Revered
buy Grand Commendation of the Order of the Cloud Serpent##93229 |goto The Jade Forest/0 56.60,44.40 |n |only if rep("Order of the Cloud Serpent")>=Revered
|tip You can buy the Grand Commedation of the Golden Lotus from San Redscale. |only if rep("Order of the Cloud Serpent")>=Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this. |only if rep("Order of the Cloud Serpent")>=Revered
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies",{
expansion="mists",
mopready=true,
completion={"quests"},
startlevel=90,
description="This guide will take you through the Shado-Pan dailies Becoming Exalted with The Shado-Pan allows you to purchase ground mounts and armor for your character.",
patch='50100'
},[[
step
label "dailies"
Click here if _Master Snowdrift_ is the questgiver today |confirm |goto Townlong Steppes/0 49.50,70.60
Click here if _Ban Bearheart_ is the questgiver today |confirm  |goto Townlong Steppes/0 49.00,70.50 |next "Ban_Bearheart"
Click here if _Ling of the Six Pools_ is the questgiver today|confirm  |goto Townlong Steppes/0 49.00,71.30 |next "Ling_of_the_Six_Pools"
step
talk Master Snowdrift##63009
|tip Walking around this area.
accept The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes/0 49.51,70.56
|only if not completedq(31127) and rep('Shado-Pan')>=Honored
step
talk Master Snowdrift##63009
|tip Walking around this area.
accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes/0 49.51,70.56
|only if rep('Shado-Pan')>=Revered
step
talk Lao-Chin the Iron Belly##62978
Select _"I'm here to challenge you!"_ |gossip 129477
Challenge Lao-Chin the Iron Belly |q 31128/1 |goto Townlong Steppes/0 49.29,71.93
|only if haveq(31128) or completedq(31128)
step
talk Lao-Chin the Iron Belly##63135
Select _"All right, let's do this!"_ |gossip 129479
Defeat Lao-Chin the Iron Belly |q 31128/2 |goto Townlong Steppes/0 50.54,67.83
|only if haveq(31128) or completedq(31128)
step
talk Master Snowdrift##63009
|tip Walking around this area.
turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes/0 49.60,70.50
|only if haveq(31128) or completedq(31128)
step
talk Chao the Voice##62550
Select _"I'm here to challenge you!"_ |gossip 129472
Challenge Chao the Voice |q 31127/1 |goto Townlong Steppes/0 49.67,70.49
|only if haveq(31127) or completedq(31127)
step
talk Chao the Voice##63125
Select _"Let's do this."_ |gossip 129473
Defeat Chao the Voice |q 31127/2 |goto Townlong Steppes/0 50.15,68.28
|only if haveq(31127) or completedq(31127)
step
talk Master Snowdrift##63009
|tip Walking around this area.
turnin The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes/0 49.51,70.56
|only if haveq(31127) or completedq(31127)
step
talk Master Snowdrift##63009
|tip Walking around this area.
|tip You will only be able to accept 4 of the following dailies.
accept Assault Fire Camp Gai-Cho##31113 |goto Townlong Steppes/0 49.51,70.56 |or 4
accept Assault Deadtalker's Plateau##31114 |goto Townlong Steppes/0 49.51,70.56 |or 4
accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto Townlong Steppes/0 49.51,70.56 |or 4
accept Spirit Dust##31116 |goto Townlong Steppes/0 49.51,70.56 |or 4
accept The Deadtalker Cipher##31118 |goto Townlong Steppes/0 49.51,70.56 |or 4
step
talk Protector Yi##62546		|goto Townlong Steppes/0 49.30,71.30
Select _"I would like you to come with me today."_ |gossip 39260
talk Chao the Voice##62550		|goto Townlong Steppes/0 49.70,70.50 |only if completedq(31127) |only if rep('Shado-Pan')>=Honored
|tip |only if completedq(31127)
talk Lao-Chin the Iron Belly##62978	|goto Townlong Steppes/0 49.30,71.90 |only if completedq(31128)
|tip |only if completedq(31128)
|tip Choose one to accompany you. |only if rep('Shado-Pan')>=Honored
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub. |only if rep('Shado-Pan')>=Honored
|tip Yi patrols so you may need to search for him.
|confirm
stickystart "Slay_100_Gai_Cho_Battlefield_Combatants"
step
Kill Gai-Cho enemies around this area |kill Gai-Cho Yaungol##62552, Gai-Cho Earthtalker##62553, Gai-Cho Pitchthrower##62608
Slay #16#  Gai-Cho Enemies |q 31113/1 |goto Townlong Steppes/0 63.40,43.30
|only if haveq(31113) or completedq(31113)
step
label "Slay_100_Gai_Cho_Battlefield_Combatants"
click Highly Explosive Yaungol Oil Barrel##212877
|tip You can only carry 10 at a time, so you may need to make multiple trips.
collect 10 Highly Explosive Yaungol Oil##84762 |n |goto Townlong Steppes/0 63.40,43.30
use the Highly Explosive Yaungol Oil Barrel##84762 |notinsticky
Kill enemies around this area |kill Gai-Cho Boltshooter##62589, Gai-Cho Cauterizer##62577, Gai-Cho Gatewatcher##62568, Kri'thik Aggressor##62572, Kri'thik Screecher##62602 |notinsticky
Slay #100# Gai-Cho Battlefield Combatants |q 31119/1 |goto Townlong Steppes/0 60.20,48.60 |notinsticky
|only if haveq(31119) or completedq(31119)
stickystart "Slay_Deadtalker_Crusher"
stickystart "Kill_8_Deadtalker_Corpsedfiler"
stickystart "Return_8_Spirit_Remains"
step
Kill Deadtalker enemies around this area |kill Deadtalker Crusher##62844, Deadtalker Corpsedefiler##62677
collect Ciphered Scroll##84759 |q 31118/1  |goto Townlong Steppes/0 51.10,51.80
|only if haveq(31118) or completedq(31118)
step
label "Slay_Deadtalker_Crusher"
step
kill Deadtalker Crusher##62844 |q 31114/2 |goto Townlong Steppes/0 51.10,51.80
|tip He is elite but with your companion you should be able to defeat him.
|only if haveq(31114) or completedq(31114)
step
label "Kill_8_Deadtalker_Corpsedfiler"
kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |goto Townlong Steppes/0 51.10,51.80
|only if haveq(31114) or completedq(31114)
step
label "Return_8_Spirit_Remains"
kill Defiled Spirit##62679+
collect 32 Ancient Spirit Dust##84727 |n
click Defiled Yaungol Remains##212779
Return #8# Spirits to Their Remains |q 31116/1 |goto Townlong Steppes/0 51.43,51.81
[Townlong Steppes/0 50.70,52.58]
[Townlong Steppes/0 50.41,49.04]
[Townlong Steppes/0 52.63,50.76]
|only if haveq(31116) or completedq(31116)
step
_Next to you:_
talk Chao the Voice##62550 |only if completedq(31127)
talk Protector Yi##62546
talk Lao-Chin the Iron Belly##62978 |only if completedq(31128)
turnin Assault Fire Camp Gai-Cho##31113 |only if haveq(31113) or completedq(31113)
turnin Assault Deadtalker's Plateau##31114 |only if haveq(31114) or completedq(31114)
turnin The Enemy of My Enemy... Is Still My Enemy!##31119 |only if haveq(31119) or completedq(31119)
turnin Spirit Dust##31116 |only if haveq(31116) or completedq(31116)
turnin The Deadtalker Cipher##31118 |only if haveq(31118) or completedq(31118)
|only if haveq(31113,31114,31119,31116,31118) or completedq(31113,31114,31119,31116,31118)
step
Click the Complete Quest Box:
accept Uruk!##31117 |or
accept Cheng Bo!##31120 |or
step
kill Uruk##62613 |q 31117/1 |goto Townlong Steppes/0 50.40,48.90
|only if haveq(31117) or completedq(31117)
step
kill Cheng Bo##62554 |q 31120/1 |goto Townlong Steppes/0 60.70,42.10
|only if haveq(31120) or completedq(31120)
step
talk Master Snowdrift##63009
|tip Walking around this area.
turnin Uruk!##31117 |goto Townlong Steppes/0 49.60,70.50 |or |only if haveq(31117) or completedq(31117)
turnin Cheng Bo!##31120 |goto Townlong Steppes/0 49.60,70.50 |or |only if haveq(31120) or completedq(31120)
|only if haveq(31117,31120) or completedq(31117,31120)
|next "end"
step
label "Ban_Bearheart"
talk Ban Bearheart##62304
accept The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes/0 49.02,70.45
|only if not completedq(31038) and rep('Shado-Pan')>=Honored
|only if rep('Shado-Pan')>=Honored
step
talk Ban Bearheart##62304
accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes/0 49.02,70.45
|only if rep('Shado-Pan')>=Revered
step
talk Snow Blossom##62834
Select _"I challenge you!"_ |gossip 126344
Defeat Snow Blossom |q 31038/2 |goto Townlong Steppes/0 50.17,67.90
|only if haveq(31038) or completedq(31038)
step
talk Snow Blossom##62834
Select _"I challenge you!"_ |gossip 35296
kill Snow Blossom##62781
Defeat Snow Blossom |q 31038/2 |goto Townlong Steppes/0 50.17,67.90
|only if haveq(31038) or completedq(31038)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes/0 49.02,70.45
|only if haveq(31038) or completedq(31038)
step
talk Yalia Sagewhisper##62303
Select _"Shall we meet in the Challenger's Ring?"_ |gossip 126312
Challenge Yalia Sagewhisper |q 31104/1 |goto Townlong Steppes/0 48.85,70.02
|only if haveq(31104) or completedq(31104)
step
talk Yalia Sagewhisper##62850
Select _"I challenge you!"_ |gossip 126377
Defeat Yalia Sagewhisper |q 31104/2 |goto Townlong Steppes/0 50.36,67.73
|only if haveq(31104) or completedq(31104)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes/0 49.02,70.45
|only if haveq(31104) or completedq(31104)
step
talk Ban Bearheart##62304
accept Born Free##31047 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept The Mogu Menace##31105 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept The Mogu Menace##31106 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept The Mogu Menace##31039 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Bronze Claws##31044 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Illusions Of The Past##31045 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Grave Consequences##31048 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Dark Arts##31043 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Onyx Hearts##31042 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Spiteful Sprites##31040 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Egg Rescue!##31041 |goto Townlong Steppes/0 49.02,70.45 |or 4
accept Little Hatchlings##31046 |goto Townlong Steppes/0 49.02,70.45 |or 4
step
talk Snow Blossom##62380	|goto Townlong Steppes/0 48.90,70.10 |only if rep('Shado-Pan')>=Honored
Select _"Would you accompany me?"_ |gossip 126308 |only if rep('Shado-Pan')>=Honored
|tip
talk Fei Li##62354		|goto Townlong Steppes/0 48.80,70.20
Select _"Would you accompany me?"_ |gossip 28741
talk Yalia Sagewhisper##62303	|goto Townlong Steppes/0 48.80,70.00 |only if completedq(31104)
|tip
|tip Choose one to accompany you.
|tip Only Fei Li will be available initially. |only if rep('Shado-Pan') < Honored
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
Click Here to Continue |confirm
step
Enter the cave |goto Townlong Steppes/0 28.82,23.26 < 5
talk Moshu the Arcane##62810
|tip Inside the cave.
accept Through the Portal##31110 |goto Townlong Steppes/0 28.85,22.58
|only if not completedq(31110)
stickystart "Free_20_Cloudrider_Hatchlings"
stickystart "Collect_8_Cloudrunner_Eggs"
step
clicknpc Ball and Chain##62539
Free #6# Wild Cloudriders |q 31047/1 |goto Townlong Steppes/0 32.80,25.10
|only if haveq(31047) or completedq(31047)
stickystart "Collect_8_Shanze_Tablets"
stickystart "Collect_24_Shanze_Ancestors"
stickystart "Collect_4_Onyx_Hearts"
stickystart "Kill_12_Shan'ze_Enemies_1"
stickystart "Kill_12_Shan'ze_Enemies_2"
stickystart "Kill_12_Shan'ze_Enemies_3"
stickystart "Collect_20_Bronze_Claws"
stickystart "Collect_1000_Ancient_Arcane_Powder"
step
label "Free_20_Cloudrider_Hatchlings"
click Shan'ze Cage##215573
Free #20# Cloudrider Hatchlings |q 31046/1 |goto Townlong Steppes/0 32.80,25.10
|only if haveq(31046) or completedq(31046)
step
label "Collect_8_Cloudrunner_Eggs"
click Shiny Egg##214481
collect 8 Cloudrunner Egg##83129 |q 31041/1 |goto Townlong Steppes/0 32.80,25.10
|only if haveq(31041) or completedq(31041)
step
kill 3 Shan'ze Illusionist##62440+ |q 31045/1 |goto Townlong Steppes/0 24.40,15.20
|only if haveq(31045) or completedq(31045)
step
label "Collect_8_Shanze_Tablets"
click Shan'ze Tablet##212319
collect 8 Shan'ze Tablet##83130 |q 31043/1 |goto Townlong Steppes/0 24.40,15.20
|only if haveq(31043) or completedq(31043)
step
label "Collect_24_Shanze_Ancestors"
click Mogu Burial Urn##212324
kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |goto Townlong Steppes/0 24.40,15.20
|only if haveq(31048) or completedq(31048)
step
label "Collect_4_Onyx_Hearts"
kill Onyx Stormclaw##62448
collect 4 Onyx Heart##83138 |q 31042/1 |goto Townlong Steppes/0 24.40,15.20
|only if haveq(31042) or completedq(31042)
step
label "Kill_12_Shan'ze_Enemies_1"
kill Shan'ze Serpentbinder##62293, Shan'ze Beastmaster##62530
Slay #12# Shan'ze enemies |q 31105/1 |goto Townlong Steppes/0 28.50,18.50
|only if haveq(31105) or completedq(31105)
step
label "Kill_12_Shan'ze_Enemies_2"
kill Shan'ze Serpentbinder##62293, Shan'ze Beastmaster##62530
Slay #12# Shan'ze enemies |q 31106/1 |goto Townlong Steppes/0 28.50,18.50
|only if haveq(31106) or completedq(31106)
step
label "Kill_12_Shan'ze_Enemies_3"
kill Shan'ze Serpentbinder##62293, Shan'ze Beastmaster##62530
Slay #12# Shan'ze enemies |q 31039/1 |goto Townlong Steppes/0 33.61,25.90
You can find more around [Townlong Steppes/0 28.50,18.50]
|only if haveq(31039) or completedq(31039)
step
label "Collect_20_Bronze_Claws"
kill Bronze Quilen##62266+
collect 20 Bronze Claw##83153+ |q 31044/1 |goto Townlong Steppes/0 28.50,18.50
|only if haveq(31044) or completedq(31044)
step
label "Slay_30_Darkwoods_Enemies"
Kill Darkwoods enemies around this area |kill Darkwoods Pixie##62268, Darkwoods Charmer##62457
Slay #30# Darkwoods Sprites or Darkwoods Charmers |q 31040/1 |goto Townlong Steppes/0 23.00,19.50
|only if haveq(31040) or completedq(31040)
step
label "Collect_1000_Ancient_Arcane_Powder"
Kill Shan'ze enemies around this area |kill Shan'ze Serpentbinder##62293, Shan'ze Illusionist##62440, Shan'ze Ancestor##62285, Shan'ze Beastmaster##62515, Darkwoods Charmer##62520
collect 1000 Ancient Arcane Powder##84102 |q 31110/1 |goto Townlong Steppes/0 33.61,25.88
|only if haveq(31110) or completedq(31110)
step
_Next to you:_
talk Fei Li##62354
talk Snow Blossom##62380
talk Yalia Sagewhisper##62303 |only if completedq(31104)
turnin The Mogu Menace##31105 |only if haveq(31105) or completedq(31105)
turnin The Mogu Menace##31106 |only if haveq(31106) or completedq(31106)
turnin The Mogu Menace##31039 |only if haveq(31039) or completedq(31039)
turnin Bronze Claws##31044 |only if haveq(31044) or completedq(31044)
turnin Illusions Of The Past##31045 |only if haveq(31045) or completedq(31045)
turnin Grave Consequences##31048 |only if haveq(31048) or completedq(31048)
turnin Dark Arts##31043 |only if haveq(31043) or completedq(31043)
turnin Onyx Hearts##31042 |only if haveq(31042) or completedq(31042)
turnin Born Free##31047 |only if haveq(31047) or completedq(31047)
turnin Spiteful Sprites##31040 |only if haveq(31040) or completedq(31040)
turnin Egg Rescue!##31041 |only if haveq(31041) or completedq(31041)
turnin Little Hatchlings##31046 |only if haveq(31046) or completedq(31046)
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
step
use the Bronze Claws##83134
|tip Use it on the Cloudrunners around this area.
kill Shan'ze Cloudrunner##62584+
Free #8# Shan'ze Cloudriders |q 31061/1 |goto Townlong Steppes/0 30.90,12.60
|only if haveq(31061) or completedq(31061)
step
Click the Leave Vehicle button |outvehicle
|only if haveq(31061) or completedq(31061)
step
Enter the tunnel |goto Townlong Steppes/0 20.30,15.80 < 15
kill Darkwoods Faerie##62522 |q 31049/1 |goto Townlong Steppes/0 19.50,13.80
|only if haveq(31049) or completedq(31049)
step
Leave the tunnel |goto Townlong Steppes/0 20.30,15.80 < 15
kill Shan'ze Deathspeaker##62559 |q 31062/1 |goto Townlong Steppes/0 32.30,9.50
|tip Destroy Spirit Gems as the appear.
|only if haveq(31062) or completedq(31062)
step
Enter the cave |goto Townlong Steppes/0 28.82,23.26 < 5
talk Moshu the Arcane##62810
turnin Through the Portal##31110 |goto Townlong Steppes/0 28.85,22.59
|only if haveq(31110) or completedq(31110)
step
talk Ban Bearheart##62304
turnin When The Dead Speak##31062 |goto Townlong Steppes/0 49.02,70.45 |only if haveq(31062) or completedq(31062)
turnin Riding the Storm##31061 |goto Townlong Steppes/0 49.02,70.45 |only if haveq(31061) or completedq(31061)
turnin In Sprite Of Everything##31049 |goto Townlong Steppes/0 49.02,70.45 |only if haveq(31049) or completedq(31049)
|next "end"
step
label "Ling_of_the_Six_Pools"
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes/0 49.01,71.33
|only if not completedq(31220) and rep('Shado-Pan')>=Honored
step
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes/0 49.01,71.33
|only if rep('Shado-Pan')>=Revered
step
talk Tenwu of the Red Smoke##63616
Select _"Shall we meet in the Challenger's Ring?"_ |gossip 129574
Challenge Tenwu of the Red Smoke |q 31221/1 |goto Townlong Steppes/0 48.88,71.23
|only if haveq(31221) or completedq(31221)
step
talk Tenwu of the Red Smoke##64471
Select _"Let's see if you can back that talk up."_ |gossip 129716
Defeat Tenwu of the Red Smoke |q 31221/2 |goto Townlong Steppes/0 50.63,68.50
|only if haveq(31221) or completedq(31221)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes/0 49.01,71.33
|only if haveq(31221) or completedq(31221)
step
talk Hawkmaster Nurong##63618
|tip Walking around this area.
Select _"Shall we meet in the Challenger's Ring?"_ |gossip 35724
Challenge Hawkmaster Nurong |q 31220/1 |goto Townlong Steppes/0 48.71,71.21
|only if haveq(31220) or completedq(31220)
step
talk Hawkmaster Nurong##64470
Select _"Let's go!"_ |gossip 129713
Defeat Hawkmaster Nurong |q 31220/2 |goto Townlong Steppes/0 50.70,68.17
|only if haveq(31220) or completedq(31220)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes/0 49.01,71.33
|only if haveq(31220) or completedq(31220)
step
talk Ling of the Six Pools##63614
accept Sra'vess Wetwork##31196 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept The Bigger They Come...##31197 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept A Morale Victory##31198 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept Destroy the Siege Weapons!##31199 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept Fumigation##31200 |goto Townlong Steppes/0 49.01,71.33 |or 4
accept Friends, Not Food!##31201 |goto Townlong Steppes/0 49.01,71.33 |or 4
step
click Bag of Wu Kao Supplies
collect Wu Kao Smoke Bomb##90006 |q 31201 |goto Townlong Steppes/0 49.00,71.28
collect Shiny Shado-Pan Coin##86534 |q 31201 |goto Townlong Steppes/0 49.00,71.28
collect Wu Kao Dart of Lethargy##86536 |q 31201 |goto Townlong Steppes/0 49.00,71.28
step
talk Hawkmaster Nurong##63618		|goto Townlong Steppes/0 48.70,71.20
|tip
talk Taoshi##63617			|goto Townlong Steppes/0 48.70,71.00
|tip
talk Tenwu of the Red Smoke##63616	|goto Townlong Steppes/0 48.90,71.20 |only if completedq(31221)
|tip
|tip Choose one to accompany you.
|tip Only Taoshi will be available initially.
|tip Hawkmaster Nurong is unlocked at Honored and completing the quest "The Challenger's Ring: Hawkmaster Nurong". |only if rep('Shado-Pan')>=Honored
|tip Tenwu of the Red Smoke is unlocked at Revered and completing the quest "The Challenger's Ring: Tenwu of the Red Smoke". |only if rep('Shado-Pan')>=Revered
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|confirm
stickystart "Slay_4_Greater_Sra'thik_Mantid"
stickystart "Slay_15_Lesser_Sra'thik_Mantid"
step
click Sra'thik Siege Weapon##213311
Destroy the Small Southern Siege Weapon |q 31199/2 |goto Townlong Steppes/0 27.44,54.71
|only if haveq(31199) or completedq(31199)
step
click Sra'thik Siege Weapon##213311
Destroy the Large Southern Siege Weapon |q 31199/1 |goto Townlong Steppes/0 25.75,53.54
|only if haveq(31199) or completedq(31199)
step
click Sra'thik Idol##213309
Destroy the Southern Idol |q 31198/1 |goto Townlong Steppes/0 23.50,55.50
|only if haveq(31198) or completedq(31198)
step
click Sra'thik Idol##213309
Destroy the Central Idol |q 31198/3 |goto Townlong Steppes/0 21.50,49.20
|only if haveq(31198) or completedq(31198)
step
click Sra'thik Siege Weapon##213311
Destroy the Large Northern Siege Weapon |q 31199/3 |goto Townlong Steppes/0 27.16,41.13
|only if haveq(31199) or completedq(31199)
step
click Sra'thik Siege Weapon##213311
Destroy the Small Northern Siege Weapon |q 31199/4 |goto Townlong Steppes/0 26.02,39.90
|only if haveq(31199) or completedq(31199)
step
click Sra'thik Idol##213309
Destroy the Eastern Idol |q 31198/4 |goto Townlong Steppes/0 27.80,41.90
|only if haveq(31198) or completedq(31198)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Egg Chamber.
Bomb the Egg Chamber |q 31200/3 |goto Townlong Steppes/0 23.65,44.70
|only if haveq(31200) or completedq(31200)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Torture Cell.
Bomb the Torture Cell |q 31200/4 |goto Townlong Steppes/0 22.03,41.53
|only if haveq(31200) or completedq(31200)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Slaughtering Pit.
Bomb the Slaughtering Pit |q 31200/5 |goto Townlong Steppes/0 21.17,43.16
|only if haveq(31200) or completedq(31200)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Amber Vault.
Bomb the Amber Vault |q 31200/1 |goto Townlong Steppes/0 21.00,45.90
|only if haveq(31200) or completedq(31200)
step
click Sra'thik Idol##213309
Destroy the Western Idol |q 31198/2 |goto Townlong Steppes/0 16.20,45.80
|only if haveq(31198) or completedq(31198)
step
talk Shado-Pan Trainee##64459
Select _"No you're not! Here, take this!"_ |gossip 129778
Free the Shado-Pan Trainee at Southern Feeding Pit |q 31201/3 |goto Townlong Steppes/0 17.56,58.04
|only if haveq(31201) or completedq(31201)
step
talk Shado-Pan Trainee##64460
Select _"No you're not! Here, take this!"_ |gossip 129777
Free the Shado-Pan Trainee at Central Feeding Pit |q 31201/2 |goto Townlong Steppes/0 17.39,56.91
|only if haveq(31201) or completedq(31201)
step
talk Sentinel Ku-Yao##61694
Tell him his son has been looking for him
Search for Sentinel Ku-Yao |q 30933/1 |goto Townlong Steppes/0 17.40,57.00
|only if haveq(30933) or completedq(30933)
step
talk Shado-Pan Trainee##64461
Select _"No you're not! Here, take this!"_ |gossip 129776
Free the Shado-Pan Trainee at Northern Feeding Pit |q 31201/1 |goto Townlong Steppes/0 18.00,53.46
|only if haveq(31201) or completedq(31201)
step
use the Bag of Shado-Pan Gas Bombs##86532
|tip Use it next to the Nutriment Cell.
Bomb the Nutriment Cell |q 31200/2 |goto Townlong Steppes/0 23.90,47.30
|only if haveq(31200) or completedq(31200)
step
label "Slay_15_Lesser_Sra'thik_Mantid"
Kill Sra'thik enemies around this area |kill Sra'thik Mutilator##63678, Sra'thik Cacophyte##63680, Sra'thik Drone##63677, Sra'thik Regenerator##63681, Sra'thik Swiftwing##63683
Slay #15# Lesser Sra'thik Mantid |q 31196/1 |goto Townlong Steppes/0 25.87,42.16
You can find more around:
[Townlong Steppes/0 25.90,42.05] |notinsticky
[Townlong Steppes/0 27.12,40.28] |notinsticky
[Townlong Steppes/0 25.10,40.36] |notinsticky
|only if haveq(31196) or completedq(31196)
step
label "Slay_4_Greater_Sra'thik_Mantid"
Kill Sra'thik enemies around this area |kill Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+
Slay #4# Greater Sra'thik Mantid |q 31197/1 |goto Townlong Steppes/0 23.38,51.77
You can find more around:
[Townlong Steppes/0 24.36,48.34] |notinsticky
[Townlong Steppes/0 25.96,46.06] |notinsticky
[Townlong Steppes/0 25.97,41.67] |notinsticky
[Townlong Steppes/0 26.53,38.63] |notinsticky
|only if haveq(31197) or completedq(31197)
step
_Next to you:_
talk Taoshi##63623
talk Hawkmaster Nurong##63618
talk Tenwu of the Red Smoke##63622 |only if completedq(31221)
turnin Sra'vess Wetwork##31196 |only if haveq(31196) or completedq(31196)
turnin The Bigger They Come...##31197 |only if haveq(31197) or completedq(31197)
turnin A Morale Victory##31198 |only if haveq(31198) or completedq(31198)
turnin Destroy the Siege Weapons!##31199 |only if haveq(31199) or completedq(31199)
turnin Fumigation##31200 |only if haveq(31200) or completedq(31200)
turnin Friends, Not Food!##31201 |only if haveq(31201) or completedq(31201)
step
Click the Complete Quest Box:
accept Target of Opportunity: Sra'thik Hivelord##31204 |or
accept Target of Opportunity: Sra'thik Swarmlord##31203 |or
step
kill Sra'thik Swarmlord##63693 |q 31203/1 |goto Townlong Steppes/0 16.40,40.90
|only if haveq(31203) or completedq(31203)
step
Enter the building |goto Townlong Steppes/0 27.10,44.10 < 15
kill Sra'thik Hivelord##63694 |q 31204/1 |goto Townlong Steppes/0 24.30,44.00
|only if haveq(31204) or completedq(31204)
step
talk Ku-Mo##65341
turnin Seeking Father##30933 |goto Townlong Steppes/0 48.70,71.10
|only if haveq(30933) or completedq(30933)
step
talk Ling of the Six Pools##63614
turnin Target of Opportunity: Sra'thik Hivelord##31204 |goto Townlong Steppes/0 49.00,71.40 |or |only if haveq(31204) or completedq(31204)
turnin Target of Opportunity: Sra'thik Swarmlord##31203 |goto Townlong Steppes/0 49.00,71.40 |or |only if haveq(31203) or completedq(31203)
step
label "end"
talk Master Snowdrift##63009
|tip Walking around this area.
accept Mogu Incursions##31266 |goto Townlong Steppes/0 49.51,70.56
|only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto Townlong Steppes/0 48.80,58.60
|only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
talk Master Snowdrift##63009
|tip Walking around this area.
turnin Mogu Incursions##31266 |goto Townlong Steppes/0 49.51,70.56
accept Surprise Attack!##31277 |goto Townlong Steppes/0 49.51,70.56
|only if rep('Shado-Pan')==Exalted and not completedq(31277)
step
talk Ban Bearheart##63908
Select _"Alright. Let's go."_ |gossip 129605
Join the Battle at Niuzao Temple |q 31277/1 |goto Townlong Steppes/0 42.62,63.92
|only if haveq(31277) or completedq(31277)
step
Watch the dialogue
kill Shan'ze Brutalizer##63933+
|tip Hei Feng will eventually spawn.
|tip
kill Hei Feng##63920
|tip When he casts Deep Breath step behind him.
Defeat the Mogu Invasion |q 31277/2 |goto Townlong Steppes/0 40.83,59.88
|only if haveq(31277) or completedq(31277)
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto Townlong Steppes/0 49.17,71.05
|only if haveq(31277)
step
You have completed the available daily quests |complete false or not completedq(31039,31040,31041,31042,31043,31044,31045,31046,31047,31048,31049,31061,31062,31105,31106,31113,31114,31116,31117,31118,31119,31120,31196,31197,31198,31199,31200,31201,31203,31204) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
|tip |only if rep("Shado-Pan")>=Revered
'|talk Rushi the Fox##64595 |goto Townlong Steppes/0 48.80,70.60 |only if rep("Shado-Pan")>=Revered
|tip Purchase the Grand Commendation of the Shado-Pan from Rushi the Fox if possible. |only if rep("Shado-Pan")>=Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this. |only if rep("Shado-Pan")>=Revered
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Tillers Dailies",{
expansion="mists",
mopready=true,
startlevel=85,
completion={"quests"},
description="This guide will take you through The Tillers dailies Becoming Exalted with The Tillers allows you to purchase ground mounts and recipes for your character.",
patch='50500'
},[[
step
Proceeding to the Tiller's Dailies  |next "dailies" |complete completedq(31945) |only if completedq(31945)
Proceeding to the Tiller's Prequests |next |complete not completedq(31945) |only if not completedq(31945)
step
label "Tillers_Prequests"
talk Farmer Yoon##58721
accept A Helping Hand##30252 |goto Valley of the Four Winds/0 52.02,48.01
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.23,47.66 |count 1
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.10,48.02 |count 2
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.89,48.39 |count 3
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.70,48.70 |count 4
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.55,49.30 |count 5
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.90,49.16 |count 6
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.36,49.23 |count 7
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.83,49.86 |count 8
step
Enter the building |goto Valley of the Four Winds/0 52.56,48.12 < 7 |walk
talk Farmer Yoon##58646
|tip Inside the building.
turnin A Helping Hand##30252 |goto Valley of the Four Winds/0 52.75,47.94
step
Watch the dialogue
talk Farmer Yoon##58646
|tip Wait for the dialogue to complete.
accept Learn and Grow I: Seeds##30535 |goto Valley of the Four Winds/0 52.25,48.78
step
talk Merchant Greenfield##58718
Select _"I'm here to pick up seeds for Farmer Yoon."_ |gossip 40536
Select _"He just inherited Sunsong Ranch. You can literally see him from where you are standing."_ |gossip 40535
collect Packet of Green Cabbage Seeds##80295 |q 30535/1 |goto Valley of the Four Winds/0 52.88,52.14
step
talk Farmer Yoon##58646
turnin Learn and Grow I: Seeds##30535 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow II: Tilling and Planting##30254 |goto Valley of the Four Winds/0 52.25,48.78
step
clicknpc Untilled Soil##59985
Till the Soil |q 30254/1 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
use EZ-Gro Green Cabbage Seeds##80302
Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
clicknpc Untilled Soil##59985
Till the Soil |q 30254/1 |goto Valley of the Four Winds/0 52.03,48.25 |count 2
step
use EZ-Gro Green Cabbage Seeds##80302
Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto Valley of the Four Winds/0 52.03,48.25 |count 2
step
talk Farmer Yoon##58646
turnin Learn and Grow II: Tilling and Planting##30254 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow III: Tending Crops##30255 |goto Valley of the Four Winds/0 52.25,48.78
step
clicknpc Parched EZ-Gro Green Cabbage##59987
use Rusty Watering Can##79104
Water the First Parched EZ-Gro Green Cabbage |q 30255/1 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
clicknpc Parched EZ-Gro Green Cabbage##59987
use Rusty Watering Can##79104
Water the Second Parched EZ-Gro Green Cabbage |q 30255/1 |goto Valley of the Four Winds/0 52.03,48.23 |count 2
step
talk Farmer Yoon##58646
turnin Learn and Grow III: Tending Crops##30255 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow IV: Harvesting##30256 |goto Valley of the Four Winds/0 52.25,48.78
step
clicknpc Ripe EZ-Gro Green Cabbage##59833
|tip Wait a moment for it to ripen fully.
collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
clicknpc Ripe EZ-Gro Green Cabbage##59833
collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto Valley of the Four Winds/0 52.03,48.23 |count 2
step
talk Farmer Yoon##58646
turnin Learn and Grow IV: Harvesting##30256 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow V: Halfhill Market##30257 |goto Valley of the Four Winds/0 52.25,48.78
step
click Dark Soil##210582
|tip Beneath the building.
collect Marsh Lily##79268 |q 30257/1 |goto Valley of the Four Winds/0 52.83,48.00
step
talk Gina Mudclaw##58706
turnin Learn and Grow V: Halfhill Market##30257 |goto Valley of the Four Winds/0 52.22,48.70
accept Learn and Grow VI: Gina's Vote##31945 |goto Valley of the Four Winds/0 52.22,48.70
She may also be here [Valley of the Four Winds/0 53.16,51.80]
step
talk Merchant Greenfield##58718
buy 1 Scallion Seeds##80591 |n
collect 1 Scallion Seeds##80591 |goto Valley of the Four Winds/0 52.88,52.14 |q 31945 |future
step
clicknpc Untilled Soil##58562
use the Scallion Seeds##80591
|tip You will get 5 Scallions from 1 seed packet when it's time to harvest.
Plant Scallion Seeds |q 31945/1 |goto Valley of the Four Winds/0 52.01,48.44
step
Tend to Your Crops
'|kill Voracious Virmen##60039,Swooping Plainshawk##60072
'|clicknpc Wild Scallions##63170
|tip Click the {g}Runty{} crop and jump to clear it.
|tip Click the {g}Wiggling{} crop and kill the enemy that spawns.
|tip Click the {g}Alluring{} crop and kill the enemy that spawns.
|tip Collect and use the Vintage Bug Sprayer on {g}Infested{} crops.
|tip Click the {g}Wild{} crop, using 'Flex' to subdue it and 'Gnaw' to interrupt Vine Slam.
|tip Click {g}Tangled{} crops and move away from them to clear.
|tip Use the Rusty Watering Can to water the {g}Parched{} crop.
|tip Click the {g}Smothered{} crop and use the abilities on your hotbar to subdue it.
Click Here After Tending to Your Crops |confirm |q 31945
step
label "Turnin_Learn_and_Grow_VI"
clicknpc Bursting Scallions##63160
|tip If your crops didn't burst, you'll have to wait until the next day to harvest.
clicknpc Ripe Scallions##63165
Harvest Ripe Scallions |q 31945/2 |goto Valley of the Four Winds/0 52.00,48.40
step
collect 5 Scallion##74843 |q 31945/3 |goto Valley of the Four Winds/0 52.00,48.40
Click Here to Start Your Daily Quests |next "dailies" |confirm |q 31945
step
talk Gina Mudclaw##58706
turnin Learn and Grow VI: Gina's Vote##31945 |goto Valley of the Four Winds/0 53.10,51.80
step
label "dailies"
talk Farmer Yoon##58646
|tip Harvest your crops before starting from the previous day before starting.
accept The Kunzen Hunter-Chief##30336 |goto Valley of the Four Winds/0 52.25,48.78
accept That Dangling Carrot##31670 |goto Valley of the Four Winds/0 52.25,48.78
accept Stealing is Bad... Re-Stealing is OK##30334 |goto Valley of the Four Winds/0 52.25,48.78
accept Stalling the Ravage##30335 |goto Valley of the Four Winds/0 52.25,48.78
accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto Valley of the Four Winds/0 52.25,48.78
accept The Lesser of Two Evils##30333 |goto Valley of the Four Winds/0 52.25,48.78
accept The White Turnip Treatment##31675 |goto Valley of the Four Winds/0 52.25,48.78
accept Simian Sabotage##30337 |goto Valley of the Four Winds/0 53.00,51.80
accept The Cabbage Test##31669 |goto Valley of the Four Winds/0 52.25,48.78
accept Squash Those Foul Odors##31941 |goto Valley of the Four Winds/0 52.25,48.79
accept Why Not Scallions?##31671 |goto Valley of the Four Winds/0 52.25,48.79
accept It's Melon Time##31942 |goto Valley of the Four Winds/0 52.27,48.78
|tip
Click here if no quests are available |confirm
|only if not completedq(32682)
step
talk Farmer Yoon##58646
|tip Only two quest will be available per day.
accept The Kunzen Hunter-Chief##30336 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept That Dangling Carrot##31670 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Stealing is Bad... Re-Stealing is OK##30334 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept The Cabbage Test##31669 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept It's Melon Time##31942 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept A Pumpkin-y Perfume##31672 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Stalling the Ravage##30335 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Squash Those Foul Odors##31941 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept The Lesser of Two Evils##30333 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept The White Turnip Treatment##31675 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept The Pink Turnip Challenge##31674 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Which Berries? Witchberries.##31943 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Why Not Scallions?##31671 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
accept Simian Sabotage##30337 |goto Valley of the Four Winds/0 52.25,48.78 |or 2
He can also be found here [Valley of the Four Winds/0 52.91,51.83]
|tip
Click here if no quests are available |confirm
|only if completedq(32682)
step
talk Andi##64464
|tip Only one quest will be available per day.
accept A Gift For Fung##30475 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Chee Chee##30471 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Haohan##30477 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Jogu##30478 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Sho##30472 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Tina##30470 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Ella##30474 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Old Hillpaw##30476 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Fish##30473 |goto Valley of the Four Winds/0 52.75,50.42 |or
accept A Gift For Gina##30479 |goto Valley of the Four Winds/0 52.75,50.42 |or
|tip
Click here if no quests are available |confirm
step
talk Gina Mudclaw##58706
accept Money Matters##30322 |goto Valley of the Four Winds/0 53.16,51.80
She can also be found here [Valley of the Four Winds/0 52.23,48.70]
|tip
Click here if no quests are available |confirm
step
talk Ella##58647
accept You Have to Burn the Ropes##30327 |goto Valley of the Four Winds/0 53.10,51.70
|tip
Click here if no quests are available |confirm
step
talk Haohan Mudclaw##57402
accept Pest Problems##30319 |goto Valley of the Four Winds/0 53.00,51.70
|tip
Click here if no quests are available |confirm
step
talk Tina Mudclaw##58761
accept They Don't Even Wear Them##30323 |goto Valley of the Four Winds/0 52.98,51.80
|tip
Click here if no quests are available |confirm
step
talk Chee Chee##58709
accept Not in Chee-Chee's Backyard##30324 |goto Valley of the Four Winds/0 53.10,52.10
|tip
Click here if no quests are available |confirm
step
talk Fish Fellreed##58705
accept The Kunzen Legend-Chief##30326 |goto Valley of the Four Winds/0 52.76,51.85
|tip
Click here if no quests are available |confirm
step
talk Farmer Fung##57298
accept Water, Water Everywhere##30317 |goto Valley of the Four Winds/0 52.90,51.70
|tip
Click here if no quests are available |confirm
step
talk Sho##58708
accept Where It Counts##30325 |goto Valley of the Four Winds/0 53.10,52.10
|tip
Click here if no quests are available |confirm
step
talk Jogu the Drunk##58710
accept Weed War II##30321 |goto Valley of the Four Winds/0 53.60,52.50
|tip
Click here if no quests are available |confirm
step
talk Old Hillpaw##58707
accept Chasing the Chicken##30318 |goto Valley of the Four Winds/0 53.06,51.86
|tip
Click here if no quests are available |confirm
step
talk Yan Ironpaw##58715 |goto Valley of the Four Winds/0 52.50,51.70
talk Mei Mei Ironpaw##58714 |goto Valley of the Four Winds/0 52.60,51.60
talk Anthea Ironpaw##58713 |goto Valley of the Four Winds/0 52.80,51.80
talk Jian Ironpaw##58716 |goto Valley of the Four Winds/0 53.40,51.60
talk Kol Ironpaw##58712 |goto Valley of the Four Winds/0 53.00,51.30
|autoacceptany 30328,30331,30329,30330,30332
Accept the Available Pandaria Cooking Daily Quest |complete haveq(30328,30331,30329,30330,30332) or completedq(30328,30331,30329,30330,30332)
|only if skill('Cooking') >= 525
step
talk Innkeeper Lei Lan##59582
|tip Walking around inside the building.
Select _"Hello! I'm here on behalf of Gina Mudclaw, regarding your debt."_ |gossip 39125
Select _"<Offer to pay off her debt.> I'll pay your debt today. It's the least I can do."_ |gossip 39074
collect Innkeeper Lei Lan's Payment##80215 |q 30322/3 |goto Valley of the Four Winds/0 55.05,50.32
|only if haveq(30322) or completedq(30322)
step
talk Lolo Lio##59585
Select _"Hello! I'm here on behalf of Gina Mudclaw, regarding your debt."_ |gossip 39127
Select _"<Offer to pay off his debt.> I'll pay your debt today. Next time, try to be more responsible."_ |gossip 39184
collect Lolo Lio's Payment##80216 |q 30322/4 |goto Valley of the Four Winds/0 55.59,52.09
|only if haveq(30322) or completedq(30322)
step
talk Trader Jambeezi##59583
|tip Walking around this area.
Select _"Hello! I'm here on behalf of Gina Mudclaw, regarding your debt."_ |gossip 39890
collect Trader Jambeezi's Payment##80214 |q 30322/2 |goto Valley of the Four Winds/0 56.01,49.70
|only if haveq(30322) or completedq(30322)
step
talk Spicemaster Jin Jao##59581
|tip Inside the building.
Select _"Hello! I'm here on behalf of Gina Mudclaw, regarding your debt."_ |gossip 39047
Select _"<Offer to pay his debt for him.> Don't worry about it. I will pay your share today."_ |gossip 39128
collect Spicemaster Jin Jao's Payment##80213 |q 30322/1
Spicemaster Jin Jao's Payment |q 30322/1 |goto Valley of the Four Winds/0 56.67,47.13
|only if haveq(30322) or completedq(30322)
step
talk Merchant Greenfield##58718
buy 1 Juicycrunch Carrot Seeds##80590 |q 31670 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31670) or completedq(31670)
step
talk Merchant Greenfield##58718
buy 1 Green Cabbage Seeds##79102 |q 31669 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31669) or completedq(31669)
step
talk Merchant Greenfield##58718
buy 1 Witchberry Seeds##89326 |q 31943 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31943) or completedq(31943)
step
talk Merchant Greenfield##58718
buy 1 Scallion Seeds##80591 |q 31671 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31671) or completedq(31671)
step
talk Merchant Greenfield##58718
buy 1 White Turnip Seeds##80595 |q 31675 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31675) or completedq(31675)
step
talk Merchant Greenfield##58718
buy 1 Pink Turnip Seeds##80594 |q 31674 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31674) or completedq(31674)
step
talk Merchant Greenfield##58718
buy 1 Jade Squash Seeds##89328 |q 31941 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31941) or completedq(31941)
step
talk Merchant Greenfield##58718
buy 1 Striped Melon Seeds##89329 |q 31942 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31942) or completedq(31942)
step
talk Merchant Greenfield##58718
buy 1 Mogu Pumpkin Seeds##80592 |q 31672 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31672) or completedq(31672)
step
talk Merchant Greenfield##58718
buy 1 Red Blossom Leek Seeds##80593 |q 31673 |goto Valley of the Four Winds/0 52.88,52.13
|only if haveq(31673) or completedq(31673)
step
talk Wing Nga##60231
Select _"I'd like to borrow one of Farmer Fung's kites."_ |gossip 129485
Ride a Kite |invehicle |c |goto Valley of the Four Winds/0 56.50,50.40 |q 30317
|only if haveq(30317) or completedq(30317)
step
Use Your Water Bucket Ability on the Dusty Spots Below You
|tip They are outlined by a yellow circle.
Water #35# Dusty Spots |q 30317/1
|only if haveq(30317) or completedq(30317)
step
clicknpc Untilled Soil##58562
use the Scallion Seeds##80591
|tip Use them on the Tilled Soil.
Plant the Scallion Seeds |q 31671/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31671) or completedq(31671)
step
clicknpc Untilled Soil##58562
use the Juicycrunch Carrot Seeds##80590
|tip Use them on the Tilled Soil.
Plant 1 Juicycrunch Carrot Seed |q 31670/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31670) or completedq(31670)
step
clicknpc Untilled Soil##58562
use the Witchberry Seeds##89326
|tip Use them on the Tilled Soil.
Plant Witchberry Seeds |q 31943/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31943) or completedq(31943)
step
clicknpc Untilled Soil##58562
use the Mogu Pumpkin Seeds##80592
|tip Use them on the Tilled Soil.
Plant the Mogu Pumpkin Seeds |q 31672/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31672) or completedq(31672)
step
clicknpc Untilled Soil##58562
use the Jade Squash Seeds##89328
|tip Use them on the Tilled Soil.
Plant the Jade Squash Seeds |q 31941/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31941) or completedq(31941)
step
clicknpc Untilled Soil##58562
use the White Turnip Seeds##80595
|tip Use them on the Tilled Soil.
Plant the White Turnip Seeds |q 31675/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31675) or completedq(31675)
step
clicknpc Untilled Soil##58562
use the Pink Turnip Seeds##80594
|tip Use them on the Tilled Soil.
Plant Pink Turnip Seeds |q 31674/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31674) or completedq(31674)
step
clicknpc Untilled Soil##58562
use the Green Cabbage Seeds##79102
|tip Use them on the Tilled Soil.
Plant the Green Cabbage Seeds |q 31669/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31669) or completedq(31669)
step
clicknpc Untilled Soil##58562
use the Striped Melon Seeds##89329
|tip Use them on the Tilled Soil.
Plant the Striped Melon Seeds |q 31942/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31942) or completedq(31942)
step
clicknpc Untilled Soil##58562
use the Red Blossom Leek Seeds##80593
|tip Use them on the Tilled Soil.
Plant the Red Blossom Leek Seeds |q 31673/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31673) or completedq(31673)
step
click Goldenfire Orchid##211025
collect Goldenfire Orchid##80231 |q 30479/1 |goto Valley of the Four Winds/0 45.90,48.50
You can also find it at the provided locations:
[Valley of the Four Winds/0 41.60,42.80]
[Valley of the Four Winds/0 37.50,37.30]
|only if haveq(30479) or completedq(30479)
step
talk Lost Dog##59533
accept Lost and Lonely##30526 |goto Valley of the Four Winds/0 42.40,50.00
|only if repval('The Tillers','Revered')>=12600
step
talk Wika-Wika##59532
Select _"Mook-mooks?"_ |gossip 126006
Get the Pest Problems Buff |complete hasbuff("spell:114517") or hasbuff("spell:114573") |goto Valley of the Four Winds/0 39.60,45.30 |q 30319
|only if haveq(30319) or completedq(30319)
step
clicknpc Black-Nose Marmot##59530
Stomp #25# Black-Nose Marmot |q 30319/1 |goto Valley of the Four Winds/0 39.60,45.30
|only if haveq(30319) or completedq(30319)
step
talk Gai Lan##57385
Select _"What weeds?"_ |gossip 125812
Gain the "Weed War" Buff |complete hasbuff("spell:108219") or hasbuff("spell:114494") |goto Valley of the Four Winds/0 38.50,51.70 |q 30321
|only if haveq(30321) or completedq(30321)
step
clicknpc Ugly Weed##57306
clicknpc Nasty Weed##57308
click Weed-B-Gone Gas Bomb##210057
Pull #100# Weeds |q 30321/1
|tip Use the buttons on your action bar to accomplish this.
|only if haveq(30321) or completedq(30321)
step
clicknpc Hillpaw's Chicken##58918
|tip Most of these chickens are disguised animals.
|tip When you pick one up click the button that appears on your screen.
Deliver Lost Hens Here [Valley of the Four Winds/0 30.40,52.50]
collect Old Hillpaw's Prize Chicken##80223 |q 30318/1 |goto Valley of the Four Winds/0 31.30,53.20
|only if haveq(30318) or completedq(30318)
step
kill Stout Shaghorn##59139+
collect 4 Fatty Goatsteak##79867 |q 30332/1 |goto Valley of the Four Winds/0 29.70,41.40
|only if haveq(30332) or completedq(30332)
step
click Shadelight Truffle##210812
|tip You can find these aruond the trees here
collect 8 Shadelight Truffle##79833 |q 30330/2 |goto Valley of the Four Winds/0 28.50,33.30
|only if haveq(30330) or completedq(30330)
step
use Shadelight Truffle Spores##80127
Plant #8# Shadelight Spores |q 30330/1 |goto Valley of the Four Winds/0 28.50,33.30
|only if haveq(30330) or completedq(30330)
step
kill Monstrous Plainshawk##59641
collect 1 Bloody Plainshawk Leg##80232 |goto Valley of the Four Winds/0 37.40,37.30 |q 30475
|only if haveq(30475) or completedq(30475)
step
Kill enemies around this area |kill Teeku##59130, Jim-Jim##59128, Kon-Kon##59127, Maaka##59129, Jokka-Jokka##59126
Slay a Kunzen Hunter-Chief |q 30336/1 |goto Valley of the Four Winds/0 30.30,46.09
|tip Stand against the mountainside so you don't get thrown off.
|only if haveq(30336) or completedq(30336)
step
kill Skyrange Mushan##64309+
collect 20 Tasty T-Bone##80144 |q 30526/1 |goto Valley of the Four Winds/0 29.20,38.20
|only if haveq(30526) or completedq(30526)
stickystart "Kill_Kunzen_Ritualist"
stickystart "Kick_4_Blazing_Embers"
stickystart "Throw_8_Kunzen_Ritual_Candles"
step
click Kunzen Rope
Burn #6# Ropes |q 30327/1 |goto Valley of the Four Winds/0 32.00,32.10
|only if haveq(30327) or completedq(30327)
step
click Yu-Ping Soup Cauldron##210873
collect Yu-Ping Soup##79870 |q 30472/1 |goto Valley of the Four Winds/0 29.70,34.50
|only if haveq(30472) or completedq(30472)
step
label "Kill_Kunzen_Ritualist"
kill 1 Kunzen Ritualist##59123 |q 30325/3 |goto Valley of the Four Winds/0 29.70,34.50
|only if haveq(30325) or completedq(30325)
step
label "Kick_4_Blazing_Embers"
click Blazing Ember##210890
Kick #4# Blazing Ember |q 30325/2
|only if haveq(30325) or completedq(30325)
step
label "Throw_8_Kunzen_Ritual_Candles"
click Kunzen Ritual Candle##210955
Throw #8# Kunzen Ritual Candles |q 30325/1 |goto Valley of the Four Winds/0 29.70,34.50
|only if haveq(30325) or completedq(30325)
stickystart "Collect_16_Stolen_Vegetable"
stickystart "Kill_12_Kunzen_Hozen"
stickystart "Kill_8_Kunzen_Tribe_Members"
stickystart "Collect_Spicy_Shrimp_Dumblings"
step
Kill enemies around this area |kill Buk-Buk##59133, Bimba##59135, Yammo##59134, Rit-Rit##59132
|tip Move out of their spell casts.
|tip Fight the enemies and continue to avoid being hit by their casts.
collect 1 Kunzen Legend-Book##79866 |q 30326/1 |goto Valley of the Four Winds/0 31.60,28.70
|only if haveq(30326) or completedq(30326)
step
click Authentic Valley Stir Fry##210803
collect Authentic Valley Stir Fry##79827 |q 30471/1 |goto Valley of the Four Winds/0 33.60,23.90
|only if haveq(30471) or completedq(30471)
step
clicknpc Yak Statuette##59154
|tip Check inside of buildings around this area.
collect Yak Statuette##79828 |q 30473/1 |goto Valley of the Four Winds/0 34.00,24.10
|only if haveq(30473) or completedq(30473)
step
use the Barrel of Fireworks##79885
Explode the Stolen Tools |q 30337/2 |goto Valley of the Four Winds/0 32.70,30.60
|only if haveq(30337) or completedq(30337)
step
use the Barrel of Fireworks##79885
Explode the Stolen Weapons |q 30337/1 |goto Valley of the Four Winds/0 30.40,28.10
|only if haveq(30337) or completedq(30337)
step
use the Barrel of Fireworks##79885
Explode Stolen Beer |q 30337/3 |goto Valley of the Four Winds/0 32.10,25.90
|only if haveq(30337) or completedq(30337)
step
use the Barrel of Fireworks##79885
Explode the Stolen Grain |q 30337/4 |goto Valley of the Four Winds/0 35.00,22.00
|only if haveq(30337) or completedq(30337)
step
label "Kill_12_Kunzen_Hozen"
Kill Kunzen enemies around this area |kill Kunzen Rockflinger##59120, Kunzen Collector##59124, Kunzen Ravager##59119, Kunzen Hunter##59121
Slay #12# Kunzen hozen |q 30335/1 |goto Valley of the Four Winds/0 34.20,23.50
|only if haveq(30335) or completedq(30335)
step
label "Collect_16_Stolen_Vegetable"
click Stolen Vegetable##210768
|tip Near buildings around this area.
collect 16 Stolen Vegetable##79824 |q 30334/1 |goto Valley of the Four Winds/0 33.56,23.81
|only if haveq(30334) or completedq(30334)
step
label "Kill_8_Kunzen_Tribe_Members"
Kill Kunzen enemies around this area |kill Kunzen Rockflinger##59120, Kunzen Collector##59124, Kunzen Ravager##59119
Slay #8# Kunzen Tribe Members |q 30324/1 |goto Valley of the Four Winds/0 34.20,23.50
|only if haveq(30324) or completedq(30324)
step
label "Collect_Spicy_Shrimp_Dumblings"
Kill Kunzen enemies around this area |kill Kunzen Rockflinger##59120, Kunzen Collector##59124, Kunzen Ravager##59119
collect Spicy Shrimp Dumplings##79871 |q 30474/1 |goto Valley of the Four Winds/0 34.20,23.50
|only if haveq(30474) or completedq(30474)
step
Kill Kunzen enemies around this area |kill Kunzen Hunter##59121, Kunzen Herdskeeper##59122, Kunzen Ritualist##59123, Kunzen Rockflinger##59120,Kunzen Collector##59124
collect 4 Cindergut Pepper##79864 |q 30329/1 |goto Valley of the Four Winds/0 31.20,36.00
|only if haveq(30329) or completedq(30329)
step
use the Master's Pot##79895
|tip Use the Master's Pot next to the bonfire.
Create #20# Mushan Tail Stew |q 30331/1 |goto Valley of the Four Winds/0 32.48,24.10
|only if haveq(30331) or completedq(30331)
step
kill Enormous Cattail Grouper##59639
collect Enormous Cattail Grouper Tooth##80228 |q 30477/1 |goto Valley of the Four Winds/0 44.10,29.10
|only if haveq(30477) or completedq(30477)
stickystart "Collect_Uncut_Chrysoberyl"
stickystart "Collect_Ransacked_Ring"
stickystart "Collect_Burglarized_Bracelet"
step
Enter the cave |goto Valley of the Four Winds/0 46.97,21.03 < 10
kill Springtail Warren-Mother##59516 |q 30333/1 |goto Valley of the Four Winds/0 48.70,18.70
|only if haveq(30333) or completedq(30333)
step
Kill Springtail enemies around this area |kill Springtail Littlewhisker##59515, Springtail Trapper##59513, Springtail Burrower##59514
collect Stolen Circlet##80138 |q 30323/1 |goto Valley of the Four Winds/0 44.70,19.60
Cave entrance |goto Valley of the Four Winds/0 44.01,22.28 |notinsticky
Cave entrance |goto Valley of the Four Winds/0 46.97,21.03 |notinsticky
|only if haveq(30323) or completedq(30323)
step
label "Collect_Ransacked_Ring"
Kill Springtail enemies around this area |kill Springtail Littlewhisker##59515, Springtail Trapper##59513, Springtail Burrower##59514
collect Ransacked Ring##80137 |q 30323/2 |goto Valley of the Four Winds/0 44.70,19.60
Cave entrance |goto Valley of the Four Winds/0 44.01,22.28 |notinsticky
Cave entrance |goto Valley of the Four Winds/0 46.97,21.03 |notinsticky
|only if haveq(30323) or completedq(30323)
step
label "Collect_Burglarized_Bracelet"
Kill Springtail enemies around this area |kill Springtail Littlewhisker##59515, Springtail Trapper##59513, Springtail Burrower##59514
collect Burglarized Bracelet##80139 |q 30323/3 |goto Valley of the Four Winds/0 44.70,19.60
Cave entrance |goto Valley of the Four Winds/0 44.01,22.28 |notinsticky
Cave entrance |goto Valley of the Four Winds/0 46.97,21.03 |notinsticky
|only if haveq(30323) or completedq(30323)
step
label "Collect_Uncut_Chrysoberyl"
Enter the cave |goto Valley of the Four Winds/0 44.00,22.33 < 7
click Chrysoberyl Outcropping##210960
|tip This have several locations.
|tip It can appear at the Warren.
|tip It can appear between the two entrances.
collect Uncut Chrysoberyl##80134 |q 30470/1 |goto Valley of the Four Winds/0 45.11,18.78
Other Warren Entrances:
[Valley of the Four Winds/0 39.46,20.38]
[Valley of the Four Winds/0 46.96,21.00]
|only if haveq(30470) or completedq(30470)
step
Enter the cave |goto Valley of the Four Winds/0 44.00,22.33 < 7
click Preserved Vegetable##11054+
collect 7 Preserved Vegetables##80133 |q 30328/1
Other Warren Entrances:
[Valley of the Four Winds/0 39.46,20.38]
[Valley of the Four Winds/0 46.96,21.00]
|only if haveq(30328) or completedq(30328)
step
click Freshwater Oyster##211021
collect Blue Freshwater Pearl## |q 30476/1 |goto Valley of the Four Winds/0 44.20,28.80
|only if haveq(30476) or completedq(30476)
step
talk Lost Dog##59533
turnin Lost and Lonely##30526 |goto Valley of the Four Winds/0 42.40,50.00
|only if haveq(30526)
step
click Yoon's Apples##211020
|tip Inside the building.
collect 8 Yoon's Apple##80234 |goto Valley of the Four Winds/0 52.60,47.80 |q 30478
|only if haveq(30478) or completedq(30478)
step
click Yoon's Craneberries##211022
|tip Inside the building.
collect 50 Yoon's Craneberry##80235 |goto Valley of the Four Winds/0 52.80,47.90 |q 30478
|only if haveq(30478) or completedq(30478)
step
talk Bobo Ironpaw##58717
Select _"I've got all this fruit here. Could you brew up some hooch for me?"_ |gossip 126042
collect Apple-Berry Hooch##80236 |q 30478/1 |goto Valley of the Four Winds/0 53.20,52.20
|only if haveq(30478) or completedq(30478)
step
talk Kol Ironpaw##58712 |goto Valley of the Four Winds/0 52.97,51.33
Select _"Chef, could you grill this plainshawk leg for me?"_ |gossip 126045
collect Grilled Plainshawk Leg##80233 |q 30475/1 |goto Valley of the Four Winds/0 52.97,51.33
|only if haveq(30475) or completedq(30475)
step
talk Farmer Yoon##58646
turnin The Kunzen Hunter-Chief##30336 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30336) or completedq(30336)
turnin That Dangling Carrot##31670 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31670) or completedq(31670)
turnin Stealing is Bad... Re-Stealing is OK##30334 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30334) or completedq(30334)
turnin The Cabbage Test##31669 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31669) or completedq(31669)
turnin It's Melon Time##31942 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31942) or completedq(31942)
turnin A Pumpkin-y Perfume##31672 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31672) or completedq(31672)
turnin Stalling the Ravage##30335 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30335) or completedq(30335)
turnin Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31673) or completedq(31673)
turnin Squash Those Foul Odors##31941 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31941) or completedq(31941)
turnin The Lesser of Two Evils##30333 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30333) or completedq(30333)
turnin The White Turnip Treatment##31675 |goto Valley of the Four Winds/0 52.25,48.7875 |only if haveq(31675) or completedq(31675)
turnin The Pink Turnip Challenge##31674 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31674) or completedq(31674)
turnin Which Berries? Witchberries.##31943 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31943) or completedq(31943)
turnin Why Not Scallions?##31671 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(31671) or completedq(31671)
turnin Simian Sabotage##30337 |goto Valley of the Four Winds/0 52.25,48.78 |only if haveq(30337) or completedq(30337)
He can also be found here [Valley of the Four Winds/0 52.92,51.84]
|only if haveq(30336,31670,30334,31669,31942,31672,30335,31673,31941,30333,31675,31674,31943,31671,30337) or completedq(30336,31670,30334,31669,31942,31672,30335,31673,31941,30333,31675,31674,31943,31671,30337)
step
talk Farmer Yoon##58646
|tip He will only have one quest a day.
turnin The Kunzen Hunter-Chief##30336 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30336) or completedq(30336)
turnin Stealing is Bad... Re-Stealing is OK##30334 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30334) or completedq(30334)
turnin Stalling the Ravage##30335 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30335) or completedq(30335)
turnin The Lesser of Two Evils##30333 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30333) or completedq(30333)
turnin Simian Sabotage##30337 |or |goto Valley of the Four Winds/0 53.00,51.80 |only if haveq(30337) or completedq(30337)
|only if not completedq(32682)
step
talk Farmer Fung##57298
turnin Water, Water Everywhere##30317 |goto Valley of the Four Winds/0 52.90,51.70 |only if haveq(30317) or completedq(30317)
turnin A Gift For Fung##30475 |goto Valley of the Four Winds/0 52.90,51.70 |only if haveq(30475) or completedq(30475)
|only if haveq(30317,30475) or completedq(30317,30475)
step
talk Fish Fellreed##58705
turnin The Kunzen Legend-Chief##30326 |goto Valley of the Four Winds/0 52.69,51.99 |only if haveq(30326) or completedq(30326)
turnin A Gift For Fish##30473 |goto Valley of the Four Winds/0 52.69,51.99 |only if haveq(30473) or completedq(30473)
|only if haveq(30326,30473) or completedq(30326,30473)
step
talk Ella##58647
turnin You Have to Burn the Ropes##30327 |goto Valley of the Four Winds/0 53.00,51.70 |only if haveq(30327) or completedq(30327)
turnin A Gift For Ella##30474 |goto Valley of the Four Winds/0 53.00,51.70 |only if haveq(30474) or completedq(30474)
|only if haveq(30327,30474) or completedq(30327,30474)
step
talk Sho##58708
turnin Where It Counts##30325 |goto Valley of the Four Winds/0 53.10,52.10 |only if haveq(30325) or completedq(30325)
turnin A Gift For Sho##30472 |goto Valley of the Four Winds/0 53.10,52.10 |only if haveq(30472) or completedq(30472)
|only if haveq(30325,30472) or completedq(30325,30472)
step
talk Gina Mudclaw##58706
turnin Money Matters##30322 |goto Valley of the Four Winds/0 52.23,48.70 |only if haveq(30322) or completedq(30322)
turnin A Gift For Gina##30479 |goto Valley of the Four Winds/0 52.23,48.70 |only if haveq(30479) or completedq(30479)
She can also be found here [Valley of the Four Winds/0 53.16,51.80]
|only if haveq(30322,30479) or completedq(30322,30479)
step
talk Old Hillpaw##58707
turnin Chasing the Chicken##30318 |goto Valley of the Four Winds/0 53.10,51.90 |only if haveq(30318) or completedq(30318)
turnin A Gift For Old Hillpaw##30476 |goto Valley of the Four Winds/0 53.10,51.90 |only if haveq(30476) or completedq(30476)
|only if haveq(30318,30476) or completedq(30318,30476)
step
talk Tina Mudclaw##58761
turnin A Gift For Tina##30470 |goto Valley of the Four Winds/0 53.10,51.70 |only if haveq(30470) or completedq(30470)
turnin They Don't Even Wear Them##30323 |goto Valley of the Four Winds/0 53.10,51.70 |only if haveq(30323) or completedq(30323)
|only if haveq(30470,30323) or completedq(30470,30323)
step
talk Haohan Mudclaw##57402
turnin Pest Problems##30319 |goto Valley of the Four Winds/0 53.00,51.70 |only if haveq(30319) or completedq(30319)
turnin A Gift For Haohan##30477 |goto Valley of the Four Winds/0 53.00,51.70 |only if haveq(30477) or completedq(30477)
|only if haveq(30319,30477) or completedq(30319,30477)
step
talk Jogu the Drunk##58710
turnin Weed War II##30321 |goto Valley of the Four Winds/0 53.60,52.50 |only if haveq(30321) or completedq(30321)
turnin A Gift For Jogu##30478 |goto Valley of the Four Winds/0 53.60,52.50 |only if haveq(30478) or completedq(30478)
|only if haveq(30321,30478) or completedq(30321,30478)
step
talk Anthea Ironpaw##58713
turnin Cindergut Peppers##30329 |goto Valley of the Four Winds/0 52.80,51.80
|only if haveq(30329) or completedq(30329)
step
talk Jian Ironpaw##58716
turnin The Truffle Shuffle##30330 |goto Valley of the Four Winds/0 53.40,51.60
|only if haveq(30330) or completedq(30330)
step
talk Yan Ironpaw##58715
turnin The Thousand-Year Dumpling##30328 |goto Valley of the Four Winds/0 52.50,51.70
|only if haveq(30328) or completedq(30328)
step
talk Kol Ironpaw##58712
turnin Fatty Goatsteak##30332 |goto Valley of the Four Winds/0 53.00,51.30
|only if haveq(30332) or completedq(30332)
step
talk Mei Mei Ironpaw##58714
turnin The Mile-High Grub##30331 |goto Valley of the Four Winds/0 52.60,51.60
|only if haveq(30331) or completedq(30331)
step
talk Chee Chee##58709
turnin Not in Chee-Chee's Backyard##30324 |goto Valley of the Four Winds/0 53.10,52.10 |only if haveq(30324) or completedq(30324)
turnin A Gift For Chee Chee##30471 |goto Valley of the Four Winds/0 53.10,52.10 |only if haveq(30471) or completedq(30471)
Can also be found here [Valley of the Four Winds/0 52.96,49.96]
|next "honored" |only if rep('The Tillers')>=Honored and not completedq(31936)
|next "revered" |only if rep('The Tillers')>=Revered and not completedq(30528)
|next "exalted" |only if rep('The Tillers')==Exalted and not completedq(30534)
|next "end" |only if rep('The Tillers')<=Friendly
step
label "honored"
talk Farmer Yoon##58646
accept Growing the Farm I: The Weeds##30260 |goto Valley of the Four Winds/0 52.25,48.79
|next "Mung_Mung_Hozen_Problem_Quest" |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
step
talk Gai Lan##57385
turnin Growing the Farm I: The Weeds##30260 |goto Valley of the Four Winds/0 38.60,51.70
accept Growing the Farm I: A Little Problem##30516 |goto Valley of the Four Winds/0 38.60,51.70
step
click Spideroot##211117
collect 6 Spideroot##80122 |q 30516/1 |goto Valley of the Four Winds/0 36.50,51.10
step
talk Gai Lan##57385
turnin Growing the Farm I: A Little Problem##30516 |goto Valley of the Four Winds/0 38.60,51.70
|next "revered" |only if rep('The Tillers')>=Revered
step
When You Arrive at Sunsong Ranch You Will Get a Buff |goto Valley of the Four Winds/0 51.90,48.30
|tip After 15 minutes your ranch will be expanded.
|tip You cannot buy your farm upgrade until the expansion is done.
Gain the Growing the Farm Buff |complete hasbuff(114431) |q 31936 |future
step
Wait For Sunsong Ranch to Upgrade |q 30531 |future
|tip It will take 15 minutes to accomplish.
|tip When you no longer have the {g}Growing the Farm Buff{} buff, you can continue.
step
talk Gina Mudclaw##58706
buy 1 "Jinyu Princess" Irrigation System##89812 |n
use the "Jinyu Princess" Irrigation System##89812
accept The "Jinyu Princess" Irrigation System##31936 |goto Valley of the Four Winds/0 52.22,48.70
She can also be found here [Valley of the Four Winds/0 53.20,51.80]
|only if not completedq(31936)
step
talk Farmer Yoon##58646
turnin The "Jinyu Princess" Irrigation System##31936 |goto Valley of the Four Winds/0 52.25,48.79
|next "Mung_Mung_Hozen_Problem_Quest" |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
|next "end" |only if default
step
label "revered"
talk Farmer Yoon##58646
accept Growing the Farm II: The Broken Wagon##30523 |goto Valley of the Four Winds/0 52.25,48.79
|next "Farmer_Yoon_Yak_Attack_Quest" |only if repval('The Tillers','Revered')>=4200
|next "Mung_Mung_Hozen_Problem_Quest" |only if completedq(31936) and not completedq(31946)
|only if completedq(30516) and rep('The Tillers')>=Revered
step
talk Fish Fellreed##58705
turnin Growing the Farm II: The Broken Wagon##30523 |goto Valley of the Four Winds/0 41.70,30.00
accept Growing the Farm II: Knock on Wood##30524 |goto Valley of the Four Winds/0 41.70,30.00
step
click Boat Planks##211122
collect 100 Waxed Plank##80136 |q 30524/1 |goto Valley of the Four Winds/0 42.80,29.10
step
talk Fish Fellreed##58705
turnin Growing the Farm II: Knock on Wood##30524 |goto Valley of the Four Winds/0 41.70,30.00
step
When You Arrive at Sunsong Ranch You Will Get a Buff |goto Valley of the Four Winds/0 51.90,48.30
|tip After 15 minutes your ranch will be expanded.
|tip You cannot buy your farm upgrade until the expansion is done.
Gain the "Growing the Farm" Buff |havebuff  Growing the Farm##114483
|only if not completedq(31937)
step
Wait for the Farm to Expand |nobuff  Growing the Farm##114483
|tip It takes 15 minutes from the moment you gain the buff.
|only if not completedq(31937)
step
talk Gina Mudclaw##58706
buy 1 "Thunder King" Pest Repellers##89813 |n
use the "Thunder King" Pest Repellers##89813
accept "Thunder King" Pest Repellers##31937 |goto Valley of the Four Winds/0 53.20,51.80
step
talk Farmer Yoon##58646
turnin "Thunder King" Pest Repellers##31937 |goto Valley of the Four Winds/0 52.25,48.79
|next "end"
step
label "Mung_Mung_Hozen_Problem_Quest"
talk Farmer Yoon##58646
accept Mung-Mung's Vote I: A Hozen's Problem##30258 |goto Valley of the Four Winds/0 52.25,48.79
|next "Farmer_Yoon_Yak_Attack_Quest" |only if completedq(31946)
step
talk Mung-Mung##57401
turnin Mung-Mung's Vote I: A Hozen's Problem##30258 |goto Valley of the Four Winds/0 44.20,34.30
accept Mung-Mung's Vote II: Rotten to the Core##30259 |goto Valley of the Four Winds/0 44.20,34.30
step
click Partially Chewed Carrot##210942
collect 10 Partially Chewed Carrot##80116 |q 30259/1 |goto Valley of the Four Winds/0 42.70,38.20
step
talk Mung-Mung##57401
turnin Mung-Mung's Vote II: Rotten to the Core##30259 |goto Valley of the Four Winds/0 44.20,34.30
accept Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto Valley of the Four Winds/0 44.20,34.30
step
talk Merchant Greenfield##58718
buy 2 Juicycrunch Carrot Seeds##80590 |q 31946 |goto Valley of the Four Winds/0 52.88,52.13
step
clicknpc Untilled Soil##58562
use the Juicycrunch Carrot Seeds##80590
|tip Use it on tilled soil.
Plant #2# Juicycrunch Carrot Seeds |q 31946/1 |goto Valley of the Four Winds/0 52.00,48.40
stickystart "Collect_10_Juicycrunch_Carrots"
step
Harvest #2# Ripe Juicycrunch Carrots |q 31946/2 |goto Valley of the Four Winds/0 51.86,48.33
|tip It will take a day for the crops to grow in order for you to harvest them.
step
label "Collect_10_Juicycrunch_Carrots"
collect 10 Juicycrunch Carrot##74841 |q 31946/3 |goto Valley of the Four Winds/0 51.86,48.33
step
talk Mung-Mung##57401
turnin Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto Valley of the Four Winds/0 44.20,34.30
|next "end"
step
label "Farmer_Yoon_Yak_Attack_Quest"
talk Farmer Yoon##58646
accept Farmer Fung's Vote I: Yak Attack##30517 |goto Valley of the Four Winds/0 52.25,48.79
|noquest |next "end"
|next |only if repval('The Tillers','Revered')>=8400
step
talk Farmer Fung##57298
turnin Farmer Fung's Vote I: Yak Attack##30517 |goto Valley of the Four Winds/0 48.30,33.90
accept Farmer Fung's Vote II: On the Loose##30518 |goto Valley of the Four Winds/0 48.30,33.90
step
clicknpc Escaped Shagskin##59491
Recover #5# Shagskin |q 30518/1 |goto Valley of the Four Winds/0 51.00,36.70
Take them here [Valley of the Four Winds/0 50.40,34.70]
step
talk Farmer Fung##57298
turnin Farmer Fung's Vote II: On the Loose##30518 |goto Valley of the Four Winds/0 48.30,33.90
accept Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto Valley of the Four Winds/0 48.30,33.90
step
talk Merchant Greenfield##58718
buy 3 Green Cabbage Seeds##79102 |q 31947 |goto Valley of the Four Winds/0 52.88,52.13
step
clicknpc Untilled Soil##58562
use the Green Cabbage Seeds##79102
|tip Use them on tilled soil.
Plant #3# Green Cabbage Seeds |q 31947/1 |goto Valley of the Four Winds/0 52.00,48.40
stickystart "Collect_15_Green_Cabbage"
step
click Green Cabbage
Harvest #3# Green Cabbage |q 31947/2 |goto Valley of the Four Winds/0 51.85,48.36
|tip It will take a day for the crops to grow in order for you to harvest them.
step
label "Collect_15_Green_Cabbage"
collect 15 Green Cabbage##74840 |q 31947/3 |goto Valley of the Four Winds/0 51.85,48.36
step
talk Farmer Fung##57298
turnin Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto Valley of the Four Winds/0 48.30,33.90
step
label "Nana's_Secret_Recipe"
talk Farmer Yoon##58646
accept Nana's Vote I: Nana's Secret Recipe##30519 |goto Valley of the Four Winds/0 52.20,48.80
|next |only if repval('The Tillers','Revered')>=16800
|noquest |next "end"
step
talk Nana Mudclaw##64597
turnin Nana's Vote I: Nana's Secret Recipe##30519 |goto Valley of the Four Winds/0 54.70,47.00
accept Nana's Vote II: The Sacred Springs##31948 |goto Valley of the Four Winds/0 54.70,47.00
step
kill Thousand-Year Guardian##66850+
use the Empty Pitcher##89902
|tip You may have to kill the Guardian first, then collect the water.
|tip Use it while standing under the waterfall.
collect Thousand-Year Water##89903 |q 31948/1 |goto Valley of the Four Winds/0 56.70,21.70
step
talk Nana Mudclaw##64597
turnin Nana's Vote II: The Sacred Springs##31948 |goto Valley of the Four Winds/0 54.70,47.00
accept Nana's Vote III: Witchberry Julep##31949 |goto Valley of the Four Winds/0 54.70,47.00
step
talk Merchant Greenfield##58718
buy 3 Witchberry Seeds##89326 |q 31949 |goto Valley of the Four Winds/0 52.88,52.13
step
clicknpc Untilled Soil##58562
use the Witchberry Seeds##89326
|tip Use them on the tilled soil.
Plant #3# Witchberry Seeds |q 31949/1 |goto Valley of the Four Winds/0 52.00,48.40
|only if haveq(31949)
stickystart "Collect_15_Witchberries"
step
Harvest #3# Witchberries |q 31949/2 |goto Valley of the Four Winds/0 51.75,48.34
|tip It will take a day for the crops to grow in order for you to harvest them.
step
label "Collect_15_Witchberries"
collect 15 Witchberries##74846 |q 31949/3 |goto Valley of the Four Winds/0 51.75,48.34
step
talk Nana Mudclaw##64597
turnin Nana's Vote III: Witchberry Julep##31949 |goto Valley of the Four Winds/0 54.70,47.00
step
label "haohan"
talk Farmer Yoon##58646
accept Haohan's Vote I: Bungalow Break-In##30521 |goto Valley of the Four Winds/0 52.20,48.80
|noquest |next "end"
step
talk Haohan Mudclaw##57402
turnin Haohan's Vote I: Bungalow Break-In##30521 |goto Valley of the Four Winds/0 52.99,51.72
accept Haohan's Vote II: The Real Culprits##30522 |goto Valley of the Four Winds/0 52.99,51.72
He may appear here if not at the provided location [Valley of the Four Winds/0 44.60,34.10]
step
clicknpc Muddy Tracks##52171
Investigate #8# Suspicious Footprints |q 30522/1 |goto Valley of the Four Winds/0 39.40,43.60
|tip When you click the eighth footprint a hozen will attack you.
step
talk Farmer Yoon##58646
turnin Haohan's Vote II: The Real Culprits##30522 |goto Valley of the Four Winds/0 52.20,48.80
accept Haohan's Vote III: Pure Poison##30525 |goto Valley of the Four Winds/0 52.20,48.80
step
Enter the cave |goto Valley of the Four Winds/0 47.00,20.90 < 10
click Cave Lily##210969
|tip Inside the cave.
collect Cave Lily##80141 |q 30525/2 |goto Valley of the Four Winds/0 47.60,19.39
step
Leave the cave |goto Valley of the Four Winds/0 47.00,20.90 < 10
Enter the cave |goto Valley of the Four Winds/0 44.00,22.20 < 10
click Bloodbloom##210968
|tip Inside the cave.
collect Bloodbloom##80140 |q 30525/1 |goto Valley of the Four Winds/0 44.36,19.67
step
Leave the cave |goto Valley of the Four Winds/0 44.00,22.20 < 5 |walk
click Violet Lichen##210971
collect Violet Lichen##80143 |q 30525/4 |goto Valley of the Four Winds/0 42.50,22.30
step
Enter the cave |goto Valley of the Four Winds/0 39.40,20.40 < 10 |walk
click Ghostcap##210970
|tip Inside the cave.
collect Ghostcap##80142 |q 30525/3 |goto Valley of the Four Winds/0 38.79,18.70
step
Leave the cave |goto Valley of the Four Winds/0 39.40,20.40 < 10
talk Farmer Yoon##58646
turnin Haohan's Vote III: Pure Poison##30525 |goto Valley of the Four Winds/0 52.20,48.80
accept Haohan's Vote IV: Melons For Felons##30527 |goto Valley of the Four Winds/0 52.20,48.80
step
talk Merchant Greenfield##58718
buy 4 Striped Melon Seeds##89329 |q 30527 |goto Valley of the Four Winds/0 52.88,52.13
step
clicknpc Untilled Soil##58562
use the Striped Melon Seeds##89329
|tip Use them on the tilled soil.
Plant #4# Striped Melon Seeds |q 30527/1 |goto Valley of the Four Winds/0 52.00,48.40
stickystart "Collect_20_Striped_Melons"
step
Harvest #4# Striped Melons |q 30527/2 |goto Valley of the Four Winds/0 51.75,48.34
|tip It will take a day for the crops to grow in order for you to harvest them.
step
label "Collect_20_Striped_Melons"
collect 20 Striped Melon##74848 |q 30527/3 |goto Valley of the Four Winds/0 51.75,48.34
step
talk Farmer Yoon##58646
turnin Haohan's Vote IV: Melons For Felons##30527 |goto Valley of the Four Winds/0 52.20,48.80
accept Haohan's Vote V: Chief Yip-Yip##30528 |goto Valley of the Four Winds/0 52.20,48.80
step
Enter the cave |goto Valley of the Four Winds/0 33.10,20.20 < 10 |walk
kill Chief Yip-Yip##59567 |q 30528/1 |goto Valley of the Four Winds/0 32.40,20.60
|tip Use the Throw Melon button on your screen when he begins casting Charging Up.
|tip This will cause him to stop attacking and take increased damage for a few seconds.
step
talk Farmer Yoon##58646
turnin Haohan's Vote V: Chief Yip-Yip##30528 |goto Valley of the Four Winds/0 52.20,48.80
step
Watch the dialogue
clicknpc Offering Bowl##59669
|tip After some talking, the Offering Bowl should light up for you to click.
|confirm |goto Valley of the Four Winds/0 52.03,49.00 |next "end"
step
label "exalted"
talk Farmer Yoon##58646
accept Growing the Farm III: The Mossy Boulder##30529 |goto Valley of the Four Winds/0 52.20,48.80 |or
|noquest |next "end" |or
|next |only if default
step
talk Haohan Mudclaw##57402
turnin Growing the Farm III: The Mossy Boulder##30529 |goto Valley of the Four Winds/0 44.60,34.10
step
Gain the Growing the Farm Buff |havebuff  Growing the Farm##114624 |q 31938 |future |goto Valley of the Four Winds/0 51.90,48.30
|only if not completedq(31938)
step
Wait for the Farm to Grow |nobuff  Growing the Farm##114624 |q 31938 |future |goto Valley of the Four Winds/0 51.90,48.30
|tip After 15 minutes your ranch will be expanded.
|tip You cannot buy your farm upgrade until the expansion is done.
|only if not completedq(31938)
step
talk Gina Mudclaw##58706
buy 1 "Earth-Slasher" Master Plow##89814 |n
use the "Earth-Slasher" Master Plow##89814
accept The "Earth-Slasher" Master Plow##31938 |goto Valley of the Four Winds/0 53.20,51.80
step
talk Farmer Yoon##58646
turnin The "Earth-Slasher" Master Plow##31938 |goto Valley of the Four Winds/0 52.25,48.79
step
talk Nana Mudclaw##64597
accept Inherit the Earth##32682 |goto Valley of the Four Winds/0 54.70,47.00
|only if rep('The Tillers')==Exalted and not completedq(32682)
step
talk Farmer Yoon##58646
Select _"Farmer Yoon, will you join the council of the Tillers Union?"_ |gossip 125887
Ask Farmer Yoon to Join the Council of the Tillers Union |q 32682/1 |goto Valley of the Four Winds/0 52.20,48.80
|only if rep('The Tillers')==Exalted and not completedq(32682)
step
talk Nana Mudclaw##64597
turnin Inherit the Earth##32682 |goto Valley of the Four Winds/0 Valley of the Four Winds 54.70,47.00
|tip This quest opens up the farm to you.
|tip You will be able to rest and set your hearthstone here.
|tip It also opens up new quests and work orders that provide reputations for factions via farming.
|only if rep('The Tillers')==Exalted and not completedq(32682)
step
click Tillers Shrine##215705
accept A Second Hand##30534 |goto Valley of the Four Winds/0 52.00,49.00
|tip This quest requires you to be best friends with one of the Tillers NPCs.
Click here if you aren't Best Friends with any of the Tillers NPCs yet |confirm |next "end"
step
Ask them: <Friend>, how'd you like to help us run the farm? |q 30534/1
|tip You must be Best Friends with one of the 10 Tiller NPCs.
|tip Refer to the Reputations guides to accomplish this.
step
click Tillers Shrine##215705
turnin A Second Hand##30534 |goto Valley of the Four Winds/0 52.00,49.00
step
label "end"
You have completed the available daily quests |complete false or not completedq(30333-30337,31943,31669,31670,31674,31675,31671-31673,31941,31942,30471,30472,30475,30470,30474,30473,30476-30479,30317-30319,30321,30322-30327,30328,30331,30329,30330,30332) |or |next "dailies"
Routing Back to the Scallion Harvest |next "Turnin_Learn_and_Grow_VI" |or |only if not completedq(31945)
|tip New quests will become available with the next daily server reset.
|tip |only if rep("The Tillers")>=Revered
'|talk Gina Mudclaw##58706 |goto Valley of the Four Winds/0 53.20,51.80 |only if rep("The Tillers")>=Revered
|tip Purchase the Grand Commendation of the Tillers from Gina Mudclaw if possible. |only if rep("The Tillers")>=Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this. |only if rep("The Tillers")>=Revered
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies",{
expansion="mists",
mopready=true,
achieveid={7315,6546},
patch='50004',
startlevel=90,
description="This guide will take you through The Golden Lotus dailies Becoming Exalted with the Golden Lotus allows you to purchase a crowd control trinket and some armor. At Revered, you can purchase epic chest armor, rings, and shoulders. At Exalted, you can purchase 3 ground mounts.",
},[[
step
Routing to proper section |complete true or completedq(31512) |or |only if Alliance
Routing to proper section |complete false or completedq(31512) |or |only if Alliance
Routing to proper section |complete true or completedq(30638) |or |only if Horde
Routing to proper section |next "dailies" |complete false or completedq(30638) |or |only if Horde
step
label "prequests"
talk Wanderer Chu##64521
accept Temple of the White Tiger##31392 |goto Kun-Lai Summit/0 72.03,94.26 |only if not completedq(31394) and Alliance
accept Temple of the White Tiger##31393 |goto Kun-Lai Summit/0 72.03,94.26 |only if not completedq(31393) and Horde
step
talk Anduin Wrynn##64540 |only if Alliance
|tip Inside the building. |only if Alliance
turnin Temple of the White Tiger##31392 |goto Kun-Lai Summit/0 68.78,43.12 |only if Alliance
accept A Celestial Experience##31394 |goto Kun-Lai Summit/0 68.78,43.12 |only if Alliance
talk Sunwalker Dezco##64542 |only if Horde
|tip Inside the building. |only if Horde
turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit/0 68.73,43.02 |only if Horde
accept A Celestial Experience##31395 |goto Kun-Lai Summit/0 68.73,43.02 |only if Horde
step
talk Xuen##64528
Speak with Xuen |q 31394/1 |goto Kun-Lai Summit/0 68.89,42.79 |only if Alliance
Speak with Xuen |q 31395/1 |goto Kun-Lai Summit/0 68.89,42.79 |only if Horde
step
Watch the dialogue
kill Spirit of Violence##64656
Pass the First Test |q 31394/2 |goto Kun-Lai Summit/0 68.89,42.79 |only if Alliance
Pass the First Test |q 31395/2 |goto Kun-Lai Summit/0 68.89,42.79 |only if Horde
step
Watch the dialogue
|tip Make sure to walk back to Xuen.
kill Spirit of Anger##64684
Pass the Second Test |q 31394/3 |goto Kun-Lai Summit/0 68.89,42.79 |only if Alliance
Pass the Second Test |q 31395/3 |goto Kun-Lai Summit/0 68.89,42.79 |only if Horde
step
Watch the dialogue
|tip Make sure to walk back to Xuen.
kill Spirit of Hatred##64744
Pass the Third Test |q 31394/4 |goto Kun-Lai Summit/0 68.89,42.79 |only if Alliance
Pass the Third Test |q 31395/4 |goto Kun-Lai Summit/0 68.89,42.79 |only if Horde
step
talk Anduin Wrynn##64540
turnin A Celestial Experience##31394 |goto Kun-Lai Summit/0 68.78,43.12
accept A Witness to History##31512 |or |goto Kun-Lai Summit/0 68.78,43.12
|only if Alliance
step
talk Anduin Wrynn##64848
Select _"Let's find out!"_ |gossip 129781
Speak to Anduin at the Gate of the August Celestials |q 31512/1 |goto Kun-Lai Summit/0 55.10,91.74
|only if Alliance
step
talk Matron Vi Vinh##64149
turnin A Witness to History##31512 |goto Shrine of Seven Stars/1 35.40,65.90
|only if Alliance
step
talk Sunwalker Dezco##64542
turnin A Celestial Experience##31395 |goto Kun-Lai Summit/0 68.73,43.02
accept A Witness to History##31511 |goto Kun-Lai Summit/0 68.73,43.02
|only if Horde
step
talk Sunwalker Dezco##64853
Select _"There's only one way to find out..."_ |gossip 41178
Speak with Dezco at the Gate of the August Celestials |q 31511/1 |goto Kun-Lai Summit/0 56.19,91.56
|only if Horde
step
talk Madam Vee Luo##62996
|tip Inside the building.
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 68.42,47.72
|only if Horde
step
talk Sun Tenderheart##58468
accept The Shrine of Two Moons##30649 |goto Vale of Eternal Blossoms/0 56.73,42.62 |only if Horde
accept The Shrine of Seven Stars##30631 |goto Vale of Eternal Blossoms/0 56.73,42.62 |only if Alliance
step
Run up the ramp |goto Vale of Eternal Blossoms/0 75.41,29.76 < 10 |only if walking
talk Jaluu the Generous##59908
Select _"Have you seen anything suspicious?"_ |gossip 134508 |only if Horde
Select _"Have you seen anything suspicious?"_ |gossip 134507 |only if Alliance
|tip You will be attacked after the dialogue.
Speak to Jaluu the Generous |q 30649/1 |goto Vale of Eternal Blossoms/0 74.16,42.62 |only if Horde
Speak to Jaluu the Generous |q 30631/1 |goto Vale of Eternal Blossoms/0 74.16,42.62 |only if Alliance
step
talk Elder Liao##63996
|tip Beneath the platform.
Select _"What is this place?"_ |gossip 129858
Speak to Elder Liao |q 30649/4 |goto Vale of Eternal Blossoms/0 62.03,20.60
|only if Horde
step
talk Mokimo the Strong##59959
|tip Above the platform.
Select _"How are the refugees settling in?"_ |gossip 126096
Speak to Mokimo the Strong |q 30649/2 |goto Vale of Eternal Blossoms/0 61.26,22.61
|only if Horde
step
talk Madam Vee Luo##62996
|tip Inside the building.
Select _"What can I find here in the city?"_ |gossip 129860
Speak to Madam Vee Luo |q 30649/3 |goto Shrine of Two Moons/1 68.45,47.61
|only if Horde
step
talk Elder Lin##64029
|tip Beneath the platform.
Select _"What is this place?"_ |gossip 129726
Speak to Elder Lin|q 30631/4 |goto Vale of Eternal Blossoms/0 85.22,62.87
|only if Alliance
step
talk Kuru the Light-Hearted##59961
Select _"How are the refugees settling in?"_ |gossip 126095
Speak to Kuru the Light-Hearted |q 30631/2 |goto Vale of Eternal Blossoms/0 85.83,60.89
|only if Alliance
step
talk Matron Vi Vinh##64149
|tip Inside the building.
Select _"What can I find here in the city?"_ |gossip 129857
Speak to Matron Vi Vinh |q 30631/3 |goto Shrine of Seven Stars/1 36.36,66.73
|only if Alliance
step
talk Sun Tenderheart##58468
turnin The Shrine of Two Moons##30649 |goto Vale of Eternal Blossoms/0 56.73,42.62 |only if Horde
turnin The Shrine of Seven Stars##30631 |goto Vale of Eternal Blossoms/0 56.73,42.62 |only if Alliance
step
ding 90
step
talk Leven Dawnblade##58408
accept The Ruins of Guo-Lai##30632 |goto Vale of Eternal Blossoms/0 56.71,43.60
|tip You need Pandaria Flying in order to accept this quest.
step
talk Anji Autumnlight##58465
turnin The Ruins of Guo-Lai##30632 |goto Vale of Eternal Blossoms/0 33.98,37.99
accept Out with the Scouts##30633 |goto Vale of Eternal Blossoms/0 33.98,37.99
step
talk Kun Autumnlight##58471
accept Barring Entry##30634 |goto Vale of Eternal Blossoms/0 33.67,38.40
stickystart "Slay_8_Shao-Tien Precursor"
step
talk Lao Softfoot##65252
Select _"I'm ready to infiltrate the cave."_ |gossip 126101
Speak to Lao Softfoot: 1/1 |q 30634/1 |goto Vale of Eternal Blossoms/0 33.79,22.63
step
Follow Lao Softfoot
|tip Stop when he does.
|tip Stay within the circle around him.
use Explosive Keg##80484
Plant the Explosives |q 30634/2 |goto Vale of Eternal Blossoms/0 27.49,16.10
step
label "Slay_8_Shao-Tien Precursor"
kill Shao-Tien Precursor##59914+
Slay #8# Shao-Tien Precursors |q 30633/1 |goto Vale of Eternal Blossoms/0 31.10,30.85
step
talk Kun Autumnlight##58471
turnin Barring Entry##30634 |goto Vale of Eternal Blossoms/0 33.66,38.40
step
talk Anji Autumnlight##58465
turnin Out with the Scouts##30633 |goto Vale of Eternal Blossoms/0 33.98,38.00
accept Killing the Quilen##30635 |goto Vale of Eternal Blossoms/0 33.97,38.00
accept Stones of Power##30636 |goto Vale of Eternal Blossoms/0 33.97,38.00
stickystart "Collect_7_Revelite_Crystals"
step
kill 9 Stone Guardian##59971 |q 30635/1 |goto Vale of Eternal Blossoms/0 25.63,29.07
step
label "Collect_7_Revelite_Crystals"
click Revelite Crystal##211306
collect 7 Revelite Crystal##80511 |q 30636/1 |goto Vale of Eternal Blossoms/0 22.83,28.36
step
accept The Guo-Lai Halls##30637 |goto Vale of Eternal Blossoms/0 33.98,38.00
|tip This should be automatically accepted, if not, you may need to speak with Anji Autumnlight to accept it.
step
Enter the building |goto Vale of Eternal Blossoms/0 22.22,26.25 < 10
kill Zhao-Jin the Bloodletter##59921
|tip You must attack Zhao-Jin in order for Dagou to spawn properly.
Watch the dialogue
kill Dagou##59977 |q 30637/1 |goto Vale of Eternal Blossoms/1 54.27,55.79
step
talk Anji Autumnlight##58465
turnin The Guo-Lai Halls##30637 |goto Vale of Eternal Blossoms/0 33.98,37.96
turnin Killing the Quilen##30635 |goto Vale of Eternal Blossoms/0 33.98,37.98
turnin Stones of Power##30636 |goto Vale of Eternal Blossoms/0 33.98,37.98
accept Leaving an Opening##30638 |goto Vale of Eternal Blossoms/0 33.98,37.98
step
talk Leven Dawnblade##58408
turnin Leaving an Opening##30638 |goto Vale of Eternal Blossoms/0 56.71,43.61
step
label "dailies"
talk Leven Dawnblade##58408
accept The Eternal Vigil##30307 |goto Vale of Eternal Blossoms/0 56.71,43.62
step
talk Anji Autumnlight##58465
accept Unleashed Spirits##31757 |goto Vale of Eternal Blossoms/0 56.57,43.61 |or 2
accept Crumbling Behemoth##31762 |goto Vale of Eternal Blossoms/0 56.57,43.61 |or 2
accept Striking First##31760 |goto Vale of Eternal Blossoms/0 56.57,43.64 |or 2
accept Thundering Skies##30310 |goto Vale of Eternal Blossoms/0 56.57,43.64 |or 2
accept Set in Stone##30309 |goto Vale of Eternal Blossoms/0 56.56,43.62 |or 2
accept Stone Hard Quilen##30308 |goto Vale of Eternal Blossoms/0 56.56,43.63 |or 2
step
talk Kun Autumnlight##58471
accept Laosy Scouting##31758 |goto Vale of Eternal Blossoms/0 56.51,43.63 |or
accept High Chance of Rain##31756 |goto Vale of Eternal Blossoms/0 56.52,43.64 |or
accept Cannonfire##31754 |goto Vale of Eternal Blossoms/0 56.51,43.63 |or
step
talk Sun Tenderheart##58468
accept Given a Second Chance##30312 |goto Vale of Eternal Blossoms/0 56.50,43.39 |or
accept Acts of Cruelty##31755 |goto Vale of Eternal Blossoms/0 56.49,43.40 |or
accept Free Spirits##30320 |goto Vale of Eternal Blossoms/0 56.49,43.38 |or
stickystart "Slay_8_Shao_Tien_Mogu"
stickystart "Kill_12_Unleashed_Spirits"
stickystart "Rescue_8_Torture_Victims"
stickystart "Kill_3_Subjugated_Serpents"
stickystart "Destroy_7_Shao-Tien_Cannons"
stickystart "Kill_6_Mogu_Effigy"
stickystart "Slay_6_Granite_Quilen"
step
kill 1 Shao-Tien Behemoth##65824 |q 31762/1 |goto Vale of Eternal Blossoms/0 49.86,40.23
|only if haveq(31762) or completedq(31762)
step
kill Shao-Tien Soul-Render##65978
|tip There are four of them surrounding the Shao-Tien Behemoth.
Stop the Shao-Tien Behemoth Ritual |q 31760/1 |goto Vale of Eternal Blossoms/0 44.17,15.49
|only if haveq(31760) or completedq(31760)
step
click Shao-Tien Stormcaller
Destroy the Northern Stormcaller |q 31756/2 |goto Vale of Eternal Blossoms/0 47.83,19.03
|only if haveq(31756) or completedq(31756)
step
click Shao-Tien Stormcaller
Destroy the Eastern Stormcaller |q 31756/1 |goto Vale of Eternal Blossoms/0 50.96,22.21
|only if haveq(31756) or completedq(31756)
step
click Shao-Tien Stormcaller
Destroy the Southern Stormcaller |q 31756/3 |goto Vale of Eternal Blossoms/0 43.13,27.88
|only if haveq(31756) or completedq(31756)
step
click Shao-Tien Stormcaller
Destroy the Western Stormcaller |q 31756/4 |goto Vale of Eternal Blossoms/0 36.82,18.25
|only if haveq(31756) or completedq(31756)
step
label "Slay_6_Granite_Quilen"
kill 6 Granite Quilen##59157 |q 30308/1 |goto Vale of Eternal Blossoms/0 44.91,24.65
|only if haveq(30308) or completedq(30308)
step
label "Kill_6_Mogu_Effigy"
kill 6 Mogu Effigy##59156 |q 30309/1 |goto Vale of Eternal Blossoms/0 44.91,24.65
|only if haveq(30309) or completedq(30309)
step
click Shao-Tien Cage
clicknpc Lao Softfoot##65868
|tip He's in a random cage around this area.
Rescue Lao Softfoot |q 31758/1 |goto Vale of Eternal Blossoms/0 41.81,22.55
|only if haveq(31758) or completedq(31758)
step
label "Kill_3_Subjugated_Serpents"
kill 3 Subjugated Serpent##59158+ |q 30310/1 |goto Vale of Eternal Blossoms/0 45.84,26.16
|tip Flying around this area.
|only if haveq(30310) or completedq(30310)
step
label "Destroy_7_Shao-Tien_Cannons"
use the Wu Kao Explosive##89123
|tip Use them next to Shao-Tien cannons along the walls in around this area.
Destroy #7# Shao-Tien Cannons |q 31754/1 |goto Vale of Eternal Blossoms/0 49.49,27.05
[Vale of Eternal Blossoms/0 51.41,24.60]
|only if haveq(31754) or completedq(31754)
step
label "Slay_8_Shao_Tien_Mogu"
Kill Shao-Tien enemies around this area |kill Shao-Tien Mindbender##63221, Shao-Tien Marauder##58412, Shao-Tien Soul-Render##65810,Shao-Tien Soul-Render##65978
Slay #8# Shao-Tien Mogu |q 30307/1 |goto Vale of Eternal Blossoms/0 45.55,44.33
You can find more around [Vale of Eternal Blossoms/0 41.37,24.51] |notinsticky
|only if haveq(30307) or completedq(30307)
step
label "Rescue_8_Torture_Victims"
kill Shao-Tien Soul-Render##65810
|tip They will be tormenting Mistfall Villagers or Golden Lotus Guards.
Rescue #8# Torture Victims |q 31755/1 |goto Vale of Eternal Blossoms/0 43.23,27.84
|only if haveq(31755) or completedq(31755)
stickystart "Spirit_Void_Buff"
step
clicknpc Captive Pandaren Spirit##59231
|tip Avoid Twisted Tormentors when possible.
|tip You can be mounted while clicking them.
Free #15# Captive Pandaren Spirits |q 30320/1 |goto Vale of Eternal Blossoms/0 42.47,19.59 |or
|only if haveq(30320) or completedq(30320)
stickystop "Spirit_Void_Buff"
step
label "Kill_12_Unleashed_Spirits"
kill 12 Unleashed Spirit##65935|q 31757/1 |goto Vale of Eternal Blossoms/0 49.86,40.23
You can find more around: |notinsticky
[Vale of Eternal Blossoms/0 42.79,34.41] |notinsticky
[Vale of Eternal Blossoms/0 45.68,26.53] |notinsticky
|only if haveq(31757) or completedq(31757)
step
use the Shado-Pan Bandages##84242
clicknpc Wounded Defender##59183
|tip Avoid the golden swirls on the ground.
Heal #6# Wounded Defenders |q 30312/1 |goto Vale of Eternal Blossoms/0 51.98,30.08
|only if haveq(30312) or completedq(30312)
step
talk Sun Tenderheart##58468
turnin Given a Second Chance##30312 |goto Vale of Eternal Blossoms/0 56.50,43.38 |only if haveq(30312) or completedq(30312)
turnin Acts of Cruelty##31755 |goto Vale of Eternal Blossoms/0 56.49,43.40 |only if haveq(31755) or completedq(31755)
turnin Free Spirits##30320 |goto Vale of Eternal Blossoms/0 56.49,43.38 |only if haveq(30320) or completedq(30320)
|only if haveq(30312,31755,30320) or completedq(30312,31755,30320)
step
talk Kun Autumnlight##58471
turnin Laosy Scouting##31758 |goto Vale of Eternal Blossoms/0 56.50,43.63 |only if haveq(31758) or completedq(31758)
turnin High Chance of Rain##31756 |goto Vale of Eternal Blossoms/0 56.52,43.64 |only if haveq(31756) or completedq(31756)
turnin Cannonfire##31754 |goto Vale of Eternal Blossoms/0 56.51,43.63 |only if haveq(31754) or completedq(31754)
|only if haveq(31758,31756,31754) or completedq(31758,31756,31754)
step
talk Anji Autumnlight##58465
turnin Unleashed Spirits##31757 |goto Vale of Eternal Blossoms/0 56.57,43.62 |only if haveq(31757) or completedq(31757)
turnin Crumbling Behemoth##31762 |goto Vale of Eternal Blossoms/0 56.57,43.62 |only if haveq(31762) or completedq(31762)
turnin Striking First##31760 |goto Vale of Eternal Blossoms/0 56.57,43.64 |only if haveq(31760) or completedq(31760)
turnin Thundering Skies##30310 |goto Vale of Eternal Blossoms/0 56.57,43.64 |only if haveq(30310) or completedq(30310)
turnin Set in Stone##30309 |goto Vale of Eternal Blossoms/0 56.56,43.62 |only if haveq(30309) or completedq(30309)
turnin Stone Hard Quilen##30308 |goto Vale of Eternal Blossoms/0 56.56,43.63 |only if haveq(30308) or completedq(30308)
|only if haveq(31757,31762,31760,30310,30309,30308) or completedq(31757,31762,31760,30310,30309,30308)
step
talk Leven Dawnblade##58408
turnin The Eternal Vigil##30307 |goto Vale of Eternal Blossoms/0 56.70,43.59 |only if haveq(30307) or completedq(30307)
accept Whitepetal Lake##31131 |goto Vale of Eternal Blossoms/0 56.70,43.59 |or |next "Whitepetal_Lake"
accept Mistfall Village##31242 |goto Vale of Eternal Blossoms/0 56.70,43.59 |or |next "Mistfall_Village"
accept Attack on Mistfall Village##31243 |goto Vale of Eternal Blossoms/0 56.71,43.61 |or |next "Attack_on_Mistfall"
|tip
Click Here if no quests are available |confirm
step
label "Spirit_Void_Buff"
click Spirit Vortex
|tip They look like pink fissures on the ground around this area.
|havebuff  Spirit Void##129811 |q 30320 |goto Vale of Eternal Blossoms/0 41.07,22.57
step
talk Anji Autumnlight##58465
accept Burning Away the Filth##30282 |goto Vale of Eternal Blossoms/0 56.56,43.62
step
talk Kun Autumnlight##58471
accept Rude Awakenings##30292 |goto Vale of Eternal Blossoms/0 56.52,43.61
step
talk He Softfoot##58470
accept The Silent Approach##30281 |goto Vale of Eternal Blossoms/0 56.55,43.21
step
talk Ren Firetongue##58469
accept A Smashing Impression##30283 |goto Vale of Eternal Blossoms/0 56.68,43.16
stickystart "Burn_10_Shao-Tien_Banners"
stickystart "Kill_10_Paleblade_Flesheaters"
stickystart "Slay_6_Whitepetal_Lake_Mogu"
step
click Shao-Tien Rutual Statues
|tip There are four of them around a golden pillar.
Destroy the Shao-Tien Ritual Statues |q 30283/1 |goto Vale of Eternal Blossoms/0 43.98,44.38
step
label "Burn_10_Shao-Tien_Banners"
use the Shado-Pan Torch##84781
Burn #10# Shao-Tien Banners |q 30282/1 |goto Vale of Eternal Blossoms/0 43.68,46.28
step
label "Kill_10_Paleblade_Flesheaters"
Kill Paleblade enemies around this area |kill Paleblade Flesheater##63130, Paleblade Flesheater##63082
Slay #10# Paleblade Flesheaters |q 30292/1 |goto Vale of Eternal Blossoms/0 44.50,48.13
step
label "Slay_6_Whitepetal_Lake_Mogu"
Kill Shao-Tien enemies around this area |kill Shao-Tien Reclaimer##63081, Shao-Tien Mindbender##63065,Shao-Tien Reclaimer##63131, Shao-Tien Mindbender##63129
Slay #6# Whitepetal Lake Mogu |q 30281/1 |goto Vale of Eternal Blossoms/0 44.81,41.59
step
_Click the Quest Complete Box_
turnin The Silent Approach##30281
accept The Soul-Gatherer##30482
step
kill Shadowmaster Sydow##246246
collect Soul-Gatherer's Beads##85161 |q 30482/1 |goto Vale of Eternal Blossoms/0 40.69,48.12
step
talk Ren Firetongue##58469
turnin A Smashing Impression##30283 |goto Vale of Eternal Blossoms/0 56.69,43.17
step
talk He Softfoot##58470
turnin The Soul-Gatherer##30482 |goto Vale of Eternal Blossoms/0 56.54,43.22
step
talk Kun Autumnlight##58471
turnin Rude Awakenings##30292 |goto Vale of Eternal Blossoms/0 56.52,43.64
step
talk Anji Autumnlight##58465
turnin Burning Away the Filth##30282 |goto Vale of Eternal Blossoms/0 56.56,43.61
step
talk Leven Dawnblade##58408
accept Mistfall Village##31249 |goto Vale of Eternal Blossoms/0 56.70,43.60 |or |next "Mistfall_Village"
step
label "Whitepetal_Lake"
talk He Softfoot##59342
turnin Whitepetal Lake##31131 |goto Vale of Eternal Blossoms/0 43.65,46.05
accept Under Watchful Eyes##30341 |goto Vale of Eternal Blossoms/0 43.67,46.06 |or
accept The Displaced Paleblade##30314 |goto Vale of Eternal Blossoms/0 43.66,46.06 |or
accept The Moving Mists##30313 |goto Vale of Eternal Blossoms/0 43.67,46.05 |or
step
talk Ren Firetongue##59343
accept A Thousand Pointy Teeth##30284 |goto Vale of Eternal Blossoms/0 42.31,46.01 |or 2
accept Sparkle in the Eye##30265 |goto Vale of Eternal Blossoms/0 42.31,46.01 |or 2
accept Fiery Tongue, Fragile Feet##30342 |goto Vale of Eternal Blossoms/0 42.32,46.00 |or 2
accept A Weighty Task##30338 |goto Vale of Eternal Blossoms/0 42.32,46.00 |or 2
accept Stunning Display##30291 |goto Vale of Eternal Blossoms/0 42.32,46.00 |or 2
step
talk Merchant Tantan##59341
accept Stick in the Mud##30340 |goto Vale of Eternal Blossoms/0 42.23,45.91 |or
accept Getting your Hands Dirty##30339 |goto Vale of Eternal Blossoms/0 42.22,45.92 |or
stickystart "Kill_8_Kinfetooth_Swarmers"
stickystart "Collect_8_Ruby_Eyes"
stickystart "Collect_8_Mogu_Artifacts"
stickystart "Collect_12_Stunned_Whitepetal_Carp"
stickystart "Kill_6_Stillwater_Crocolisks"
stickystart "Slay_12_Sliverblade_Saurok"
step
click Fresh Dirt##212742
|tip They are generally around the base of trees or the edges of the lake.
collect 12 Fresh Whitepetal Worm##84240+ |q 30339/1 |goto Vale of Eternal Blossoms/0 42.93,51.82
|only if haveq(30339) or completedq(30339)
step
label "Collect_8_Mogu_Artifacts"
click Mogu Artifact
|tip Under water around this area.
collect 8 Mogu Artifact##84655 |q 30338/1 |goto Vale of Eternal Blossoms/0 40.60,47.39
|only if haveq(30338) or completedq(30338)
step
label "Collect_8_Ruby_Eyes"
click Ruby Eye
|tip In statues of Mogu heads under water around this area.
collect 8 Ruby Eye##84646 |q 30265/1 |goto Vale of Eternal Blossoms/0 39.32,47.94
|only if haveq(30265) or completedq(30265)
step
label "Collect_12_Stunned_Whitepetal_Carp"
clicknpc Stunned Whitepetal Carp##62984
|tip They will be floating at the surface of the lake.
|tip One that are swimming won't be able to be gathered.
collect 12 Stunned Whitepetal Carp##84656 |q 30291/1 |goto Vale of Eternal Blossoms/0 41.26,47.38
|only if haveq(30291) or completedq(30291)
step
label "Kill_8_Kinfetooth_Swarmers"
kill 8 Knifetooth Swarmer##59404 |q 30284/1 |goto Vale of Eternal Blossoms/0 40.58,48.31
|tip Under water around this area.
|only if haveq(30284) or completedq(30284)
stickystart "Kill_8_Shao-Tien_Surveyors"
stickystart "Slay_8_Fog_Walkers"
stickystart "Collect_12_Whitepetal_Reed"
step
label "Kill_6_Stillwater_Crocolisks"
kill 6 Stillwater Crocolisk##58455 |q 30342/1 |goto Vale of Eternal Blossoms/0 40.96,47.83
|only if haveq(30342) or completedq(30342)
step
label "Collect_12_Whitepetal_Reed"
click Whitepetal Reed
|tip Along the edges of the Whitepetal Lake.
collect 12 Whitepetal Reed##84241 |q 30340/1 |goto Vale of Eternal Blossoms/0 43.31,48.69
|only if haveq(30340) or completedq(30340)
step
label "Kill_8_Shao-Tien_Surveyors"
use Shado-Pan Flare##89366
|tip Use it all around the Whitepetal Lake area.
kill 8 Shao-Tien Surveyor##59379 |q 30341/1 |goto Vale of Eternal Blossoms/0 45.13,47.53
|only if haveq(30341) or completedq(30341)
step
label "Slay_8_Fog_Walkers"
kill 8 Fog Walker##58672+ |q 30313/1 |goto Vale of Eternal Blossoms/0 46.03,44.03
|tip They can be found all around the lake.
[Vale of Eternal Blossoms/0 40.71,41.68]
|only if haveq(30313) or completedq(30313)
step
label "Slay_12_Sliverblade_Saurok"
Kill Paleblade enemies around this area |kill Paleblade Flesheater##59378, Paleblade Slithertongue##63044
map Vale of Eternal Blossoms
path loop off; bounce; dist 25
path	38.97,54.54	43.48,51.62	45.18,47.45	45.36,44.00	43.86,40.86
path	40.61,41.49	38.43,45.91
Slay #12# Paleblade Saurok |q 30314/1
|only if haveq(30314) or completedq(30314)
step
talk He Softfoot##59342
turnin Under Watchful Eyes##30341 |goto Vale of Eternal Blossoms/0 43.65,46.05 |only if haveq(30341) or completedq(30341)
turnin The Displaced Paleblade##30314 |goto Vale of Eternal Blossoms/0 43.66,46.06 |only if haveq(30314) or completedq(30314)
turnin The Moving Mists##30313 |goto Vale of Eternal Blossoms/0 43.67,46.05 |only if haveq(30313) or completedq(30313)
|only if haveq(30341,30314,30313) or completedq(30341,30314,30313)
step
talk Ren Firetongue##59343
turnin A Thousand Pointy Teeth##30284 |goto Vale of Eternal Blossoms/0 42.31,46.02 |only if haveq(30284) or completedq(30284)
turnin Sparkle in the Eye##30265 |goto Vale of Eternal Blossoms/0 42.31,46.02 |only if haveq(30265) or completedq(30265)
turnin Fiery Tongue, Fragile Feet##30342 |goto Vale of Eternal Blossoms/0 42.32,46.00 |only if haveq(30342) or completedq(30342)
turnin A Weighty Task##30338 |goto Vale of Eternal Blossoms/0 42.32,46.00 |only if haveq(30338) or completedq(30338)
turnin Stunning Display##30291 |goto Vale of Eternal Blossoms/0 42.32,46.00 |only if haveq(30291) or completedq(30291)
|only if haveq(30284,30265,30342,30338,30291) or completedq(30284,30265,30342,30338,30291)
step
talk Merchant Tantan##59341
turnin Stick in the Mud##30340 |goto Vale of Eternal Blossoms/0 42.21,45.94 |only if haveq(30340) or completedq(30340)
turnin Getting your Hands Dirty##30339 |goto Vale of Eternal Blossoms/0 42.21,45.94 |only if haveq(30339) or completedq(30339)
|only if haveq(30340,30339) or completedq(30340,30339)
step
talk Ren Firetongue##59343
accept Vicejaw##30234 |goto Vale of Eternal Blossoms/0 42.31,46.01 |or
accept Cracklefang##30233 |goto Vale of Eternal Blossoms/0 42.31,46.01 |or
accept Mistfall Village##31245 |goto Vale of Eternal Blossoms/0 42.32,46.02 |or |next "Mistfall_Village"
accept Setting Sun Garrison##31247 |goto Vale of Eternal Blossoms/0 42.32,46.02 |or |next "Setting_Sun_Garrison"
accept Guo-Lai Infestation##31240 |goto Vale of Eternal Blossoms/0 42.32,46.02 |or |next "Guo-Lai_Infest"
accept Attack on Mistfall Village##31246 |goto Vale of Eternal Blossoms/0 42.32,46.01 |or |next "Attack_on_Mistfall"
accept Guo-Lai Encampment##31244 |goto Vale of Eternal Blossoms/0 42.32,46.01 |or |next "Guo-Lai_Ruins"
step
kill Vicejaw##246176 |q 30234/1 |goto Vale of Eternal Blossoms/0 37.44,50.94
|only if haveq(30234) or completedq(30234)
step
kill Cracklefang## |q 30233/1 |goto Vale of Eternal Blossoms/0 46.89,58.51
|only if haveq(30233) or completedq(30233)
step
talk Ren Firetongue##59343
turnin Vicejaw##30234 |goto Vale of Eternal Blossoms/0 42.32,46.01 |only if haveq(30234) or completedq(30234) |next "end"
turnin Cracklefang##30233 |goto Vale of Eternal Blossoms/0 42.32,46.01 |only if haveq(30233) or completedq(30233) |next "end"
|only if haveq(30234,30233) or completedq(30234,30233)
step
label "Mistfall_Village"
talk Che Wildwalker##59338
turnin Mistfall Village##31242 |goto Vale of Eternal Blossoms/0 33.87,72.21 |only if haveq(31242) or completedq(31242)
turnin Mistfall Village##31245 |goto Vale of Eternal Blossoms/0 33.87,72.21 |only if haveq(31245) or completedq(31245)
turnin Mistfall Village##31249 |goto Vale of Eternal Blossoms/0 33.87,72.21 |only if haveq(31249) or completedq(31249)
accept Ruffling Some Feathers##30232 |goto Vale of Eternal Blossoms/0 33.87,72.20
accept The Pandaren Uprising Relived##30237 |goto Vale of Eternal Blossoms/0 33.87,72.20
accept Encroaching Storm##30194 |goto Vale of Eternal Blossoms/0 33.87,72.19
accept Return to Rest##30238 |goto Vale of Eternal Blossoms/0 33.86,72.20
|tip
Click here if no quests are available |confirm
step
talk Cook Tope##58818
accept Meating Expectations##30193 |goto Vale of Eternal Blossoms/0 33.85,70.44
accept Pomfruit Pickup##30231 |goto Vale of Eternal Blossoms/0 33.85,70.44
accept Lushroom Rush##30196 |goto Vale of Eternal Blossoms/0 33.85,70.44
|tip
Click here if no quests are available |confirm
step
talk Merchant Benny##58820
accept Blooming Blossoms##30195 |goto Vale of Eternal Blossoms/0 33.77,69.69
|tip
Click here if no quests are available |confirm
step
talk Mayor Shiyo##58819
accept Sprite Plight##30190 |goto Vale of Eternal Blossoms/0 35.37,74.07 |or 2
accept My Town, It's on Fire##30192 |goto Vale of Eternal Blossoms/0 35.37,74.07 |or 2
accept Steer Clear of the Beer Here##30191 |goto Vale of Eternal Blossoms/0 35.36,74.08 |or 2
|tip
Click here if no quests are available |confirm
stickystart "Collect_12_Mistfall_Pomfruit"
step
kill 8 Thundermaw##58456 |q 30194/1 |goto Vale of Eternal Blossoms/0 27.45,70.33
|only if haveq(30194) or completedq(30194)
stickystart "Collect_10_Stolen_Mistfall_Kegs"
stickystart "Kill_8_Slateskin_Troublemakers"
step
label "Collect_12_Mistfall_Pomfruit"
use the Pomharvest Firework##79344
clicknpc Pomfruit##58767
|tip They are hanging in trees around the village area.
collect 12 Fresh Pomfruit##79250 |q 30231/1 |goto Vale of Eternal Blossoms/0 36.97,77.59
You can find more around [Vale of Eternal Blossoms/0 33.54,75.00]
|only if haveq(30231) or completedq(30231)
step
label "Collect_10_Stolen_Mistfall_Kegs"
kill Slateskin Troublemaker##58673
click Stolen Mistfall Keg##213365
collect 10 Stolen Mistfall Keg##85778 |q 30191/1 |goto Vale of Eternal Blossoms/0 37.19,81.38
|only if haveq(30191) or completedq(30191)
step
click Brazier Fire
Put Out #30# Brazier Fires |q 30192/1 |goto Vale of Eternal Blossoms/0 35.93,70.62
|only if haveq(30192) or completedq(30192)
step
label "Kill_8_Slateskin_Troublemakers"
kill 8 Slateskin Troublemaker##58673 |q 30190/1 |goto Vale of Eternal Blossoms/0 33.32,72.59
|only if haveq(30190) or completedq(30190)
stickystart "Collect_10_Fairlands_Gazelle_Meat"
stickystart "Collect_80_Silken_Feathers"
step
click Eternal Blossom##210539
|tip Around the river in this area.
collect 10 Eternal Blossom##244172 |goto Vale of Eternal Blossoms/0 30.57,70.35 |q 30195
[Vale of Eternal Blossoms/0 34.72,62.09]
[Vale of Eternal Blossoms/0 33.83,56.52]
|only if haveq(30195) or completedq(30195)
step
label "Collect_10_Fairlands_Gazelle_Meat"
kill Fairlands Gazelle##58454+
collect 10 Fairlands Gazelle Meat##79244 |q 30193/1 |goto Vale of Eternal Blossoms/0 29.26,59.38
[Vale of Eternal Blossoms/0 33.42,49.52]
[Vale of Eternal Blossoms/0 25.28,55.78]
|only if haveq(30193) or completedq(30193)
stickystart "Collect_12_Lushrooms"
stickystart "Kill_8_Mogu_Spirits"
step
click Pandaren Gravestone##210419+
Honor #6# Pandaren Gravestones |q 30238/1 |goto Vale of Eternal Blossoms/0 44.20,69.72
|only if haveq(30238) or completedq(30238)
step
label "Kill_8_Mogu_Spirits"
kill 8 Ancient Mogu Spirit##58671 |q 30237/1 |goto Vale of Eternal Blossoms/0 45.24,72.03
|only if haveq(30237) or completedq(30237)
step
label "Collect_12_Lushrooms"
click Lushroom##213350
collect 12 Lushroom##85681 |goto Vale of Eternal Blossoms/0 44.03,68.48
|only if haveq(30196) or completedq(30196)
step
label "Collect_80_Silken_Feathers"
kill Silkfeather Hawk##58457
|tip They are resting in trees and flying around the area.
collect 80 Silken Feather##84121 |q 30232/1 |goto Vale of Eternal Blossoms/0 31.20,61.80
|only if haveq(30232) or completedq(30232)
step
_Click the Quest Complete Box_
turnin The Pandaren Uprising Relived##30237
accept Lao-Fe the Slavebinder##30239
|tip This quest may bug, skip the step if it doesn't accept.
Click here if Loa-Fe the Slavebinder doesn't auto accept |confirm
|only if haveq(30237) or completedq(30237)
step
talk Merchant Benny##58820
turnin Blooming Blossoms##30195 |goto Vale of Eternal Blossoms/0 33.76,69.70 |only if haveq(30195) or completedq(30195)
|only if haveq(30195) or completedq(30195)
step
talk Cook Tope##58818
turnin Meating Expectations##30193 |goto Vale of Eternal Blossoms/0 33.85,70.43 |only if haveq(30193) or completedq(30193)
turnin Pomfruit Pickup##30231 |goto Vale of Eternal Blossoms/0 33.85,70.44 |only if haveq(30231) or completedq(30231)
turnin Lushroom Rush##30196 |goto Vale of Eternal Blossoms/0 33.85,70.44 |only if haveq(30196) or completedq(30196)
|only if haveq(30193,30231,30196) or completedq(30193,30231,30196)
step
talk Mayor Shiyo##58819
turnin Sprite Plight##30190 |goto Vale of Eternal Blossoms/0 35.37,74.06 |only if haveq(30190) or completedq(30190)
turnin My Town, It's on Fire##30192 |goto Vale of Eternal Blossoms/0 35.37,74.06 |only if haveq(30192) or completedq(30192)
turnin Steer Clear of the Beer Here##30191 |goto Vale of Eternal Blossoms/0 35.36,74.08 |only if haveq(30191) or completedq(30191)
|only if haveq(30190,30192,30191) or completedq(30190,30192,30191)
step
talk Che Wildwalker##59338
turnin The Pandaren Uprising Relived##30237 |goto Vale of Eternal Blossoms/0 33.86,72.21 |only if haveq(30237) or completedq(30237)
turnin Ruffling Some Feathers##30232 |goto Vale of Eternal Blossoms/0 33.86,72.20 |only if haveq(30232) or completedq(30232)
turnin Encroaching Storm##30194 |goto Vale of Eternal Blossoms/0 33.87,72.19 |only if haveq(30194) or completedq(30194)
turnin Return to Rest##30238 |goto Vale of Eternal Blossoms/0 33.87,72.19 |only if haveq(30238) or completedq(30238)
accept Quid Pro Quo##30235 |goto Vale of Eternal Blossoms/0 33.86,72.20 |or
accept Lao-Fe the Slavebinder##30239 |goto Vale of Eternal Blossoms/0 33.86,72.20 |or
accept Return to Rest##30238 |goto Vale of Eternal Blossoms/0 33.86,72.20 |or
accept Aetha##30236 |goto Vale of Eternal Blossoms/0 33.86,72.20 |or
accept Setting Sun Garrison##30385 |goto Vale of Eternal Blossoms/0 33.86,72.20 |or |next "Setting_Sun_Garrison"
accept Mogu within the Ruins of Guo-Lai##31295 |goto Vale of Eternal Blossoms/0 33.86,72.20 |or |next "Guo-Lai_Ruins"
accept The Ruins of Guo-Lai##31294 |goto Vale of Eternal Blossoms/0 33.87,72.21 |or |next "Guo-Lai_Infest"
step
Enter the cave |goto Vale of Eternal Blossoms/0 47.48,67.44 < 10
kill Spirit of Lao-Fe##58817 |q 30239/1 |goto Vale of Eternal Blossoms/0 47.44,65.71
|tip Inside the cave.
|only if haveq(30239) or completedq(30239)
step
kill Quid##244995 |q 30235/1 |goto Vale of Eternal Blossoms/0 30.69,79.35
|only if haveq(30235) or completedq(30235)
step
click Pandaren Gravestone##210419
Honor #7# Pandaren Gravestones |q 30238/1 |goto Vale of Eternal Blossoms/0 44.20,69.76
|only if haveq(30238) or completedq(30238)
step
kill 8 Aetha##244975 |q 30236/1 |goto Vale of Eternal Blossoms/0 35.03,89.89
|only if haveq(30236) or completedq(30236)
step
talk Che Wildwalker##59338
turnin Quid Pro Quo##30235 |goto Vale of Eternal Blossoms/0 33.87,72.21 |only if haveq(30235) or completedq(30235)
turnin Lao-Fe the Slavebinder##30239 |goto Vale of Eternal Blossoms/0 33.86,72.20 |only if haveq(30239) or completedq(30239)
turnin Return to Rest##30238 |goto Vale of Eternal Blossoms/0 33.86,72.20 |only if haveq(30238) or completedq(30238)
turnin Aetha##30236 |goto Vale of Eternal Blossoms/0 33.86,72.20 |only if haveq(30236) or completedq(30236)
accept Setting Sun Garrison##30385 |goto Vale of Eternal Blossoms/0 33.87,72.21 |or |next "Setting_Sun_Garrison"
|tip
Click here if no quests are available |confirm |next "end"
step
label "Attack_on_Mistfall"
talk Sun Tenderheart##59337
turnin Attack on Mistfall Village##31243 |goto Vale of Eternal Blossoms/0 35.12,75.37 |only if haveq(31243) or completedq(31243)
accept Backed Into a Corner##30286 |goto Vale of Eternal Blossoms/0 35.12,75.37
accept Wu Kao Scouting Reports##30285 |goto Vale of Eternal Blossoms/0 35.12,75.37
|tip
Click here if no quests are available |confirm
step
talk Mayor Shiyo##59336
|tip Inside the building.
accept My Town, It's On Fire Again##30288 |goto Vale of Eternal Blossoms/0 35.29,76.78
step
talk Rook Stonetoe##58911
turnin Attack on Mistfall Village##31246 |goto Vale of Eternal Blossoms/0 35.24,74.91 |only if haveq(31246) or completedq(31246)
accept Mogu Make Poor House Guests##30287 |goto Vale of Eternal Blossoms/0 35.24,74.91 |or 2
accept Mogu Make Poor House Guests##31293 |goto Vale of Eternal Blossoms/0 35.24,74.88 |or 2
accept Stonebound Killers##30290 |goto Vale of Eternal Blossoms/0 35.24,74.91 |or 2
accept Freeing Mind and Body##30289 |goto Vale of Eternal Blossoms/0 35.24,74.88 |or 2
stickystart "Rescue_6_Cornered_Villagers"
stickystart "Free_6_Dominated_Guards"
stickystart "Slay_6_Shao-Tien_Attackers"
stickystart "Slay_8_Shao-Tien_Attackers"
stickystart "Kill_8_Stonebound_Quilen"
stickystart "Douse_Village_Fires"
step
click Wukao Scouting Report
|tip They're all around the village.
collect 3 Wu Kao Scouting Report##86099 |q 30285/1 |goto Vale of Eternal Blossoms/0 36.41,70.10
|only if haveq(30285) or completedq(30285)
step
label "Douse_Village_Fires"
click Mistfall Water Bucket##213463
|tip They are scattered all around the village.
collect Mistfall Water Bucket##85950 |n
use the Mistfall Water Bucket##85950
Douse #60# Village Fires |q 30288/1 |goto Vale of Eternal Blossoms/0 33.23,73.96
[Vale of Eternal Blossoms/0 36.19,70.93]
|only if haveq(30288) or completedq(30288)
step
label "Free_6_Dominated_Guards"
kill Shao-Tien Subjugator##64201
Free #6# Dominated Guards |q 30289/1 |goto Vale of Eternal Blossoms/0 37.52,68.25
|only if haveq(30289) or completedq(30289)
step
label "Rescue_6_Cornered_Villagers"
Kill enemies around this area |kill Shao-Tien Subjugator##64192, Stonebound Quilen##64186
Rescue #6# Cornered Villagers |q 30286/1 |goto Vale of Eternal Blossoms/0 32.81,69.90
|tip They will be cornered by enemies around the village.
|only if haveq(30286) or completedq(30286)
step
label "Slay_6_Shao-Tien_Attackers"
Kill enemies around this area |kill Shao-Tien Pillager##63948, Shao-Tien Subjugator##63947
Slay #6# Shao-Tien Attackers |q 30287/1 |goto Vale of Eternal Blossoms/0 35.20,72.60
|only if haveq(30287) or completedq(30287)
step
label "Slay_8_Shao-Tien_Attackers"
Kill enemies around this area |kill Shao-Tien Pillager##63948, Shao-Tien Subjugator##63947
Slay #8# Shao-Tien Attackers |q 31293/1 |goto Vale of Eternal Blossoms/0 35.20,72.60
|only if haveq(31293) or completedq(31293)
step
label "Kill_8_Stonebound_Quilen"
kill 8 Stonebound Quilen##63950 |q 30290/1 |goto Vale of Eternal Blossoms/0 35.20,72.60
|only if haveq(30290) or completedq(30290)
step
talk Rook Stonetoe##58911
turnin Mogu Make Poor House Guests##30287 |goto Vale of Eternal Blossoms/0 35.24,74.91 |only if haveq(30287) or completedq(30287)
turnin Mogu Make Poor House Guests##31293 |goto Vale of Eternal Blossoms/0 35.24,74.88 |only if haveq(31293) or completedq(31293)
turnin Stonebound Killers##30290 |goto Vale of Eternal Blossoms/0 35.24,74.91 |only if haveq(30290) or completedq(30290)
turnin Freeing Mind and Body##30289 |goto Vale of Eternal Blossoms/0 35.24,74.88 |only if haveq(30289) or completedq(30289)
|only if haveq(30287,30290,31293,30289) or completedq(30287,30290,31293,30289)
step
talk Sun Tenderheart##59337
turnin Backed Into a Corner##30286 |goto Vale of Eternal Blossoms/0 35.12,75.37 |only if haveq(30286) or completedq(30286)
turnin Wu Kao Scouting Reports##30285 |goto Vale of Eternal Blossoms/0 35.12,75.37 |only if haveq(30285) or completedq(30285)
|only if haveq(30286,30285) or completedq(30286,30285)
step
talk Mayor Shiyo##59336
|tip Inside the building.
turnin My Town, It's On Fire Again##30288 |goto Vale of Eternal Blossoms/0 35.29,76.78 |only if haveq(30288) or completedq(30288)
|only if haveq(30288) or completedq(30288)
step
talk Sun Tenderheart##59337
accept Setting Sun Garrison##31297 |goto Vale of Eternal Blossoms/0 35.10,75.38 |next "Setting_Sun_Garrison"
|tip
Click here if no quests are available |confirm
step
talk Rook Stonetoe##58911
accept Baolai the Immolator##30297 |goto Vale of Eternal Blossoms/0 35.25,74.91 |or
accept Gaohun the Soul-Severer##30296 |goto Vale of Eternal Blossoms/0 35.25,74.91 |or
step
kill Baolai the Immolator##245163 |q 30297/1 |goto Vale of Eternal Blossoms/0 37.50,81.44
|only if haveq(30297) or completedq(30297)
step
kill Gaohun the Soul-Severer##245153 |q 30296/1 |goto Vale of Eternal Blossoms/0 39.10,74.66
|only if haveq(30296) or completedq(30296)
step
talk Rook Stonetoe##58911
turnin Baolai the Immolator##30297 |goto Vale of Eternal Blossoms/0 35.25,74.91 |only if haveq(30297) or completedq(30297) |next "end"
turnin Gaohun the Soul-Severer##30296 |goto Vale of Eternal Blossoms/0 35.25,74.91 |only if haveq(30296) or completedq(30296) |next "end"
|only if haveq(30297,30296) or completedq(30297,30296)
step
label "Guo-Lai_Ruins"
talk Leven Dawnblade##59332
turnin Mogu within the Ruins of Guo-Lai##31295 |goto Vale of Eternal Blossoms/0 33.81,38.50 |only if haveq(31295) or completedq(31295)
turnin Guo-Lai Encampment##31244 |goto Vale of Eternal Blossoms/0 33.81,38.50 |only if haveq(31244) or completedq(31244)
accept Painting the Ruins Red##30298 |goto Vale of Eternal Blossoms/0 33.81,38.50 |or 2
accept Offering a Warm Welcome##30301 |goto Vale of Eternal Blossoms/0 33.81,38.50 |or 2
|tip
Click here of no quests are available |confirm
step
talk Rook Stonetoe##59333
accept Carved in Stone##30481 |goto Vale of Eternal Blossoms/0 33.39,38.04
|tip
Click here of no quests are available |confirm
step
talk Sun Tenderheart##59334
accept No Stone Unturned##30299 |goto Vale of Eternal Blossoms/0 33.11,38.97 |or 2
accept The Key to Success##30300 |goto Vale of Eternal Blossoms/0 33.11,38.97 |or 2
|tip
Click here of no quests are available |confirm |or
stickystart "Destroy_6_Mogu_Statues"
stickystart "Collect_1_Shao-Tien_Cage_Keys"
stickystart "Slay_8_Guo-Lai_Mogu"
stickystart "Free_6_Golden_Lotus_Prisoners"
step
label "Collect_12_Guo-Lai_Relics"
kill Shao-Tien Dominator##63610+
click Guo-Lai Runestane##547432
|tip On the walls of ruins around this area.
collect 12 Guo-Lai Runestone##85278 |q 30206/1 |goto Vale of Eternal Blossoms/0 25.92,30.77 |only if haveq(30206) or completedq(30206)
collect 12 Guo-Lai Runestone##85278 |q 30481/1 |goto Vale of Eternal Blossoms/0 25.92,30.77 |only if haveq(30481) or completedq(30481)
You can find more around: |notinsticky
[Vale of Eternal Blossoms/0 21.46,30.21] |notinsticky
[Vale of Eternal Blossoms/0 25.41,40.81] |notinsticky
|only if haveq(30206,30481) or completedq(30206,30481)
step
use the Shado-Pan Torch##85581
|tip Use them on tents around this area.
Burn #6# Shao-Tien Tents |q 30301/1 |goto Vale of Eternal Blossoms/0 26.71,30.22
You can find more around:
[Vale of Eternal Blossoms/0 25.57,27.21]
[Vale of Eternal Blossoms/0 20.94,30.62]
step
label "Collect_1_Shao-Tien_Cage_Keys"
Kill Shao-Tien Mogu around this area |kill Shao-Tien Dominator##63610, Shao-Tien Soul-Caller##63611,Shao-Tien Torturer##63641
collect 1 Shao-Tien Cage Key##85582 |q 30300/1 |goto Vale of Eternal Blossoms/0 25.37,28.95
|tip These may have a very low drop rate.
step
label "Free_6_Golden_Lotus_Prisoners"
click Shao-tien cage##214948
Free #6# Golden Lotus Prisoners |q 30300/2 |goto Vale of Eternal Blossoms/0 31.27,30.59
You can find more around:
[Vale of Eternal Blossoms/0 25.40,27.36]
[Vale of Eternal Blossoms/0 20.93,29.96]
step
label "Slay_8_Guo-Lai_Mogu"
Kill Shao-Tien Mogu around this area |kill Shao-Tien Dominator##63610, Shao-Tien Soul-Caller##63611,Shao-Tien Torturer##63641
Slay #8# Guo-Lai Mogu |q 30298/1 |goto Vale of Eternal Blossoms/0 25.37,28.95
step
label "Destroy_6_Mogu_Statues"
clicknpc Mogu Statue##63447
kill Mogu Statue##63674
Destroy #6# Mogu Statues |q 30299/1 |goto Vale of Eternal Blossoms/0 18.60,30.11
You can find more around here [Vale of Eternal Blossoms/0 24.93,27.69] |notinsticky
step
talk Leven Dawnblade##59332
turnin Painting the Ruins Red##30298 |goto Vale of Eternal Blossoms/0 33.83,38.51 |only if haveq(30298) or completedq(30298)
turnin Offering a Warm Welcome##30301 |goto Vale of Eternal Blossoms/0 33.83,38.51 |only if haveq(30301) or completedq(30301)
accept The Imperion Threat##30302 |goto Vale of Eternal Blossoms/0 33.83,38.51
accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 33.82,38.48
|tip
Click here of no quests are available |confirm
|only if haveq(30298,30301) or completedq(30298,30301)
step
talk Rook Stonetoe##59333
turnin Carved in Stone##30481 |goto Vale of Eternal Blossoms/0 33.39,38.04
|only if haveq(30481) or completedq(30481)
step
talk Sun Tenderheart##59334
turnin No Stone Unturned##30299 |goto Vale of Eternal Blossoms/0 33.12,38.96 |only if haveq(30299) or completedq(30299)
turnin The Key to Success##30300 |goto Vale of Eternal Blossoms/0 33.12,38.96 |only if haveq(30300) or completedq(30300)
|only if haveq(30299,30300) or completedq(30299,30300)
step
Enter the building |goto Vale of Eternal Blossoms/0 22.26,26.31 < 15
Follow the path |goto Vale of Eternal Blossoms/1 60.45,64.59 < 15
kill Gochao the Ironfist##246031 |q 30302/1 |goto Vale of Eternal Blossoms/1 77.92,73.34
step
click Deactivate First spirit Wall##214474 |goto Vale of Eternal Blossoms/1 36.49,36.55 < 5
click Deactivate Second Spirit Wall##214476 |goto Vale of Eternal Blossoms/1 23.16,28.80 < 5
Follow the path |goto Vale of Eternal Blossoms/1 32.98,20.84 < 10
click Deactivate Final Spirit Wall##214477
Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/1 42.01,27.54
|only if haveq(30277) or completedq(30277)
step
click Ancient Guo-Lai Artifact##214394
collect Ancient Guo-Lai Artifact##87790 |q 30277/2 |goto Vale of Eternal Blossoms/1 49.40,30.60
|only if haveq(30277) or completedq(30277)
step
talk Leven Dawnblade##59332
turnin The Imperion Threat##30302 |goto Vale of Eternal Blossoms/0 33.83,38.52 |only if haveq(30302) or completedq(30302)
turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 33.83,38.52 |only if haveq(30277) or completedq(30277)
|next "end"
|only if haveq(30302,30277) or completedq(30302,30277)
step
label "Guo-Lai_Infest"
talk Anji Autumnlight##58503
turnin Guo-Lai Infestation##31240 |goto Vale of Eternal Blossoms/0 33.97,38.11 |only if haveq(31240) or completedq(31240)
turnin The Ruins of Guo-Lai##31294 |goto Vale of Eternal Blossoms/0 33.97,38.12 |only if haveq(31294) or completedq(31294)
accept In Ashen Webs##30200 |goto Vale of Eternal Blossoms/0 33.97,38.11
accept Troubling the Troublemakers##30228 |goto Vale of Eternal Blossoms/0 33.97,38.11
|tip
Click here if no quests are available |confirm
step
talk Kun Autumnlight##58504
accept That's Not a Rock!##30204 |goto Vale of Eternal Blossoms/0 34.08,38.10 |or
accept Hard as a Rock##30304 |goto Vale of Eternal Blossoms/0 34.07,38.11 |or
|tip
Click here if no quests are available |confirm
step
talk Sinan the Dreamer##63266
accept Runes in the Ruins##30206 |goto Vale of Eternal Blossoms/0 33.49,40.80
accept Runelocked##30205 |goto Vale of Eternal Blossoms/0 33.49,40.78
|tip
Click here if no quests are available |confirm
stickystart "Kill_50_Ashweb_Hatchlings"
stickystart "Collect_12_Guo-Lai_Relics"
stickystart "Destroy_10_Mogu_Statues"
stickystart "Slay_8_Ashweb_Spiders"
step
click Ancient Mogu Artifact
|tip Look for {b}blue{} runes on the ground.
|tip When you find them, look for four of them.
|tip You need to stand in them, activating all four in order to be able to look the artifact.
collect Ancient Mogu Artifact##85204 |q 30205/1 |goto Vale of Eternal Blossoms/0 26.56,20.13
The locks can also appear around here [Vale of Eternal Blossoms/0 31.23,31.09]
step
label "Destroy_10_Mogu_Statues"
click Mogu Statue
Destroy #10# Mogu Statues |q 30304/1 |goto Vale of Eternal Blossoms/0 30.91,33.39
step
kill 8 Stonebark Trickster##58545+ |q 30228/1 |goto Vale of Eternal Blossoms/0 27.02,19.17
You can find more around:
[Vale of Eternal Blossoms/0 30.70,20.11]
[Vale of Eternal Blossoms/0 30.96,27.13]
|only if haveq(30228) or completedq(30228)
step
label "Collect_12_Guo-Lai_Relics"
click Guo-Lai Runestane##547432
|tip On the walls of ruins around this area.
collect 12 Guo-Lai Runestone##85278 |q 30206/1 |goto Vale of Eternal Blossoms/0 25.92,30.77
collect 12 Guo-Lai Runestone##85278 |q 30481/1 |goto Vale of Eternal Blossoms/0 25.92,30.77
You can find more around: |notinsticky
[Vale of Eternal Blossoms/0 21.46,30.21] |notinsticky
[Vale of Eternal Blossoms/0 25.41,40.81] |notinsticky
|only if haveq(30206) or completedq(30206)
step
label "Kill_50_Ashweb_Hatchlings"
use the Shado-Pan Torch##85261
|tip Use it on grey piles of web on the ground around this area.
|tip They will be faintly shimmering.
kill 50 Ashweb Hatchling##58568|q 30204/1 |goto Vale of Eternal Blossoms/0 18.62,30.13
You can find more arond: |notinsticky
[Vale of Eternal Blossoms/0 25.63,27.83] |notinsticky
[Vale of Eternal Blossoms/0 25.41,40.81] |notinsticky
|only if haveq(30204) or completedq(30204)
step
label "Slay_8_Ashweb_Spiders"
Kill Ashweb enemies around this area |kill Ashweb Piercer##58475, Ashweb Weaver##58459
Slay #8# Ashweb Spiders  |q 30200/1 |goto Vale of Eternal Blossoms/0 26.29,29.54
|only if haveq(30200) or completedq(30200)
step
talk Sinan the Dreamer##63266
turnin Runes in the Ruins##30206 |goto Vale of Eternal Blossoms/0 33.49,40.79 |only if haveq(30206) or completedq(30206)
turnin Runelocked##30205 |goto Vale of Eternal Blossoms/0 33.49,40.79 |only if haveq(30205) or completedq(30205)
|only if haveq(30206,30205) or completedq(30206,30205)
step
talk Kun Autumnlight##58504
turnin That's Not a Rock!##30204 |goto Vale of Eternal Blossoms/0 34.06,38.10 |only if haveq(30204) or completedq(30204)
turnin Hard as a Rock##30304 |goto Vale of Eternal Blossoms/0 34.07,38.11 |only if haveq(30304) or completedq(30304)
|only if haveq(30204,30304) or completedq(30204,30304)
step
talk Anji Autumnlight##58503
turnin In Ashen Webs##30200 |goto Vale of Eternal Blossoms/0 33.97,38.11 |only if haveq(30200) or completedq(30200)
turnin Troubling the Troublemakers##30228 |goto Vale of Eternal Blossoms/0 33.97,38.11 |only if haveq(30228) or completedq(30228)
accept The Ashweb Matriarch##30225 |goto Vale of Eternal Blossoms/0 33.97,38.11 |or 2
accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 33.96,38.12 |or 2
accept Wulon, the Granite Sentinel##30227 |goto Vale of Eternal Blossoms/0 33.98,38.11 |or 2
accept The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 33.97,38.11 |or 2
|tip
Click here if no quests are available |confirm
step
Enter the building |goto Vale of Eternal Blossoms/0 22.22,26.23 < 15
kill Bloodtip##245926 |q 30225/1 |goto Vale of Eternal Blossoms/1 75.55,48.17
|only if haveq(30225) or completedq(30225)
step
Enter the building |goto Vale of Eternal Blossoms/0 22.22,26.23 < 15
kill Wulon##63510 |q 30227/1 |goto Vale of Eternal Blossoms/1 75.03,71.55
|only if haveq(30227) or haveq(30227)
step
click Deactivate First spirit Wall##214474 |goto Vale of Eternal Blossoms/1 36.49,36.55 < 5
click Deactivate Second Spirit Wall##214476 |goto Vale of Eternal Blossoms/1 23.16,28.80 < 5
Follow the path |goto Vale of Eternal Blossoms/1 32.98,20.84 < 10
click Deactivate Final Spirit Wall##214477
Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/1 42.01,27.54
|only if haveq(30277) or haveq(30277)
step
click Ancient Guo-Lai Artifact##214394
collect Ancient Guo-Lai Artifact##87790 |q 30277/2 |goto Vale of Eternal Blossoms/1 49.40,30.60
|only if haveq(30277) or haveq(30277)
step
Run down the stairs |goto Vale of Eternal Blossoms/1 68.82,24.14
kill Milau##64965 |q 30280/1 |goto Vale of Eternal Blossoms/2 54.97,64.49
|only if haveq(30280) or completedq(30280)
step
talk Anji Autumnlight##58503
turnin The Ashweb Matriarch##30225 |goto Vale of Eternal Blossoms/0 33.97,38.11 |only if haveq(30225) or completedq(30225)
turnin Wulon, the Granite Sentinel##30227 |goto Vale of Eternal Blossoms/0 33.97,38.11 |only if haveq(30227) or completedq(30227)
turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 33.96,38.12 |only if haveq(30277) or completedq(30277)
turnin The Thunder Below##30280  |goto Vale of Eternal Blossoms/0 33.96,38.12 |only if haveq(30280) or completedq(30280)
|next "end"
|only if haveq(30225,30227,30277) or completedq(30225,30227,30277)
step
label "Setting_Sun_Garrison"
talk Anji Autumnlight##58919
turnin Setting Sun Garrison##30385 |goto Vale of Eternal Blossoms/0 21.46,71.58 |only if haveq(30385) or completedq(30385)
turnin Setting Sun Garrison##31247 |goto Vale of Eternal Blossoms/0 21.46,71.58 |only if haveq(31247) or completedq(31247)
turnin Setting Sun Garrison##31297 |goto Vale of Eternal Blossoms/0 21.46,71.58 |only if haveq(31297) or completedq(31297)
accept The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 21.46,71.58 |or
accept The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.47,71.58 |or
accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.47,71.58 |or
|tip
Click here if no quests are available |confirm
step
talk Kun Autumnlight##58920
accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.39,71.47
accept Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.39,71.47
|tip
Click here if no quests are available |confirm
step
talk Leven Dawnblade##59340
accept Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 21.50,71.17 |or
accept Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 21.50,71.17 |or
accept The Secrets of Guo-Lai##30639 |goto Vale of Eternal Blossoms/0 21.50,71.17 |only if not completedq(30639)
|tip
Click here if no quests are available |confirm
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
accept The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.12,75.69
|tip
Click here if no quests are available |confirm
step
talk Kelari Featherfoot##58704
accept Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.10,63.58 |or
|tip
Click here if no quests are available |confirm
step
talk Kelari Featherfoot##58704
Select _"Let's roll."_ |gossip 40305
Speak to Kelari Featherfoot |q 30261/1 |goto Vale of Eternal Blossoms/0 18.11,63.56
|only if haveq(30261) or completedq(30261)
step
Complete the Serpent's Spine Roll Course |q 30261/2
|tip Hold down your right mouse button to help you maneuver through the course.
|tip Grab as many speed boosts as you can to make it go quicker.
|only if haveq(30261) or completedq(30261)
step
talk Kelari Featherfoot##58704
turnin Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.10,63.58
|only if haveq(30261) or completedq(30261)
step
Live Through the Survival Ring for 60 Seconds |q 30242/1 |goto Vale of Eternal Blossoms/0 19.20,67.50
|A progression bar will appear on the screen.
|tip Avoid touching the pillars surrounded by swirling blades.
|tip Avoid the Pandaren running around they area.
|tip They can knock you into the pillars or out of the circle.
|tip If you're removed from the circle, you will have to try again.
|only if haveq(30242) or completedq(30242)
step
Live Through the Survival Ring for 60 Seconds |q 30240/1 |goto Vale of Eternal Blossoms/0 19.20,67.50
|A progression bar will appear on the screen.
|tip Stay within the circle and avoid getting hit by the fireworks.
|only if haveq(30240) or completedq(30240)
step
kill 20 Shado-Pan Trainee##58992+ |q 30306/1 |goto Vale of Eternal Blossoms/0 19.54,74.27
|tip Stand at the center of the ring and they will aggro you.
|only if haveq(30306) or completedq(30306)
step
clicknpc Setting Sun Turret##64336
Begin Riding the Setting Sun Turret |invehicle Setting Sun Turret##64336 |goto Vale of Eternal Blossoms/0 7.30,70.56 |q 30266
|tip It's on the upper level of the tower here.
|only if haveq(30266) or completedq(30266)
step
kill 30 Krik'thik Swarmer##63973+ |q 30266/1 |goto Vale of Eternal Blossoms/0 7.27,70.55
|only if haveq(30266) or completedq(30266)
step
Exit the Setting Sun Turret |outvehicle |q 30266
|only if haveq(30266) or completedq(30266)
step
clicknpc Hot Oil Cauldron##64369
Begin Riding the Hot Oil Cauldron |invehicle Hot Oil Cauldron##64369 |goto Vale of Eternal Blossoms/0 3.90,51.70 |q 30243
|only if haveq(30243) or completedq(30243)
step
kill 80 Krik'thik Hiveling##63972 |q 30243/1 |goto Vale of Eternal Blossoms/0 3.90,51.70
|tip Use the Ignitable Oil Bucket first, followed by the Shado-Pan Torch on the enemies below.
|tip If you don't get credit from high up, try flying down closer to the enemies.
[Dread Wastes/0 68.38,12.34]
|only if haveq(30243) or completedq(30243)
step
Exit the Hot Oil Cauldron |outvehicle |q 30243
|only if haveq(30243) or completedq(30243)
step
Enter the building |goto Vale of Eternal Blossoms/0 22.31,26.49 < 10
|tip Only step on the {g}green{} or {r}red{} tiles, other tiles will harm you.
|tip The safe tile changes every day but will be one of the two.
Run down the stairs |goto Vale of Eternal Blossoms/1 68.71,24.18 < 10
kill Milau##64965 |q 30280/1 |goto Vale of Eternal Blossoms/2 55.17,64.56
|tip He will cast a Lightning Breath in any direction, do not be in front of him when he does this.
|tip He also starts casting Lightning Pools, constantly move until he is done.
|tip Periodically he will pull you to the middle of the room and cast Lightning Sweep.
|tip While he is casting get as much distance on him as you can.
|only if haveq(30280) or haveq(30280)
step
click Deactivate First spirit Wall##214474 |goto Vale of Eternal Blossoms/1 36.49,36.55 < 5
click Deactivate Second Spirit Wall##214476 |goto Vale of Eternal Blossoms/1 23.16,28.80 < 5
Follow the path |goto Vale of Eternal Blossoms/1 32.98,20.84 < 10
click Deactivate Final Spirit Wall##214477
Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/1 49.22,22.23
|only if haveq(30277) or haveq(30277)
step
click Ancient Guo-Lai Artifact##214394
collect Ancient Guo-Lai Artifact##87790 |q 30277/2 |goto Vale of Eternal Blossoms/1 49.40,30.60
|only if haveq(30277) or haveq(30277)
step
talk Yumi Goldenpaw##58743
turnin Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.50,71.50 |only if haveq(30242) or completedq(30242)
turnin Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.50,71.50 |only if haveq(30240) or completedq(30240)
|only if haveq(30242,30240)
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
turnin The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.12,75.69 |only if haveq(30306) or completedq(30306)
|only if haveq(30306)
step
talk Anji Autumnlight##58919
turnin The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.47,71.58 |only if haveq(30280) or completedq(30280)
turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.47,71.58 |only if haveq(30277) or completedq(30277)
|only if haveq(30280,30277)
step
talk Kun Autumnlight##58920
turnin Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.39,71.47 |only if haveq(30243) or completedq(30243)
turnin Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.39,71.47 |only if haveq(30266) or completedq(30266)
|only if haveq(30243,30266)
step
talk Anji Autumnlight##58919
accept Upon the Ramparts##30246 |goto Vale of Eternal Blossoms/0 21.46,71.58 |or
accept No Reprieve##30444 |goto Vale of Eternal Blossoms/0 21.46,71.58 |or
accept Enemy at the Gates##30264 |goto Vale of Eternal Blossoms/0 21.46,71.57 |or
|tip
Click here if no quests are available |confirm
step
talk Kun Autumnlight##58920
accept Lost Scouts##30245 |goto Vale of Eternal Blossoms/0 21.38,71.47 |or
accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.39,71.47 |or
|tip
Click here if no quests are available |confirm
step
talk Leven Dawnblade##59340
accept Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.49,71.18
|tip
Click here if no quests are available |confirm
step
clicknpc War Serpent##65336
Mount a War Serpent |q 30264/1 |goto Vale of Eternal Blossoms/0 15.54,66.11
|only if haveq(30264) or completedq(30264)
step
As You Fly:
|tip Use the {y}Delayed Clusterbomb{} ability on your action bar to kill enemies below.
Kill enemies around this area |kill Krik'thik War Wagon##64274, Krik'thik Hiveling##63972, Krik'thik Catapult##64275
Slay #60# Krik'thik Hiveling slain |q 30264/2 |goto Dread Wastes/0 66.30,11.72
Slay #3# Krik'thik War Wagon |q 30264/3 |goto Dread Wastes/0 66.30,11.72
Slay #3# Krik'thik Catapult |q 30264/4 |goto Dread Wastes/0 66.30,11.72
|only if haveq(30264) or completedq(30264)
step
clicknpc Hot Oil Cauldron##64369
Begin Riding the Hot Oil Cauldron |invehicle Hot Oil Cauldron##64369 |goto Vale of Eternal Blossoms/0 3.90,51.70 |q 30243
|only if haveq(30243) or completedq(30243)
step
kill 80 Krik'thik Hiveling##63972 |q 30243/1 |goto Vale of Eternal Blossoms/0 3.90,51.70
|tip Use the Ignitable Oil Bucket first, followed by the Shado-Pan Torch on the enemies below.
|tip If you don't get credit from high up, try flying down closer to the enemies.
[Dread Wastes/0 68.38,12.34]
|only if haveq(30243) or completedq(30243)
step
_Click the Quest Complete Box_
turnin Mantid Under Fire##30243
accept Along the Serpent's Spine##30244
|only if haveq(30243) or completedq(30243)
step
Exit the Hot Oil Cauldron |outvehicle |q 30243
|only if haveq(30243) or completedq(30243)
step
clicknpc Setting Sun Turret##64336
Begin Riding the Setting Sun Turret |invehicle Setting Sun Turret##64336 |goto Vale of Eternal Blossoms/0 7.30,70.56 |q 30266
|tip It's on the upper level of the tower here.
|only if haveq(30266) or completedq(30266)
step
kill 30 Krik'thik Swarmer##63973+ |q 30266/1 |goto Vale of Eternal Blossoms/0 7.27,70.55
|only if haveq(30266) or completedq(30266)
step
Exit the Setting Sun Turret |outvehicle |q 30266
|only if haveq(30266) or completedq(30266)
step
Kill Krik'thik enemies around this area |kill Krik'thik Locust-Guard##63974, Krik'thik Needler##63976
Slay #10# Krik'thik Wall Attackers |q 30246/1 |goto Vale of Eternal Blossoms/0 11.61,58.61 |only if haveq(30246) or completedq(30246)
Slay #10# Krik'thik Wall Attackers |q 30244/1 |goto Vale of Eternal Blossoms/0 11.61,58.61 |only if haveq(30244) or completedq(30244)
You can find more around:
[Vale of Eternal Blossoms/0 6.95,71.74]
[Vale of Eternal Blossoms/0 6.98,45.81]
|only if haveq(30246,30244) or completedq(30246,30244)
stickystart "Slay_8_Shao-Tien_Mogu"
step
clicknpc Shado-Pan Scout##58930
|tip Search the map for golden circles.
Gather Information from a Shado-Pan Scout |q 30245/1 |goto Vale of Eternal Blossoms/0 11.23,40.78
[Vale of Eternal Blossoms/0 9.29,35.18]
[Vale of Eternal Blossoms/0 10.83,31.58]
|only if haveq(30245) or completedq(30245)
step
label "Slay_8_Shao-Tien_Mogu"
Kill Shao-Tien Mogu around this area |kill Shao-Tien Antiquator##58928, Shao-Tien Fist##58927
Slay #8# Shao-Tien Mogu |q 30444/1 |goto Vale of Eternal Blossoms/0 11.36,38.01
|only if haveq(30444) or completedq(30444)
step
_Click the Quest Complete Box:_
turnin Upon the Ramparts##30246 |only if haveq(30246) or completedq(30246)
turnin Along the Serpent's Spine##30244 |only if haveq(30244) or completedq(30244)
accept Vyraxxis, the Krik'thik Swarm-Lord##30251 |or
accept Under the Setting Sun##30249 |or
|only if haveq(30246,30244) or completedq(30246,30244)
step
_Click the Quest Complete Box:_
turnin Lost Scouts##30245
accept The Butcher##30248 |goto Vale of Eternal Blossoms/0 11.75,41.47
|only if haveq(30245) or completedq(30245)
step
kill Vyraxxis##246384 |q 30251/1 |goto Vale of Eternal Blossoms/0 7.97,33.88
|tip Move out of {y}Caustic Pitch{} that appears on the ground.
|only if haveq(30251) or completedq(30251)
step
kill Kri'chon##246383 |q 30249/1 |goto Vale of Eternal Blossoms/0 6.04,58.51
|only if haveq(30249) or completedq(30249)
step
kill Bai-Jin the Butcher##246386 |q 30248/1 |goto Vale of Eternal Blossoms/0 15.34,24.91
|only if haveq(30248) or completedq(30248)
step
talk Kun Autumnlight##58920
turnin Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.39,71.47 |only if haveq(30243) or completedq(30243)
turnin Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.39,71.47 |only if haveq(30266) or completedq(30266)
turnin The Butcher##30248 |goto Vale of Eternal Blossoms/0 21.39,71.47 |only if haveq(30248) or completedq(30248)
turnin Under the Setting Sun##30249 |goto Vale of Eternal Blossoms/0 21.39,71.47 |only if haveq(30249) or completedq(30249)
|only if haveq(30243,30266,30248,30249)
step
talk Anji Autumnlight##58919
turnin Vyraxxis, the Krik'thik Swarm-Lord##30251 |goto Vale of Eternal Blossoms/0 21.46,71.57 |only if haveq(30251) or completedq(30251)
turnin No Reprieve##30444 |goto Vale of Eternal Blossoms/0 21.46,71.57 |only if haveq(30444) or completedq(30444)
turnin Enemy at the Gates##30264 |goto Vale of Eternal Blossoms/0 21.46,71.57
|only if haveq(30251,30444,30264) or completedq(30251,30444,30264)
step
Enter the building |goto Vale of Eternal Blossoms/0 22.40,26.69 < 15 |walk
talk He Softfoot##64647
Select _"Let's go."_ |gossip 129770
Catch up with He Softfoot |q 30639/1 |goto Vale of Eternal Blossoms/1 40.84,52.26
|only if not completedq(30639)
step
Follow He Softfoot
Watch the dialogue
kill Crumbling Jade Warrior##64883
|tip They start spawning at random.
Watch the dialogue
kill Jade Colossus##64676
Uncover the Mogu Plan in the Hall of Statues |q 30639/2 |goto Vale of Eternal Blossoms/1 48.02,29.72
|only if not completedq(30639)
step
talk Leven Dawnblade##59340
turnin The Secrets of Guo-Lai##30639 |goto Vale of Eternal Blossoms/0 21.49,71.17
|only if not completedq(30639)
step
label "end"
talk Leven Dawnblade##59340
accept The Secrets of Guo-Lai##30639 |goto Vale of Eternal Blossoms/0 21.50,71.17
|only if rep("Golden Lotus") >= Honored and not completedq(30639)
step
Enter the building |goto Vale of Eternal Blossoms/0 22.40,26.69 < 15 |walk
talk He Softfoot##64647
Select _"Let's go."_ |gossip 129770
Catch up with He Softfoot |q 30639/1 |goto Vale of Eternal Blossoms/1 40.84,52.26
|only if rep("Golden Lotus") >= Honored and not completedq(30639)
step
Follow He Softfoot
Watch the dialogue
kill Crumbling Jade Warrior##64883
|tip They start spawning at random.
Watch the dialogue
kill Jade Colossus##64676
Uncover the Mogu Plan in the Hall of Statues |q 30639/2 |goto Vale of Eternal Blossoms/1 48.02,29.72
|only if rep("Golden Lotus") >= Honored and not completedq(30639)
step
talk Leven Dawnblade##59340
turnin The Secrets of Guo-Lai##30639 |goto Vale of Eternal Blossoms/0 21.49,71.17
|only if rep("Golden Lotus") >= Honored and not completedq(30639)
step
talk Zhi the Harmonious##59905
accept Battle Spear of the Thunder King##30640 |goto Vale of Eternal Blossoms/0 57.23,43.00
|only if rep("Golden Lotus") >= Revered and not completedq(30640)
step
click Battle Spear of the Thunder King
|tip Underwater in the shallow lake above Guo-Lai Halls.
|tip You will be attacked after looting it.
collect Battle Spear of the Thunder King##80808 |q 30640/1 |goto Vale of Eternal Blossoms/0 21.39,19.81
|only if rep("Golden Lotus") >= Revered and not completedq(30640)
step
talk Zhi the Harmonious##59905
turnin Battle Spear of the Thunder King##30640 |goto Vale of Eternal Blossoms/0 57.24,43.00
accept Battle Helm of the Thunder King##30641 |goto Vale of Eternal Blossoms/0 57.24,43.00
|only if rep("Golden Lotus") >= Revered and not completedq(30641)
step
talk Ren Firetongue##64889
Select _"Zhi sent me."_ |gossip 129708
Enter the Hall of Tiles |q 30641/1 |goto Vale of Eternal Blossoms/1 58.52,44.29
|only if rep("Golden Lotus") >= Revered and not completedq(30641)
step
Enter the building |goto Vale of Eternal Blossoms/0 22.34,26.52 < 15
click Ancient Guo-Lai Door
Follow the path |goto Vale of Eternal Blossoms/1 62.46,24.53 < 10
Run down the stairs |goto Vale of Eternal Blossoms/1 68.74,24.04 < 10
kill Zhao-Jin the Bloodletter##60359
kill Jade Guardian##60296+
click Battle Helm of the Thunder King
collect Battle Helm of the Thunder King##80222 |goto Vale of Eternal Blossoms/2 49.97,82.07
|only if rep("Golden Lotus") >= Revered and not completedq(30641)
step
talk Zhi the Harmonious##59905
turnin Battle Helm of the Thunder King##30641 |goto Vale of Eternal Blossoms/0 57.24,43.00
accept Battle Axe of the Thunder King##30642 |goto Vale of Eternal Blossoms/0 57.24,43.00
|only if rep("Golden Lotus") >= Revered and not completedq(30642)
step
Enter the building |goto Vale of Eternal Blossoms/0 40.39,77.15 < 7
kill Jade Construct##60297
|tip They will spawn from both sides of the room.
|tip the two {g}Green{} orbs in the room will heal you.
|tip The {b}Blue{} orb in the room will grant you damage.
|tip They take some time to respawn.
Pass the Trial of the Constructs |q 30642/1 |goto Vale of Eternal Blossoms/0 44.66,76.41
|only if rep("Golden Lotus") >= Revered and not completedq(30642)
step
click Battle Axe of the Thunder King
collect Battle Axe of the Thunder King##80807 |q 30642/2 |goto Vale of Eternal Blossoms/0 45.48,76.20
|only if rep("Golden Lotus") >= Revered and not completedq(30642)
step
talk Zhi the Harmonious##59905
turnin Battle Axe of the Thunder King##30642 |goto Vale of Eternal Blossoms/0 44.79,76.33
|only if rep("Golden Lotus") >= Revered and not completedq(30642)
step
talk Leven Dawnblade##58408
accept The Mogu's Message##30643 |goto Vale of Eternal Blossoms/0 56.70,43.60
Depending on the dailies that happened today, he may be here [Vale of Eternal Blossoms/0 21.35,71.34]
|only if rep("Golden Lotus") == Exalted and not completedq(30646)
step
Enter the building |goto Vale of Eternal Blossoms/0 40.33,77.14 < 5 |walk
talk Zhi the Harmonious##59905
|tip Inside the building.
turnin The Mogu's Message##30643 |goto Vale of Eternal Blossoms/0 44.80,76.32
|tip You will be attacked.
accept What Comes to Pass##30644 |goto Vale of Eternal Blossoms/0 44.80,76.32
|only if rep("Golden Lotus") == Exalted and not completedq(30646)
step
talk Sun Tenderheart##58468
turnin What Comes to Pass##30644 |goto Vale of Eternal Blossoms/0 56.44,43.25
accept The Might of Three##30645 |goto Vale of Eternal Blossoms/0 56.44,43.25
|only if rep("Golden Lotus") == Exalted and not completedq(30646)
step
Kill enemies around this area |kill Shao-Tien Marauder##60225, Granite Quilen##60223, Reanimated Jade Warrior##60121, Shao-Tien Spiritrender##60224
Slay #100# Mogu Invaders |q 30645/1 |goto Vale of Eternal Blossoms/0 64.10,41.40
|only if rep("Golden Lotus") == Exalted and not completedq(30646)
step
talk Sinan the Dreamer##59906
turnin The Might of Three##30645 |goto Vale of Eternal Blossoms/0 74.18,41.85
accept The Final Power##30646 |goto Vale of Eternal Blossoms/0 74.18,41.85
|only if rep("Golden Lotus") == Exalted and not completedq(30646)
step
kill Zhao-Jin the Bloodletter##60273 |q 30646/1 |goto Vale of Eternal Blossoms/0 78.63,35.73
|tip Jump over {r}lightning wall{} using Wings of Hope.
|tip
|tip Pay attention for him throwing his spear.
|tip Pick it up quickly and use the Extra Action Button that appears to hurl it back.
|only if rep("Golden Lotus") == Exalted and not completedq(30646)
step
talk Anji Autumnlight##58465
turnin The Final Power##30646 |goto Vale of Eternal Blossoms/0 56.57,43.62
|only if rep("Golden Lotus") == Exalted and not completedq(30646)
step
You have completed the available daily quests |complete false or not completedq(30242,30243,30240,30266,30277,30280,30306,30307,31757,31762,31758,30312,31131,30341,30284,30265,30340,30234,31242,30195,30193,30190,30192,30235,31760,31756,31755,31243,30286,30288,30287,30290,30297,30233,30291,30314,30266,30232,30231,30191,30246,30237,30196,30239,30313,30308,31247,30444,30245,30248,30339,31295,30298,30301,30299,30300,30302,30304,30205,30236,30227) |next "dailies"
|tip New quests will become available with the next daily server reset.
|tip
buy Grand Commendation of the Golden Lotus##93215 |goto Vale of Eternal Blossoms/0 74.16,42.62 |n |only if rep("Golden Lotus") >= Revered
|tip You can buy the Grand Commedation of the Golden Lotus from Jaluu the Generous. |only if rep("Golden Lotus") >= Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this. |only if rep("Golden Lotus") >= Revered
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Klaxxi Dailies",{
expansion="mists",
mopready=true,
startlevel=90,
patch='50001',
description="This guide will take you through The Klaxxi dailies Becoming Exalted with The Klaxxi allows you to purchase ground mounts, plans for blacksmithing, armor, and weapons for your character.",
},[[
step
Complete the Dread Wastes Storylines |q 31179 |future
|tip It's suggested to complete the entire Dread Waste questing guide.
|tip The more Paragons you unlock, the more daily quests will be available.
|tip You will achieve {y}'Dread Waste Makes Dread Waste'{} before all Paragons are unlocked.
|tip Refer to the Dread Wastes (89-90) to accomplish this.
|loadguide "Leveling Guides\\Pandaria (85-90)\\Dread Wastes (89-90)"
step
label "dailies"
talk Kil'ruk the Wind-Reaver##62538
accept Dreadspinner Extermination##31231 |goto Dread Wastes/0 55.06,35.86
accept Nope Nope Nope##31235 |goto Dread Wastes/0 55.06,35.86
accept Culling the Swarm##31109 |goto Dread Wastes/0 55.06,35.86
accept Mistblade Destruction##31267 |goto Dread Wastes/0 55.06,35.86
accept Eradicating the Zan'thik##31111 |goto Dread Wastes/0 55.06,35.86
accept Vess-Guard Duty##31505 |goto Dread Wastes/0 55.06,35.86
|tip
Click here if no quests are available |confirm
step
talk Korven the Prime##62180
accept An Ancient Empire##31232 |goto Dread Wastes/0 54.31,36.09
accept Sap Tapping##31233 |goto Dread Wastes/0 54.31,36.09
accept Sampling the Empire's Finest##31496 |goto Dread Wastes/0 54.31,36.09
accept The Fight Against Fear##31270 |goto Dread Wastes/0 54.31,36.09
accept The Scale-Lord##31269 |goto Dread Wastes/0 54.31,36.09
accept Meltdown##31507 |goto Dread Wastes/0 54.31,36.09
|tip
Click here if no quests are available |confirm
step
talk Rik'kal the Dissector##63072
accept Bad Genes##31271 |goto Dread Wastes/0 54.36,35.94
accept Wing Clip##31502 |goto Dread Wastes/0 54.36,35.94
accept Shortcut to Ruin##31503 |goto Dread Wastes/0 54.36,35.94
accept Putting An Eye Out##31234 |goto Dread Wastes/0 54.36,35.94
accept Specimen Request##31508 |goto Dread Wastes/0 54.36,35.94
accept Fear Takes Root##31509 |goto Dread Wastes/0 54.36,35.94
|tip
Click here if no quests are available |confirm
|only if completedq(31606)
step
talk Kaz'tik the Manipulator##63758
accept Brain Food##31238 |goto Dread Wastes/0 54.25,35.79
accept Sonic Disruption##31487 |goto Dread Wastes/0 54.25,35.79
accept Free From Her Clutches##31494 |goto Dread Wastes/0 54.25,35.79
accept A Little Brain Work##31268 |goto Dread Wastes/0 54.25,35.79
accept Kunchong Treats##31024 |goto Dread Wastes/0 54.25,35.79
accept Rampage Against the Machine##31808 |goto Dread Wastes/0 54.25,35.79
accept Shackles of Manipulation##31506 |goto Dread Wastes/0 54.25,35.79
|tip
Click here if no quests are available |confirm
step
talk Xaril the Poisoned Mind##62151
accept Dark Skies##31216 |goto Dread Wastes/0 54.90,36.20
|tip
Click here if no quests are available |confirm
|only if completedq(31211)
step
talk Hisek the Swarmkeeper##63785
accept Debugging the Terrace##31237 |goto Dread Wastes/0 54.83,36.20
accept Quiet Now##31510 |goto Dread Wastes/0 54.83,36.20
accept Infection##31272 |goto Dread Wastes/0 54.83,36.20
accept Ordnance Disposal##31504 |goto Dread Wastes/0 54.83,36.20
|tip
Click here if no quests are available |confirm
|only if completedq(31439)
step
talk Malik the Unscathed##62774
accept The Empress' Gambit##31959 |goto Dread Wastes/0 55.01,35.56
|tip
Click here if no quests are available |confirm
|only if rep("The Klaxxi")>=Exalted
step
talk Kil'ruk the Wind-Reaver##62538
Select _"Please fly me to the Terrace of Gurthan."_ |gossip 126272
Take the Flight to the Terrace of Gurthan |invehicle |goto Dread Wastes/0 55.10,35.90 |q 31237 |only if haveq(31237) or completedq(31237)
Take the Flight to the Terrace of Gurthan |invehicle |goto Dread Wastes/0 55.10,35.90 |q 31231 |only if haveq(31231) or completedq(31231)
|only if haveq(31237,31231) or completedq(31237,31231)
step
Kill creatures until you get the buff:
|tip The buff lasts 19 seconds.
Gain the Pheremone Tracking Buff |havebuff Pheromone Tracking##124519
Locate and kill Eye's of the Empress
|tip Look for red mist clouds on the ground.
|tip They can be seen without the buff, though you will need to be really close to them.
kill 6 Eye of the Empress##63783+ |q 31237/1 |goto Dread Wastes/0 67.90,24.30
|only if haveq(31237) or completedq(31237)
step
You Will Need Another Player To Complete This Step
|tip There will be a {g}green rune{} and a {r}red rune{} around this area.
|tip One of you will need to /lay on the {g}green_rune{}.
|tip One of you will need to /kneel on the {r}red rune{}.
|tip Warlord Gurthan, an elite enemy, should spawn.
|tip This will activate the quest for everyone, so if someone has already done it, simply kill Warlord Gurthan.
kill Warlord Gurthan##65502
collect Ashes of Warlord Gurthan##88715 |n
use the Ashes of Warlord Gurthan##88715
accept The Warlord's Ashes##31677 |goto Dread Wastes/0 66.20,31.80
|tip
Click here to skip if no one is available |confirm
|only if haveq(31237,31677) or completedq(31237,31677)
step
talk Xaril the Poisoned Mind##62151
Select _"I am ready to fly, Xaril."_ |gossip 33892 |q 31216/1 |goto Dread Wastes/0 54.90,36.20
Ride Xaril the Poisoned Mind |invehicle |only if haveq(31216)
|only if haveq(31216) or completedq(31216)
stickystart "Kill_3_Kunchong"
step
kill 200 Krik'thik Wingguard##63613+ |q 31216/2
|tip Use the abilities on your action bar to accomplish this.
|only if haveq(31216) or completedq(31216)
step
label "Kill_3_Kunchong"
kill 3 Krik'thik Battletank##63625+ |q 31216/3
|tip Use the abilities on your action bar to accomplish this.
|only if haveq(31216) or completedq(31216)
step
Click the Return to Klaxxi'vess Button on Your Action Bar |outvehicle
|only if haveq(31216) or completedq(31216)
step
talk Kil'ruk the Wind-Reaver##62538
Select _"Please fly me to the Clutches of Shek'zeer"_ |gossip 35589 |invehicle |goto Dread Wastes/0 55.06,35.86
|only if haveq(31109) or completedq(31109)
step
Use the Sonic Divebomb Ability on Your New Hotbar to Land |outvehicle |goto Dread Wastes/0 38.30,30.30
|tip It's a good idea to land on Karanosh <Kunchong Matriarch>, she drops a daily quest item.
|only if haveq(31109) or completedq(31109)
step
Enter this building |goto Dread Wastes/0 37.00,28.10 < 10
click Central Feeder##215762
Sample the Central Feeder |q 31496/1 |goto Dread Wastes/0 37.40,29.30
|only if haveq(31496) or completedq(31496)
step
Enter this building |goto Dread Wastes/0 39.30,29.30 < 10
click Northeast Feeder##215700
Sample the Northeast Feeder |q 31496/4 |goto Dread Wastes/0 39.10,30.50
|only if haveq(31496) or completedq(31496)
step
kill Vess-Guard Na'kal##64890 |q 31503/1 |goto Dread Wastes/0 39.30,30.90
|only if haveq(31503) or completedq(31503)
step
Enter this building |goto Dread Wastes/0 38.30,32.00 < 10 |walk
click East Feeder##215761
Sample the East Feeder |q 31496/2 |goto Dread Wastes/0 37.90,33.10
|only if haveq(31496) or completedq(31496)
step
Enter this building |goto Dread Wastes/0 36.30,32.30 < 10 |walk
click North Feeder##215703
Sample the North Feeder |q 31496/3 |goto Dread Wastes/0 37.00,32.80
|only if haveq(31496) or completedq(31496)
step
kill Shek'zeer Needler##64714+
collect 24 Needler Wings##87401 |q 31502/1 |goto Dread Wastes/0 35.20,31.30
|only if haveq(31502) or completedq(31502)
step
kill Greatback Mushan##62029+
collect 6 Mushan Tongue##85665 |q 31238/1 |goto Dread Wastes/0 66.00,19.30
You can find more around here |[Dread Wastes 56.90,23.40]
|only if haveq(31238) or completedq(31238)
step
kill Mire Beast##63731+
collect 1 Pristine Mire Beast Eye##85635 |q 31234/1 |goto Dread Wastes/0 69.15,21.98
You can find more around [Dread Wastes/0 67.70,37.10]
|only if haveq(31234) or completedq(31234)
stickystart "Kill_8_Dreadspinner_Tender"
stickystart "Collect_8_Gurthani_Tablets"
step
use the Shado-Pan Dragon Gun##82807
Destroy #20# Dreadspinner Eggs |q 31235/1 |goto Dread Wastes/0 73.20,22.50
|only if haveq(31235) or completedq(31235)
step
label "Kill_8_Dreadspinner_Tender"
kill 8 Dreadspinner Tender##61981+ |q 31231/1 |goto Dread Wastes/0 73.20,22.50
|only if haveq(31231) or completedq(31231)
step
label "Collect_8_Gurthani_Tablets"
click Gurthani Tablet##213314
collect 8 Gurthani Tablet##85634 |q 31232/1 |goto Dread Wastes/0 68.10,30.00
|only if haveq(31232) or completedq(31232)
step
clicknpc Amber Tap##63740
|tip They look like jeweled bugs clinging to trees around this area.
click Amber Pot##213319
collect 6 Amber Sap##85664 |q 31233/1 |goto Dread Wastes/0 66.60,43.80
|only if haveq(31233) or completedq(31233)
step
click Pheromone Mine##214964
Disable #8# Pheromone Mines |q 31504/1 |goto Dread Wastes/0 42.00,33.70
You can find more mines here |goto Dread Wastes/0 48.10,31.40
|only if haveq(31504) or completedq(31504)
stickystart "Kill_6_ Shek'zeer_Manipulators"
stickystart "Kill_4_Dread_Kunchong"
step
click Kunchong Cage##214292
Release #8# Kunchong Hatchlings |q 31494/1 |goto Dread Wastes/0 44.89,34.97
You can find more around:
[Dread Wastes/0 46.57,30.83]
[Dread Wastes/0 44.05,33.28]
[Dread Wastes/0 48.41,33.07]
|only if haveq(31494) or completedq(31494)
step
label "Kill_6_ Shek'zeer_Manipulators"
kill 6 Shek'zeer Manipulator##64720+ |q 31487/2 |goto Dread Wastes/0 44.89,34.97
|only if haveq(31487) or completedq(31487)
step
label "Kill_4_Dread_Kunchong"
use the Sonic Disruption Fork##87394
|tip Use it on Dread Kunchong around this area.
kill 4 Dread Kunchong##64717 |q 31487/1 |goto Dread Wastes/0 49.02,34.34
You can find more around [Dread Wastes/0 48.66,28.26]
|only if haveq(31487) or completedq(31487)
step
Kill Shek'zeer enemies around this area |kill Shek'zeer Swarmborn##62582, Shek'zeer Needler##64714, Shek'zeer Bladesworn##62563, Shek'zeer Clutch-Keeper##64559, Shek'zeer Manipulator##64720
Slay #40# Shek'zeer Mantid |q 31109/1 |goto Dread Wastes/0 44.40,43.00
|only if haveq(31109) or completedq(31109)
step
kill Karanosh##64724
|tip Patrols around this area, so searching may be required.
collect Enormous Kunchong Mandibles##87878 |q 31599 |future |goto Dread Wastes/0 41.40,33.20
|only if haveq(31109) or completedq(31109)
step
use the Enormous Kunchong Mandibles##87878
accept The Matriarch's Maw##31599
|only if haveq(31109) or completedq(31109)
stickystart "Collect_4_Meaty_Turtle_Haunches"
step
kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |goto Dread Wastes/0 58.60,51.10
|only if haveq(31270) or completedq(31270)
step
label "Collect_4_Meaty_Turtle_Haunches"
kill Chillwater Turtle##62160+
collect 4 Meaty Turtle Haunch##82869 |q 31024/1 |goto Dread Wastes/0 58.60,51.10
|only if haveq(31024) or completedq(31024)
stickystart "Collect_3_Amber-Encrusted_Brains"
stickystart "Kill_6_Infected_Wildlife"
stickystart "Kill_3_Ik'thik_Genemancers"
step
kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2 |goto Dread Wastes/0 62.00,65.80
|only if haveq(31271) or completedq(31271)
step
label "Kill_3_Ik'thik_Genemancers"
kill 3 Ik'thik Genemancer##63257+ |q 31271/1 |goto Dread Wastes/0 62.00,65.80
|only if haveq(31271) or completedq(31271)
step
label "Collect_3_Amber-Encrusted_Brains"
use the Sonic Emitter##85884
|tip Use it on Ik'thik Amberstingers.
kill Ik'thik Amberstinger##63728+
collect 3 Amber-Encrusted Brain##85885 |q 31268/1 |goto Dread Wastes/0 61.40,70.30
|only if haveq(31268) or completedq(31268)
step
label "Kill_6_Infected_Wildlife"
Kill enemies aronud this area |kill Bluehide Mushan##63729, Needleback Porcupine##65118, Bonedust Moth##63725
|tip Make sure that they have the Infected buff before you attack them.
|tip Only wildlife with that buff will count for this quest.
kill 6 Infected Wildlife |q 31272/1 |goto Dread Wastes/0 60.70,67.70
|only if haveq(31272) or completedq(31272)
step
Enter the cave |goto Dread Wastes/0 66.80,63.80 < 10 |walk
kill Mistblade Scale-Lord##63179 |q 31269/1 |goto Dread Wastes/0 66.50,66.00
|only if haveq(31269) or completedq(31269)
step
Leave the cave |goto Dread Wastes/0 66.80,63.80 < 10 |only if haveq(31269) |walk
kill 6 Mistblade Ripper##61970+ |q 31267/1 |goto Dread Wastes/0 67.20,59.30
|only if haveq(31267) or completedq(31267)
step
talk Kil'ruk the Wind-Reaver##62538
Select _"Please fly me to Zan'vess."_ |gossip 35590
Begin flying to Zan'vess |invehicle Unknown##65618 |goto Dread Wastes/0 55.10,35.90 |q 31111 |only if haveq(31111) or completedq(31111)
Begin flying to Zan'vess |invehicle Unknown##65618 |goto Dread Wastes/0 55.10,35.90 |q 31508 |only if haveq(31508) or completedq(31508)
Begin flying to Zan'vess |invehicle Unknown##65618 |goto Dread Wastes/0 55.10,35.90 |q 31506 |only if haveq(31506) or completedq(31506)
Begin flying to Zan'vess |invehicle Unknown##65618 |goto Dread Wastes/0 55.10,35.90 |q 31111 |only if haveq(31111) or completedq(31111)
Begin flying to Zan'vess |invehicle Unknown##65618 |goto Dread Wastes/0 55.10,35.90 |q 31510 |only if haveq(31510) or completedq(31510)
|only if haveq(31111,31508,31506,31111,31510) or completedq(31111,31508,31506,31111,31510)
step
Use the Sonic Divebomb Ability on Your Hotbar to Land |outvehicle |goto Dread Wastes/0 31,70
|only if haveq(31111,31508,31506,31111,31510) or completedq(31111,31508,31506,31111,31510)
stickystart "Collect_6_Zan'thik_Shackles"
stickystart "Kill_6_Zan'thik_Impalers"
stickystart "Kill_6_Zan'thik_Manipulators"
stickystart "Destroy_15_Dreadspore_Bulbs"
stickystart "Kill_6_Zan'thik_Amberhusk"
step
kill Kypa'rak##65229
collect 1 Massive Kyparite Core##87871 |n
use the Massive Kyparite Core##87871
accept Kypa'rak's Core##31598 |goto Dread Wastes/0 33.40,61.00
|only if haveq(31111,31508,31506,31510) or completedq(31111,31508,31506,31510)
step
kill Vess-Guard Vik'az##64979 |q 31505/1 |goto Dread Wastes/0 29.11,74.61
|tip Walking around this area.
|only if haveq(31505) or completedq(31505)
step
kill Kypari Crawler##65231+
collect 6 Kyparite Shards##87874 |q 31508/1 |goto Dread Wastes/0 30.07,69.68
|only if haveq(31508) or completedq(31508)
step
label "Collect_6_Zan'thik_Shackles"
kill Thought-Bound Miner##64970+ |only if haveq(31506)
collect 6 Zan'thik Shackles##87813 |q 31506/1 |goto Dread Wastes/0 31.50,69.60
You can find more around [Dread Wastes/0 32.03,78.59]
|only if haveq(31506) or completedq(31506)
step
label "Kill_6_Zan'thik_Impalers"
kill 6 Zan'thik Impaler##64971+ |q 31111/1 |goto Dread Wastes/0 31.50,69.60
|only if haveq(31111) or completedq(31111)
step
label "Kill_6_Zan'thik_Manipulators"
kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |goto Dread Wastes/0 31.50,69.60
|only if haveq(31111) or completedq(31111)
step
label "Kill_6_Zan'thik_Amberhusk"
kill 6 Zan'thik Amberhusk##64982+ |q 31507/1 |goto Dread Wastes/0 23.00,77.30
only if haveq(31507) or completedq(31507)
step
label "Destroy_15_Dreadspore_Bulbs"
clicknpc Dreadspore Bulbs##69093
Destroy #15# Dreadspore Bulbs |q 31509/1 |goto Dread Wastes/0 23.00,77.30
|only if haveq(31509) or completedq(31509)
step
click Zan'thik Resonating Crystal##214455
kill Adjunct Sek'ot##64995 |q 31510/1 |goto Dread Wastes/0 24.20,86.20
only if haveq(31510) or completedq(31510)
step
clicknpc Kovok##63765
Locate Kovok |q 31808/1 |goto Dread Wastes/0 50.80,41.30
only if haveq(31808) or completedq(31808)
step
Kill Ik'thik enemies arond this area |kill Ik'thik Slayer##63636, Ik'thik Slayer##65584, Ik'thik Slayer##67035, Ik'thik Kunchong##63637, Ik'thik Kunchong##65582, Ik'thik Kunchong##67036, Ik'thik Kunchong##63403, Ik'thik Warrior##56722, Ik'thik Warrior##67034, Ik'thik Warrior##63635, Ik'thik Warrior##65573, Ik'thik Warrior##63402
|tip Use the abilities on your hotbar to complete your task.
Slay #200# Ik'thik Mantid |q 31808/2 |goto Dread Wastes/0 41.81,33.63
|only if haveq(31808) or completedq(31808)
step
talk Kil'ruk the Wind-Reaver##62538
turnin Dreadspinner Extermination##31231 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31231) or completedq(31231)
turnin Nope Nope Nope##31235 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31235) or completedq(31235)
turnin Culling the Swarm##31109 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31109) or completedq(31109)
turnin Mistblade Destruction##31267 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31267) or completedq(31267)
turnin Eradicating the Zan'thik##31111 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31111) or completedq(31111)
turnin Vess-Guard Duty##31505 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31505) or completedq(31505)
turnin The Warlord's Ashes##31677 |goto Dread Wastes/0 55.06,35.86 |only if haveq(31677) or completedq(31677)
|only if haveq(31231,31235,31109,31267,31111,31505,31677) or completedq(31231,31235,31109,31267,31111,31505,31677)
step
talk Ambersmith Zikk##64599
turnin Kypa'rak's Core##31598 |goto Dread Wastes/0 55.01,35.56 |only if haveq(31598) or completedq(31598)
turnin The Matriarch's Maw##31599 |goto Dread Wastes/0 55.01,35.56 |only if haveq(31599) or completedq(31599)
|only if haveq(31598,31599) or completedq(31598,31599)
step
talk Xaril the Poisoned Mind##62151
turnin Dark Skies##31216 |goto Dread Wastes/0 54.90,36.20
|only if haveq(31216) or completedq(31216)
step
talk Hisek the Swarmkeeper##63785
turnin Debugging the Terrace##31237 |goto Dread Wastes/0 54.83,36.20 |only if haveq(31237) or completedq(31237)
turnin Quiet Now##31510 |goto Dread Wastes/0 54.83,36.20 |only if haveq(31510) or completedq(31510)
turnin Infection##31272 |goto Dread Wastes/0 54.83,36.20 |only if haveq(31272) or completedq(31272)
turnin Ordnance Disposal##31504 |goto Dread Wastes/0 54.83,36.20 |only if haveq(31504) or completedq(31504)
|only if haveq(31237,31510,31272,31504) or completedq(31237,31510,31272,31504)
step
talk Korven the Prime##62180
turnin An Ancient Empire##31232 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31232) or completedq(31232)
turnin Sap Tapping##31233 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31233) or completedq(31233)
turnin Sampling the Empire's Finest##31496 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31496) or completedq(31496)
turnin The Fight Against Fear##31270 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31270) or completedq(31270)
turnin The Scale-Lord##31269 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31269) or completedq(31269)
turnin Meltdown##31507 |goto Dread Wastes/0 54.31,36.09 |only if haveq(31507) or completedq(31507)
|only if haveq(31232,31233,31496,31270,31269,31507) or completedq(31232,31233,31496,31270,31269,31507)
step
talk Rik'kal the Dissector##65253
turnin Bad Genes##31271 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31271) or completedq(31271)
turnin Wing Clip##31502 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31502) or completedq(31502)
turnin Shortcut to Ruin##31503 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31503) or completedq(31503)
turnin Putting An Eye Out##31234 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31234) or completedq(31234)
turnin Specimen Request##31508 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31508) or completedq(31508)
turnin Fear Takes Root##31509 |goto Dread Wastes/0 54.36,35.94 |only if haveq(31509) or completedq(31509)
|only if haveq(31271,31502,31503,31234,31508,31509) or completedq(31271,31502,31503,31234,31508,31509)
step
talk Kaz'tik the Manipulator##63758
turnin Brain Food##31238 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31238) or completedq(31238)
turnin Sonic Disruption##31487 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31487) or completedq(31487)
turnin Free From Her Clutches##31494 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31494) or completedq(31494)
turnin A Little Brain Work##31268 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31268) or completedq(31268)
turnin Kunchong Treats##31024 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31024) or completedq(31024)
turnin Rampage Against the Machine##31808 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31808) or completedq(31808)
turnin Shackles of Manipulation##31506 |goto Dread Wastes/0 54.25,35.79 |only if haveq(31506) or completedq(31506)
|next |only if not completedq(31018) and rep("The Klaxxi") >= Revered
|next "exalted" |only if not completedq(31612) and rep("The Klaxxi")>=Exalted
|next "end" |only if rep("The Klaxxi") < Revered
step
talk Kil'ruk the Wind-Reaver##62538
accept Beneath The Heart Of Fear##31018 |goto Dread Wastes/0 55.10,35.90
step
Enter the cave |goto Dread Wastes/0 29.00,42.40 < 10 |walk
kill Adjunct Ek'vem##62073 |q 31018/1 |goto Dread Wastes/0 30.70,40.30
|only if rep("The Klaxxi") >= Revered
step
kill Adjunct Ikkess##62074 |q 31018/2 |goto Dread Wastes/0 33.40,40.20
|only if rep("The Klaxxi") >= Revered
step
kill Adjunct Suruz##62075 |q 31018/3 |goto Dread Wastes/0 33.40,44.30
|only if rep("The Klaxxi") >= Revered
step
kill Adjunct Tzikzi##62076 |q 31018/4 |goto Dread Wastes/0 30.70,44.40
|only if rep("The Klaxxi") >= Revered
step
click Ancient Amber Chunk##212980
Wake Xaril the Poisoned Mind |q 31018/5 |goto Dread Wastes/0 31.90,42.50
|only if rep("The Klaxxi") >= Revered
step
Exit the cave |goto Dread Wastes/0 29.00,42.40 < 10 |walk
talk Xaril the Poisoned Mind##62151
turnin Beneath The Heart Of Fear##31018 |goto Dread Wastes/0 28.60,42.10
accept Venomous Intent##31208 |goto Dread Wastes/0 28.60,42.10
accept Dark Wings, Dark Things##31209 |goto Dread Wastes/0 28.60,42.10
accept A Shade of Dread##31210 |goto Dread Wastes/0 28.60,42.10
|only if rep("The Klaxxi") >= Revered
stickystart "Collect_8_Venomous Stingers"
stickystart "Collect_8_Dreadshade"
step
kill Ruby Venomtail##63588+, Dread Scarab##63587+
collect 150 Scarab Wing##85572 |q 31209/1 |goto Dread Wastes/0 24.70,41.80
You can find more around:
[Dread Wastes 26.40,36.40]
[Dread Wastes 26.20,30.80]
|only if rep("The Klaxxi") >= Revered
step
label "Collect_8_Venomous Stingers"
kill Ruby Venomtail##63588+, Dread Scarab##63587+ |notinsticky
collect 8 Venomous Stinger##85571 |q 31208/1 |goto Dread Wastes/0 24.70,41.80
You can find more around:|notinsticky
[Dread Wastes 26.40,36.40] |notinsticky
[Dread Wastes 26.20,30.80] |notinsticky
|only if rep("The Klaxxi") >= Revered
step
label "Collect_8_Dreadshade"
click Dreadshade##213267
collect 8 Dreadshade##85573 |q 31210/1 |goto Dread Wastes/0 24.70,41.80
You can find more around:|notinsticky
[Dread Wastes 26.40,36.40] |notinsticky
[Dread Wastes 26.20,30.80] |notinsticky
|only if rep("The Klaxxi") >= Revered
step
talk Xaril the Poisoned Mind##62151
turnin Venomous Intent##31208 |goto Dread Wastes/0 28.60,42.10
turnin Dark Wings, Dark Things##31209 |goto Dread Wastes/0 28.60,42.10
turnin A Shade of Dread##31210 |goto Dread Wastes/0 28.60,42.10
|only if rep("The Klaxxi") >= Revered
step
talk Xaril the Poisoned Mind##62151
accept The Poisoned Mind##31211 |goto Dread Wastes/0 28.60,42.10
|only if rep("The Klaxxi") >= Revered
step
talk Xaril the Poisoned Mind##62151
Select _"I am ready to fly, Xaril."_ |gossip 129590
Speak to Xaril the Poisoned Mind |q 31211/1 |invehicle Xaril the Poisoned Mind##63779 |goto Dread Wastes/0 28.66,42.00
|only if rep("The Klaxxi") >= Revered
stickystart "Kill_3_Kunchong_Quest"
step
Kill Mantid enemies around this area |kill Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+
Slay #200# Mantid  |q 31211/2
|tip Use the abilities on your action bar to accomplish this.
|only if rep("The Klaxxi") >= Revered
step
label "Kill_3_Kunchong_Quest"
kill 3 Krik'thik Battletank##63625+ |q 31211/3
|tip Use the abilities on your action bar to accomplish this. |notinsticky
|only if rep("The Klaxxi") >= Revered
step
talk Xaril the Poisoned Mind##62151
turnin The Poisoned Mind##31211 |goto Dread Wastes/0 54.92,36.17
|only if rep("The Klaxxi") >= Revered
step
talk Kor'ik##64815
accept Dropping Our Signal##31439 |goto Dread Wastes/0 54.77,34.06
|only if rep("The Klaxxi") >= Revered
step
use the Klaxxi Tuning Fork##87202
|tip Use it on the Amber Rock.
Awaken Hisek the Swarmkeeper |q 31439/1 |goto Dread Wastes/0 56.27,58.25
|only if rep("The Klaxxi") >= Revered
step
talk Hisek the Swarmkeeper##64672
turnin Dropping Our Signal##31439 |goto Dread Wastes/0 56.27,58.25
accept Corruption Runs Deep##31441 |goto Dread Wastes/0 56.27,58.25
|only if rep("The Klaxxi") >= Revered
step
kill Kor'ik##64583
Defeat the traitor in the Duskroot Fen |q 31441/1 |goto Dread Wastes/0 56.20,57.60
|only if rep("The Klaxxi") >= Revered
step
talk Hisek the Swarmkeeper##64705
turnin Corruption Runs Deep##31441 |goto Dread Wastes/0 56.24,57.60
accept Damage Control##31458 |goto Dread Wastes/0 56.24,57.60
accept Extracting Answers##31465 |goto Dread Wastes/0 56.24,57.60
|only if rep("The Klaxxi") >= Revered
stickystart "Kill_5_Ik'thik_Whisperer"
stickystart "Collect_6_Venom-Coated_Mandibles"
step
click Kypari Ik Beacon##214281
Deactivate Kypari Ik Resonating Crystal |q 31458/2 |goto Dread Wastes/0 55.61,47.04
|only if rep("The Klaxxi") >= Revered
step
label "Kill_5_Ik'thik_Whisperer"
kill 5 Ik'thik Whisperer##64622+ |q 31458/1 |goto Dread Wastes/0 53.84,44.70
|only if rep("The Klaxxi") >= Revered
step
label "Collect_6_Venom-Coated_Mandibles"
kill Ik'thik Swarmborn##64831+
collect 6 Venom-Coated Mandible##87263 |q 31465/1 |goto Dread Wastes/0 53.84,44.70
|only if rep("The Klaxxi") >= Revered
step
talk Hisek the Swarmkeeper##63785
turnin Damage Control##31458 |goto Dread Wastes/0 54.83,36.20
turnin Extracting Answers##31465 |goto Dread Wastes/0 54.83,36.20
|next "end" |only if rep("The Klaxxi") < Exalted
|only if rep("The Klaxxi") >= Revered
step
label "exalted"
talk Malik the Unscathed##62774
accept The Empress' Gambit##31959 |goto Dread Wastes/0 55.06,35.47
|only if rep("The Klaxxi") == Exalted
step
talk Malik the Unscathed##66776
Select _"Let's get started."_ |gossip 130319
Watch the dialogue
Report to Malik the Unscathed |q 31959/1 |goto Dread Wastes/0 40.40,34.56
|only if rep("The Klaxxi") == Exalted
step
Click the Complete Quest Box:
turnin The Empress' Gambit##31959
accept The Wrath of Shek'zeer##31609
|only if rep("The Klaxxi") == Exalted
stickystart "Kill_25_Mantid_Subjugates"
step
kill Shox'tik##66784
|tip You will have Paragons waiting in the area to help you.
|tip There are three bosses to which only one will be active at a time.
|tip If the enemy isn't spawned, you can check on Manifestation of Terror or Akkolon if you still need those objectives.
Slay Shox'tik |q 31609/2 |goto Dread Wastes/0 41.44,39.96
Manifestation of Terror may be active [Dread Wastes/0 43.83,29.59]
Akkolon may be active [Dread Wastes/0 44.65,35.05]
|only if rep("The Klaxxi") == Exalted
step
kill Manifestation of Terror##66785
|tip You will have Paragons waiting in the area to help you.
|tip There are three bosses to which only one will be active at a time.
|tip If the enemy isn't spawned, you can check on Shox'tik or Akkolon if you still need those objectives.
Slay the Manifestation of Terror  |q 31609/3 |goto Dread Wastes/0 43.83,29.59
Shox'tik may be active [Dread Wastes/0 41.44,39.96]
Akkolon may be active [Dread Wastes/0 44.65,35.05]
|only if rep("The Klaxxi") == Exalted
step
kill Akkolon##66783
|tip You will have Paragons waiting in the area to help you.
|tip There are three bosses to which only one will be active at a time.
|tip If the enemy isn't spawned, you can check on Manifestation of Terror or Shox'tik if you still need those objectives.
Slay Akkolon |q 31609/1 |goto Dread Wastes/0 44.65,35.05
Shox'tik may be active [Dread Wastes/0 41.44,39.96]
Manifestation of Terror may be active [Dread Wastes/0 43.83,29.59]
|only if rep("The Klaxxi") == Exalted
step
label "Kill_25_Mantid_Subjugates"
Kill Zan'Thik Subjugates around this area |kill Zan'thik Subjugate##66790, Krik'thik Subjugate##66789, Sra'thik Subjugate##66788
kill 25 Mantid Subjugate##66788+ |q 31609/4 |goto Dread Wastes/0 43.40,33.00
|only if rep("The Klaxxi") == Exalted
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Wrath of Shek'zeer##31609 |goto Dread Wastes/0 55.06,35.86
accept Shadow of the Empire##31612 |goto Dread Wastes/0 55.06,35.86
|only if rep("The Klaxxi") == Exalted
step
talk Kil'ruk the Wind-Reaver##62538
Select _"What do you want to show me, Kil'ruk?"_ |gossip 126277
Watch the dialogue
Walk with Kil'ruk |q 31612/1 |goto Dread Wastes/0 55.06,35.86
|only if rep("The Klaxxi") == Exalted
step
Leave the building |goto Dread Wastes/0 56.00,33.64
talk Kil'ruk the Wind-Reaver##62538
turnin Shadow of the Empire##31612 |goto Dread Wastes/0 55.06,35.85
|only if rep("The Klaxxi") == Exalted
step
label "end"
You have completed the available daily quests |complete false or not completedq(31231,31235,31109,31267,31111,31505,31232,31233,31496,31270,31269,31507,31271,31502,31503,31234,31508,31509,31238,31487,31494,31268,31024,31808,31506,31216,31510,31272,31504,31237) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
|tip  |only if rep("The Klaxxi")>=Revered
'|talk Ambersmith Zikk##64599 |goto Dread Wastes/0 55.02,35.55 |only if rep("The Klaxxi")>=Revered
|tip Purchase the Grand Commendation of the Klaxxi from Ambersmith Zikk if possible. |only if rep("The Klaxxi")>=Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this.  |only if rep("The Klaxxi")>=Revered
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Pandaria Cooking Dailies",{
expansion="mists",
mopready=true,
startlevel=85,
completion={"quests"},
description="This guide will take you through the Cooking dailies",
},[[
step
Proceeding to the Tiller's Dailies  |next "dailies" |complete completedq(31945) |only if completedq(31945)
Proceeding to the Tiller's Prequests |next |complete not completedq(31945) |only if not completedq(31945)
step
label "Tillers_Prequests"
talk Farmer Yoon##58721
accept A Helping Hand##30252 |goto Valley of the Four Winds/0 52.02,48.01
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.23,47.66 |count 1
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.10,48.02 |count 2
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.89,48.39 |count 3
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.70,48.70 |count 4
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.55,49.30 |count 5
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 51.90,49.16 |count 6
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.36,49.23 |count 7
step
clicknpc Unbudging Rock##58719
Clear the Unbudging Rock |q 30252/1 |goto Valley of the Four Winds/0 52.83,49.86 |count 8
step
Enter the building |goto Valley of the Four Winds/0 52.56,48.12 < 7 |walk
talk Farmer Yoon##58646
|tip Inside the building.
turnin A Helping Hand##30252 |goto Valley of the Four Winds/0 52.75,47.94
step
Watch the dialogue
talk Farmer Yoon##58646
|tip Wait for the dialogue to complete.
accept Learn and Grow I: Seeds##30535 |goto Valley of the Four Winds/0 52.25,48.78
step
talk Merchant Greenfield##58718
Select _"I'm here to pick up seeds for Farmer Yoon."_ |gossip 40536
Select _"He just inherited Sunsong Ranch. You can literally see him from where you are standing."_ |gossip 40535
collect Packet of Green Cabbage Seeds##80295 |q 30535/1 |goto Valley of the Four Winds/0 52.88,52.14
step
talk Farmer Yoon##58646
turnin Learn and Grow I: Seeds##30535 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow II: Tilling and Planting##30254 |goto Valley of the Four Winds/0 52.25,48.78
step
clicknpc Untilled Soil##59985
Till the Soil |q 30254/1 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
use EZ-Gro Green Cabbage Seeds##80302
Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
clicknpc Untilled Soil##59985
Till the Soil |q 30254/1 |goto Valley of the Four Winds/0 52.03,48.25 |count 2
step
use EZ-Gro Green Cabbage Seeds##80302
Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto Valley of the Four Winds/0 52.03,48.25 |count 2
step
talk Farmer Yoon##58646
turnin Learn and Grow II: Tilling and Planting##30254 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow III: Tending Crops##30255 |goto Valley of the Four Winds/0 52.25,48.78
step
clicknpc Parched EZ-Gro Green Cabbage##59987
use Rusty Watering Can##79104
Water the First Parched EZ-Gro Green Cabbage |q 30255/1 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
clicknpc Parched EZ-Gro Green Cabbage##59987
use Rusty Watering Can##79104
Water the Second Parched EZ-Gro Green Cabbage |q 30255/1 |goto Valley of the Four Winds/0 52.03,48.23 |count 2
step
talk Farmer Yoon##58646
turnin Learn and Grow III: Tending Crops##30255 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow IV: Harvesting##30256 |goto Valley of the Four Winds/0 52.25,48.78
step
clicknpc Ripe EZ-Gro Green Cabbage##59833
|tip Wait a moment for it to ripen fully.
collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto Valley of the Four Winds/0 52.01,48.44 |count 1
step
clicknpc Ripe EZ-Gro Green Cabbage##59833
collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto Valley of the Four Winds/0 52.03,48.23 |count 2
step
talk Farmer Yoon##58646
turnin Learn and Grow IV: Harvesting##30256 |goto Valley of the Four Winds/0 52.25,48.78
accept Learn and Grow V: Halfhill Market##30257 |goto Valley of the Four Winds/0 52.25,48.78
step
click Dark Soil##210582
|tip Beneath the building.
collect Marsh Lily##79268 |q 30257/1 |goto Valley of the Four Winds/0 52.83,48.00
step
talk Gina Mudclaw##58706
turnin Learn and Grow V: Halfhill Market##30257 |goto Valley of the Four Winds/0 52.22,48.70
accept Learn and Grow VI: Gina's Vote##31945 |goto Valley of the Four Winds/0 52.22,48.70
She may also be here [Valley of the Four Winds/0 53.16,51.80]
step
talk Merchant Greenfield##58718
buy 1 Scallion Seeds##80591 |n
collect 1 Scallion Seeds##80591 |goto Valley of the Four Winds/0 52.88,52.14 |q 31945 |future
step
clicknpc Untilled Soil##58562
use the Scallion Seeds##80591
|tip You will get 5 Scallions from 1 seed packet when it's time to harvest.
Plant Scallion Seeds |q 31945/1 |goto Valley of the Four Winds/0 52.01,48.44
step
Tend to Your Crops
'|kill Voracious Virmen##60039,Swooping Plainshawk##60072
'|clicknpc Wild Scallions##63170
|tip Click the {g}Runty{} crop and jump to clear it.
|tip Click the {g}Wiggling{} crop and kill the enemy that spawns.
|tip Click the {g}Alluring{} crop and kill the enemy that spawns.
|tip Collect and use the Vintage Bug Sprayer on {g}Infested{} crops.
|tip Click the {g}Wild{} crop, using 'Flex' to subdue it and 'Gnaw' to interrupt Vine Slam.
|tip Click {g}Tangled{} crops and move away from them to clear.
|tip Use the Rusty Watering Can to water the {g}Parched{} crop.
|tip Click the {g}Smothered{} crop and use the abilities on your hotbar to subdue it.
Click Here After Tending to Your Crops |confirm |q 31945
step
label "Turnin_Learn_and_Grow_VI"
clicknpc Bursting Scallions##63160
|tip If your crops didn't burst, you'll have to wait until the next day to harvest.
clicknpc Ripe Scallions##63165
Harvest Ripe Scallions |q 31945/2 |goto Valley of the Four Winds/0 52.00,48.40
step
collect 5 Scallion##74843 |q 31945/3 |goto Valley of the Four Winds/0 52.00,48.40
Click Here to Start Your Daily Quests |next "dailies" |confirm |q 31945
step
talk Gina Mudclaw##58706
turnin Learn and Grow VI: Gina's Vote##31945 |goto Valley of the Four Winds/0 53.10,51.80
step
label "dailies"
Proceeding to Cooking School Bell |only if completedq(31521)
Proceeding to Cooking Dailies |only if not completedq(31521) |next "dailies2"
step
talk Nam Ironpaw##64395
buy Cooking School Bell##86425 |or
|complete curcount(402) >= 50 |or
|only if itemcount(86425) < 1
step
use the Cooking School Bell##86425
_Next to you:_
talk Nomi##64337
accept Lesson 1: Sliced Peaches##31332
|only if itemcount(86425) > 1
step
talk Sungshin Ironpaw##64231
buy 5 Pandaren Peach##74660 |q 31332/1 |goto Valley of the Four Winds/0 53.60,51.20
step
use the Cooking School Bell##86425
_Next to you:_
talk Nomi##64337
turnin Lesson 1: Sliced Peaches##31332
step
label "dailies2"
talk Jian Ironpaw##58716
accept The Truffle Shuffle##30330 |goto Valley of the Four Winds/0 53.40,51.60
|tip
Click here if no quests are available |confirm
step
talk Kol Ironpaw##58712
accept Fatty Goatsteak##30332 |goto Valley of the Four Winds/0 53.00,51.30
|tip
Click here if no quests are available |confirm
step
talk Yan Ironpaw##58715
accept The Thousand-Year Dumpling##30328 |goto Valley of the Four Winds/0 52.50,51.70
|tip
Click here if no quests are available |confirm
|only if skill('Cooking')<=525
step
talk Anthea Ironpaw##58713
accept Cindergut Peppers##30329 |goto Valley of the Four Winds/0 52.80,51.80
|tip
Click here if no quests are available |confirm
step
talk Mei Mei Ironpaw##58714
accept The Mile-High Grub##30331 |goto Valley of the Four Winds/0 52.60,51.60
|tip
Click here if no quests are available |confirm
step
use the Master's Pot##79895
|tip Use the Master's Pot next to the bonfire.
Create #20# Mushan Tail Stew |q 30331/1 |goto Valley of the Four Winds/0 32.48,24.10
|only if haveq(30331) or completedq(30331)
step
Kill Kunzen enemies around this area |kill Kunzen Hunter##59121, Kunzen Herdskeeper##59122, Kunzen Ritualist##59123, Kunzen Rockflinger##59120,Kunzen Collector##59124
collect 4 Cindergut Pepper##79864 |q 30329/1 |goto Valley of the Four Winds/0 31.20,36.00
|only if haveq(30329) or completedq(30329)
step
Enter the cave |goto Valley of the Four Winds/0 44.00,22.33 < 7
click Preserved Vegetable##11054+
collect 7 Preserved Vegetables##80133 |q 30328/1
Other Warren Entrances:
[Valley of the Four Winds/0 39.46,20.38]
[Valley of the Four Winds/0 46.96,21.00]
|only if haveq(30328) or completedq(30328)
step
click Shadelight Truffle##210812
|tip You can find these aruond the trees here
collect 8 Shadelight Truffle##79833 |q 30330/2 |goto Valley of the Four Winds/0 28.50,33.30
|only if haveq(30330) or completedq(30330)
step
use Shadelight Truffle Spores##80127
Plant #8# Shadelight Spores |q 30330/1 |goto Valley of the Four Winds/0 28.50,33.30
|only if haveq(30330) or completedq(30330)
step
kill Stout Shaghorn##59139+
collect 4 Fatty Goatsteak##79867 |q 30332/1 |goto Valley of the Four Winds/0 29.70,41.40
|only if haveq(30332) or completedq(30332)
step
talk Anthea Ironpaw##58713
turnin Cindergut Peppers##30329 |goto Valley of the Four Winds/0 52.80,51.80
|only if haveq(30329) or completedq(30329)
step
talk Jian Ironpaw##58716
turnin The Truffle Shuffle##30330 |goto Valley of the Four Winds/0 53.40,51.60
|only if haveq(30330) or completedq(30330)
step
talk Yan Ironpaw##58715
turnin The Thousand-Year Dumpling##30328 |goto Valley of the Four Winds/0 52.50,51.70
|only if haveq(30328) or completedq(30328)
step
talk Kol Ironpaw##58712
turnin Fatty Goatsteak##30332 |goto Valley of the Four Winds/0 53.00,51.30
|only if haveq(30332) or completedq(30332)
step
talk Mei Mei Ironpaw##58714
turnin The Mile-High Grub##30331 |goto Valley of the Four Winds/0 52.60,51.60
|only if haveq(30331) or completedq(30331)
step
You have completed the available daily quests |complete false or not completedq(30329,30330,30328,30332,30331) |or |next "dailies"
|tip New quests will become available with the next daily server reset.
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Timeless Isle Dailies",{
expansion="mists",
mopready=true,
startlevel=30,
description="This guide will help you complete the dailies on the Timeless Isle. Completing these dailies awards you with Timeless Coins.",
},[[
step
Routing to proper section |next "prequests" |only if not completedq(33333)
Routing to proper section |next "dailies" |only if completedq(33333)
step
label "prequests"
Click the Complete Quest Box:
accept A Flash of Bronze...##33229 |goto Vale of Eternal Blossoms/0 84.50,59.20
|tip If you have already been to Timeless Isle, this quest will not be available.
|only if Alliance
step
talk Chromie##73691
turnin A Flash of Bronze...##33229 |goto Vale of Eternal Blossoms/0 80.65,33.17
accept Journey to the Timeless Isle##33231 |goto Vale of Eternal Blossoms/0 80.65,33.17
|only if Alliance
step
use the Curious Bronze Timepiece##104113
You will be teleported to the Timeless Isle |goto Timeless Isle/0 23.30,70.80 |noway |c
|only if Alliance
step
talk Michi Windblossom##71940
fpath Tushui Landing |goto Timeless Isle/0 23.10,70.90
|only if Alliance
step
talk Watcher Lara##73348
turnin Journey to the Timeless Isle##33231 |goto Timeless Isle/0 23.10,71.50
accept Time Keeper Kairoz##33160 |goto Timeless Isle/0 23.10,71.50
|only if Alliance
step
label "prequests"
Click the Complete Quest Box:
accept A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms/0 61.70,20.40
|tip If you have already been to Timeless Isle, this quest will not be available.
|only if Horde
step
talk Chromie##73691
|tip On the upper balcony of the palace.
turnin A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms/0 80.65,33.17
accept Journey to the Timeless Isle##33232 |goto Vale of Eternal Blossoms/0 80.65,33.17
|only if Horde
step
use the Curious Bronze Timepiece##104110
Teleport to the Timeless Isle |q 33232 |goto Timeless Isle/0 21.30,39.50 |noway |c
|only if Horde
step
talk Chi-Ro the Skytamer##71939
fpath Huojin Landing |goto Timeless Isle/0 21.90,39.80
|only if Horde
step
talk Watcher Alundra##73353
turnin Journey to the Timeless Isle##33232 |goto Timeless Isle/0 22.00,41.00
accept Time Keeper Kairoz##33156 |goto Timeless Isle/0 22.00,41.00
|only if Horde
step
talk Kairoz##72870
turnin Time Keeper Kairoz##33160 |goto Timeless Isle/0 34.50,53.80 |only if Alliance
turnin Time Keeper Kairoz##33156 |goto Timeless Isle/0 34.50,53.80 |only if Horde
accept A Timeless Tour##33161 |goto Timeless Isle/0 34.50,53.80
accept Time In Your Hands##33228 |goto Timeless Isle/0 34.50,53.80
step
Explore The Misty Strand |q 33161/4 |goto Timeless Isle/0 24.60,31.80
step
Explore Cavern of Lost Spirits |q 33161/1 |goto Timeless Isle/0 42.90,41.90
step
Explore Red Stone Run |q 33161/6 |goto Timeless Isle/0 50.90,46.60
step
Explore Firewalkers' Path |q 33161/3 |goto Timeless Isle/0 50.40,78.50
step
Explore Old Pi'jiu |q 33161/5 |goto Timeless Isle/0 37.50,75.50
step
Explore Croaking Hollow |q 33161/2 |goto Timeless Isle/0 60.50,72.60
step
talk Kairoz##72870
turnin A Timeless Tour##33161 |goto Timeless Isle/0 34.50,53.80
accept The Essence of Time##33336 |goto Timeless Isle/0 34.50,53.80
step
kill Brilliant Windfeather##72762+, Windfeather Chick##71143+
collect Epoch Stone##105715 |q 33336/1 |goto Timeless Isle/0 32.20,51.90
step
talk Kairoz##72870
turnin The Essence of Time##33336 |goto Timeless Isle/0 34.50,53.50
step
talk Mistweaver Ai##73305
Meet Mistweaver Ai |q 33228/2 |goto Timeless Isle/0 42.80,55.70
step
talk Mistweaver Ku##73306
Meet Mistweaver Ku |q 33228/3 |goto Timeless Isle/0 42.80,54.70
step
Kill enemies around this area |kill Ironfur Herdling##72842, Ironfur Grazer##72843, Ironfur Great Bull##72844, Windfeather Chick##71143, Windfeather Nestkeeper##72761, Brilliant Windfeather##72762
earn 1000 Timeless Coin##777 |q 33228/1 |goto Timeless Isle/0 43.90,55.40
step
talk Kairoz##72870
turnin Time In Your Hands##33228 |goto Timeless Isle/0 34.60,53.70
accept Hints From The Past##33332 |goto Timeless Isle/0 34.60,53.70
accept The Last Emperor##33335 |goto Timeless Isle/0 34.60,53.70
step
talk Mistweaver Ai##73305
buy Time-Worn Journal##103977 |q 33332 |goto Timeless Isle/0 42.80,55.60
step
talk Emperor Shaohao##73303
Speak with Emperor Shaohao |q 33335/1 |goto Timeless Isle/0 42.90,55.20
step
talk Emperor Shaohao##73303
turnin The Last Emperor##33335 |goto Timeless Isle/0 42.90,55.20
accept Timeless Nutriment##33340 |goto Timeless Isle/0 42.90,55.20
step
click Ripe Crispfruit##221689
Consume a Timeless Nutriment |q 33340/1 |goto Timeless Isle/0 42.80,53.30
step
talk Emperor Shaohao##73303
turnin Timeless Nutriment##33340 |goto Timeless Isle/0 42.90,55.20
accept Wayshrines Of The Celestials##33341 |goto Timeless Isle/0 42.90,55.20
step
map Timeless Isle/0
path follow loose; loop on;dist 15
path	30.10,45.70	26.80,52.20	30.50,62.60	27.90,72.00	37.40,74.40
path	49.70,70.40	66.10,72.30	63.90,50.70	35.00,29.60
Follow the path to
click Celestial Shrine
|tip They are on a 10-15 minute cooldown, so just keep running around until you find an active one.
Receive a Blessing of the Celestials |q 33341/1
step
talk Emperor Shaohao##73303
turnin Wayshrines Of The Celestials##33341 |goto Timeless Isle 42.90,55.20
step
talk Kairoz##72870
turnin Hints From The Past##33332 |goto Timeless Isle/0 34.50,53.80
accept Timeless Treasures##33333 |goto Timeless Isle/0 34.50,53.80
step
click Moss-Covered Chest##223089
Find the Hidden Treasure |q 33333/1 |goto Timeless Isle/0 46.80,46.80
step
talk Kairoz##72870
turnin Timeless Treasures##33333 |goto Timeless Isle/0 34.60,53.80
step
label "dailies"
talk Emperor Shaohao##73303
accept Path of the Mistwalker##33374 |goto Timeless Isle/0 42.90,55.30
step
talk Kairoz##72870
accept Strong Enough To Survive##33334 |goto Timeless Isle/0 34.60,53.60
accept Empowering the Hourglass##33338 |goto Timeless Isle/0 34.60,53.60
|tip These are weekly quests.
step
Slay #5# Rares Spawns on the Timeless Isle |q 33334/1
|tip Refer to PoIs to accomplish this.
step
Kill enemies around this area |kill Ironfur Great Bull##72844, Brilliant Windfeather##72762, Death Adder##72841, Great Turtle##72764, Elder Great Turtle##72765
Slay #20# Elite Creatures on the Timeless Isle |q 33374/1 |goto Timeless Isle 27.00,58.60
step
kill Ironfur Great Bull##72844, Ironfur Herdling##72842, Ironfur Grazer##72843, Great Turtle##72764, Great Turtle Hatchling##72763, Elder Great Turtle##72765, Windfeather Chick##71143, Windfeather Nestkeeper##72761, Brilliant Windfeather##72762, Death Adder##72841
collect 50 Epoch Stone##105715 |q 33338/1 |goto Timeless Isle 27.00,58.60
step
talk Senior Historian Evelyna##73570
accept A Timeless Question##33211 |goto Timeless Isle/0 65.00,50.50
step
talk Senior Historian Evelyna##73570
Answer a Question About Warcraft's Lore |q 33211/1 |goto Timeless Isle/0 65.00,50.50
|tip If you miss it, don't worry, you can just keep guessing until you get one right.
step
talk Senior Historian Evelyna##73570
turnin A Timeless Question##33211 |goto Timeless Isle/0 65.00,50.50
step
talk Emperor Shaohao##73303
turnin Path of the Mistwalker##33374 |goto Timeless Isle 42.90,55.30
step
talk Kairoz##72870
turnin Strong Enough To Survive##33334 |goto Timeless Isle 34.60,53.70
turnin Empowering the Hourglass##33338 |goto Timeless Isle 34.60,53.70
step
label "end"
You have completed the available weekly quests |complete false or not completedq(33334,33338) |next "dailies" |or
You have completed the available daily quests |complete false or not completedq(33374,33211) |next "dailies" |or
|tip New quests will become available with the next daily server reset.
]])
