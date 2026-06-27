-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Anglers Dailies",{
startlevel=15,
description="This guide will take you through The Anglers dailies Becoming Exalted with The Anglers allows you to purchase a companion pet, fishing poles, and water mounts.",
},[[
step
You must have fishing in order to accept dailies from this faction
confirm
step
label "dailies"
There will only be three dailies available from the following questgivers
|tip It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
confirm
step
talk Fisherman Haito##59584
accept Shocking!##30584 |goto Krasarang Wilds 67.90,45.20 |or
accept Jagged Abalone##30586 |goto Krasarang Wilds 67.90,45.20  |or
If these quests are unavailable today, click here |confirm
step
talk Angler Shen##59586
accept Snapclaw##30700 |goto Krasarang Wilds 67.50,43.50 |or
accept Fishing for a Bruising##30588 |goto Krasarang Wilds 67.50,43.50 |or
If these quests are unavailable today, click here |confirm
step
talk John "Big Hook" Marsock##60674
accept Bright Bait##30754 |goto Krasarang Wilds 68.30,43.50 |or
accept Jumping the Shark##30753 |goto Krasarang Wilds 68.30,43.50 |or
If these quests are unavailable today, click here |confirm
step
talk Trawler Yotimo##60135
accept Armored Carp##30613 |goto Krasarang Wilds 67.60,42.50 |or
accept Huff & Puff##30658 |goto Krasarang Wilds 67.60,42.50 |or
If these quests are unavailable today, click here |confirm
step
talk Elder Fisherman Rassan##60673
accept What Lurks Below##30585 |goto Krasarang Wilds 68.40,42.10 |or
accept Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds 68.40,42.10 |or
If these quests are unavailable today, click here |confirm
step
talk Fo Fook##60675
accept Piranha!##30763 |goto Krasarang Wilds 67.20,41.20 |or
accept Viseclaw Soup##30701 |goto Krasarang Wilds 67.20,41.20 |or
If these quests are unavailable today, click here |confirm
step
talk Fiznix##60136
accept Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds 67.50,44.60 |or
accept Scavenger Hunt##30698 |goto Krasarang Wilds 67.50,44.60 |or
If this quest is unavailable today, click here |confirm
step
click Goblin Fishing Raft##211596
Ride a Goblin Fishing Raft |havebuff Rafting##116032 |goto Krasarang Wilds 67.50,44.80
|only if haveq(30698)
step
Use your fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris
collect 15 Rusty Shipwreck Debris##80830 |q 30698/1 |goto Krasarang Wilds 64.30,50.70
You can find more Debris at [64.30,50.60]
|only if haveq(30698)
step
clicknpc Frenzied Reef Shark##60408
Ride the shark |goto Krasarang Wilds 68.40,43.10 |invehicle |c
|only if haveq(30753)
step
Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero
kill Frenzied Reef Shark##60408 |q 30753/1
|only if haveq(30753)
step
click Jagged Abalone##211118
collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto Krasarang Wilds 69.10,37.90
|only if haveq(30586)
step
Enter the underwater cave here |goto Krasarang Wilds 71.30,38.50 < 5
kill Snapclaw##60401
collect Snapclaw's Claw##80831 |q 30700/1 |goto Krasarang Wilds 73.90,38.40
|only if haveq(30700)
step
Use your fishing skill to fish up 7 Dojani Eel |cast Fishing##131474
collect 7 Dojani Eel##80260 |q 30584/1 |goto Krasarang Wilds 65.60,30.50
|only if haveq(30584)
step
kill 8 Riverblade Raider##59714+ |q 30588/1 |goto Krasarang Wilds 62.40,40.90
|only if haveq(30588)
step
kill Viseclaw Fry##61090+, Viseclaw Fisher##58880+
collect 16 Viseclaw Fisher Eye##80832+ |q 30701/1 |goto Krasarang Wilds 55.10,45.70
|only if haveq(30701)
step
click Suncrawler##211474
collect 7 Suncrawler##81116 |q 30754/1 |goto Krasarang Wilds 59.80,38.80
|only if haveq(30754)
step
Use your Goblin Fishing Bomb to kill Sting Rays |use Goblin Fishing Bomb##80599
|tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
kill Sting Ray##60278+
collect 3 Stinger##80600+ |q 30678/1 |goto Krasarang Wilds 59.30,46.30
|only if haveq(30678)
step
Use your fishing skill to fish up 5 Wolf Piranha. |cast Fishing##7620
collect 5 Wolf Piranha##81122 |q 30763/1 |goto Krasarang Wilds 36.80,43.30
|only if haveq(30763)
step
Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears.
|tip When Narjon spawns, make sure to equip your weapon quickly. |cast Fishing##131474
|tip It's a small swirling pool of water at this location
kill Narjon the Gulper##59689 |q 30585/1 |goto Krasarang Wilds 34.40,31.40
collect Beloved Ring##80262 |q 30585/2 |goto Krasarang Wilds 34.40,31.40
|only if haveq(30585)
step
Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403
|tip The closer you are the easier it is to hit the fish.
kill Prickly Puffer##60037
collect 5 Prickly Puffer Spine##80529 |q 30658/1 |goto Krasarang Wilds 51.40,62.20
|only if haveq(30658)
step
click Pristine Crane Egg##211160
collect Pristine Crane Egg##80303 |q 30598/1 |goto Krasarang Wilds 65.20,47.50
|only if haveq(30598)
step
Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403
|tip The closer you are the easier it is to hit the fish.
kill Armored Carp##59936+
collect 5 Armored Carp##80437 |q 30613/1 |goto Krasarang Wilds 70.10,51.20
|only if haveq(30613)
step
Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
collect Silver Goby##80310 |q 30598/2 |goto Krasarang Wilds 68.20,42.70
|only if haveq(30598)
step
talk Elder Fisherman Rassan##60673
turnin What Lurks Below##30585 |goto Krasarang Wilds 68.40,42.10
turnin Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds 68.40,42.10
step
talk Fiznix##60136
turnin Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds 67.50,44.60
turnin Scavenger Hunt##30698 |goto Krasarang Wilds 67.50,44.60
step
talk Angler Shen##59586
turnin Snapclaw##30700 |goto Krasarang Wilds 67.50,43.50
turnin Fishing for a Bruising##30588 |goto Krasarang Wilds 67.50,43.50
step
talk Trawler Yotimo##60135
turnin Armored Carp##30613 |goto Krasarang Wilds 67.60,42.50
turnin Huff & Puff##30658 |goto Krasarang Wilds 67.60,42.50
step
talk Fisherman Haito##59584
turnin Shocking!##30584 |goto Krasarang Wilds 67.90,45.20
turnin Jagged Abalone##30586 |goto Krasarang Wilds 67.90,45.20
step
talk John "Big Hook" Marsock##60674
turnin Bright Bait##30754 |goto Krasarang Wilds 68.30,43.50
turnin Jumping the Shark##30753 |goto Krasarang Wilds 68.30,43.50
step
talk Fo Fook##60675
turnin Piranha!##30763 |goto Krasarang Wilds 67.20,41.20
turnin Viseclaw Soup##30701 |goto Krasarang Wilds 67.20,41.20
step
talk Nat Pagle##63721
buy 1 Grand Commendation of the Anglers##93225 |n
Use the Commendation of the Anglers you just purchased |goto Krasarang Wilds 68.40,43.40 |complete QC:GetReputation("The Anglers").hasBonus |use Grand Commendation of the Anglers##93225
|only if rep("The Anglers")>=Revered
step
You have reached the end of this guide
Click here to go back to the dailies |confirm |next "dailies"
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The August Celestials Dailies",{
completion={"quests"},
startlevel=25,
description="This guide will take you through The August Celestials dailies Becoming Exalted with The August Celestials allows you to purchase flying mounts and armor for your character.",
},[[
step
label "startaug"
talk Sage Lotusbloom##64001
|tip The following quests will only be available the first time you are sent to a new area. They are random and Sage Lotusbloom will only have one at a time.
accept Challenge At The Temple of the Red Crane##31379 |goto Vale of Eternal Blossoms 62.79,23.39 |next "crane" |or |only if not completedq(31379)
accept Attack At The Temple of the Jade Serpent##31377 |goto Vale of Eternal Blossoms 62.79,23.39 |next "serpent" |or |only if not completedq(31377)
accept Defense At Niuzao Temple##31383 |goto Vale of Eternal Blossoms 62.79,23.39 |next "ox" |or |only if not completedq(31383)
accept Trial At The Temple of the White Tiger##31381 |goto Vale of Eternal Blossoms 62.79,23.39 |next "tiger" |or |only if not completedq(31381)
|tip If no quest is available, ask her how you can help the August Celestials today. Then click on whichever spirit needs you today.
Niuzao the Black Ox |confirm |next "ox"
Yu'lon the Jade Serpent |confirm |next "serpent"
Xuen the White Tiger |confirm |next "tiger"
Chi-Ji the Red Crane |confirm |next "crane"
step
label "crane"
talk Thelonius##60506
turnin Challenge At The Temple of the Red Crane##31379 |goto Krasarang Wilds 31.30,63.40
|only if not completedq(31379)
step
talk Thelonius##60506
accept Students of Chi-Ji##30718 |goto Krasarang Wilds 31.30,63.40
accept Champion of Chi-Ji##30740 |goto Krasarang Wilds 31.30,63.40 |only if achieved(7287)
step
talk Yan Quillpaw##60529
accept Gifts of the Great Crane##30717 |goto Krasarang Wilds 31.30,63.60
step
talk Kuo-Na Quillpaw##60528
accept Chasing Hope##30716 |goto Krasarang Wilds 31.30,63.60
step
talk Champion of Chi-Ji##60546
Let's fight!
Defeat a Champion of Chi-Ji |q 30740/1 |goto Krasarang Wilds 34.60,82.00
|only if haveq(30740)
step
kill Student of Chi-Ji##60601+
Duel #10# Students of Chi-Ji |q 30718/1 |goto Krasarang Wilds 31.20,73.90
click Cerulean Gift of the Crane##211451
click Crimson Gift of the Crane##211453
click Bronze Gift of the Crane##211452
|tip The Gifts look like feathers laying around on the ground.
collect 10 Gift of the Great Crane##80938+ |q 30717/1 |goto Krasarang Wilds 31.20,73.90
Find #3# Spirits of the Crane |q 30716/1 |goto Krasarang Wilds 31.20,73.90
|tip They look like stealthed birds roaming around the isle in set paths. Run into them.
step
talk Kuo-Na Quillpaw##60528
turnin Chasing Hope##30716 |goto Krasarang Wilds 31.30,63.60
step
talk Yan Quillpaw##60529
turnin Gifts of the Great Crane##30717 |goto Krasarang Wilds 31.30,63.60
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds 31.30,63.40
accept Ellia Ravenmane##30725 |goto Krasarang Wilds 31.30,63.40 |or
accept Minh Do-Tan##30726 |goto Krasarang Wilds 31.30,63.40 |or
accept Ellia Ravenmane: Rematch##30727 |goto Krasarang Wilds 31.30,63.40 |or
accept Fat Long-Fat##30728 |goto Krasarang Wilds 31.30,63.40 |or
accept Julia Bates##30729 |goto Krasarang Wilds 31.30,63.40 |or
accept Dextrous Izissha##30730 |goto Krasarang Wilds 31.30,63.40 |or
accept Kuo-Na Quillpaw##30731 |goto Krasarang Wilds 31.30,63.40 |or
accept Ellia Ravenmane: Revenge##30732 |goto Krasarang Wilds 31.30,63.40 |or
accept Tukka-Tuk##30733 |goto Krasarang Wilds 31.30,63.40 |or
accept Huck Wheelbarrow##30734 |goto Krasarang Wilds 31.30,63.40 |or
accept Mindel Sunspeaker##30735 |goto Krasarang Wilds 31.30,63.40 |or
accept Yan Quillpaw##30736 |goto Krasarang Wilds 31.30,63.40 |or
accept Fat Long-Fat: Rematch##30737 |goto Krasarang Wilds 31.30,63.40 |or
accept Thelonius##30738 |goto Krasarang Wilds 31.30,63.40 |or
accept Ellia Ravenmane: Redemption##30739 |goto Krasarang Wilds 31.30,63.40 |or
|only if not achieved(7287)
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds 31.30,63.40
turnin Champion of Chi-Ji##30740 |goto Krasarang Wilds 31.30,63.40
|only if achieved(7287)
|next "end"
step
talk Fat Long-Fat##60534
|tip He is on the very top of this building.
Let's fight!
Defeat Fat Long-Fat |q 30728/1 |goto Krasarang Wilds 32.00,70.70
|only if haveq(30728)
step
talk Ellia Ravenmane##60530
Let's fight!
Defeat Ellia Ravenmane |q 30725/1 |goto Krasarang Wilds 31.80,71.20
|only if haveq(30725)
step
talk Mindel Sunspeaker##60541
Let's fight!
Defeat Mindel Sunspeaker |q 30735/1 |goto Krasarang Wilds 32.10,69.90
|only if haveq(30735)
step
talk Minh Do-Tan##60532
Let's fight!
Defeat Minh Do-Tan |q 30726/1 |goto Krasarang Wilds 32.00,76.50
|only if haveq(30726)
step
talk Tukka-Tuk##60539
Let's fight!
Defeat Tukka-Tuk |q 30733/1 |goto Krasarang Wilds 34.10,75.10
|only if haveq(30733)
step
talk Ellia Ravenmane##60545
Let's fight!
Defeat Ellia Ravenmane |q 30739/1 |goto Krasarang Wilds 36.40,75.60
|only if haveq(30739)
step
talk Dextrous Izissha##60536
Let's fight!
Defeat Dextrous Izissha |q 30730/1 |goto Krasarang Wilds 31.70,80.30
|only if haveq(30730)
step
talk Fat Long-Fat##60543
Let's fight!
Defeat Fat Long-Fat |q 30737/1 |goto Krasarang Wilds 34.80,82.60
|only if haveq(30737)
step
talk Kuo-Na Quillpaw##60537
Let's fight!
Defeat Kuo-Na Quillpaw |q 30731/1 |goto Krasarang Wilds 36.60,74.80
|only if haveq(30731)
step
talk Ellia Ravenmane##60533
Let's fight!
Defeat Ellia Ravenmane |q 30727/1 |goto Krasarang Wilds 35.20,75.10
|only if haveq(30727)
step
talk Julia Bates##60535
Let's fight!
Defeat Julia Bates |q 30729/1 |goto Krasarang Wilds 28.90,75.50
|only if haveq(30729)
step
talk Huck Wheelbarrow##60540
Let's fight!
Defeat Huck Wheelbarrow |q 30734/1 |goto Krasarang Wilds 27.90,70.30
|only if haveq(30734)
step
talk Yan Quillpaw##60542
Let's fight!
Defeat Yan Quillpaw |q 30736/1 |goto Krasarang Wilds 36.50,76.20
|only if haveq(30736)
step
talk Ellia Ravenmane##60538
Let's fight!
Defeat Ellia Ravenmane |q 30732/1 |goto Krasarang Wilds 34.50,83.30
|only if haveq(30732)
step
talk Thelonius##60544
Let's fight!
Defeat Thelonius |q 30738/1 |goto Krasarang Wilds 28.80,72.40
|only if haveq(30738)
step
talk Thelonius##60506
turnin Ellia Ravenmane##30725 |goto Krasarang Wilds 31.30,63.40 |or
turnin Minh Do-Tan##30726 |goto Krasarang Wilds 31.30,63.40 |or
turnin Ellia Ravenmane: Rematch##30727 |goto Krasarang Wilds 31.30,63.40 |or
turnin Fat Long-Fat##30728 |goto Krasarang Wilds 31.30,63.40 |or
turnin Julia Bates##30729 |goto Krasarang Wilds 31.30,63.40 |or
turnin Dextrous Izissha##30730 |goto Krasarang Wilds 31.30,63.40 |or
turnin Kuo-Na Quillpaw##30731 |goto Krasarang Wilds 31.30,63.40 |or
turnin Ellia Ravenmane: Revenge##30732 |goto Krasarang Wilds 31.30,63.40 |or
turnin Tukka-Tuk##30733 |goto Krasarang Wilds 31.30,63.40 |or
turnin Huck Wheelbarrow##30734 |goto Krasarang Wilds 31.30,63.40 |or
turnin Mindel Sunspeaker##30735 |goto Krasarang Wilds 31.30,63.40 |or
turnin Yan Quillpaw##30736 |goto Krasarang Wilds 31.30,63.40 |or
turnin Fat Long-Fat: Rematch##30737 |goto Krasarang Wilds 31.30,63.40 |or
turnin Thelonius##30738 |goto Krasarang Wilds 31.30,63.40 |or
turnin Ellia Ravenmane: Redemption##30739 |goto Krasarang Wilds 31.30,63.40 |or
|only if not achieved(7287)
|next "end"
step
label "serpent"
talk Elder Sage Tai-Feng##57324
turnin Attack At The Temple of the Jade Serpent##31377 |goto The Jade Forest 53.90,61.90 |only if haveq(31377)
accept Arrows of Fortune##30065 |goto The Jade Forest 53.90,61.90 |or
accept Hidden Power##30066 |goto The Jade Forest 53.90,61.90 |or
accept The Darkness Around Us##30006 |goto The Jade Forest 53.90,61.90 |or
Click here when no more quests are available |confirm
step
talk Elder Sage Storm-Sing##57319
accept Behind the Masks##30063 |goto The Jade Forest 53.90,61.90 |or
accept Saving the Sutras##30064 |goto The Jade Forest 53.90,61.90 |or
Click here when no more quests are available |confirm
stickystart "defendersarrow"
stickystart "shainvaders"
stickystart "maskofdoubt"
step
click Ancient Sutra##210086
collect 6 Ancient Sutra##77432 |q 30064/1 |goto The Jade Forest 56.50,53.60
|only if haveq(30064)
step
label "defendersarrow"
click Defender's Arrow##210087 |only if haveq(30065)
collect 10 Defender's Arrow##77452+ |q 30065/1 |goto The Jade Forest 55.30,57.40 |only if haveq(30065)
click Yu'lon Guardian##57400+, Yu'lon Adept##57316+ |only if haveq(30066)
Use the Stack of Mantras |use Stack of Mantras##77475 |only if haveq(30066)
Deliver #6# Ancient Mantras |q 30066/1 |goto The Jade Forest 55.30,57.40 |only if haveq(30066)
step
label "maskofdoubt"
kill Final Doubt##57330+, Lingering Doubt##57396+ |only if haveq(30063)
collect 8 Mask of Doubt##77419+ |q 30063/1 |only if haveq(30063) |goto The Jade Forest 54.50,54.10
|only if haveq(30063)
step
label "shainvaders"
kill Final Doubt##57330+, Lingering Doubt##57396+, Shadow Of Doubt##57389
Kill #15# Sha Invaders |q 30006/1 |goto The Jade Forest 53.40,54.20
|only if haveq(30006)
step
talk Elder Sage Storm-Sing##57319
turnin Behind the Masks##30063 |goto The Jade Forest 53.90,61.90 |only if haveq(30063)
turnin Saving the Sutras##30064 |goto The Jade Forest 53.90,61.90 |only if haveq(30064)
step
talk Elder Sage Tai-Feng##57324
turnin Arrows of Fortune##30065 |goto The Jade Forest 53.90,61.90 |only if haveq(30065)
turnin Hidden Power##30066 |goto The Jade Forest 53.90,61.90 |only if haveq(30066)
turnin The Darkness Around Us##30006 |goto The Jade Forest 53.90,61.90 |only if haveq(30006)
accept Flames of the Void##30068 |goto The Jade Forest 53.90,61.90 |or
accept The Shadow of Doubt##30067 |goto The Jade Forest 53.90,61.90 |or
Click here when no more quests are available |confirm
step
kill Shadow of Doubt##57389 |q 30067/1 |goto The Jade Forest 57.50,62.30
|only if haveq(30067)
step
clicknpc War Serpent##57871
Ride the War Serpent |invehicle |goto The Jade Forest 54.10,60.90
|only if haveq(30068)
step
Fly around the Jade Temple Grounds and extinguish Void Flames
|tip They look like swirling black fire.
If you run out of water you can refill it in the river here |goto The Jade Forest 53.90,58.00
|tip Look for small light-blue patches of swirling water and then fly over them.
Douse #6# Void Flames |q 30068/1
|only if haveq(30068)
step
Click the Leave Vehicle button |outvehicle |goto The Jade Forest 53.90,61.90
|only if haveq(30068)
step
talk Elder Sage Tai-Feng##57324
turnin The Shadow of Doubt##30067 |goto The Jade Forest 53.90,61.90
turnin Flames of the Void##30068 |goto The Jade Forest 53.90,61.90
|next "end"
step
label "tiger"
talk Xuen##60968
turnin Trial At The Temple of the White Tiger##31381 |goto Kun-Lai Summit 67.20,55.90
|only if haveq(31381)
step
talk Xuen##60968
accept Round 1: Brewmaster Chani##30879 |goto Kun-Lai Summit 67.20,55.90 |or
accept Round 1: The Streetfighter##30880 |goto Kun-Lai Summit 67.20,55.90 |or
accept Contending With Bullies##31517 |goto Kun-Lai Summit 67.20,55.90
|tip This quest may not be available.
Click here when no more quests are available |confirm
step
kill Shonuf##64757 |q 31517/1 |goto Kun-Lai Summit 71.10,55.80
|only if haveq(31517)
step
talk Brewmaster Chani##60996
|tip Challenge her.
|tip She has a lot of health but isn't too difficult to kill. She will toss Bitter Brew on the ground, so kite her out of it. She also has an AoE cone called The Steamer, you can avoid this by either moving out of it, or interrupting the channel.
Defeat Brewmaster Chani |q 30879/1 |goto Kun-Lai Summit 71.00,51.80
|only if haveq(30879)
step
talk Lun-Chi##60994
|tip Challenge her.
Defeat The Streetfighter |q 30880/1 |goto Kun-Lai Summit 71.00,51.80
|only if haveq(30880)
step
talk Xuen##60968
turnin Round 1: Brewmaster Chani##30879 |goto Kun-Lai Summit 70.30,51.30 |only if haveq(30879)
turnin Round 1: The Streetfighter##30880 |goto Kun-Lai Summit 70.30,51.30 |only if haveq(30880)
turnin Contending With Bullies##31517 |goto Kun-Lai Summit 70.30,51.30 |only if haveq(31517)
accept Round 2: Clever Ashyo & Ken-Ken##30881 |goto Kun-Lai Summit 70.30,51.30 |or
accept Round 2: Kang Bramblestaff##30882 |goto Kun-Lai Summit 70.30,51.30 |or
step
talk Kang Bramblestaff##60978
|tip Challenge him.
Defeat Kang Bramblestaff |q 30882/1 |goto Kun-Lai Summit 71.70,45.40
|only if haveq(30882)
step
talk Clever Ashyo##60980
|tip Challenge him.
|tip Kill Ken-Ken first as he is the weaker of the two. He will cast Ken-Ken Rampage causing him to whirlwind, when he does momentarily switch to Ashyo. Ashyo will summon Water Spouts and Healing Spheres. The spheres are top priority and the Spouts are easily avoidable.
Defeat Clever Ashyo |q 30881/1 |goto Kun-Lai Summit 71.70,45.40
Defeat Ken-Ken |q 30881/2 |goto Kun-Lai Summit 71.70,45.40
|only if haveq(30881)
step
talk Xuen##60968
turnin Round 2: Clever Ashyo & Ken-Ken##30881 |goto Kun-Lai Summit 71.80,44.90 |only if haveq(30881)
turnin Round 2: Kang Bramblestaff##30882 |goto Kun-Lai Summit 71.80,44.90 |only if haveq(30882)
accept Round 3: The Wrestler##30883 |goto Kun-Lai Summit 71.80,44.90 |or
accept Round 3: Master Boom Boom##30885 |goto Kun-Lai Summit 71.80,44.90 |or
step
talk Master Boom Boom##61013
|tip Challenge him.
|tip He will constantly toss Dynamite at you that will put a landmine on the ground if you walk over it. When he starts the fuse on his boom box, be out of the middle of the arena by the time it finishes.
Defeat Master Boom Boom |q 30885/1 |goto Kun-Lai Summit 66.70,46.50
|only if haveq(30885)
step
talk The Wrestler##60997
|tip Challenge him.
|tip Click on the chairs around the room to increase your damage and cause The Wrestler to be stunned for 10 seconds. If you space these out enough, you could potentially kill him before he can hurt you. Periodically he will grapple and throw you, it does not do much damage but it prevents control of your character. Finally, he uses a Sling Sweat ability which puts a blue puddle on the ground that reduces your movement speed and does damage.
Defeat The Wrestler |q 30883/1 |goto Kun-Lai Summit 66.70,46.50
|only if haveq(30883)
step
talk Xuen##60968
turnin Round 3: The Wrestler##30883 |goto Kun-Lai Summit 66.40,46.30 |only if haveq(30883)
turnin Round 3: Master Boom Boom##30885 |goto Kun-Lai Summit 66.40,46.30 |only if haveq(30885)
accept Round 4: The P.U.G.##30907 |goto Kun-Lai Summit 66.40,46.30 |or
accept Round 4: Master Windfur##30902 |goto Kun-Lai Summit 66.40,46.30 |or
step
talk Master Windfur##61012
|tip Challenge him.
Defeat Master Windfur |q 30902/1 |goto Kun-Lai Summit 68.80,43.80
|only if haveq(30902)
step
Enter the building |goto Kun-Lai Summit 69.00,43.70 < 15
talk Healiss##61004
|tip Challenge him.
|tip Defeat the P.U.G. by first kill Healiss. He will attempt to run away and only has one healing spell that he may try to use, it is called Jungle Remedy, save Interrupts and Stuns for this ability. Next deal with Tankiss, he has more health but is a greater threat than Hackiss, his only ability is called Ground Pummel which will knock you can and deal some damage. Finally kill Hackiss, his only ability is Backstab. This will leave a small bleed on you.
Defeat Hackiss |q 30907/1
Defeat Healiss |q 30907/2
Defeat Tankiss |q 30907/3
|only if haveq(30907)
step
talk Xuen##60968
turnin Round 4: The P.U.G.##30907 |goto Kun-Lai Summit 68.50,44.60
turnin Round 4: Master Windfur##30902 |goto Kun-Lai Summit 68.50,44.60
step
talk Lin Tenderpaw##60981
accept The Torch of Strength##31492 |goto Kun-Lai Summit 68.50,56.50
Click here if this quest is unavailable |confirm |next "end"
step
For this quest you must go up the path, avoiding all of the tornadoes that roam around. If you mount, or touch a tornado, you will have to go back to Lin and start the quest over.
confirm
|only if haveq(31492)
step
Enter the first temple |goto Kun-Lai Summit 69.60,53.00 < 10 |walk
Enter the second temple |goto Kun-Lai Summit 66.90,51.20 < 10 |walk
click The Strong Brazier##214628
Light the Strong Brazier |q 31492/1 |goto Kun-Lai Summit 68.60,46.60
|only if haveq(31492)
step
talk Lin Tenderpaw##60981
turnin The Torch of Strength##31492 |goto Kun-Lai Summit 68.50,56.50
|next "end"
|only if haveq(31492)
step
End of section |next "end"
step
label "ox"
talk Ogo the Elder##61580
turnin Defense At Niuzao Temple##31383 |goto Townlong Steppes 39.35,62.30 |only if haveq(31383)
accept The Siege Swells##30956 |goto Townlong Steppes 39.35,62.30 |or
accept The Unending Siege##30952 |goto Townlong Steppes 39.35,62.30 |or
step
talk Ogo the Younger##61581
accept The Big Guns##30959 |goto Townlong Steppes 39.34,62.21 |or
accept A Blade is a Blade##30954 |goto Townlong Steppes 39.34,62.21 |or
step
talk Yak-Keeper Kyana##61585
accept Fallen Sentinels##30953 |goto Townlong Steppes 39.15,62.07
If this quest is unavailable today, click here |confirm
step
talk Sentinel Commander Qipan##61584
accept The Overwhelming Swarm##30957 |goto Townlong Steppes 39.41,61.96
Click here when no more quests are available |confirm
step
talk High Adept Paosha##61583
accept In Battle's Shadow##30958 |goto Townlong Steppes 38.95,62.44 |or
accept Paying Tribute##30955 |goto Townlong Steppes 38.95,62.44 |or
step
Use your Pot of Fire on Sra'thik War Wagons |use Pot of Fire##82346 |only if haveq(30959)
Cause #3# Sri'thik War Wagons to explode |q 30959/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30959)
kill Sra'thik Swiftclaw##61508+, Sra'thik Warcaller##61502+, Sra'thik Fleshrender##61514+ |only if haveq(30956)
Kill #25# Sri'thik attackers |q 30956/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30956)
kill Sra'thik Kunchong##61509+
Kill #4# Kuchong |q 30957/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30957)
click Loose Brick##211752 |only if haveq(30958)
Throw #10# Loose Stones up to Niuzao Stonemasons |q 30958/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30958)
clicknpc Wounded Niuzao Sentinel##61570 |only if haveq(30953)
Use your Yak's Milk Flask on Wounded Niuzao Sentinels |use Yak's Milk Flask##82381 |only if haveq(30953)
|tip Normal healing spells will also heal the Sentinels if you have them. |only if haveq(30953)
Heal #8# Niuzao Sentinels |q 30953/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30953)
click Niuzao Food Supply##212133 |only if haveq(30955)
Gather #6# Food for Niuzao |q 30955/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30955)
kill Sra'thik Warcaller##61502+, Sra'thik Swiftclaw##61508+ |only if haveq(30952)
Kill #12# Sra'thik attackers |q 30952/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30952)
click Sra'thik Weapon##211766 |only if haveq(30954)
|tip After you kill a Sra'thik, a weapon may drop. |only if haveq(30954)
collect 10 Sra'thik Weapon##82353 |q 30954/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30954)
step
talk Ogo the Elder##61580
turnin The Siege Swells##30956 |goto Townlong Steppes 39.35,62.30 |only if haveq(30956)
turnin The Unending Siege##30952 |goto Townlong Steppes 39.35,62.30 |only if haveq(30952)
step
talk Ogo the Younger##61581
turnin The Big Guns##30959 |goto Townlong Steppes 39.34,62.21 |only if haveq(30959)
turnin A Blade is a Blade##30954 |goto Townlong Steppes 39.34,62.21 |only if haveq(30954)
step
talk Yak-Keeper Kyana##61585
turnin Fallen Sentinels##30953 |goto Townlong Steppes 39.15,62.07 |only if haveq(30953)
turnin In Battle's Shadow##30958 |goto Townlong Steppes 39.15,62.07 |only if haveq(30958)
step
talk Sentinel Commander Qipan##61584
turnin The Overwhelming Swarm##30957 |goto Townlong Steppes 39.41,61.96
|only if haveq(30957)
step
talk High Adept Paosha##61583
turnin Paying Tribute##30955 |goto Townlong Steppes 38.95,62.44
|only if haveq(30955)
step
label "end"
talk Sage Lotusbloom##64001
buy 1 Grand Commendation of the August Celestials##93224 |n
Use the Commendation of the August Celestials you just purchased |complete QC:GetReputation("August Celestials").hasBonus |goto Vale of Eternal Blossoms 62.80,23.40 |use Grand Commendation of the August Celestials##93224
|only if rep("August Celestials")>=Revered
step
You have reached the end of this daily guide
Click here to return to the start of the dailies |next "startaug" |confirm
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies",{
completion={"quests",10,11,18},
startlevel=10,
description="This guide will take you through the Order of the Cloud Serpent dailies Becoming Exalted with The Order of the Cloud Serpent allows you to purchase flying mounts and designs for companion pets.",
},[[
step
label "start"
Proceeding to Order of the Cloud Serpent Dailies |complete completedq(30142) |next "dailies" |only if completedq(30142)
Moving to the Order of the Cloud Serpent prequests. |next |complete not completedq(30142) |only if not completedq(30142)
step
#include "CS_PreQuests"
step
label "dailies"
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
accept Catch!##30151 |goto The Jade Forest 57.50,45.30 |or 2
accept Pooped##31704 |goto The Jade Forest 57.50,45.30 |or 2
accept Feeding Time##30156 |goto The Jade Forest 57.50,45.30 |or 2
accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.50,45.30 |or 2
accept Sweet as Honey##30150 |goto The Jade Forest 57.50,45.30 |or 2
Make sure Your Hatchling offers no more quests and click here |confirm
|only if not completedq(30143)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
accept Catch!##30151 |goto The Jade Forest 57.50,45.30 |or 2
accept Pooped##31704 |goto The Jade Forest 57.50,45.30 |or 2
accept Pooped##31716 |goto The Jade Forest 57.50,45.30 |or 2
accept Feeding Time##30156 |or 2
accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.50,45.30 |or 2
accept Sweet as Honey##30150 |goto The Jade Forest 57.50,45.30 |or 2
Make sure Your Hatchling offers no more quests and click here. |confirm
|only if completedq(30143)
step
talk Instructor Skythorn##58228
accept Restoring the Balance##30155 |goto The Jade Forest 57.60,45.10 |or 2
accept Disarming the Enemy##30158 |goto The Jade Forest 57.60,45.10 |or 2
accept Thinning The Pack##31698 |goto The Jade Forest 57.60,45.10 |or 2
accept Weeping Widows##31706 |goto The Jade Forest 57.60,45.10 |or 2
accept A Tangled Web##31707 |goto The Jade Forest 57.60,45.10 |or 2
accept Monkey Mischief##31712 |goto The Jade Forest 57.60,45.10 |or 2
noquest
step
talk Jenova Longeye##58413
|tip NOTE: You will be able to accept Fragments of the Past at any level Archaeology, but won't be able to do the quest unless your skill in Archaeology is 525 or more.
accept Just a Flesh Wound##30148 |goto The Jade Forest 57.50,44.70 |only if level >= 32
accept A Feast for the Senses##30149 |goto The Jade Forest 57.50,44.70
accept Fragments of the Past##30147 |goto The Jade Forest 57.50,44.70 |only if skill("Archaeology") >= 525
accept Snack Time##30146 |goto The Jade Forest 57.50,44.70 |only if skill("Pandaria Fishing") >= 1
She can also be found inside of the following building |goto The Jade Forest/0 57.30,45.70
step
talk Elder Anli##58564
accept Slitherscale Suppression##31194 |goto The Jade Forest/0 57.60,44.90 |or 2
accept Madcap Mayhem##31703 |goto The Jade Forest/0 57.60,44.90 |or 2
accept Dark Huntress##31701 |goto The Jade Forest/0 57.60,44.90 |or 2
accept On The Prowl##31702 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Seed of Doubt##31711 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Trainer's Challenge: Ace Longpaw##31717 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Trainer's Challenge: Suchi the Sweet##31720 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Trainer's Challenge: Big Bao##31718 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Big Kah-Oona##31715 |goto The Jade Forest/0 57.60,44.90 |or 2
noquest
step
talk Ningna Darkwheel##58509
accept Sprite Fright##31699 |goto The Jade Forest/0 58.30,45.00 |or
accept The Shoe Is On The Other Foot##31700 |goto The Jade Forest/0 58.30,45.00 |or
noquest
step
talk Suchi the Sweet##58510
accept Preservation##30159 |goto The Jade Forest/0 58.50,44.70 |or
accept Emptier Nests##30157 |goto The Jade Forest/0 58.50,44.70 |or
noquest
step
talk Big Bao##58508
accept Lingering Doubt##31709 |goto The Jade Forest/0 57.50,44.00
noquest
step
talk Qua-Ro Whitebrow##58511
accept Serpent's Scale##31708 |goto The Jade Forest/0 57.30,43.50
accept Saving the Serpents##31714 |goto The Jade Forest/0 57.30,43.50
noquest
step
talk Instructor Windblade##58420
accept The Sky Race##30152 |goto The Jade Forest 58.60,43.70
noquest
step
talk Ace Longpaw##58506
accept The Big Brew-haha##31713 |goto The Jade Forest 58.00,43.70
noquest
step
talk Instructor Windblade##58420
Tell her you are ready to start the Sky Race.
Ride your Dragon! |invehicle |goto The Jade Forest 58.60,43.70
|only if haveq(30152)
step
map The Jade Forest/0
path loop on; follow strict; dist 40
path	60.60,39.40	59.70,31.50	61.30,25.20
path	66.30,36.00	66.20,42.40	66.80,51.40
path	64.00,51.00	60.40,52.90	61.80,54.50
path	58.70,46.80	58.40,46.40	58.10,46.00
Follow this path and collect the checked flags hanging off of the Checkpoint balloons
As you fly, gain speed by flying through cloud rings
Pass 10 Checkpoints |q 30152/1
Pass underneath the Finish Line |q 30152/2
|only if haveq(30152)
step
talk Qua-Ro Whitebrow##58511
Challenge him to a duel!
Defeat Qua-Ro Whitebrow |q 31721/1 |goto The Jade Forest/0 57.30,43.50
|only if haveq(31721)
step
talk Ace Longpaw##58506
Challenge him to a duel!
Defeat Ace Longpaw |q 31717/1 |goto The Jade Forest/0 58.00,43.70
|only if haveq(31717)
step
talk Big Bao##58508
Challnge him to a duel!
Defeat Big Bao |q 31718/1 |goto The Jade Forest/0 57.50,44.00
|only if haveq(31718)
step
talk Suchi the Sweet##58510
Challenge her to a duel!
Defeat Suchi the Sweet |q 31720/1 |goto The Jade Forest/0 58.50,44.70
|only if haveq(31720)
stickystart "slitherharpoon"
stickystart "saltback"
step
kill Slitherscale Lizard-Lord##63536 |q 31194/1 |goto The Jade Forest/0 69.80,31.30
|only if haveq(31194)
step
label "slitherharpoon"
kill 8 Slitherscale saurok Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+ |q 30155/1 |goto The Jade Forest/0 68.10,31.20 |only if haveq(30155)
click Slitherscale Weapons##210277 |only if haveq(30158)
collect 5 Slitherscale Harpoon##79025 |q 30158/1 |goto The Jade Forest/0 68.10,31.20 |only if haveq(30158)
click Serpent Egg##215392 |only if haveq(30159)
collect 8 Stolen Egg##79067 |q 30159/1 |goto The Jade Forest/0 68.10,31.20 |only if haveq(30159)
step
label "saltback"
kill Saltback Turtle##58218+, Saltback Yearling##58219+
collect 15 Saltback Meat Scrap##79028 |n
Use the meat scraps to make a Saltback meat |use Saltback Meat Scrap##79028
collect 3 Saltback Meat##79027 |n
Use the meat to feed your Hatchling |use Saltback Meat##79027 |q 30156/1 |goto The Jade Forest/0 64.60,33.30
|only if haveq(30156)
step
Use the Bouncy Ball in your bags. |use Bouncy Ball##79043
Catch the Bouncy Ball whenever your Hatchling tosses it up, this will be every second throw.
Catch the Ball #8# times |q 30151/1 |goto The Jade Forest/0 57.20,45.20
|only if haveq(30151)
step
click Hatchling Poop##214863
|tip It is all around this area.
collect 5 Tiny Bag of Poop##89052 |q 31704/1 |goto The Jade Forest/0 55.10,46.50
|only if haveq(31704)
step
click Hatchling Poop##214863
|tip It is all around this area.
collect 5 Big Bag of Poop##89053 |q 31716/1 |goto The Jade Forest/0 55.10,46.50
|only if haveq(31716)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Pooped##31704 |goto The Jade Forest/0 57.50,45.40
|only if haveq(31704)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Pooped##31716 |goto The Jade Forest/0 57.50,45.40
|only if haveq(31716)
stickystart "stolenboots"
step
kill Shadowfae Madcap##65613 |q 31703/1 |goto The Jade Forest/0 62.70,27.40
|only if haveq(31703)
step
_Enter_ the cave |goto The Jade Forest/0 64.40,25.80 < 10 |walk
kill Windward Huntress##63538 |q 31701/1 |goto The Jade Forest/0 64.70,25.70
|only if haveq(31701)
step
kill Windward Saber##65612 |q 31702/1 |goto The Jade Forest/0 63.80,22.30
|only if haveq(31702)
step
label "stolenboots"
kill Windward Tiger##63537 |only if haveq(30154)
collect 5 Tiger Flank##85282 |q 30154/1 |goto The Jade Forest/0 62.80,24.70 |only if haveq(30154)
kill 7 Shadowfae Trickster##65635+ |q 31699/1 |goto The Jade Forest/0 62.80,24.70 |only if haveq(31699)
kill 8 Windward Alpha+, Windward Tiger##63537+ |q 31698/1 |goto The Jade Forest/0 62.80,24.70 |only if haveq(31698)
click Stolen Boots##214868 |only if haveq(31700)
collect 14 Stolen Boots##89054 |q 31700/1 |goto The Jade Forest/0 62.80,24.70 |only if haveq(31700)
stickystart "widowspawn"
step
_Enter_ the cave |goto The Jade Forest/0 58.00,31.70 < 10 |walk
Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
Measure the Northeastern Sha Disturbance |q 31709/2 |goto The Jade Forest/15 62.70,25.70
|only if haveq(31709)
step
Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
Measure the Northwestern Sha Disturbance |q 31709/1 |goto The Jade Forest/15 37.00,31.90
|only if haveq(31709)
step
_Enter_ the cave |goto The Jade Forest/15 58.00,31.70 < 10 |walk
kill Seed of Doubt |q 31711/1 |goto The Jade Forest/15 35.70,40.20
|only if haveq(31711)
step
Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
Measure the Southern Sha Disturbance |q 31709/3 |goto The Jade Forest/15 61.00,74.10
|only if haveq(31709)
step
label "widowspawn"
_Enter_ the cave |goto The Jade Forest/15 58.00,31.70 < 10
kill Widowspawn##65658 |only if haveq(31710)
collect 100 Tiny Spider Eye##88907 |q 31710/1 |only if haveq(31710)
kill 7 Weeping Widow##65653+ |q 31706/1 |only if haveq(31706)
click Serpent's Scale##214844 |only if haveq(31708)
collect 25 Serpent's Scale##88895 |q 31708/1 |only if haveq(31708)
kill Widow's Web##65634+ |only if haveq(31707)
Free #5# Sri-La Villagers |q 31707/1 |only if haveq(31707)
|only if haveq(31706) or haveq(31707) or haveq(31708) or haveq(31710)
stickystart "rescueserp"
stickystart "oonabrew"
stickystart "oonagoon"
step
_Leave_ the cave |goto The Jade Forest/15 75.80,19.00 < 10 |only if haveq(31708) or haveq(31710) or haveq(31706) or haveq(31711) or haveq(31709) or haveq(31707) |walk
_Enter_ the Oona Kagu cave |goto The Jade Forest/0 57.70,27.70 < 10 |only if haveq(31715) |walk
kill 1 Lord Oona##65628 |q 31715/1 |goto The Jade Forest/16 45.80,77.80
|only if haveq(31715)
step
label "rescueserp"
clicknpc Serpent##128767
collect 10 Rescued Serpent##88894 |q 31714/1 |goto The Jade Forest/16 55.20,28.40
|only if haveq(31714)
step
label "oonabrew"
kill Oona Brewchugger##65624
click Stolen Sri-La Keg##214986
collect 100 Sri-La Stout##88855 |q 31713/1 |goto The Jade Forest/16 55.20,28.40
|only if haveq(31713)
step
label "oonagoon"
kill 13 Oona Goon##65621+, Oona Brewchugger##65624+, Oona Tuna-Catcher##65623+ |q 31712/1 |goto The Jade Forest/16 55.20,28.00
|only if haveq(31712)
step
Use your Silken Rope on _Windward Hatchlings_ |use Silken Rope##78947
Bring the Windward Hatchlings to the nest at |goto The Jade Forest/16 63.40,31.40
Return #6# Windward Hatchlings |q 30157/1 |goto The Jade Forest 64.50,31.10
|only if haveq(30157)
step
collect 8 Windwool Bandage##72985 |or
_Or_
collect 8 Heavy Windwool Bandage##72986 |or
|tip Create them with Tailoring or purchase them from the auction house.
|tip Either bandage will work.
|only if haveq(30148)
step
use the Windwool Bandage##72985
use the Heavy Windwool Bandage##72986
Bandage #8# Injured Hatchlings |q 30148/1 |goto The Jade Forest 63.90,31.10
|only if haveq(30148)
step
collect 5 Fish Cake##74641 |q 30149/1
|tip Create them with Pandaria Cooking or purchase them from the auction house.
|tip Each one requires two Sugar Minnow and two Golden Carp.
|only if haveq(30149)
step
kill Honeykeeper##58363+
collect 30 Honeycomb##79030 |q 30150/1 |goto The Jade Forest 55.10,47.20
|only if haveq(30150)
step
talk Ace Longpaw##58506
turnin The Big Brew-haha##31713 |goto The Jade Forest 58.00,43.70
|only if haveq(31713)
step
talk Elder Anli##58564
turnin Slitherscale Suppression##31194 |goto The Jade Forest 57.60,44.90 |only if haveq(31194) or completedq(31194)
turnin Dark Huntress##31701 |goto The Jade Forest 57.60,44.90 |only if haveq(31701) or completedq(31701)
turnin On The Prowl##31702 |goto The Jade Forest 57.60,44.90 |only if haveq(31702) or completedq(31702)
turnin Restoring the Balance##30155 |goto The Jade Forest 57.60,44.90 |only if haveq(30155) or completedq(30155)
turnin Disarming the Enemy##30158 |goto The Jade Forest 57.60,44.90 |only if haveq(30158) or completedq(30158)
turnin Madcap Mayhem##31703 |goto The Jade Forest 57.60,44.90 |only if haveq(31703) or completedq(31703)
turnin The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.60,44.90 |only if haveq(30154) or completedq(30154)
turnin Sprite Fright##31699 |goto The Jade Forest 57.60,44.90 |only if haveq(31699) or completedq(31699)
turnin Thinning The Pack##31698 |goto The Jade Forest 57.60,44.90 |only if haveq(31698) or completedq(31698)
turnin The Shoe Is On The Other Foot##31700 |goto The Jade Forest 57.60,44.90 |only if haveq(31700) or completedq(31700)
turnin Weeping Widows##31706 |goto The Jade Forest 57.60,44.90 |only if haveq(31706) or completedq(31706)
turnin The Seed of Doubt##31711 |goto The Jade Forest 57.60,44.90 |only if haveq(31711) or completedq(31711)
turnin A Tangled Web##31707 |goto The Jade Forest 57.60,44.90 |only if haveq(31707) or completedq(31707)
turnin The Sky Race##30152 |goto The Jade Forest 57.60,44.90 |only if haveq(30152) or completedq(30152)
turnin The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto The Jade Forest 57.60,44.90 |only if haveq(30152) or completedq(30152)
turnin The Trainer's Challenge: Ace Longpaw##31717 |goto The Jade Forest 57.60,44.90 |only if haveq(31717) or completedq(31717)
turnin The Trainer's Challenge: Suchi the Sweet##31720 |goto The Jade Forest 57.60,44.90 |only if haveq(31720) or completedq(31720)
turnin The Trainer's Challenge: Big Bao##31718 |goto The Jade Forest 57.60,44.90 |only if haveq(31718) or completedq(31718)
turnin Preservation##30159 |goto The Jade Forest 57.60,44.90 |only if haveq(30159) or completedq(30159)
turnin Lingering Doubt##31709 |goto The Jade Forest 57.60,44.90 |only if haveq(31709) or completedq(31709)
turnin Emptier Nests##30157 |goto The Jade Forest 57.60,44.90 |only if haveq(30157) or completedq(30157)
turnin Monkey Mischief##31712 |goto The Jade Forest 57.60,44.90 |only if haveq(31712) or completedq(31712)
turnin The Big Kah-Oona##31715 |goto The Jade Forest 57.60,44.90 |only if haveq(31715) or completedq(31715)
turnin Saving the Serpents##31714 |goto The Jade Forest 57.60,44.90 |only if haveq(31714) or completedq(31714)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Tiny Treats##31710 |goto The Jade Forest 57.50,45.30 |only if haveq(31710)
turnin Sweet as Honey##30150 |goto The Jade Forest 57.50,45.30 |only if haveq(30150)
turnin Feeding Time##30156 |goto The Jade Forest 57.50,45.30 |only if haveq(30156)
turnin Pooped##31704 |goto The Jade Forest 57.50,45.30 |only if haveq(31704)
turnin The Easiest Way To A Serpent's Heart##30154 |only if haveq(30154)
|only if haveq(31710) or haveq(30150) or haveq(30156) or haveq(31704) or haveq(30154)
step
Talk to Your Hatchling |goto The Jade Forest 57.50,45.30
|tip Your Hatchling is whichever color egg you chose in the prequests.
confirm
|only if not completedq(30143)
step
Talk to Your Hatchling |goto The Jade Forest 57.50,45.30
|tip Your Hatchling is whichever color egg you chose in the prequests.
confirm
|only if completedq(30143)
step
Open your world map, find dig sites in Pandaria, then go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
collect 6 Serpentrider Relic## |q 30147/1
|only if haveq(30147)
step
talk Jenova Longeye##58413
turnin Just a Flesh Wound##30148 |goto The Jade Forest 57.50,44.70 |only if haveq(30148) or completedq(30148)
turnin A Feast for the Senses##30149 |goto The Jade Forest 57.50,44.70 |only if haveq(30149) or completedq(30149)
turnin Fragments of the Past##30147 |goto The Jade Forest 57.50,44.70 |only if haveq(30147) or completedq(30147)
turnin Snack Time##30146 |goto The Jade Forest 57.50,44.70 |only if haveq(30146) or completedq(30146)
step
Talk to Your Hatchling |goto The Jade Forest 57.50,45.40
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Sweet as Honey##30150
|only if haveq(30150)
step
talk Elder Anli##58564
turnin Catch!##30151 |goto The Jade Forest 57.60,44.90
|only if haveq(30151)
step
talk Elder Anli##58564
accept Needle Me Not##31705 |goto The Jade Forest 57.60,44.90
|only if completedq(30151)
step
Use the Golden Honey in your bags |use Golden Honey##89113
kill Orchard Needler |q 31705/1 |goto The Jade Forest 57.00,41.20
|only if haveq(31705)
step
talk Elder Anli##58564
turnin Needle Me Not##31705 |goto The Jade Forest 57.60,44.90
|next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
|next "revered" |only if rep("Order of the Cloud Serpent")==Revered
|next "end" |only if rep("Order of the Cloud Serpent")<=Revered
step
label "revered"
talk San Redscale##58414
buy 1 Grand Commendation of the Order of the Cloud Serpent##93229 |n
Use the Commendation of the Order of the Cloud Serpent you just purchased |goto The Jade Forest 56.60,44.40 |complete QC:GetReputation("Order of the Cloud Serpent").hasBonus |use Grand Commendation of the Order of the Cloud Serpent##93229
|only if rep("Order of the Cloud Serpent")>=Revered
step
talk Elder Anli##58564
accept They Grow Like Weeds##30143 |goto The Jade Forest 57.60,44.90
step
talk Instructor Windblade##58420
Ask Instructor Windbalde how your serpent is doing
Speak to Instructor Windblade |q 30143/1 |goto The Jade Forest 58.60,43.70
step
talk Instructor Windblade##58420
turnin They Grow Like Weeds##30143 |goto The Jade Forest 58.60,43.70
accept Flight Training: Ring Round-Up##30144 |goto The Jade Forest 58.60,43.70
step
The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
Ride your Cloud Serpent |invehicle |c
|only if haveq(30144)
step
Fly your Cloud Serpent through the rings made from clouds
Fly through #6# Cloud Rings |q 30144/1
step
Click the Leave Vehicle button |outvehicle |c |goto The Jade Forest 58.60,43.70
step
talk Instructor Windblade##58420
turnin Flight Training: Ring Round-Up##30144 |goto The Jade Forest 58.60,43.70
accept Flight Training: Full Speed Ahead##30145 |goto The Jade Forest 58.60,43.70
step
The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
Ride your Cloud Serpent |invehicle |c
|only if haveq(30145)
step
Follow Instructor Windblade through the course, her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide
If you move too slowly or get too far away from the guide, the course will restart
Finish the course |q 30145/1
step
talk Instructor Windblade##58420
turnin Flight Training: Full Speed Ahead##30145 |goto The Jade Forest 58.60,43.70
accept Flight Training: In Due Course##30187 |goto The Jade Forest 58.60,43.70
step
The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
Ride your Cloud Serpent |invehicle |c
|only if haveq(30187)
step
map The Jade Forest/0
path loop on; follow strict; dist 40
path	60.60,39.40	59.70,31.50	61.30,25.20
path	66.30,36.00	66.20,42.40	66.80,51.40
path	64.00,51.00	60.40,52.90	61.80,54.50
path	58.70,46.80	58.40,46.40
Follow this path and collect the checked flags hanging off of the Checkpoint balloons
As you fly, gain speed by flying through cloud rings
Pass 10 Checkpoints |q 30187/1
step
talk Instructor Windblade##58420
turnin Flight Training: In Due Course##30187 |goto The Jade Forest/0 58.60,43.70
|next "end"
step
label "exalted"
talk Elder Anli##58564
accept Riding the Skies##31811 |goto The Jade Forest/0 57.60,45.00
step
Watch the cinematic
Join the Order of the Cloud Serpent |q 31811/1
step
talk Elder Anli##58564
turnin Riding the Skies##31811 |goto The Jade Forest/0 57.60,45.00
step
Proceeding to the next step |next "end" |only if default
Proceeding to Riding the Skies Quest |next "exalted" |only if rep('Order of the Cloud Serpent')==Exalted
step
label "exalted"
talk Elder Anli##58564
accept Riding the Skies##31810 |goto The Jade Forest/0 57.70,44.90
step
talk Elder Anli##58564
turnin Riding the Skies##31810 |goto The Jade Forest/0 57.70,44.90
step
label "end"
This the end of our daily guide
Click here to go back to the beginning |confirm |next "start"
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies",{
completion={"quests"},
startlevel=25,
description="This guide will take you through the Shado-Pan dailies Becoming Exalted with The Shado-Pan allows you to purchase ground mounts and armor for your character.",
},[[
step
label "shado_dailies"
Click here if _Master Snowdrift_ is the questgiver today |confirm |goto Townlong Steppes 49.50,70.60
Click here if _Ban Bearheart_ is the questgiver today |confirm  |goto Townlong Steppes 49.00,70.50 |next "bearheart"
Click here if _Ling of the Six Pools_ is the questgiver today|confirm  |goto Townlong Steppes 49.00,71.30 |next "ling"
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes 49.40,70.60
|only if not completedq(31127)
|only if rep('Shado-Pan')>=Honored
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes 49.40,70.60
|only if rep('Shado-Pan')>=Revered
step
talk Lao-Chin the Iron Belly##62978
I'm here to challenge you! |q 31128/1 |goto Townlong Steppes 49.30,72.00
|only if haveq(31128)
step
talk Lao-Chin the Iron Belly##63135
Tell him: _"All right, let's do this!"_
Defeat Lao-Chin the Iron Belly |q 31128/2 |goto Townlong Steppes 50.60,67.80
|only if haveq(31128)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes 49.60,70.50
|only if haveq(31128)
step
talk Chao the Voice##62550
Tell her you're here to challenge her! |q 31127/1 |goto Townlong Steppes 49.70,70.50
|only if haveq(31127)
step
talk Chao the Voice##63125
Let's do this.
Defeat Chao the Voice |q 31127/2 |goto Townlong Steppes 50.10,68.30
|only if haveq(31127)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes 49.40,70.60
|only if haveq(31127)
step
talk Master Snowdrift##63009
|tip You will only be able to accept 4 of the following dailies.
accept Assault Fire Camp Gai-Cho##31113 |goto Townlong Steppes 49.40,70.60 |or 4
accept Assault Deadtalker's Plateau##31114 |goto Townlong Steppes 49.40,70.60 |or 4
accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto Townlong Steppes 49.40,70.60 |or 4
accept Spirit Dust##31116 |goto Townlong Steppes 49.40,70.60 |or 4
accept The Deadtalker Cipher##31118 |goto Townlong Steppes 49.40,70.60 |or 4
step
Talk to Chao the Voice or Protector Yi and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|tip Yi patrols so you may need to search for him.
talk Chao the Voice##62550 |goto Townlong Steppes 49.70,70.50
talk Protector Yi##62546 |goto Townlong Steppes 49.30,71.30
confirm
|only if not completedq(31128)
step
Talk to Chao the Voice, Protector Yi or Lao-Chin the Iron Belly and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|tip Yi patrols so you may need to search for him.
talk Chao the Voice##62550 |goto Townlong Steppes 49.70,70.50
talk Protector Yi##62546 |goto Townlong Steppes 49.30,71.30
talk Lao-Chin the Iron Belly##62978 |goto Townlong Steppes 49.30,71.90
confirm
|only if completedq(31128)
step
kill Gai-Cho Yaungol##62552+, Gai-Cho Earthtalker##62553+, Gai-Cho Pitchthrower##62608+ |only if haveq(31113)
Kill 16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers. |q 31113/1 |goto Townlong Steppes 63.40,43.30 |only if haveq(31113)
click Highly Explosive Yaungol Oil Barrel##212877 |only if haveq(31119)
collect Highly Explosive Yaungol Oil##84762 |n |goto Townlong Steppes 63.40,43.30
|tip You can only carry 10 at a time, so you may need to make multiple trips. |only if haveq(31119)
step
Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
kill Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
Kill 100 Gai-Cho Battledfired Combatants |q 31119/1 |goto Townlong Steppes 60.20,48.60
If you run out of oil, you can find more around this area |goto Townlong Steppes 63.40,43.30
|only if haveq(31119)
stickystart "spiritremains"
step
kill Deadtalker Crusher##62844+, Deadtalker Corpsedefiler##62677+
collect Ciphered Scroll##84759 |q 31118/1  |goto Townlong Steppes 51.10,51.80
|only if haveq(31118)
step
label "spiritremains"
kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |goto Townlong Steppes 51.10,51.80 |only if haveq(31114)
kill Deadtalker Crusher##62844 |q 31114/2 |goto Townlong Steppes 51.10,51.80
|tip He is elite but with your companion you should be able to defeat him. |only if haveq(31114)
kill Defiled Spirit##62679 |only if haveq(31116)
collect Ancient Spirit Dust##84727 |n |only if haveq(31116)
click Defiled Yaungol Remains##212779 |only if haveq(31116)
Return 8 Spirits to Their Remains |q 31116/1 |goto Townlong Steppes 51.10,51.80 |only if haveq(31116)
step
Next to you will either be Chao the Voice or Protector Yi:
Talk to Chao the Voice
Talk to Protector Yi
turnin Assault Fire Camp Gai-Cho##31113
turnin Assault Deadtalker's Plateau##31114
turnin The Enemy of My Enemy... Is Still My Enemy!##31119
turnin Spirit Dust##31116
turnin The Deadtalker Cipher##31118
|only if not completedq(31128)
step
Next to you will either be Chao the Voice, Protector Yi, or Lao-Chin the Iron Belly:
Talk to Chao the Voice
Talk to Protector Yi
Talk to Lao-Chin the Iron Belly
turnin Assault Fire Camp Gai-Cho##31113
turnin Assault Deadtalker's Plateau##31114
turnin The Enemy of My Enemy... Is Still My Enemy!##31119
turnin Spirit Dust##31116
turnin The Deadtalker Cipher##31118
|only if completedq(31128)
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Uruk!##31117 |or
accept Cheng Bo!##31120 |or
step
kill Uruk##62613 |q 31117/1 |goto Townlong Steppes 50.40,48.90
step
kill Cheng Bo##62554 |q 31120/1 |goto Townlong Steppes 60.70,42.10
step
talk Master Snowdrift##63009
turnin Uruk!##31117 |goto Townlong Steppes 49.60,70.50 |or
turnin Cheng Bo!##31120 |goto Townlong Steppes 49.60,70.50 |or
|next "end"
step
label "bearheart"
talk Ban Bearheart##62304
accept The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes 49.00,70.40
|only if not completedq(31038)
|only if rep('Shado-Pan')>=Honored
step
talk Ban Bearheart##62304
accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes 49.00,70.40
|only if rep('Shado-Pan')>=Revered
step
talk Snow Blossom##62380
Ask her to meet in the Challenger's Ring. |q 31038/1 |goto Townlong Steppes 48.90,70.10
|only if haveq(31038)
step
talk Snow Blossom##62834
I challenge you!
Defeat Snow Blossom |q 31038/2 |goto Townlong Steppes 50.20,67.90
|only if haveq(31038)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes 49.00,70.40
|only if haveq(31038)
step
talk Yalia Sagewhisper##62303
Ask her to meet you in the Challenger's Ring |q 31104/1 |goto Townlong Steppes 48.90,70.00
|only if haveq(31104)
step
talk Yalia Sagewhisper##62850
I challenge you!
Defeat Yalia Sagewhisper |q 31104/2 |goto Townlong Steppes 50.40,67.70
|only if haveq(31104)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes 49.00,70.40
|only if haveq(31104)
step
talk Ban Bearheart##62304
accept Born Free##31047 |goto Townlong Steppes 49.00,70.40 |or 4
accept The Mogu Menace##31105 |goto Townlong Steppes 49.00,70.40 |or 4
accept The Mogu Menace##31106 |goto Townlong Steppes 49.00,70.40 |or 4
accept The Mogu Menace##31039 |goto Townlong Steppes 49.00,70.40 |or 4
accept Bronze Claws##31044 |goto Townlong Steppes 49.00,70.40 |or 4
accept Illusions Of The Past##31045 |goto Townlong Steppes 49.00,70.40 |or 4
accept Grave Consequences##31048 |goto Townlong Steppes 49.00,70.40 |or 4
accept Dark Arts##31043 |goto Townlong Steppes 49.00,70.40 |or 4
accept Onyx Hearts##31042 |goto Townlong Steppes 49.00,70.40 |or 4
accept Spiteful Sprites##31040 |goto Townlong Steppes 49.00,70.40 |or 4
accept Egg Rescue!##31041 |goto Townlong Steppes 49.00,70.40 |or 4
accept Little Hatchlings##31046 |goto Townlong Steppes 49.00,70.40 |or 4
step
Talk to Snow Blossom or Fei Li and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Snow Blossom##62380 |goto Townlong Steppes 48.90,70.10
talk Fei Li##62354 |goto Townlong Steppes 48.80,70.20
confirm
|only if not completedq(31104)
step
Talk to Snow Blossom, Fei Li, or Yalia Sagewhisper and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Snow Blossom##62380 |goto Townlong Steppes 48.90,70.10
talk Fei Li##62354 |goto Townlong Steppes 48.80,70.20
talk Yalia Sagewhisper##62303 |goto Townlong Steppes 48.80,70.00
confirm
|only if completedq(31104)
step
talk Moshu the Arcane##62810
accept Through the Portal##31110 |goto Townlong Steppes 28.80,22.40
|only if not completedq(31110)
step
clicknpc Ball and Chain##62539 |only if haveq(31047)
Free 6 Wild Cloudriders |q 31047/1 |goto Townlong Steppes 32.80,25.10 |only if haveq(31047)
click Shan'ze Cage##215573 |goto Townlong Steppes 32.80,25.10 |only if haveq(31046)
Free 20 Cloudrider Hatchlings. |q 31046/1 |goto Townlong Steppes 32.80,25.10 |only if haveq(31046)
click Shiny Egg##214481 |only if haveq(31041)
collect 8 Cloudrunner Egg##83129 |q 31041/1 |goto Townlong Steppes 32.80,25.10 |only if haveq(31041)
|only if haveq(31041) or haveq(31046) or haveq(31047)
stickystart "bronzeclaw"
stickystart "darkwoodscharmer"
stickystart "arcanepowder"
step
kill 3 Shan'ze Illusionist##62440+ |q 31045/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31045)
click Shan'ze Tablet##212319 |only if haveq(31043)
collect 8 Shan'ze Tablet##83130 |q 31043/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31043)
click Mogu Burial Urn##212324 |only if haveq(31048)
kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31048)
kill Onyx Stormclaw##62448 |only if haveq(31042)
collect 4 Onyx Heart##83138 |q 31042/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31042)
step
label "bronzeclaw"
kill Shan'ze Serpentbinder##62293+, Shan'ze Beastmaster##62530+ |only if haveq(31105) or haveq(31106) or haveq (31039)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31105/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31105)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31106/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31106)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31039/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31039)
kill Bronze Quilen##62266+ |only if haveq(31044)
collect 20 Bronze Claw##83153+ |q 31044/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31044)
step
label "darkwoodscharmer"
kill Darkwoods Pixie##62268+, Darkwoods Charmer##62457+
Kill 30 Darkwoods Sprites or Darkwoods Charmers. |q 31040/1 |goto Townlong Steppes 23.00,19.50
|only if haveq(31040)
step
label "arcanepowder"
kill Shan'ze Serpentbinder##62293+, Shan'ze Illusionist##62440+, Shan'ze Ancestor##62285+, Shan'ze Beastmaster##62515+, Darkwoods Charmer##62520
collect 1000 Ancient Arcane Powder##84102+ |q 31110/1
|only if haveq(31110)
step
Next to you will either be Fei Li or Snow Blossom
talk Fei Li##62354
talk Snow Blossom##62380
turnin The Mogu Menace##31105
turnin The Mogu Menace##31106
turnin The Mogu Menace##31039
turnin Bronze Claws##31044
turnin Illusions Of The Past##31045
turnin Grave Consequences##31048
turnin Dark Arts##31043
turnin Onyx Hearts##31042
turnin Born Free##31047
turnin Spiteful Sprites##31040
turnin Egg Rescue!##31041
turnin Little Hatchlings##31046
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
|only if not completedq(31104)
step
Next to you will either be Fei Li, Snow Blossom, or Yalia Sagewhisper
talk Fei Li##62354
talk Snow Blossom##62380
talk Yalia Sagewhisper##62303
turnin The Mogu Menace##31105
turnin The Mogu Menace##31106
turnin The Mogu Menace##31039
turnin Bronze Claws##31044
turnin Illusions Of The Past##31045
turnin Grave Consequences##31048
turnin Dark Arts##31043
turnin Onyx Hearts##31042
turnin Born Free##31047
turnin Spiteful Sprites##31040
turnin Egg Rescue!##31041
turnin Little Hatchlings##31046
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
|only if completedq(31104)
step
Use the Bronze Claws on the Cloudrunners around this area |use Bronze Claws##83134
kill Shan'ze Cloudrunner##62584
Free 8 Shan'ze Cloudriders |q 31061/1 |goto Townlong Steppes 30.90,12.60
|only if haveq(31061)
step
Click the Leave Vehicle button |outvehicle
|only if haveq(31061)
step
_Enter_ the tunnel |goto Townlong Steppes 20.30,15.80 < 15
kill Darkwoods Faerie##62522 |q 31049/1 |goto Townlong Steppes 19.50,13.80
|only if haveq(31049)
step
_Leave_ the tunnel |goto Townlong Steppes 20.30,15.80 < 15
kill Shan'ze Deathspeaker##62559 |q 31062/1 |goto Townlong Steppes 32.30,9.50
|tip Make sure you destroy his Spirit Gems, if you let them pile up they can overwhelm you.
|only if haveq(31062)
step
talk Moshu the Arcane##62810
turnin Through the Portal##31110 |goto Townlong Steppes 28.80,22.40
|only if haveq(31110)
step
talk Ban Bearheart##62304
turnin When The Dead Speak##31062 |goto Townlong Steppes 49.00,70.40
turnin Riding the Storm##31061 |goto Townlong Steppes 49.00,70.40
turnin In Sprite Of Everything##31049 |goto Townlong Steppes 49.00,70.40
|next "end"
step
label "ling"
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes 49.00,71.30
|only if not completedq(31220)
|only if rep('Shado-Pan')>=Honored
step
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes 49.00,71.30
|only if rep('Shado-Pan')>=Revered
step
talk Tenwu of the Red Smoke##63616
Ask him to meet you in the Challenger's Ring |q 31221/1 |goto Townlong Steppes 48.90,71.20
|only if haveq(31221)
step
talk Tenwu of the Red Smoke##64471
Let's see if you can back that talk up
Defeat Temwu of the Red Smoke |q 31221/2 |goto Townlong Steppes 50.60,68.50
|only if haveq(31221)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes 49.00,71.30
|only if haveq(31221)
step
talk Hawkmaster Nurong##63618
Ask him to meet you in the Challenger's Ring |q 31220/1 |goto Townlong Steppes 49.00,70.90
|only if haveq(31220)
step
talk Hawkmaster Nurong##64470
Let's go!
Defeat Hawkmaster Nurong |q 31220/2 |goto Townlong Steppes 50.70,68.20
|only if haveq(31220)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes 49.00,71.30
|only if haveq(31220)
step
talk Ling of the Six Pools##63614
accept Sra'vess Wetwork##31196 |goto Townlong Steppes 49.00,71.30 |or 4
accept The Bigger They Come...##31197 |goto Townlong Steppes 49.00,71.30 |or 4
accept A Morale Victory##31198 |goto Townlong Steppes 49.00,71.30 |or 4
accept Destroy the Siege Weapons!##31199 |goto Townlong Steppes 49.00,71.30 |or 4
accept Fumigation##31200 |goto Townlong Steppes 49.00,71.30 |or 4
accept Friends, Not Food!##31201 |goto Townlong Steppes 49.00,71.30 |or 4
step
Talk to Hawkmaster Nurong or Taoshi and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Hawkmaster Nurong##63618 |goto Townlong Steppes 48.70,71.20
talk Taoshi##63617 |goto Townlong Steppes 48.70,71.00
confirm
|only if not completedq(31221)
step
Talk to Hawkmaster Nurong, Taoshi, or Tenwu of the Red Smoke and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Hawkmaster Nurong##63618 |goto Townlong Steppes 48.70,71.20
talk Taoshi##63617 |goto Townlong Steppes 48.70,71.00
talk Tenwu of the Red Smoke##63616 |goto Townlong Steppes 48.90,71.20
confirm
|only if completedq(31221)
step
talk Ku-Mo##65341
accept Seeking Father##30933 |goto Townlong Steppes 48.70,71.10
If this quest is unavailable, click here. |confirm
|only if not completedq(30933)
stickystart "lessergreatermantid"
step
click Sra'thik Siege Weapon##213311
Small Southern Siege Weapon destroyed |q 31199/2 |goto Townlong Steppes 27.50,54.60
|only if haveq(31199)
step
click Sra'thik Siege Weapon##213311
Large Southern Siege Weapon destroyed |q 31199/1 |goto Townlong Steppes 25.80,53.80
|only if haveq(31199)
step
click Sra'thik Idol##213309
Southern Idol destroyed |q 31198/1 |goto Townlong Steppes 23.50,55.50
|only if haveq(31198)
step
click Sra'thik Idol##213309
Central Idol destroyed |q 31198/3 |goto Townlong Steppes 21.50,49.20
|only if haveq(31198)
step
click Sra'thik Siege Weapon##213311
Large Northern Siege Weapon destroyed |q 31199/3 |goto Townlong Steppes 27.20,41.20
|only if haveq(31199)
step
click Sra'thik Siege Weapon##213311
Small Northern Siege Weapon destroyed |q 31199/4 |goto Townlong Steppes 26.20,39.80
|only if haveq(31199)
step
click Sra'thik Idol##213309
Eastern Idol destroyed |q 31198/4 |goto Townlong Steppes 27.80,41.90
|only if haveq(31198)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Egg Chamber bombed |q 31200/3 |goto Townlong Steppes 23.60,44.70
|only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Torture Cell bombed |q 31200/4 |goto Townlong Steppes 22.00,41.60
|only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Slaughtering Pit bombed |q 31200/5 |goto Townlong Steppes 21.20,43.20
|only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Amber Vault bombed |q 31200/1 |goto Townlong Steppes 21.00,45.90
|only if haveq(31200)
step
click Sra'thik Idol##213309
Western Idol destroyed |q 31198/2 |goto Townlong Steppes 16.20,45.80
|only if haveq(31198)
step
talk Shado-Pan Trainee##64459
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/3 |goto Townlong Steppes 17.60,58.00
|only if haveq(31201)
step
talk Shado-Pan Trainee##64460
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/2 |goto Townlong Steppes 17.40,57.00
|only if haveq(31201)
step
talk Sentinel Ku-Yao##61694
Tell him his son has been looking for him
Search for Sentinel Ku-Yao. |q 30933/1 |goto Townlong Steppes 17.40,57.00
|only if haveq(30933)
step
talk Shado-Pan Trainee##64461
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/1 |goto Townlong Steppes 18.00,53.50
|only if haveq(31201)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Nutriment Cell bombed |q 31200/2 |goto Townlong Steppes 23.90,47.30
|only if haveq(31200)
step
label "lessergreatermantid"
kill Sra'thik Mutilator##63678+, Sra'thik Cacophyte##63680+, Sra'thik Drone##63677+, Sra'thik Regenerator##63681+, Sra'thik Swiftwing##63683+ |only if haveq(31196)
Kill 15 Lesser Sra'thik mantid. |q 31196/1 |only if haveq(31196)
kill Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+ |only if haveq(31197)
Kill 4 Greater Sra'thik mantid. |q 31197/1 |only if haveq(31197)
step
Next to you is either Hawkmaster Nurong or Taoshi
talk Taoshi##63617
talk Hawkmaster Nurong##63618
turnin Sra'vess Wetwork##31196
turnin The Bigger They Come...##31197
turnin A Morale Victory##31198
turnin Destroy the Siege Weapons!##31199
turnin Fumigation##31200
turnin Friends, Not Food!##31201
|only if not completedq(31221)
step
Next to you is either Hawkmaster Nurong, Taoshi, or Tenwu.
Talk to Taoshi
Talk to Hawkmaster Nurong
Talk to Tenwu of the Red Smoke
turnin Sra'vess Wetwork##31196
turnin The Bigger They Come...##31197
turnin A Morale Victory##31198
turnin Destroy the Siege Weapons!##31199
turnin Fumigation##31200
turnin Friends, Not Food!##31201
|only if completedq(31221)
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Target of Opportunity: Sra'thik Hivelord##31204 |or
accept Target of Opportunity: Sra'thik Swarmlord##31203 |or
step
kill Sra'thik Swarmlord##63693 |q 31203/1 |goto Townlong Steppes 16.40,40.90
|only if haveq(31203)
step
_Enter_ the building |goto Townlong Steppes 27.10,44.10 < 15
kill Sra'thik Hivelord##63694 |q 31204/1 |goto Townlong Steppes 24.30,44.00
|only if haveq(31204)
step
_Leave_ the building |goto Townlong Steppes 27.10,44.10 < 15
talk Ku-Mo##65341
turnin Seeking Father##30933 |goto Townlong Steppes 48.70,71.10
|only if haveq(30933)
step
talk Ling of the Six Pools##63614
turnin Target of Opportunity: Sra'thik Hivelord##31204 |goto Townlong Steppes 49.00,71.40 |or
turnin Target of Opportunity: Sra'thik Swarmlord##31203 |goto Townlong Steppes 49.00,71.40 |or
|next "end"
step
label "end"
talk Rushi the Fox##64595 |goto Townlong Steppes 48.80,70.60
buy 1 Grand Commendation of the Shado-Pan##93220 |n
Use the Commendation of the Shado-Pan you just purchased |complete QC:GetReputation("Shado-Pan").hasBonus |use Grand Commendation of the Shado-Pan##93220
|only if rep("Shado-Pan")>=Revered
step
talk Master Snowdrift##63009
accept Mogu Incursions##31266 |goto Townlong Steppes 49.40,70.60
|only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto Townlong Steppes 48.80,58.60
|only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
talk Master Snowdrift##63009
turnin Mogu Incursions##31266 |goto Townlong Steppes 49.40,70.60
accept Surprise Attack!##31277 |goto Townlong Steppes 49.40,70.60
|only if rep('Shado-Pan')==Exalted and not completedq(31277)
step
talk Ban Bearheart##63908
Tell him "Let's go".
Join the battle of Niuzao Temple |q 31277/1 |goto Townlong Steppes 42.60,63.90
|only if haveq(31277)
step
Wait for the dialogue to end and fight off the invasion.
kill Shan'ze Brutalizer##63933+, Hei Feng##63920
|tip When he casts Deep Breath step behind him.
Defeat the Mogu Invasion |q 31277/2 |goto Townlong Steppes 41.30,60.00
|only if haveq(31277)
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto Townlong Steppes 49.20,71.00
|only if haveq(31277)
step
You have reached the end of this daily guide
Click here to return to the start of the dailies |next "shado_dailies" |confirm
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Tillers Dailies",{
startlevel=15,
completion={"quests"},
description="This guide will take you through The Tillers dailies Becoming Exalted with The Tillers allows you to purchase ground mounts and recipes for your character.",
},[[
step
#include "Tillers_Dailies"
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies",{
achieveid={7315,6546},
patch='50004',
startlevel=20,
description="This guide will take you through The Golden Lotus dailies Becoming Exalted with the Golden Lotus allows you to purchase a crowd control trinket and some armor. At Honored, you can purchase chest armor, rings, and shoulders. At Revered, you can purchase 3 ground mounts.",
},[[
step
Routing to proper section |next "prequests" |only if not completedq(31511)
Routing to proper section |next "dailies" |only if completedq(31511)
step
label "prequests"
talk Wanderer Chu##64521
accept Temple of the White Tiger##31393 |goto Kun-Lai Summit 72.00,94.20
step
talk Sunwalker Dezco##64542
turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit 68.70,43.00
accept A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
step
Talk to Xuen |q 31395/1
kill Spirit of Violence##64656
Pass the First Test |q 31395/2 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Anger##64684
Pass the Second Test |q 31395/3 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Hatred##64742
Pass the Third Test |q 31395/4 |goto Kun-Lai Summit 68.90,42.80
step
talk Sunwalker Dezco##64542
turnin A Celestial Experience##31395 |goto Kun-Lai Summit 68.70,43.00
accept A Witness to History##31511 |goto Kun-Lai Summit 68.70,43.00
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Kun-Lai Summit 56.00,91.40
step
talk Madam Vee Luo##62996
accept A Witness to History##31511 |goto Shrine of Two Moons/1 69.30,48.90
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Vale of Eternal Blossoms 56.10,91.60
step
talk Madam Vee Luo##62996
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 69.20,49.00
step
label "dailies"
talk Kun Autumnlight##58920
accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.40,71.60
accept Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.40,71.60
noquest
step
talk Anji Autumnlight##58919
accept The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.40,71.60
accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.40,71.60
noquest
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
accept The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.10,75.60
step
talk Yumi Goldenpaw##58743
accept Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.50,71.60
accept Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.50,71.60
noquest
step
talk Kelari Featherfoot##58704
accept Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.10,63.50
step
talk Kelari Featherfoot##58704
Tell him: _"Let's roll."_ |q 30261/1 |goto Vale of Eternal Blossoms/0 18.10,63.50
|only if haveq(30261)
step
Hold down your right mouse button to help you maneuver through the course.
|tip Grab as many speed boosts as you can to make it go quicker.
Complete the Serpent's Spine Roll Course. |q 30261/2
|only if haveq(30261)
step
talk Kelari Featherfoot##58704
turnin Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.10,63.50
|only if haveq(30261)
step
kill Shado-Pan Trainee##58992+
Defeat 20 Shado-Pan Trainees. |q 30306/1 |goto Vale of Eternal Blossoms 19.70,74.20
|only if haveq(30306)
step
Stay within the circle and avoid the posts with blades surrounding them and the running pandas.
Live through the Survival Ring for 90 seconds |q 30242/1 |goto Vale of Eternal Blossoms 19.20,67.50
|only if haveq(30242)
step
Stay within the circle and avoid getting hit by the fireworks.
Live through the Survival Ring for 90 seconds |q 30240/1 |goto Vale of Eternal Blossoms 19.20,67.50
|only if haveq(30240)
step
clicknpc Setting Sun Turret##64336 |goto Vale of Eternal Blossoms 5.40,72.30
Mount a turret |invehicle |c
|tip It's on the upper level of the tower here.
|only if haveq(30266)
step
kill 30 Krik'thik Swarmer##63973+ |q 30266/1
|only if haveq(30266)
step
Click the Leave Vehicle button |outvehicle
|only if haveq(30266)
step
clicknpc Hot Oil Cauldron##64369
Use the abilities on your hotbar to kill 80 Krik'thik Hivelings |q 30243/1 |goto Vale of Eternal Blossoms 3.90,51.70
|tip Use the Ignitable Oil Bucket first, followed by the Shado-Pan Torch.
step
Traverse the following rooms by only stepping on the _green_ or _red_ tiles, other tiles will harm you. The safe tile changes every day but will be one of the two. |goto Vale of Eternal Blossoms 22.40,26.90
confirm
|only if haveq(30280) or haveq(30277)
step
kill Milau##64965 |q 30280/1 |goto Vale of Eternal Blossoms/1 53.90,68.30
|tip Milau has several deadly abilities. He will cast a Lightning Breath in any direction, do not be in front of him when he does this. He also starts casting Lightning Pools, constantly move until he is done. Periodically he will pull you to the middle of the room and cast Lightning Sweep. While he is casting get as much distance on him as you can.
|only if haveq(30280)
step
click Deactivate Final Spirit Wall##214477
Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/1 42.10,27.20
|only if haveq(30277)
step
click Ancient Guo-Lai Artifact##214394
collect Ancient Guo-Lai Artifact##87790 |q 30277/2 |goto Vale of Eternal Blossoms/1 49.40,30.60
|only if haveq(30277)
step
talk Yumi Goldenpaw##58743
turnin Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.50,71.50
turnin Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.50,71.50
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
turnin The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.10,75.60
step
talk Anji Autumnlight##58919
turnin The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.40,71.60
turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.40,71.60
step
talk Kun Autumnlight##58920
turnin Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.40,71.60
turnin Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.40,71.60
step
label "end"
You have reached the end of the guide for today
Click here to go back to the beginning of the dailies |confirm |next "dailies"
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\The Klaxxi Dailies",{
startlevel=30,
description="This guide will take you through The Klaxxi dailies Becoming Exalted with The Klaxxi allows you to purchase ground mounts, plans for blacksmithing, armor, and weapons for your character.",
},[[
step
This guide requires that you have completed all of the quests in the Dread Wastes
The following questlines are required to access all of the possible dailies for the Klaxxi
A Cry From Darkness |achieve 6540/1
Falling to Pieces |achieve 6540/2
Blood of Ancients |achieve 6540/3
Mazu's Bounty |achieve 6540/4
Please refer to QuestCore's Leveling and Loremaster guides for assistance in completing these questlines
Click here to go to QuestCore's Leveling and Loremaster guides for assistance in completing these questlines |confirm |next "Leveling Guides\\Pandaria (10-70)\\Dread Wastes (30-70)"
confirm
step
label "klaxxi start"
talk Kil'ruk the Wind-Reaver##62538
accept Dreadspinner Extermination##31231 |goto Dread Wastes 55.00,35.90 |or 2
accept Nope Nope Nope##31235 |goto Dread Wastes 55.00,35.90 |or 2
accept Culling the Swarm##31109 |goto Dread Wastes 55.00,35.90 |or 2
accept Mistblade Destruction##31267 |goto Dread Wastes 55.00,35.90 |or 2
accept Eradicating the Zan'thik##31111 |goto Dread Wastes 55.00,35.90 |or 2
accept Vess-Guard Duty##31505 |goto Dread Wastes 55.00,35.90 |or 2
noquest
step
talk Korven the Prime##62180
accept An Ancient Empire##31232 |goto Dread Wastes 54.30,36.10 |or 2
accept Sap Tapping##31233 |goto Dread Wastes 54.30,36.10 |or 2
accept Sampling the Empire's Finest##31496 |goto Dread Wastes 54.30,36.10 |or 2
accept The Fight Against Fear##31270 |goto Dread Wastes 54.30,36.10 |or 2
accept The Scale-Lord##31269 |goto Dread Wastes 54.30,36.10 |or 2
accept Meltdown##31507 |goto Dread Wastes 54.30,36.10 |or 2
noquest
step
talk Rik'kal the Dissector##65253
accept Bad Genes##31271 |goto Dread Wastes 54.30,35.90 |or 2
accept Wing Clip##31502 |goto Dread Wastes 54.30,35.90 |or 2
accept Shortcut to Ruin##31503 |goto Dread Wastes 54.30,35.90 |or 2
accept Putting An Eye Out##31234 |goto Dread Wastes 54.30,35.90 |or 2
accept Specimen Request##31508 |goto Dread Wastes 54.30,35.90 |or 2
accept Fear Takes Root##31509 |goto Dread Wastes 54.30,35.90 |or 2
noquest
|only if completedq(31606)
step
talk Kaz'tik the Manipulator##63758
accept Brain Food##31238 |goto Dread Wastes 54.30,35.80 |or 2
accept Sonic Disruption##31487 |goto Dread Wastes 54.30,35.80 |or 2
accept Free From Her Clutches##31494 |goto Dread Wastes 54.30,35.80 |or 2
accept A Little Brain Work##31268 |goto Dread Wastes 54.30,35.80 |or 2
accept Kunchong Treats##31024 |goto Dread Wastes 54.30,35.80  |or 2
accept Rampage Against the Machine##31808 |goto Dread Wastes 54.30,35.80 |or 2
accept Shackles of Manipulation##31506 |goto Dread Wastes 54.30,35.80 |or 2
noquest
step
talk Xaril the Poisoned Mind##62151
accept Dark Skies##31216 |goto Dread Wastes 54.90,36.20
noquest
|only if completedq(31211)
step
talk Hisek the Swarmkeeper##63785
accept Debugging the Terrace##31237 |goto Dread Wastes 54.80,36.20 |or
accept Quiet Now##31510 |goto Dread Wastes 54.80,36.20 |or
accept Infection##31272 |goto Dread Wastes 54.80,36.20 |or
accept Ordnance Disposal##31504 |goto Dread Wastes 54.80,36.20 |or
noquest
|only if completedq(31439)
step
talk Malik the Unscathed##62774
accept The Empress' Gambit##31959 |goto Dread Wastes 55.00,35.40
|only if rep("The Klaxxi")>=Exalted
step
talk Kil'ruk the Wind-Reaver##62538
Select _"<Please Fly me to the Terrace of Gurthan.>"_ |invehicle |goto Dread Wastes 55.10,35.90
|only if haveq(31237) or haveq(31231)
step
Kill creatures until you get the buff:
Pheremone Tracking |havebuff Tracking##375338
Locate and kill Eye's of the Empress
|tip Start looking for red mist on the groud first.
kill 6 Eye of the Empress##63783+ |q 31237/1 |goto Dread Wastes 67.90,24.30
|only if haveq(31237)
step
In order to do the 'hidden' quest for this area, you must have at least one other person to help you
confirm |future |q 31677
|only if haveq(31237) or haveq(31231)
step
Around this location you should be able to see a _green rune_ and a _red rune_
One person will need to _/lay_ on the _green rune_, while the other must _/kneel_ at the _red rune_
This will cause an Elite to spawn
This daily is active for everyone in the area, so you should find some help easily
kill Warlord Gurthan##65502
collect Ashes of Warlord Gurthan##88715 |future |q 31677 |goto Dread Wastes 66.20,31.80
|only if haveq(31237)
step
Click the _Ashes of Warlord Gurthan_ in your bags |use Ashes of Warlord Gurthan##88715
accept The Warlord's Ashes##31677
|only if haveq(31237) or haveq(31677)
step
talk Xaril the Poisoned Mind##62151
Select _"I am ready to fly, Xaril."_ |q 31216/1 |goto Dread Wastes 54.90,36.20
Ride Xaril the Poisoned Mind |invehicle |only if haveq(31216)
|only if haveq(31216)
step
Use the _Venom Bomb_ to kill the small enemies
Use the _Paralyzing Syrum_ then immidiately the _Venom Bomb_ to kill the larger enemies
kill 200 Mantid |q 31216/2
kill 3 Kunchong |q 31216/3
|only if haveq(31216)
step
Click the Return to Klaxxi'vess button on your action bar |outvehicle
|only if haveq(31216)
step
talk Kil'ruk the Wind-Reaver##62538
Ask him to fly you to the Clutches of Shek'zeer |invehicle |goto Dread Wastes 55.00,35.90
|only if haveq(31109)
step
Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto Dread Wastes 38.30,30.30
|tip It's a good idea to land on Karanosh <Kunchong Matriarch>, she drops a daily quest item.
|only if haveq(31109)
step
Enter this building |goto Dread Wastes 37.00,28.10 < 10
click Central Feeder##215762
Sample the Central Feeder |q 31496/1 |goto Dread Wastes 37.40,29.30
|only if haveq(31496)
step
Enter this building. |goto Dread Wastes 39.30,29.30 < 10
click Northeast Feeder##215700
Sample the Northeast Feeder |q 31496/4 |goto Dread Wastes 39.10,30.50
|only if haveq(31496)
step
kill Vess-Guard Na'kal##64890 |q 31503/1 |goto Dread Wastes 39.30,30.90
|only if haveq(31503)
step
Enter this building |goto Dread Wastes 38.30,32.00 < 10 |walk
click East Feeder##215761
Sample the East Feeder |q 31496/2 |goto Dread Wastes 37.90,33.10
|only if haveq(31496)
step
Enter this building |goto Dread Wastes 36.30,32.30 < 10 |walk
click North Feeder##215703
Sample the North Feeder |q 31496/3 |goto Dread Wastes 37.00,32.80
|only if haveq(31496)
step
kill Shek'zeer Needler##64714+
collect 24 Needler Wings##87401 |q 31502/1 |goto Dread Wastes 35.20,31.30
|only if haveq(31502)
step
kill Greatback Mushan##62029
collect 6 Mushan Tongue##85665 |q 31238/1 |goto Dread Wastes 66.00,19.30
You can find more Mushan around here |goto Dread Wastes 56.90,23.40
|only if haveq(31238)
step
Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807 |only if haveq(31235)
Destroy 20 Dreadspinner Eggs |q 31235/1 |only if haveq(31235) |goto Dread Wastes 73.20,22.50
kill 8 Dreadspinner Tender##61981+ |q 31231/1 |only if haveq(31231) |goto Dread Wastes 73.20,22.50
|only if haveq(31235) or haveq(31231)
step
click Gurthani Tablet##213314
collect 8 Gurthani Tablet##85634 |q 31232/1 |goto Dread Wastes 68.10,30.00
|only if haveq(31232)
step
kill Mire Beast##63731+
collect 1 Pristine Mire Beast Eye## |q 31234/1 |goto Dread Wastes 67.70,37.10
|only if haveq(31234)
step
clicknpc Amber Tap##63740
|tip These are located on trees. Look for Sapfly packs to find these easier.
click Amber Pot##213319
collect 6 Amber Sap##85664 |q 31233/1 |goto Dread Wastes 66.60,43.80
|only if haveq(31233)
step
click Pheromone Mine##214964
Disable 8 Pheromone Mines |q 31504/1 |goto Dread Wastes 42.00,33.70
You can find more mines here |goto Dread Wastes 48.10,31.40
|only if haveq(31504)
step
Use the Sonic Disruption Fork on Dread Kunchong. |use Sonic Disruption Fork##87394 |only if haveq(31487)
kill 4 Dread Kunchong##64717 |q 31487/1 |only if haveq(31487) |goto Dread Wastes 44.90,35.60
kill 6 Shek'zeer Manipulator##64720 |q 31487/2 |only if haveq(31487) |goto Dread Wastes 44.90,35.60
click Kunchong Cage##214292 |only if haveq(31494) |goto Dread Wastes 44.90,35.60
Free 8 Kunchong Hatchlings |q 31494/1 |only if haveq(31494) |goto Dread Wastes 44.90,35.60
|only if haveq(31487) or haveq(31494)
step
kill Shek'zeer Swarmborn##62582+, Shek'zeer Needler##64714+, Shek'zeer Bladesworn##62563+, Shek'zeer Clutch-Keeper##64559+
Kill 40 Shek'zeer Mantid |q 31109/1 |goto Dread Wastes 44.40,43.00
|tip It's by far fastest to kill the tiny Shek'zeer Swarmborn by the dozen.
|only if haveq(31109)
step
kill Karanosh##64724 |tip She wanders around this area, so you may have to search for her.
collect Enormous Kunchong Mandibles##87878
Click the Enormous Kunchong Mandibles in your bags |use Enormous Kunchong Mandibles##87878
accept The Matriarch's Maw##31599 |goto Dread Wastes 41.40,33.20
|only if haveq(31109)
step
kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |goto Dread Wastes 58.60,51.10 |only if haveq(31270)
kill Chillwater Turtle##62160+ |only if haveq(31024)
collect 4 Meaty Turtle Haunch##82869 |q 31024/1 |goto Dread Wastes 58.60,51.10 |only if haveq(31024)
|only if haveq(31270) or haveq(31024)
stickystart "amberencrusted"
stickystart "infectedwildlife"
step
kill 3 Ik'thik Genemancer##63257+ |q 31271/1 |goto Dread Wastes 62.00,65.80
kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2 |goto Dread Wastes 62.00,65.80
|only if haveq(31271)
step
label "amberencrusted"
Use the Sonic Emitter in your bags on Ik'thik Amberstingers |use Sonic Emitter##85884
kill Ik'thik Amberstinger##63728+
collect 3 Amber-Encrusted Brain##85885 |q 31268/1 |goto Dread Wastes 61.40,70.30
|only if haveq(31268)
step
label "infectedwildlife"
kill Bluehide Mushan##63729+, Needleback Porcupine##65118+, Bonedust Moth##63725+
|tip Make sure that they have the Infected buff before you attack them. Only wildlife with that buff will count for this quest.
kill 6 Infected wildlife |q 31272/1 |goto Dread Wastes 60.70,67.70
|only if haveq(31272)
step
Enter the tunnel here |goto Dread Wastes 66.80,63.80 < 10 |walk
kill Mistblade Scale-Lord##63179 |q 31269/1 |goto Dread Wastes 66.50,66.00
|only if haveq(31269)
step
Leave the tunnel |goto Dread Wastes 66.80,63.80 < 10 |only if haveq(31269) |walk
kill 6 Mistblade Ripper##61970+ |q 31267/1 |goto Dread Wastes 67.20,59.30
|only if haveq(31267)
step
talk Kil'ruk the Wind-Reaver##62538
Ask him to fly you to Zan'vess |invehicle |goto Dread Wastes 55.10,35.90
|only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
step
Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto Dread Wastes 31,70
|only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
step
As you complete quests in this area:
clicknpc Dreadspore Bulbs##69093
Destroy 15 Dreadspore Bulbs |q 31509/1 |n
confirm
|only if haveq(31509)
step
kill Kypari Crawler##65231+ |only if haveq(31508)
collect 6 Kyparite Shards##87874 |q 31508/1 |goto Dread Wastes 31.50,69.60 |only if haveq(31508)
kill Thought-Bound Miner##64970+ |only if haveq(31506)
collect 6 Zan'thik Shackles##87813 |q 31506/1 |goto Dread Wastes 31.50,69.60 |only if haveq(31506)
kill 6 Zan'thik Impaler##64971+ |q 31111/1 |goto Dread Wastes 31.50,69.60 |only if haveq(31111)
kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |goto Dread Wastes 31.50,69.60 |only if haveq(31111)
|only if haveq(31506) or haveq(31111) or haveq(31508)
step
kill Kypa'rak##65229
collect 1 Massive Kyparite Core##87871 |n
Click the Massive Kyparite Core in your bags |use Massive Kyparite Core##87871
accept Kypa'rak's Core##31598 |goto Dread Wastes 33.40,61.00
|only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
step
kill Vess-Guard Vik'az##64979+ |q 31505/1 |goto Dread Wastes 29.10,74.70
|only if haveq(31505)
step
kill 6 Zan'thik Amberhusk##64982+ |q 31507/1 |goto Dread Wastes 23.00,77.30
|only if haveq(31507)
step
All around this area
clicknpc Dreadspore Bulbs##69093
Destroy 15 Dreadspore Bulbs |q 31509/1
|only if haveq(31509)
step
click Zan'thik Resonating Crystal##214455
kill Adjunct Sek'ot##64995 |q 31510/1 |goto Dread Wastes 24.20,86.20
|only if haveq(31510)
step
clicknpc Kovok##63765
Locate Kovok |q 31808/1 |goto Dread Wastes 50.80,41.30
|only if haveq(31808)
step
Use the abilities on your hotbar to complete your task.
kill Ik'thik Slayer, Ik'thik Kunchong, Ik'thik Warrior
Kill 200 Mantid |q 31808/2
|only if haveq(31808)
step
talk Kil'ruk the Wind-Reaver##62538
turnin Dreadspinner Extermination##31231 |goto Dread Wastes 55.00,35.90
turnin Nope Nope Nope##31235 |goto Dread Wastes 55.00,35.90
turnin Culling the Swarm##31109 |goto Dread Wastes 55.00,35.90
turnin Mistblade Destruction##31267 |goto Dread Wastes 55.00,35.90
turnin Eradicating the Zan'thik##31111 |goto Dread Wastes 55.00,35.90
turnin Vess-Guard Duty##31505 |goto Dread Wastes 55.00,35.90
turnin The Warlord's Ashes##31677 |goto Dread Wastes 55.00,35.90
step
talk Xaril the Poisoned Mind##62151
turnin Dark Skies##31216 |goto Dread Wastes 54.90,36.20
step
talk Hisek the Swarmkeeper##63785
turnin Debugging the Terrace##31237 |goto Dread Wastes 54.80,36.20
turnin Quiet Now##31510 |goto Dread Wastes 54.80,36.20
turnin Infection##31272 |goto Dread Wastes 54.80,36.20
turnin Ordnance Disposal##31504 |goto Dread Wastes 54.80,36.20
step
talk Korven the Prime##62180
turnin An Ancient Empire##31232 |goto Dread Wastes 54.30,36.10
turnin Sap Tapping##31233 |goto Dread Wastes 54.30,36.10
turnin Sampling the Empire's Finest##31496 |goto Dread Wastes 54.30,36.10
turnin The Fight Against Fear##31270 |goto Dread Wastes 54.30,36.10
turnin The Scale-Lord##31269 |goto Dread Wastes 54.30,36.10
turnin Meltdown##31507 |goto Dread Wastes 54.30,36.10
step
talk Ambersmith Zikk##64599
turnin Kypa'rak's Core##31598 |goto Dread Wastes 55.00,35.40
turnin The Matriarch's Maw##31599 |goto Dread Wastes 55.00,35.40
|only if haveq(31598) or haveq(31599)
step
talk Rik'kal the Dissector##65253
turnin Bad Genes##31271 |goto Dread Wastes 54.30,35.90
turnin Wing Clip##31502 |goto Dread Wastes 54.30,35.90
turnin Shortcut to Ruin##31503 |goto Dread Wastes 54.30,35.90
turnin Putting An Eye Out##31234 |goto Dread Wastes 54.30,35.90
turnin Specimen Request##31508 |goto Dread Wastes 54.30,35.90
turnin Fear Takes Root##31509 |goto Dread Wastes 54.30,35.90
step
talk Kaz'tik the Manipulator##63758
turnin Brain Food##31238 |goto Dread Wastes 54.30,35.80
turnin Sonic Disruption##31487 |goto Dread Wastes 54.30,35.80
turnin Free From Her Clutches##31494 |goto Dread Wastes 54.30,35.80
turnin A Little Brain Work##31268 |goto Dread Wastes 54.30,35.80
turnin Kunchong Treats##31024 |goto Dread Wastes 54.30,35.80
turnin Rampage Against the Machine##31808 |goto Dread Wastes 54.30,35.80
turnin Shackles of Manipulation##31506 |goto Dread Wastes 54.30,35.80
|next |only if rep("The Klaxxi")>=Revered and not completedq(31465)
|next "exalted" |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next "end" |only if default
step
talk Ambersmith Zikk##64599
buy 1 Grand Commendation of the Klaxxi##92522 |n
Use the Commendation of the Klaxxi you just purchased. |complete QC:GetReputation("The Klaxxi").hasBonus |use Grand Commendation of the Klaxxi##92522 |goto Dread Wastes 55.00,35.60
|only if rep("The Klaxxi")>=Revered
step
talk Kil'ruk the Wind-Reaver##62538
accept Beneath The Heart Of Fear##31018 |goto Dread Wastes 55.10,35.90
step
Enter this tunnel |goto Dread Wastes 29.00,42.40 < 10 |walk
kill Adjunct Ek'vem##62073+ |q 31018/1 |goto Dread Wastes 30.70,40.30
step
kill Adjunct Ikkess##62074+ |q 31018/2 |goto Dread Wastes 33.40,40.20
step
kill Adjunct Suruz##62075+ |q 31018/3 |goto Dread Wastes 33.40,44.30
step
kill Adjunct Tzikzi##62076+ |q 31018/4 |goto Dread Wastes 30.70,44.40
step
click Ancient Amber Chunk##212980
Wake Xaril the Poisoned Mind |q 31018/5 |goto Dread Wastes 31.90,42.50
step
_Exit_ the tunnel here |goto Dread Wastes 29.00,42.40 < 10 |walk
talk Xaril the Poisoned Mind##62151
turnin Beneath The Heart Of Fear##31018 |goto Dread Wastes 28.60,42.10
accept Venomous Intent##31208 |goto Dread Wastes 28.60,42.10
accept Dark Wings, Dark Things##31209 |goto Dread Wastes 28.60,42.10
accept A Shade of Dread##31210 |goto Dread Wastes 28.60,42.10
step
kill Ruby Venomtail##63588+, Dread Scarab##63587+
collect 150 Scarab Wing##85572 |q 31209/1 |goto Dread Wastes 24.70,41.80
collect 8 Venomous Stinger##85571 |q 31208/1 |goto Dread Wastes 24.70,41.80
click Dreadshade##213267
collect 8 Dreadshade##85573 |q 31210/1 |goto Dread Wastes 24.70,41.80
You can find more here |goto Dread Wastes 26.40,36.40
As well as here |goto Dread Wastes 26.20,30.80
step
talk Xaril the Poisoned Mind##62151
turnin Venomous Intent##31208 |goto Dread Wastes 28.60,42.10
turnin Dark Wings, Dark Things##31209 |goto Dread Wastes 28.60,42.10
turnin A Shade of Dread##31210 |goto Dread Wastes 28.60,42.10
step
talk Xaril the Poisoned Mind##62151
accept The Poisoned Mind##31211 |goto Dread Wastes 28.60,42.10
step
talk Xaril the Poisoned Mind##62151
Select _"I am ready to fly, Xaril."_ |invehicle |q 31211 |goto Dread Wastes 28.60,42.10
step
Use the _Venom Syrum_ to kill the small enemies
Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies
Speak to Xaril the Poisoned Mind |q 31211/1
kill 200 Mantid |q 31211/2
kill 3 Kunchong |q 31211/3
kill Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+,
step
talk Xaril the Poisoned Mind##62151
turnin The Poisoned Mind##31211 |goto Dread Wastes 54.90,36.20
step
talk Kor'ik##64815
accept Dropping Our Signal##31439 |goto Dread Wastes 54.80,34.10
step
Use your Tuning Fork on the Amber Rock |use Klaxxi Tuning Fork##87202
Awaken Hisek the Swarmkeeper |q 31439/1 |goto Dread Wastes 56.30,58.20
step
talk Hisek the Swarmkeeper##64672
turnin Dropping Our Signal##31439 |goto Dread Wastes 56.30,58.20
accept Corruption Runs Deep##31441 |goto Dread Wastes 56.30,58.20
step
kill Kor'ik##64583+ |q 31441/1 |goto Dread Wastes 56.20,57.60
step
talk Hisek the Swarmkeeper##64705
turnin Corruption Runs Deep##31441 |goto Dread Wastes 56.30,57.60
accept Damage Control##31458 |goto Dread Wastes 56.30,57.60
accept Extracting Answers##31465 |goto Dread Wastes 56.30,57.60
stickystart "venomcoatdmandible"
step
click Kypari Ik Beacon##214281
Deactivate Kypari Ik Resonating Crystal |q 31458/2 |goto Dread Wastes 55.60,47.10
step
label "venomcoatdmandible"
kill 5 Ik'thik Whisperer##64622+ |q 31458/1 |goto Dread Wastes 50.50,45.80
kill Ik'thik Swarmborn##64831+
collect 6 Venom-Coated Mandible##87263 |q 31465/1 |goto Dread Wastes 50.50,45.80
step
talk Hisek the Swarmkeeper##63785
turnin Damage Control##31458 |goto Dread Wastes 54.80,36.20
turnin Extracting Answers##31465 |goto Dread Wastes 54.80,36.20
|next |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next "end" |only if default
step
label "exalted"
talk Malik the Unscathed##66776
Report to Malik the Unscathed |q 31959/1 |goto Dread Wastes 40.40,34.40
step
Click the Auto complete quest box that appears below your minimap:
turnin The Empress' Gambit##31959
accept The Wrath of Shek'zeer##31609
step
While you are completing this quest, you will need to assist your Mantid Swarm in defeating 25 Mantid Subjugates.
confirm
stickystart "mantidsubs"
step
kill Akkolon##66783 |q 31609/1 |goto Dread Wastes 44.60,35.20
|tip You will have Paragons waiting in thie area to help you. If Akkolon is not in this location, you will have to wait to allow him to respawn.
step
kill Shox'tik##66784 |q 31609/2 |goto Dread Wastes 41.60,39.80
|tip You will have Paragons waiting in thie area to help you. If Shox'tik is not in this location, you will have to wait to allow him to respawn.
step
kill Manifestation of Terror##66785 |q 31609/3 |goto Dread Wastes 43.80,29.60
|tip You will have Paragons waiting in thie area to help you. If the Manifestation of Terror is not in this location, you will have to wait to allow it to respawn.
step
label "mantidsubs"
kill 25 Mantid Subjugates |q 31609/4 |goto Dread Wastes 43.40,33.00
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Wrath of Shek'zeer##31609 |goto Dread Wastes 55.00,35.90
accept Shadow of the Empire##31612 |goto Dread Wastes 55.00,35.90
step
Follow Kil'ruk the Wind-Rever into the chamber
Walk with Kil'ruk |q 31612/1
step
Next to you:
talk Kil'ruk the Wind-Reaver##66800
turnin Shadow of the Empire##31612
|next "end"
step
label "end"
This is the end of this guide.
Click here to return to the beginning of the dailies |confirm |next "klaxxi start"
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Pandaria Cooking Dailies",{
completion={"quests"},
startlevel=15,
description="This guide will take you through the Cooking dailies",
},[[
step
label "start"
Proceeding to Cooking Dailies |complete completedq(30257) |next "cookday" |only if completedq(30257)
Moving to the Cooking prequests. |next |complete not completedq(30257) |only if not completedq(30257)
step
#include "Tillers_Quests"
step
label "cookday"
#include "MoP_Cooking_Dailies"
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Dominance Offensive Dailies",{
startlevel=15,
description="This guide will take you through The Dominance Offensive dailies Becoming Exalted with the Dominance Offensive allows you to purchase an epic flying mount, epic armor, and battle pets for your character.",
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.17
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.73,64.36
step
Watch the dialogue
talk Garrosh Hellscream##62092
|tip He will eventually reach the beach.
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.67,64.45
stickystart "Slay_Alliance_Troops"
step
talk Blood Guard Gro'tash##67927
|tip Kill any enemies he is attacking.
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.70,53.16
step
talk Grizzle Gearslip##67926
|tip Kill any enemies he is attacking.
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.73,57.76
step
label "Slay_Alliance_Troops"
kill Alliance Sentinel##67900, Alliance Footman##67901, Alliance Priest##67902
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.51,61.24
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250 |goto Krasarang Wilds/0 11.51,61.24
accept Domination Point##32108 |goto Krasarang Wilds/0 11.51,61.24
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.46,63.92
step
talk Kromthar##67785
fpath Domination Point |goto Krasarang Wilds/0 9.69,52.51
step
label "Begin_Daily_Quests"
talk Blood Guard Gro'tash##67880
accept The Ruins of Ogudei##32449 |goto Krasarang Wilds/0 10.08,53.87 |or |next "Ruins_of_Ogudei_Hub"
accept The Time is Now!##32450 |goto Krasarang Wilds/0 10.08,53.87 |or |next "Lion's_Landing_Hub"
accept Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds/0 10.08,53.87 |or
|tip Only one of these quests will be available if this NPC is offering quests today.
If No Quests Are Available, Click Here |confirm |or |next "Cave_Hub"
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
accept Tear It Up##32126 |goto Krasarang Wilds/0 10.37,53.86
step
talk Shokia##67618
accept Death on Two Legs##32123 |goto Krasarang Wilds/0 10.33,55.70
step
use the Bilgewater Molotov##92019
|tip Use it to kill Skyfire Gyrocopter X2 enemies around this area.
|tip They fly around in the air above this area.
|tip You can do this while mounted.
kill 6 Skyfire Gyrocopter X2##67359 |q 32235/1 |goto Krasarang Wilds/0 11.98,57.13
|only if haveq(32235) or completedq(32235)
stickystart "Slay_Alliance_Troops_2"
step
clicknpc Alliance Supply Drop##67969+
Destroy #8# Alliance Supply Drops |q 32126/1 |goto Krasarang Wilds/0 8.26,61.87
You can find more around:
[Krasarang Wilds/0 8.29,66.65]
[Krasarang Wilds/0 11.25,66.69]
|only if haveq(32126) or completedq(32126)
step
label "Slay_Alliance_Troops_2"
kill Shieldwall Marine##67354, Shieldwall Stormcaller##67425, Dwarven Mortar Team Engineer##67913
Sill #10# Alliance |q 32123/1 |goto Krasarang Wilds/0 8.03,61.31
|only if haveq(32123) or completedq(32123)
step
talk Shokia##67618
turnin Death on Two Legs##32123 |goto Krasarang Wilds/0 10.33,55.70
|only if haveq(32123) or completedq(32123)
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
turnin Tear It Up##32126 |goto Krasarang Wilds/0 10.37,53.86
|only if haveq(32126) or completedq(32126)
step
talk Blood Guard Gro'tash##67880
turnin Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds/0 10.08,53.87
accept Another One Bites the Dust##32128 |goto Krasarang Wilds/0 10.08,53.87
|only if haveq(32235) or completedq(32235)
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
accept All Dead, All Dead##32127 |goto Krasarang Wilds/0 10.37,53.86
|only if completedq(32126)
step
kill Captain Brent the Black##67626 |q 32127/1 |goto Krasarang Wilds/0 12.79,75.80
|tip On the second floor of the ship towards the back.
|only if haveq(32127) or completedq(32127)
step
click Powder Magazine##216231
|tip It's on the bottom floor of the ship next to fireworks and bombs.
Destroy the Defiant Ammunition |q 32128/2 |goto Krasarang Wilds/0 12.33,75.58
|only if haveq(32128) or completedq(32128)
step
kill Captain Mulkey##67627 |q 32127/2 |goto Krasarang Wilds/0 15.28,76.37
|tip On the second floor of the ship towards the back.
|only if haveq(32127) or completedq(32127)
step
click Powder Magazine##216231
|tip It's on the bottom floor of the ship next to fireworks and bombs.
Destroy the Valor's Edge Ammunition |q 32128/1 |goto Krasarang Wilds/0 15.10,76.62
|only if haveq(32128) or completedq(32128)
step
talk Blood Guard Gro'tash##67880
turnin Another One Bites the Dust##32128 |goto Krasarang Wilds/0 10.08,53.87
|only if haveq(32128) or completedq(32128)
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
turnin All Dead, All Dead##32127 |goto Krasarang Wilds/0 10.37,53.86
|next "End_of_Quests"
|only if haveq(32127) or completedq(32127)
step
label "Cave_Hub"
click Bounty Board##232398
accept Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds/0 12.74,56.72 |or
accept Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds/0 12.74,56.72 |or
|tip Only one of these quests will be available.
step
talk Rivett Clutchpop##67608
accept Storming the Beach##32221 |goto Krasarang Wilds/0 12.92,56.13 |or
accept Bilgewater Infiltrators##32214 |goto Krasarang Wilds/0 12.92,56.13 |or
|tip Only one of these quests will be available.
step
talk Duke##67562
accept Krasarang Steampot##32199 |goto Krasarang Wilds/0 13.77,55.78 |or
accept Mystery Meatloaf##32197 |goto Krasarang Wilds/0 13.77,55.78 |or
|tip Only one of these quests will be available.
step
talk Boss-Lady Trixel##67535
accept Work Order: Iron##32140 |goto Krasarang Wilds/0 13.79,55.85 |or
accept Work Order: Fuel##32136 |goto Krasarang Wilds/0 13.79,55.85 |or
accept Work Order: Lumber##32138 |goto Krasarang Wilds/0 13.79,55.85 |or
|tip Only one of these quests will be available.
stickystart "Kill_Shieldwall_Forces"
step
use the "New" and "Improved" Infared Heat Focals##92475
|tip It will cause Saboteurs to be visible and show on the mimimap.
kill 10 SI:7 Saboteur##67689 |q 32214/1 |goto Krasarang Wilds/0 9.65,61.07
|only if haveq(32214) or completedq(32214)
step
kill Chief Engineer Cogwrench##68012 |q 32222/1 |goto Krasarang Wilds/0 21.67,51.09
|only if haveq(32222) or completedq(32222)
step
kill Lieutenant Ethan Jacobson##68028 |q 32223/1 |goto Krasarang Wilds/0 19.07,70.99
|only if haveq(32223) or completedq(32223)
step
label "Kill_Shieldwall_Forces"
kill Shieldwall Marine##67354, Dwarven Mortar Team Engineer##67545, Shieldwall Stormcaller##67425
Kill #10# Shieldwall Forces |q 32221/1 |goto Krasarang Wilds/0 18.95,68.43
|only if haveq(32221) or completedq(32221)
step
talk Zino "The Shredder" Quickchop##67534
turnin Work Order: Lumber##32138 |goto Krasarang Wilds/0 20.48,58.06
accept Stacked!##32139 |goto Krasarang Wilds/0 20.48,58.06
|only if haveq(32138) or completedq(32138)
step
talk Daxil "The Gem" Oregrind##67537
turnin Work Order: Iron##32140 |goto Krasarang Wilds/0 22.57,62.37
accept Power Metal##32141 |goto Krasarang Wilds/0 22.57,62.37
|only if haveq(32140) or completedq(32140)
step
talk Grizzle Gearslip##67542
turnin Work Order: Fuel##32136 |goto Krasarang Wilds/0 25.54,60.47
accept Runnin' On Empty##32137 |goto Krasarang Wilds/0 25.54,60.47
|only if haveq(32136) or completedq(32136)
step
talk Bixy Buzzsaw##67553
accept Precious Resource##32237 |goto Krasarang Wilds/0 25.25,60.41
|only if completedq(32136)
step
talk Bixy Buzzsaw##67533
accept Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
|only if completedq(32138)
step
talk Bixy Buzzsaw##67553
accept Bug Off!##32236 |goto Krasarang Wilds/0 22.38,62.29
|only if completedq(32140)
stickystart "Collect_Domination_Point_Lumber"
step
use the Universal Remote##91902
|tip Use it on Shieldwall Mecha-Pounders to weaken them.
kill 9 Shieldwall Mecha-Pounder##68011 |q 32238/1 |goto Krasarang Wilds/0 19.98,61.21
|only if haveq(32238) or completedq(32238)
step
label "Collect_Domination_Point_Lumber"
click Domination Point Lumber##216177
collect 9 Domination Point Lumber##216177 |q 32139/1 |goto Krasarang Wilds/0 19.98,61.21
|only if haveq(32139) or completedq(32139)
stickystart "Collect_Polluted_Viseclaw_Meat"
stickystart "Collect_Chunk_of_Mystery_Meat"
step
click Fauly Valve+
|tip They look like round leaking valves on pipes around this area.
Tighten #8# Faulty Valves |q 32237/1 |goto Krasarang Wilds/0 23.62,56.34
|only if haveq(32237) or completedq(32237)
step
click "Distilled" Fuel Barrel+
|tip They look like partially submerged brown barrels in and around water around this area.
collect 9 "Distilled" Fuel Barrel##91846 |q 32137/1 |goto Krasarang Wilds/0 26.38,63.36
|only if haveq(32137) or completedq(32137)
step
label "Collect_Polluted_Viseclaw_Meat"
kill Polluted Viseclaw##67896, Polluted Viseclaw Scuttler##68584
collect 5 Polluted Viseclaw Meat##91869 |q 32199/1 |goto Krasarang Wilds/0 26.38,63.36
|only if haveq(32199) or completedq(32199)
step
label "Collect_Chunk_of_Mystery_Meat"
kill Mature Terrapin##67895, Polluted Viseclaw##67896, Polluted Viseclaw Scuttler##68584
collect 7 Chunk of Mystery Meat##91874 |q 32197/1 |goto Krasarang Wilds/0 26.38,63.36
|only if haveq(32197) or completedq(32197)
stickystart "Collect_Energized_Iron_Ore_Chunks"
stickystart "Kill_Shale_Shards"
step
Enter the cave |goto Krasarang Wilds/0 21.89,61.56 < 10 |walk
use the Hand-Dandy Bug Off Sprayer##93026
|tip Use it on Agitated Shale Spiders to spawn Shale Shards inside the cave.
Spray #5# Agitated Shale Spiders |q 32236/1 |goto Krasarang Wilds/0 19.86,62.43
|only if haveq(32236) or completedq(32236)
step
label "Kill_Shale_Shards"
kill 12 Shale Shards##68653 |q 32236/2 |goto Krasarang Wilds/0 19.86,62.43
|tip Inside the cave.
|only if haveq(32236) or completedq(32236)
step
label "Collect_Energized_Iron_Ore_Chunks"
click Energized Iron##216178+
|tip They look like large ore deposits inside the cave.
click Energized Iron Ore Chunk##216716+
|tip They spawn after clicking larger Energized Iron.
collect 7 Energized Iron Ore Chunk##91848 |q 32141/1 |goto Krasarang Wilds/0 19.86,62.43
|only if haveq(32141) or completedq(32141)
step
talk Bixy Buzzsaw##67533
turnin Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
|only if haveq(32238) or completedq(32238)
step
talk Zino "The Shredder" Quickchop##67534
turnin Stacked!##32139 |goto Krasarang Wilds/0 20.48,58.06
|only if haveq(32139) or completedq(32139)
step
talk Bixy Buzzsaw##67553
turnin Bug Off!##32236 |goto Krasarang Wilds 22.38,62.29
|only if haveq(32236) or completedq(32236)
step
talk Bixy Buzzsaw##67553
turnin Precious Resource##32237 |goto Krasarang Wilds/0 25.25,60.41
|only if haveq(32237) or completedq(32237)
step
talk Sezik Steampot##67536
turnin Krasarang Steampot##32199 |goto Krasarang Wilds/0 26.06,58.07 |only if haveq(32199) or completedq(32199)
turnin Mystery Meatloaf##32197 |goto Krasarang Wilds/0 26.06,58.07 |only if haveq(32197) or completedq(32197)
|only if haveq(32199,32197) or completedq(32199,32197)
step
talk Boss-Lady Trixel##67535
turnin Power Metal##32141 |goto Krasarang Wilds/0 13.79,55.85 |only if haveq(32141) or completedq(32141)
turnin Runnin' On Empty##32137 |goto Krasarang Wilds/0 13.79,55.85 |only if haveq(32137) or completedq(32137)
|only if haveq(32137,32141) or completedq(32137,32141)
step
talk Rivett Clutchpop##67608
turnin Storming the Beach##32221 |goto Krasarang Wilds/0 12.92,56.13 |only if haveq(32221) or completedq(32221)
turnin Bilgewater Infiltrators##32214 |goto Krasarang Wilds/0 12.92,56.13 |only if haveq(32214) or completedq(32214)
|only if haveq(32221,32214) or completedq(32221,32214)
step
talk Blood Guard Gro'tash##67880
turnin Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds/0 10.08,53.87 |only if haveq(32223) or completedq(32223)
turnin Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds/0 10.08,53.87 |only if haveq(32222) or completedq(32222)
|only if haveq(32223,32222) or completedq(32223,32222)
|next "End_of_Quests"
step
label "Lion's_Landing_Hub"
talk Shademaster Kiryn##67628
turnin The Time is Now!##32450 |goto Krasarang Wilds/0 75.83,34.47
accept Hero Killer##32135 |goto Krasarang Wilds/0 75.83,34.47
accept Worker Harassment##32132 |goto Krasarang Wilds/0 75.83,34.47
accept Sentry Wards##32133 |goto Krasarang Wilds/0 75.83,34.47
|only if haveq(32450) or completedq(32450)
step
talk Zazzix "Toasty" Sparkrocket##67402
accept Good Luck, Have Fun##32130 |goto Krasarang Wilds/0 75.86,34.16 |or 2
accept We Require More Minerals!##32131 |goto Krasarang Wilds/0 75.86,34.16 |or 2
accept Hard Counter##32134 |goto Krasarang Wilds/0 75.86,34.16 |or 2
|tip Only two of these quests will be available.
|only if completedq(32450)
stickystart "Kill_Shieldwall_Peasants"
stickystart "Kill_Dwarven_Mortar_Team_Engineers"
stickystart "Kill_Dwarven_Mortar_Tubes"
stickystart "Collect_Extra-Waxy_Alliance_Ears"
step
kill Thane Stonehearth##67636 |q 32135/1 |goto Krasarang Wilds/0 81.27,24.57
|tip He walks around this area.
|only if haveq(32135) or completedq(32135)
step
clicknpc Town Hall Sentry Ward Location##67744
|tip Inside the building.
Place the Sentry Ward in Town Hall |q 32133/1 |goto Krasarang Wilds/0 86.27,25.58
|only if haveq(32133) or completedq(32133)
step
clicknpc Docks Sentry Ward Location##67742
Place the Sentry Ward on the Docks |q 32133/2 |goto Krasarang Wilds/0 86.10,33.13
|only if haveq(32133) or completedq(32133)
step
clicknpc Barracks Sentry Ward Location##67743
|tip Upstairs inside the building.
Place the Sentry Ward in the Barracks |q 32133/3 |goto Krasarang Wilds/0 87.75,32.74
|only if haveq(32133) or completedq(32133)
step
label "Kill_Shieldwall_Peasants"
kill 30 Shieldwall Peasant##67423 |q 32132/1 |goto Krasarang Wilds/0 84.13,23.22
|only if haveq(32132) or completedq(32132)
step
label "Kill_Dwarven_Mortar_Team_Engineers"
kill 8 Dwarven Mortar Team Engineer##67545 |q 32134/1 |goto Krasarang Wilds/0 83.23,25.38
|only if haveq(32134) or completedq(32134)
step
label "Kill_Dwarven_Mortar_Tubes"
kill 2 Dwarven Mortar Tube##67541 |q 32134/2 |goto Krasarang Wilds/0 83.23,25.38
|only if haveq(32134) or completedq(32134)
step
kill Shieldwall Engineer##67441+
click Animatable Stone
collect 20 Animatable Stone##91823 |q 32131/1 |goto Krasarang Wilds/0 78.38,18.54
|only if haveq(32131) or completedq(32131)
step
label "Collect_Extra-Waxy_Alliance_Ears"
kill Shieldwall Footman##67304, Shieldwall Rifleman##67297, Dwarven Mortar Team Engineer##67545, Shieldwall Huntress##67317, Shieldwall Vindicator##67296, Shieldwall Peasant##67423
collect 10 Extra-Waxy Alliance Ears##92474 |q 32130/1 |goto Krasarang Wilds/0 84.81,27.11
|only if haveq(32130) or completedq(32130)
step
talk Zazzix "Toasty" Sparkrocket##67402
turnin Good Luck, Have Fun##32130 |goto Krasarang Wilds/0 75.86,34.16 |only if haveq(32130) or completedq(32130)
turnin We Require More Minerals!##32131 |goto Krasarang Wilds/0 75.86,34.16 |only if haveq(32131) or completedq(32131)
turnin Hard Counter##32134 |goto Krasarang Wilds/0 75.86,34.16 |only if haveq(32134) or completedq(32134)
|only if haveq(32130,32131,32134) or completedq(32130,32131,32134)
step
talk Shademaster Kiryn##67628
turnin Hero Killer##32135 |goto Krasarang Wilds/0 75.83,34.47 |only if haveq(32135) or completedq(32135)
turnin Worker Harassment##32132 |goto Krasarang Wilds/0 75.83,34.47 |only if haveq(32132) or completedq(32132)
turnin Sentry Wards##32133 |goto Krasarang Wilds/0 75.83,34.47 |only if haveq(32133) or completedq(32133)
|only if haveq(32135,32132,32133) or completedq(32135,32132,32133)
|next "End_of_Quests"
step
label "Ruins_of_Ogudei_Hub"
talk Belloc Brightblade##67847
turnin The Ruins of Ogudei##32449 |goto Krasarang Wilds/0 76.31,34.08
accept Taking Advantage##32118 |goto Krasarang Wilds/0 76.31,34.08
|only if haveq(32449) or completedq(32449)
step
click Portal to Ruins of Ogudei
Reach the Ruins of Ogudei |complete subzone("Ruins of Ogudei") or completedq(32118) |goto Krasarang Wilds/0 76.20,33.98
|only if haveq(32118) or completedq(32118)
step
talk Kaelis Sunsoar##68274
turnin Taking Advantage##32118 |goto Krasarang Wilds/3 35.30,42.14
accept The Spirit Trap##32342 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept It Is A Mystery##32344 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept We're Not Monsters!##32345 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept Legacy of Ogudei##32120 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 35.30,42.14 |or 5
|tip One of these quests will not be available.
|only if haveq(32118) or completedq(32118)
stickystart "Collect_Ancient_Mogu_Essence"
stickystart "Collect_Spirit_Traps"
stickystart "Free_Troubled_Slave_Spirits"
step
Disperse the Anamoly |q 32344/1 |goto Krasarang Wilds/3 89.81,12.54
|tip Walk around this cave and pay attention to your Anamoly Reader above your actionbars.
|tip This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get.
|tip When you have 100%, you will automatically disperse the anamoly.
|only if haveq(32344) or completedq(32344)
step
label "Collect_Spirit_Traps"
kill Spirit Trap##68061+
|tip They look like floating blue crystals inside the cave.
Collect #3# Spirit Traps |q 32342/1 |goto Krasarang Wilds/3 89.81,12.54
|only if haveq(32342) or completedq(32342)
step
label "Collect_Ancient_Mogu_Essence"
kill Spiritbound Brutalizer##68073, Spiritbound Arcanist##68070
collect 5 Ancient Mogu Essence##92704 |q 32120/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32120) or completedq(32120)
step
label "Free_Troubled_Slave_Spirits"
kill Troubled Slave Spirit##68074+
Free #14# Troubled Slave Spirits |q 32345/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32345) or completedq(32345)
stickystart "Collect_Meng-do's_Essence"
step
Follow the path |goto Krasarang Wilds/2 78.51,56.39 < 7 |only if walking
kill Gen-li Twister of Words##68169
collect Gen-Li's Essence##92736 |q 32343/1 |goto Krasarang Wilds/2 68.08,82.44
|only if haveq(32343) or completedq(32343)
step
label "Collect_Meng-do's_Essence"
kill Meng-do Strength of Mountains##68170
collect Meng-do's Essence##92735 |q 32343/1 |goto Krasarang Wilds/2 66.59,78.85
|only if haveq(32343) or completedq(32343)
step
kill Shieldwall Footman##67304, Shieldwall Rifleman##67297, Lion's Landing Guard Captain##68310
Slay #12# Lion's Landing Military |q 32348/1 |goto Krasarang Wilds/1 53.95,22.39
|only if haveq(32348) or completedq(32348)
step
Follow the path down |goto Krasarang Wilds/3 70.93,40.35 < 10 |only if walking
talk Kaelis Sunsoar##68274
turnin The Spirit Trap##32342 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32342) or completedq(32342)
turnin It Is A Mystery##32344 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32344) or completedq(32344)
turnin We're Not Monsters!##32345 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32345) or completedq(32345)
turnin Legacy of Ogudei##32120 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32120) or completedq(32120)
turnin Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32343) or completedq(32343)
turnin Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32348) or completedq(32348)
|only if haveq(32342,32344,32345,32120,32343,32348) or completedq(32342,32344,32345,32120,32343,32348)
step
label "End_of_Quests"
You Have Completed the Available Daily Quests |complete false or not completedq(32449,32450,32235,32126,32123,32127,32128,32223,32222,32221,32214,32199,32197,32140,32136,32138,32139,32141,32137,32238,32237,32236,32135,32132,32133,32130,32131,32134,32118,32342,32344,32345,32120,32343,32348) |next "Begin_Daily_Quests"
|tip New quests will become available with the next daily server reset.
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Beast Master Dailies (Dominance Offensive)",{
startlevel=15,
description="This guide will take you through the vendor quests for the Dominance Offensive to kill one of 3 beasts for reputation each day.",
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.17
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.73,64.36
step
Watch the dialogue
talk Garrosh Hellscream##62092
|tip He will eventually reach the beach.
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.67,64.45
stickystart "Slay_Alliance_Troops"
step
talk Blood Guard Gro'tash##67927
|tip Kill any enemies he is attacking.
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.70,53.16
step
talk Grizzle Gearslip##67926
|tip Kill any enemies he is attacking.
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.73,57.76
step
label "Slay_Alliance_Troops"
kill Alliance Sentinel##67900, Alliance Footman##67901, Alliance Priest##67902
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.51,61.24
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250 |goto Krasarang Wilds/0 11.51,61.24
accept Domination Point##32108 |goto Krasarang Wilds/0 11.51,61.24
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.46,63.92
step
talk Kromthar##67785
fpath Domination Point |goto Krasarang Wilds/0 9.69,52.51
step
label "Collect_Tokens"
kill Shieldwall Footman##67304, Shieldwall Rifleman##67297, Dwarven Mortar Team Engineer##67545, Shieldwall Huntress##67317, Shieldwall Vindicator##67296, Shieldwall Peasant##67423
collect 90 Lion's Landing Commission##91838 |goto Krasarang Wilds/0 85.26,27.78
|tip You will need 30 commissions for each vendor quest item, 3 items in total.
|tip You will buy the items and accept the quests one at a time due to the items being unique.
step
talk Ongrom Black Tooth##67751
buy 1 Sturdy Crane Snare##91819 |goto Krasarang Wilds/0 10.77,53.60 |q 32161 |future
step
use the Sturdy Crane Snare##91819
accept Beastmaster's Hunt: The Crane##32161 |goto Krasarang Wilds/0 10.77,53.60
step
talk Ongrom Black Tooth##67751
buy 1 Sturdy Tiger Trap##91821 |goto Krasarang Wilds/0 10.77,53.60 |q 32162 |future
step
use the Sturdy Tiger Trap##91821
accept Beastmaster's Hunt: The Tiger##32162 |goto Krasarang Wilds/0 10.77,53.60
step
talk Ongrom Black Tooth##67751
buy 1 Sturdy Crab Crate##91822 |goto Krasarang Wilds/0 10.77,53.60 |q 32163 |future
step
use the Sturdy Crab Crate##91822
accept Beastmaster's Hunt: The Crab##32163 |goto Krasarang Wilds/0 10.77,53.60
step
kill Great Crane##59763+
collect Pristine Jet Crownfeather##91815 |q 32161/2 |goto Krasarang Wilds/0 72.66,44.93
step
kill Unga Villager##60358+
|tip Make sure you stay in the quest area and kill the correct mobs.
|tip Mobs along the beach don't drop the fish.
collect 30 Funky Rotten Fish##91817 |q 32163/1 |goto Krasarang Wilds/0 46.77,91.08
You can find some bigger clusters around [Krasarang Wilds/0 44.01,90.62]
step
kill Child of Chi-Ji##60616+
|tip You will need to kill a lot of these all over the island.
|tip Fly around the beach area, killing the small groups of cranes.
|tip Then work on the interior while they respawn.
collect 5 Pristine Golden Crownfeather##91814 |q 32161/1 |goto Krasarang Wilds/0 34.32,72.33
The beach can be found at [Krasarang Wilds/0 28.49,68.60]
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crane##32161 |goto Krasarang Wilds/0 39.21,61.92
step
Watch the dialogue
talk Ancient Bloodcrown Crane##67555
|tip It will walk up and fall to the ground.
accept Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds/0 39.26,61.85
step
kill Wasteland Yak##66549, Wasteland Calf##66595
collect 25 Unbruised Yak Haunch##91816 |q 32162/1 |goto Dread Wastes/0 52.40,66.75
You can find more around:
[Dread Wastes/0 45.48,55.54]
[Dread Wastes/0 37.55,52.10]
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Tiger##32162 |goto Krasarang Wilds/0 13.87,41.34
step
Watch the dialogue
talk Krasari Elder##67556
|tip It will walk up and fall to the ground.
accept Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds/0 13.89,41.20
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crab##32163 |goto Krasarang Wilds/0 56.30,42.05
step
Watch the dialogue
talk Colossal Viseclaw##67508
|tip It will walk up and become captured in a crate.
accept Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds/0 56.34,42.15
step
talk Huntsman Blake##67558
turnin Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds/0 84.33,18.85
turnin Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds/0 84.33,18.85
turnin Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds/0 84.33,18.85
step
Choose the beast you prefer to fight today:
|tip You can only fight one beast and complete its daily quest each day.
Ancient Bloodcrown Crane |confirm
|tip This beast casts random songs with various spell effects.
Krasari Elder |confirm |next "Krasari_Elder"
|tip This beast requires you to remain in melee range the entire time and randomly vanishes.
Colossal Viseclaw |confirm |next "Colossal_Viseclaw"
|tip This beast needs to be kept moving to lower its damage reduction buff.
step
label "Ancient_Bloodcrown_Crane"
talk Huntsman Blake##67558
Select _"We would like to fight the Ancient Bloodcrown Crane."_ |gossip 40760
|tip During the fight, pay attention to the songs that it uses.
|tip Interrupt those that can be and avoid the others.
|tip Run out of the red circle.
kill Ancient Bloodcrown Crane##67555
accept Ancient's Fall##32167 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin Ancient's Fall##32167 |goto Krasarang Wilds/0 84.33,18.85
step
label "Krasari_Elder"
talk Huntsman Blake##67558
Select _"We would like to fight the Krasari Elder."_ |gossip 40761
|tip Stay close to it at all times.
|tip It will occassionally vanish.
|tip If you have a Hunter, put a flare out.
kill Krasari Elder##67556
accept End of an Elder##32168 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin End of an Elder##32168 |goto Krasarang Wilds/0 84.33,18.85
step
label "Colossal_Viseclaw"
talk Huntsman Blake##67558
Select _"We would like to fight the Colossal Viseclaw."_ |gossip 40762
kill Colossal Viseclaw##67508
|tip During the fight, kite it around and stay mobile.
|tip It has a damage reduction buff that decreases while while it moves.
|tip Stop moving when the buff nears zero or it will reset upon reaching zero.
accept A Colossal Victory##32169 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin A Colossal Victory##32169 |goto Krasarang Wilds/0 84.33,18.85
step
You Have Completed the Available Daily Quests |complete false or not completedq(32161,32162,32163,32181,32182,32183,32167,32168,32169) |next "Collect_Tokens"
|tip New quests will become available with the next daily server reset.
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Dailies",{
startlevel=32,
description="This guide will take you through the Sunreaver Onslaught Dailies.",
},[[
step
label "Reset"
Wait for Dailies to Reset
click Trove of the Thunder King##218593
|tip Choose an assignment.
|tip Choose the "Against the Thunder King's Forces" option.
|tip If you haven't completed the "Secrets in the Isle of Thunder" quest, you can collect Shan'ze Ritual Stones from rares and chests while you wait. |only if not completedq(32707)
Click Here to Continue |confirm |goto Isle of Thunder/0 32.44,35.23
step
talk Lor'themar Theron##67990
accept Za'Tual##32729 |goto Isle of Thunder/0 32.51,35.58 |only if questactive(32729)
accept Encroaching Force##32521  |only if questactive(32521)
Click here if no quests are available |confirm
|only if questactive(32729,32521)
step
talk Girana the Blooded##67673
accept The Zandalari Colossus##32230 |goto Isle of Thunder/0 32.43,35.22
accept The Court of Bones##32728 |goto Isle of Thunder/0 32.43,35.22
accept The Shuddering Moor##32228 |goto Isle of Thunder/0 32.43,35.22
Click here if no quests are available |confirm
step
talk Magister Hathorel##67663
accept Ihgaluk Crag##32730 |goto Isle of Thunder/0 32.47,35.24
accept A Wing to Fly On##32506
Click here if no quests are available |confirm
step
talk High Arcanist Savor##67662
accept The Sleepless Legion##32285 |goto Isle of Thunder 33.50,35.10 |or
accept Enemies Beneath the Tower##32287 |goto Isle of Thunder 33.50,35.10 |or
Click here when no more quests are available |confirm
step
label "Routing"
Court of Bones Breadcrumb Detected |next |only if default |only if haveq(32728) or completedq(32728) |or
Za'Tual Breadcrumb Detected |next "Za'Tual" |only if haveq(32729) or completedq(32729) |or
Ihgaluk Crag Breadcrumb Detected |next "Ihgaluk_Crag_Dailies" |only if haveq(32730) or completedq(32730) |or
step
Run up the stairs |goto Isle of Thunder/0 38.44,50.73 < 20
Enter the building |goto Isle of Thunder/0 34.99,48.92 < 10
kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.00,48.20
|only if haveq(32495) or completedq(32495)
step
label "Court_of_Bones"
map Isle of Thunder
path dist 40
path loop off
path	46.52,48.35	48.57,50.45	50.14,53.64	53.16,57.03	53.31,58.36
kill Mighty Devilsaur##69406 |q 32228/1
|only if haveq(32228) or completedq(32228)
step
map Isle of Thunder/0
path loop off
path	44.60,63.60	43.00,63.00	41.80,62.40
kill Zandalari Colossus##69405 |q 32230/1
|tip It patrols around this circular path, some searching may be necessary.
|only if haveq(32230) or completedq(32230)
step
label "Kill_Nurkala"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
talk Grand Magister Rommath##67989
turnin The Court of Bones##32728 |goto Isle of Thunder/0 38.47,51.33 |only if haveq(32728) or completedq(32728)
accept Grave Circumstances##32201 |goto Isle of Thunder/0 38.47,51.33
accept The Call of Thunder##32225 |goto Isle of Thunder/0 38.47,51.33
accept The Bloodletter##32495 |goto Isle of Thunder/0 38.47,51.33
Click here when no more quests are available |confirm
step
talk Ryshelle Brightlock##69389
accept Stone Cold##32219 |goto Isle of Thunder/0 38.47,51.17
accept Into the Crypts##32226 |goto Isle of Thunder/0 38.47,51.17
accept Rise No More!##32224 |goto Isle of Thunder/0 38.47,51.17
accept The Conquest of Stone##32517 |goto Isle of Thunder/0 38.47,51.17
Click here when no more quests are available |confirm
step
talk Captain Aerthas Firehawk##67983
accept Ashes of the Enemy##32218 |goto Isle of Thunder/0 38.55,51.13
accept Soul Surrender##32220  |goto Isle of Thunder/0 38.55,51.13
Click here when no more quests are available |confirm
step
label "Court_of_Bones_Objectives"
#include "Sunreavers_dailies_Court_of_Bones_Onjectives"
step
talk Ryshelle Brightlock##69389
turnin Stone Cold##32219 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32219) or completedq(32219)
turnin Rise No More!##32224 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32224) or completedq(32224)
turnin Into the Crypts##32226 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32226) or completedq(32226)
turnin The Conquest of Stone##32517 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32517) or completedq(32517)
|only if haveq(32219,32224,32226,32517) or completedq(32219,32224,32226,32517)
step
talk Captain Aerthas Firehawk##67983
turnin Ashes of the Enemy##32218 |goto Isle of Thunder/0 38.55,51.13
|only if haveq(32218) or completedq(32218)
step
talk Grand Magister Rommath##67989
turnin Grave Circumstances##32201 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32201) or completedq(32201)
turnin The Bloodletter##32495 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32495) or completedq(32495)
turnin Soul Surrender##32220 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32220) or completedq(32220)
turnin The Call of Thunder##32225 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32225) or completedq(32225)
turnin Encroaching Force##32521 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32521) or completedq(32521)
accept Encroaching Force##32521 |goto Isle of Thunder/0 38.47,51.34 |or
accept Competing Magic##32520 |goto Isle of Thunder/0 38.47,51.34 |or
accept Imposing Threat##32522 |goto Isle of Thunder/0 38.47,51.34 |or
accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 38.47,51.34 |or
accept The Beast Pens##32523 |goto Isle of Thunder/0 38.47,51.34 |or
accept Among the Bones##32293 |goto Isle of Thunder/0 38.47,51.34 |or
Click here when no more quests are available |confirm
step
talk Ryshelle Brightlock##69389
turnin The Conquest of Stone##32517 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32517) or completedq(32517)
turnin Into the Crypts##32226 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32226) or completedq(32226)
turnin Stone Cold##32219 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32219) or completedq(32219)
turnin Rise No More!##32224 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32224) or completedq(32224)
|only if haveq(32517,32226,32219,32224) or completedq(32517,32226,32219,32224)
step
talk Captain Aerthas Firehawk##67983
accept Ashes of the Enemy##32218 |goto Isle of Thunder/0 38.55,51.13 |next "Court_of_Bones_Objectives"
|tip Click the line above if it is green.
accept Soul Surrender##32220 |goto Isle of Thunder/0 38.55,51.13 |next "Court_of_Bones_Objectives"
|tip Click the line above if it is green.
Click here when no more quests are available |next |only if default |confirm
|only if not completedq(32218,32220)
step
talk Girana the Blooded##67673
turnin The Zandalari Colossus##32230 |goto Isle of Thunder 32.50,35.20 |only if haveq(32230) or completedq(32230)
turnin The Shuddering Moor##32228 |goto Isle of Thunder 32.50,35.20 |only if haveq(32228) or completedq(32228)
|only if haveq(32230,32228) or completedq(32230,32228)
step
talk Grand Magister Rommath##67989
turnin Grave Circumstances##32201 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32201) or completedq(32201)
turnin Soul Surrender##32220 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32220) or completedq(32220)
turnin The Call of Thunder##32225 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32225) or completedq(32225)
turnin Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32521) or completedq(32521)
accept Competing Magic##32561 |goto Isle of Thunder/0 32.51,35.58
accept Competing Magic##32520 |goto Isle of Thunder/0 32.51,35.58
accept Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58
accept Imposing Threat##32562 |goto Isle of Thunder/0 32.51,35.58
accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 32.51,35.58
accept The Beast Pens##32523 |goto Isle of Thunder/0 32.51,35.58
accept Among the Bones##32293  |goto Isle of Thunder/0 32.51,35.58
Click here when no more quests are available |confirm
He May Also Be Here [Isle of Thunder/0 32.51,35.58]
|tip Depending on how the dailies played it, he may also be at the location above.
step
kill Arcweaver Jor'guva##69665 |q 32561/1 |goto Isle of Thunder 44.20,68.70 |only if haveq(32561) or completedq(32561)
kill Arcweaver Jor'guva##69665 |q 32520/1 |goto Isle of Thunder 44.20,68.70 |only if haveq(32520) or completedq(32520)
|only if haveq(32561,32520) or completedq(32561,32520)
step
Run up the stairs |goto Isle of Thunder/0 38.44,50.73 < 20
Enter the building |goto Isle of Thunder/0 34.99,48.92 < 10
kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.00,48.20
|only if haveq(32495) or completedq(32495)
step
Routing to Za'Tual |next |only if haveq(32729) or completedq(32729)
Routing to Ihgaluk Crag |next "Ihgaluk_Crag_Dailies" |only if haveq(32730) or completedq(32730)
Routing to The Beast Pens |next "Beast_Terrace" |only if haveq(32523) or completedq(32523)
Routing to the Conqueror's Terrace |next "Conqueror_Terrace" |only if haveq(32524) or completedq(32524)
step
label "Za'Tual"
talk Halduron Brightwing##70520
turnin Za'Tual##32729 |goto Isle of Thunder/0 36.72,64.79 |only if haveq(32729) or completedq(32729)
accept Surgical Death##32275 |goto Isle of Thunder/0 36.72,64.79
accept Harbingers of the Loa##32252 |goto Isle of Thunder/0 36.72,64.79
accept Dangers of Za'Tual##32200 |goto Isle of Thunder/0 36.72,64.79
Click here when no more quests are available |confirm
step
talk Elina Zaralae##69418
accept Dark Offerings##32217 |goto Isle of Thunder/0 36.63,64.67
accept Heinous Sacrifice##32215 |goto Isle of Thunder/0 36.63,64.67
Click here when no more quests are available |confirm
step
talk Kethiel Sunlance##67984
accept Pterrible Ptorment##32216 |goto Isle of Thunder/0 36.76,64.92
accept Preventing a Future Threat##32227 |goto Isle of Thunder/0 36.76,64.92
Click here when no more quests are available |confirm
step
label "Za'Tual_Objectives"
#include "Sunreavers_dailies_Za'tual_Objectives"
step
talk Elina Zaralae##69418
turnin Dark Offerings##32217 |goto Isle of Thunder/0 36.63,64.67 |only if haveq(32217) or completedq(32217)
turnin Heinous Sacrifice##32215 |goto Isle of Thunder/0 36.63,64.67 |only if haveq(32215) or completedq(32215)
|only if haveq(32217,32215) or completedq(32217,32215)
step
talk Kethiel Sunlance##67984
turnin Pterrible Ptorment##32216 |goto Isle of Thunder/0 36.76,64.92 |only if haveq(32216) or completedq(32216)
turnin Preventing a Future Threat##32227 |goto Isle of Thunder/0 36.76,64.92 |only if haveq(32227) or completedq(32227)
|only if haveq(32216,32227) or completedq(32216,32227)
step
talk Halduron Brightwing##70520
turnin Harbingers of the Loa##32252 |goto Isle of Thunder/0 36.72,64.79 |only if haveq(32252) or completedq(32252)
turnin Surgical Death##32275 |goto Isle of Thunder/0 36.72,64.79 |only if haveq(32275) or completedq(32275)
turnin Dangers of the Za'Tual##32200 |goto Isle of Thunder/0 36.72,64.79 |only if haveq(32200) or completedq(32200)
accept Encroaching Force##32521 |goto Isle of Thunder/0 36.72,64.79
accept The Beast Pens##32523 |goto Isle of Thunder/0 36.72,64.79
accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 36.72,64.79
accept Among the Bones##32293 |goto Isle of Thunder/0 36.72,64.79
accept Imposing Threat##32522 |goto Isle of Thunder/0 36.72,64.79
Click here when no more quests are available |confirm
step
Routing to Ihgaluk Crag |next only if default |only haveq(32730) or completedq(32730)
Routing to Turn-In |only if not haveq(32730) |next "turnin"
step
label "Ihgaluk_Crag_Dailies"
talk Archmage Aethas Sunreaver##67660
turnin Ihgaluk Crag##32730 |goto Isle of Thunder/0 46.87,66.90 |only if haveq(32730) or completedq(32730)
accept The Skumblade Threat##32204 |goto Isle of Thunder/0 46.87,66.90
accept Manipulating the Saurok##32254 |goto Isle of Thunder/0 46.87,66.90
accept Subtle Encouragement##32605 |goto Isle of Thunder/0 46.87,66.90
accept De-Constructed##32255 |goto Isle of Thunder/0 46.87,66.90
Click here when no more quests are available |confirm
step
talk Sunwalker Dezco##69425
accept The Residents of Ihgaluk##32274 |goto Isle of Thunder/0 46.74,66.76
Click here when no more quests are available |confirm
step
talk Amalia Penshire##69371
accept Just Some Light Clean-Up Work##32299 |goto Isle of Thunder/0 47.01,66.73
accept The Creeping Carpet of Ihgaluk##32489 |goto Isle of Thunder/0 47.01,66.73
accept Left to Rot##32491 |goto Isle of Thunder/0 47.01,66.73|only if questactive(32491)
Click here when no more quests are available |confirm
step
talk Archmage Aethas Sunreaver##67660
accept Skin of the Saurok##32507 |goto Isle of Thunder/0 46.92,66.91 |or
|tip NOTE:
|tip This quest will give you the ability to disguise yourself as a saurok.
|tip This spell will happen automatically whenever you are outside of combat and inside Ihgaluk Crag.
|tip If you try to attack another saurok, the disguise will vanish and all saurok will be hostile to you until you are out of combat again.
Click here when no more quests are available |confirm |or
|only if not completedq(32507)
step
label "Ighaluk_Crag_Objectives"
#include "Sunreavers_dailies_Ighaluk_Crag_Objectives"
step
label "turnin"
talk Amalia Penshire##69371
turnin The Creeping Carpet of Ihgaluk##32489 |goto Isle of Thunder/0 47.01,66.73 |only if haveq(32489) or completedq(32489)
turnin Just Some Light Clean-Up Work##32299 |goto Isle of Thunder/0 47.01,66.73 |only if haveq(32299) or completedq(32299)
turnin Left to Rot##32491 |goto Isle of Thunder/0 47.01,66.73 |only if haveq(32491) or completedq(32491)
|only if haveq(32489,32299,32491) or completedq(32489,32299,32491)
step
talk Archmage Aethas Sunreaver##67660
turnin The Skumblade Threat##32204 |goto Isle of Thunder/0 46.87,66.90 |only if haveq(32204) or completedq(32204)
turnin Manipulating the Saurok##32254 |goto Isle of Thunder/0 46.87,66.90 |only if haveq(32254) or completedq(32254)
turnin Subtle Encouragement##32605 |goto Isle of Thunder/0 46.87,66.90 |only if haveq(32605) or completedq(32605)
turnin De-Constructed##32255 |goto Isle of Thunder/0 46.87,66.90 |only if haveq(32255) or completedq(32255)
accept Competing Magic##32561 |goto Isle of Thunder/0 46.90,66.90
accept Competing Magic##32520 |goto Isle of Thunder/0 46.86,66.91
accept Encroaching Force##32521 |goto Isle of Thunder/0 46.90,66.90
accept Imposing Threat##32562 |goto Isle of Thunder/0 46.90,66.90
accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 46.90,66.90
accept Among the Bones##32293 |goto Isle of Thunder/0 46.90,66.90
accept The Beast Pens##32523 |goto Isle of Thunder/0 46.86,66.91
Click here when no more quests are available |confirm
|only if haveq(32204,32254,32605,32255) or completedq(32204,32254,32605,32255)
step
talk Sunwalker Dezco##69425
turnin The Residents of Ihgaluk##32274 |goto Isle of Thunder/0 46.74,66.76
|only if haveq(32274) or completedq(32274)
step
talk Magistrix Saia##69433
accept Skin of the Saurok##32507 |goto Isle of Thunder/0 46.91,66.89
|only if not completedq(32507)
step
Kill Skumblade enemies around this area |kill Skumblade Filthmonger##69228, Skumblade Brute##69338, Skumblade Scavenger##69227
Slay a Skumblade Saurok |q 32507/1 |goto Isle of Thunder 47.20,79.60
|only if not completedq(32507)
step
_Click the Quest Complete Box:_
turnin Skin of the Saurok##32507
|only if not completedq(32507)
step
kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.90,79.40
|only if haveq(32293) or completedq(32293)
step
kill Arcweaver Jor'guva##69665 |q 32561/1 |goto Isle of Thunder 44.20,68.70 |only if haveq(32561) or completedq(32561)
kill Arcweaver Jor'guva##69665 |q 32520/1 |goto Isle of Thunder 44.20,68.70 |only if haveq(32520) or completedq(32520)
|only if haveq(32561,32520) or completedq(32561,32520)
step
talk Lor'themar Theron##67990
turnin Harbingers of the Loa##32252 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32252) or completedq(32252)
turnin Dangers of Trolltonshire##32200 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32200) or completedq(32200)
turnin Among the Bones##32293 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32293) or completedq(32293)
turnin Surgical Death##32275 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32275) or completedq(32275)
|only if haveq(32252,32200,32293,32275) or completedq(32252,32200,32293,32275)
step
talk Girana the Blooded##67673
turnin The Zandalari Colossus##32230 |goto Isle of Thunder 32.50,35.20 |only if haveq(32230) or completedq(32230)
turnin The Shuddering Moor##32228 |goto Isle of Thunder 32.50,35.20 |only if haveq(32228) or completedq(32228)
|only if haveq(32230,32228) or completedq(32230,32228)
step
talk Lor'themar Theron##67990
turnin Competing Magic##32561 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32561) or completedq(32561)
turnin Competing Magic##32520 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32520) or completedq(32520)
turnin Grave Circumstances##32201 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32201) or completedq(32201)
turnin Soul Surrender##32220 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32220) or completedq(32220)
turnin The Call of Thunder##32225 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32225) or completedq(32225)
turnin Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58|only if haveq(32521) or completedq(32521)
accept Competing Magic##32561 |goto Isle of Thunder/0 32.51,35.58
accept Competing Magic##32520 |goto Isle of Thunder/0 32.51,35.58
accept Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58
accept Imposing Threat##32562 |goto Isle of Thunder/0 32.51,35.58
accept Imposing Threat##32522 |goto Isle of Thunder/0 32.51,35.58
accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 32.51,35.58
accept The Beast Pens##32523
accept Among the Bones##32293
Click here when no more quests are available |confirm
step
Routing to the Conqueror's Terrace |next "Conqueror_Terrace" |only if haveq(32524) or completedq(32524) |or
Routing to the Beast Terrace |next "Beast_Terrace" |only if haveq(32523) or completedq(32523) |or
|only if haveq(32524,32523) or completedq(32524,32523)
step
Routing to the Conqueror's Terrace |next "Conqueror_Terrace" |only if haveq(32524) or completedq(32524) |or
Routing to the Beast Terrace |next "Beast_Terrace" |only if haveq(32523) or completedq(32523) |or
|only if haveq(32524,32523) or completedq(32524,32523)
step
label "Beast_Terrace"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
map Isle of Thunder/0
path loop off
path	46.52,48.35	48.57,50.45	50.14,53.64	53.16,57.03	53.31,58.36
kill Mighty Devilsaur##69406 |q 32228/1
|only if haveq(32228) or completedq(32228)
step
map Isle of Thunder/0
path loop off
path	44.60,63.60	43.00,63.00	41.80,62.40
kill Zandalari Colossus##69405 |q 32230/1
|tip It patrols around this circular path, some searching may be necessary.
|only if haveq(32230) or completedq(32230)
step
kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.90,79.40
|only if haveq(32293) or completedq(32293)
step
kill 1 Horgak the Enslaver##70176 |q 32562/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32562)
kill 1 Horgak the Enslaver##70176 |q 32522/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32522)
|only if haveq(32562,32522)
step
label "Kill_Nurkala"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
talk Scout Captain Elsia##67985
Find Scout Captain Elsia at the Beast Pens |q 32523/1 |goto Isle of Thunder/0 47.10,40.70
step
talk Scout Captain Elsia##67985
turnin The Beast Pens##32523 |goto Isle of Thunder/0 47.10,40.70
|only if haveq(32523) or completedq(32523)
step
talk Magister Edien Sunhollow##67986
accept Saur Loser##32207 |goto Isle of Thunder/0 47.20,40.80
accept Direhorn or Devilsaur##32297 |goto Isle of Thunder/0 47.20,40.80
accept Loa-saur##32283 |goto Isle of Thunder/0 47.20,40.80
Click here when no more quests are available |confirm
step
talk Scout Captain Elsia##67985
accept Dino Might##32298 |or |goto Isle of Thunder/0 47.10,40.70
accept Compy Stomp##32282 |or |goto Isle of Thunder/0 47.10,40.70
Click here when no more quests are available |confirm
step
label "Beast_Pens_Objectives"
#include "Sunreavers_dailies_Beast_Pens_Objectives"
step
Rounting to Conqueror's Terrace |next |only if haveq(32524) or completedq(32524)
Routing to the Start |next "Final_Turnin" |only if default
step
label "Conqueror_Terrace"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
map Isle of Thunder/0
path loop off
path	46.52,48.35	48.57,50.45	50.14,53.64	53.16,57.03	53.31,58.36
kill Mighty Devilsaur##69406 |q 32228/1
|only if haveq(32228) or completedq(32228)
step
map Isle of Thunder/0
path loop off
path	44.60,63.60	43.00,63.00	41.80,62.40
kill Zandalari Colossus##69405 |q 32230/1
|tip It patrols around this circular path, some searching may be necessary.
|only if haveq(32230) or completedq(32230)
step
kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.90,79.40
|only if haveq(32293) or completedq(32293)
step
kill 1 Horgak the Enslaver##70176 |q 32562/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32562)
kill 1 Horgak the Enslaver##70176 |q 32522/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32522)
|only if haveq(32562,32522)
step
talk Scout Captain Elsia##67985
turnin The Beating of Troll Drums##32524 |goto Isle of Thunder/0 53.93,49.77 |only if haveq(32524) or completedq(32524)
accept Very Disarming##32233 |goto Isle of Thunder/0 53.93,49.77
accept This Just Won't Do##32206 |goto Isle of Thunder/0 53.93,49.77
accept What's Inside Counts##32232 |goto Isle of Thunder/0 53.93,49.77
Click here when no more quests are available |confirm
|only if haveq(32524) or completedq(32524)
step
talk Magister Edien Sunhollow##67986
accept Power Play##32494 |or 2 |goto Isle of Thunder/0 53.94,49.86
accept Knowledge Is Power##32234 |or 2 |goto Isle of Thunder/0 53.94,49.86
accept They All Fall Down##32493 |or 2 |goto Isle of Thunder/0 53.94,49.86
Click here when no more quests are available |confirm
|only if completedq(32524)
stickystart "Collect_Ritual_Artifacts"
stickystart "Collect_Loa-Infused_Blades"
stickystart "Slay_Conqueror's_Terrace_Trolls"
stickystart "Capture_Zandalari_Spirits"
step
label "Conqueror_Terrace_Objectives"
step
label "Final_Turnin"
talk Lor'themar Theron##67990
turnin Extended Shore Leave##32676 |goto Isle of Thunder/0 32.50,35.50 |only if haveq(32676) or completedq(32676)
turnin Raiding the Vault##32677 |goto Isle of Thunder/0 32.50,35.50 |only if haveq(32677) or completedq(32677)
turnin Competing Magic##32520 |goto Isle of Thunder/0 32.50,35.50 |only if haveq(32520) or completedq(32520)
turnin Competing Magic##32561 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32561) or completedq(32561)
turnin Imposing Threat##32562 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32562) or completedq(32562)
turnin Imposing Threat##32522 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32522) or completedq(32522)
turnin Harbingers of the Loa##32252 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32252) or completedq(32252)
turnin Dangers of Trolltonshire##32200 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32200) or completedq(32200)
turnin Among the Bones##32293 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32293) or completedq(32293)
turnin Surgical Death##32275 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32275) or completedq(32275)
turnin Encroaching Force##32565 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32565) or completedq(32565)
turnin Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32521) or completedq(32521)
turnin Encroaching Force##32563 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32563) or completedq(32563)
|only if haveq(32252,32200,32293,32275,32676,32677,32520,32561,32562,32522,32565,32521,32563) or completedq(32252,32200,32293,32275,32676,32677,32520,32561,32562,32522,3252,32565,32521,32563)
step
talk Girana the Blooded##67673
turnin The Zandalari Colossus##32230 |goto Isle of Thunder 32.50,35.20
turnin The Shuddering Moor##32228 |goto Isle of Thunder 32.50,35.20
|only if haveq(32230,32228) or completedq(32230,32228)
step
talk Magister Hathorel##67663
turnin A Wing to Fly On##32506 |goto Isle of Thunder 32.50,35.20
|only if haveq(32506) or completedq(32506)
step
Routing to Start |next "Reset"|only if not haveq(32523)
Routing to the Beast Pens |next "Beast_Terrace" |only if haveq(32523)
Routing to Questline |next |only if default |only if haveq(32707,32708,32641)
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Quests",{
startlevel=32,
description="This guide will take you through the Sunreaver Onslaught Quests.",
},[[
step
talk Zidormi##163463
Select _"Can you show me what the Vale was like before the Black Empire assault?"_ |gossip 51473
Return to the Past |complete QC.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 32678 |future
step
talk Sunwalker Dezco##64566
accept Thunder Calls##32678 |goto Vale of Eternal Blossoms/0 62.92,28.19
step
talk Scout Captain Elsia##70358
turnin Thunder Calls##32678 |goto Townlong Steppes/0 50.79,73.39
accept The Storm Gathers##32680 |goto Townlong Steppes/0 50.79,73.39
step
talk Scout Captain Elsia##70358
Select _"I'm ready to go."_ |gossip 41771
Speak with Elsia |q 32680/1 |goto Townlong Steppes/0 50.79,73.39
step
Watch the dialogue
Begin Flying with Elsia |invehicle |q 32680
step
Watch the dialogue
Discover the Isle of Thunder |q 32680/2
step
Watch the dialogue
Land on The Crimson Treader |outvehicle |goto Isle of Thunder/0 28.39,52.33 |q 32680
step
talk Lor'themar Theron##67990
turnin The Storm Gathers##32680 |goto Isle of Thunder/0 28.36,52.41
accept The Assault on Zeb'tula##32212 |goto Isle of Thunder/0 28.36,52.41
accept Allies in the Shadow##32709 |goto Isle of Thunder/0 28.36,52.41
step
talk Lor'themar Theron##67990
|tip He walks a short distance on the ship.
Select _"I am ready! [Queue for solo instance.]"_ |gossip 41876
Speak to Lor'themar Theron |q 32212/1 |goto Isle of Thunder/0 28.36,52.41
step
Enter The Assault on Zeb'tula Scenario |scenariostart |q 32212
|tip Accept the invitation that pops up.
step
clicknpc Sunreaver Bloodhawk##69487
|tip On the deck of the ship.
Ride the Sunreaver Bloodhawk |scenariogoal 1/22673 |goto Isle of Thunder Scenario/0 28.50,52.34 |q 32212
step
Watch the dialogue
Fly with Scout Captain Elsia |scenariogoal 1/22654 |goto Isle of Thunder Scenario/0 42.69,50.50 |q 32212
step
Rendezvous with Scout Captain Elsia |scenariostage 1 |goto Isle of Thunder Scenario/0 42.69,50.50 |q 32212
step
Kill Zeb'tula enemies around this area |kill Zeb'tula Raptor##69658,Zeb'tula Beastcaller##69657
|tip Kill the enemies that attack you.
Survive the Ambush |scenariogoal 2/22655 |goto Isle of Thunder Scenario/0 42.69,50.50 |q 32212
step
Survive the Ambush |scenariostage 2 |goto Isle of Thunder Scenario/0 42.69,50.50 |q 32212
step
Kill Zandalari and Zeb-tula enemies around this area |kill Zeb'tula Stoneshield##69517,Zandalari Barricade##69516,Zeb'tula Spearanger##69518
Destroy the Barricades and Defenders  |scenariogoal 3/22656 |goto Isle of Thunder Scenario/0 38.92,43.35 |q 32212
step
Destroy the Barricades |scenariostage 3 |q 32212
step
kill Kresh the Ripper##69474 |scenariogoal 4/22657 |goto Isle of Thunder Scenario/0 38.71,38.55 |q 32212
step
kill Kresh the Ripper##69474  |scenariostage 4 |goto Isle of Thunder Scenario/0 38.71,38.55 |q 32212
step
kill Arcanital Tula'chek##69475 |scenariogoal 5/22659 |goto Isle of Thunder Scenario/0 32.71,35.27 |q 32212
|tip Move him out of the yellow bubbles the mask places on the ground and move into them yourself for damage reduction and silence immunity.
step
Kill Arcanital Tula'chek and His Spirit Mask |scenariostage 5 |goto Isle of Thunder Scenario/0 32.71,35.27 |q 32212
step
Watch the dialogue
Return to Dawnseeker's Promontory |complete subzone("Dawnseeker Promontory") |q 32212
step
talk Lor'themar Theron##67990
turnin The Assault on Zeb'tula##32212 |goto Isle of Thunder/0 32.51,35.58
accept Tear Down This Wall!##32276 |goto Isle of Thunder/0 32.51,35.58
step
talk Lor'themar Theron##67990
Select _"I'm ready to tear down the wall! [Queue for solo instance.]"_ |gossip 41877
Speak to Lor'themar Theron to Begin your Mission |q 32276/1 |goto Isle of Thunder/0 32.51,35.58
step
Enter the Tear Down This Wall! Scenario |scenariostart |q 32276
|tip Accept the invitation that pops up.
step
click Heavy Explosives##218197
Acquire the Heavy Explosives |scenariogoal 1/22696 |goto Isle of Thunder Scenario/0 48.41,50.99 |q 32276
step
Acquire the Heavy Explosives |scenariostage 1 |goto Isle of Thunder Scenario/0 48.41,50.99 |q 32276
step
talk Scout Captain Elsia##69565
Select _"Here are the explosives, Elsia."_ |gossip 41588
Deliver the Explosives to Elsia |scenariogoal 2/22700 |goto Isle of Thunder Scenario/0 55.81,57.75 |q 32276
step
Deliver the Explosives to Elsia |scenariostage 2 |goto Isle of Thunder Scenario/0 55.81,57.75 |q 32276
step
Watch the dialogue
|tip Wait for Elsia to set the explosives.
click Heavy Explosives
Detonate the Heavy Explosives |scenariogoal 3/22702 |goto Isle of Thunder Scenario/0 56.26,56.08 |q 32276
step
Detonate the Heavy Explosives |scenariostage 3 |goto Isle of Thunder Scenario/0 56.26,56.08 |q 32276
step
kill War-God Al'chukla##69755 |scenariogoal 4/23004 |goto Isle of Thunder Scenario/0 54.73,45.83 |q 32276
step
Secure the Lower City |scenariostage 4 |q 32276
step
click Portal to Isle of Thunder
Return to the Dawnseeker's Promontory |complete subzone("Dawnseeker's Promontory") |goto Isle of Thunder Scenario/0 54.09,46.27 |q 32276
step
talk Lor'themar Theron##67990
turnin Tear Down This Wall!##32276 |goto Isle of Thunder/0 32.51,35.58
accept To the Skies!##32277 |goto Isle of Thunder/0 32.51,35.58
step
talk Lor'themar Theron##67990
Select _"I am ready! [Queue for solo instance.]"_ |gossip 41876
Speak to Lor'themar Theron to Begin your Mission |q 32277/1 |goto Isle of Thunder/0 32.51,35.58
step
Enter the To the Skies! Scenario |scenariostart |q 32277
|tip Accept the invitation that pops up.
step
clicknpc Thunderwing##69509
Watch the Dialogue
Mount the Thunderwing |scenariogoal 1/22666 |goto Isle of Thunder Scenario/0 32.24,34.33 |q 32277
step
Watch the Dialogue
Approach the Mine Entrace |scenariogoal 1/22667 |goto Isle of Thunder Scenario/0 53.70,19.46 |q 32277 |notravel
step
Approach the Mine Entrace |scenariostage 1 |goto Isle of Thunder Scenario/0 53.70,19.46 |q 32277
step
extraaction Jump!##137263
|tip Use the button on the screen to jump to a beastcaller's Thunderwing.
kill Zandalari Beastcaller##69521+
|tip Kill the waves of enemies that attack you and wait to land on the ground after.
Defeat your Attackers! |scenariogoal 2/22668 |q 32277
step
Defeat your Attackers! |scenariostage 2 |q 32277
step
kill Beastmaster Horaki##69559 |scenariogoal 3/22669 |goto Isle of Thunder Scenario/0 47.82,25.63 |q 32277
|tip Move out of areas targeted on the ground.
step
Defeat Beastmaster Horaki |scenariostage 3 |goto Isle of Thunder Scenario/0 47.82,25.63 |q 32277
step
Watch the dialogue
talk Taoshi##69810
|tip She will jump down to this spot.
Select _"Alright. Let's go."_ |gossip 41898
Join with Taoshi |scenariogoal 4/22738 |goto Isle of Thunder Scenario/0 49.31,26.00 |q 32277
step
Join with Taoshi |scenariostage 4 |goto Isle of Thunder Scenario/0 49.31,26.00 |q 32277
step
Watch Taoshi Get Rid of the Cave-in |scenariogoal 5/22740 |goto Isle of Thunder Scenario/0 49.22,25.57 |q 32277
step
Follow the path |goto Isle of Thunder Scenario/1 44.65,41.46 < 20 |walk
Make your Way to the Mine Entrance |scenariogoal 5/22741 |goto Isle of Thunder Scenario/1 32.33,58.00 |q 32277
step
Make your Way to the Mine Entrance |scenariostage 5 |goto Isle of Thunder Scenario/0 32.33,58.00 |q 32277
step
kill Slavemaster Shiaxu##69923 |scenariogoal 6/22672 |goto Isle of Thunder Scenario/0 28.18,67.47 |q 32277
step
Unlock the Mine Door |scenariogoal 6/22739 |goto Isle of Thunder Scenario/0 28.18,67.47 |q 32277
|tip If this step bugs, you should be able to leave the scenario and turn the quest in.
|tip This should happen automatically.
Click Here to Continue |confirm
step
click Portal to Isle of Thunder
Return to the Dawnseeker Promontory |complete subzone("Dawnseeker Promontory") |goto Isle of Thunder Scenario/0 31.88,83.11 |q 32277
step
talk Lor'themar Theron##69742
turnin To the Skies!##32277 |goto Isle of Thunder/0 32.91,32.58
step
talk Taoshi##70297
accept Decisive Action##32278 |goto Isle of Thunder/0 32.89,32.68
step
talk Taoshi##70297
Select _"I'm with you. Let's break into that shipyard! [Queue for solo instance.]"_ |gossip 41662
|tip Accept the invitation that pops up.
Infiltrate Stormsea Landing |scenariostart |goto Isle of Thunder/0 32.89,32.68 |q 32278
step
Watch the dialogue
clicknpc Thunderwing##69458
Mount the Thunderwing |invehicle |goto Isle of Thunder Scenario/0 63.29,54.35 |q 32278
step
Watch the dialogue
Intercept the Zandalari Patrol |scenariogoal 1/22661 |q 32278
step
Watch the dialogue
Intercept the Zandalari Patrol |scenariostage 1 |q 32278
step
Deactvate #10# Sentry Totems |scenariogoal 2/23007 |goto Isle of Thunder Scenario/0 62.35,41.39 |q 32278
|tip Use the "Smoke Bomb" ability on your vehicle bar.
|tip Sentry Totems are at the center of the circles.
|tip Destroy a clear path from the ship, up the hill to the courtyard.
step
Deactvate #10# Sentry Totems |scenariostage 2 |q 32278
step
Watch the dialogue
Reach the Ship |outvehicle |goto Isle of Thunder Scenario/0 68.99,45.00 |notravel |q 32278
stickystart "Trap_Siege_Weapons"
step
kill Veteran Wingrider##69552+
|tip Stay close to Taoshi to maintain stealth.
|tip The red circle around you is the radius in which enemies can see you while facing you.
|tip Follow Taoshi and neutralize the enemies with a red arrow above their head.
extraaction Knock Out##137311
Neutralize #7# Marked Crew Members |scenariogoal 3/23003 |goto Isle of Thunder Scenario/0 67.29,46.79 |q 32278
step
label "Trap_Siege_Weapons"
Trap #4# Siege Weapons |scenariogoal 3/22663 |goto Isle of Thunder Scenario/0 67.29,46.79 |q 32278
|tip Taoshi will do this automatically when she gets near them.
step
Neutralize the Defenses |scenariostage 3 |q 32278
step
Go down into the ship |goto Isle of Thunder Scenario/0 68.60,45.63 < 4 |walk
kill Captain Halu'kal##69482 |scenariogoal 4/22664 |goto Isle of Thunder Scenario/0 67.13,47.47 |q 32278
|tip Follow Taoshi down into the ship.
|tip The captain will wake up and attack you.
|tip Kill any enemies that wake up and move out of stuff on the ground.
step
kill Captain Halu'kal##69482 |scenariostage 4 |goto Isle of Thunder Scenario/0 67.13,47.47 |q 32278
step
Leave the ship |goto Isle of Thunder Scenario/0 67.21,45.36 < 10 |walk
Locate Hu'seng the Gatekeeper |scenariogoal 5/22665 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
|tip Wait for Taoshi to finish her dialogue before continuing.
|tip Stay near Taoshi to maintain your stealth.
|tip Make your way up the hill and into the courtyard along the path you cleared with the smoke bombs.
|tip Avoid the blue circles on the ground that will reveal your location.
step
Locate Hu'seng the Gatekeeper |scenariostage 5 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
step
kill Hu'seng the Gatekeeper##69483 |scenariogoal 6/22667 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
step
collect Gatekeeper's Orb##94918 |scenariogoal 6/22810 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
|tip Loot it from Hu'seng the Gatekeeper's corpse.
step
Light Up the Night |scenariostage 6 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32278
step
click Deactivated Access Generator
Open the Gate |scenariogoal 7/22809 |goto Isle of Thunder Scenario/0 58.37,42.78 |q 32278
step
Open the Gate |scenariostage 7 |goto Isle of Thunder Scenario/0 58.37,42.78 |q 32278
step
click Portal to Dawnseeker Promontory
Return to the Dawnseeker's Promontory |complete subzone("Dawnseeker's Promontory") |goto Isle of Thunder Scenario/0 57.79,41.87 |q 32278
step
talk Lor'themar Theron##67990
turnin Decisive Action##32278 |goto Isle of Thunder/0 32.51,35.58
accept The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.51,35.58
step
talk Lor'themar Theron##67990
Select _"I am ready to launch the assault [Queue for solo instance.]"_ |gossip 41878
Speak to Lor'themar Theron |q 32279/1 |goto Isle of Thunder/0 32.51,35.58
step
Enter The Fall of Shan Bu Scenario |scenariostart |q 32279
|tip Accept the invitation that pops up.
step
talk Scout Captain Elsia##69620
Select _"I am ready."_ |gossip 41897
Speak with your Assault Leader |scenariogoal 1/22742 |goto Isle of Thunder Scenario/0 56.07,39.20 |q 32279
step
Watch the dialogue
|tip Elsia will open the doors.
Enter the Courtyard |scenariogoal 1/22799 |goto Isle of Thunder Scenario/0 57.09,40.83 |q 32279
step
kill 14 Zandalari Stoneshield##69527 |scenariogoal 1/22675 |goto Isle of Thunder Scenario/0 58.07,40.75 |q 32279
step
Retake the Bloodied Crossing |scenariostage 1 |q 32279
step
kill 2 Palace Gatekeeper##69510 |scenariogoal 2/22685 |goto Isle of Thunder Scenario/0 58.06,40.81 |q 32279
step
kill 2 Palace Gatekeeper##69510 |scenariostage 2 |q 32279
step
Watch the dialogue
|tip Taran Zhu will open the door.
Follow Taran Zhu into the Courtyard |scenariogoal 3/22807 |goto Isle of Thunder Scenario/0 59.76,38.05 |q 32279
step
Kill enemies around this area |kill Quilen Guardian##69506, Zandalari Stoneshield##69865, Shan'ze Electrocutioner##69525
|tip Taran Zhu will remove the barrier.
|tip Stand in the light for healing.
Slay #8# Zandalari and Mogu |scenariogoal 3/22734 |goto Isle of Thunder Scenario/0 59.76,38.05 |q 32279
step
Defeat Zandalri and Mogu |scenariostage 3 |q 32279
step
kill Shan Bu##69534 |scenariogoal 4/22683 |goto Isle of Thunder Scenario/0 60.34,37.30 |q 32279
|tip Move out of areas targeted on the ground.
|tip Kill any minor adds that attack.
|tip Stand in the light for healing.
step
kill Shan Bu##69534 |scenariostage 4 |q 32279
step
click Portal to the Isle of Thunder
Return to the Dawnseeker's Promontory |complete subzone("Dawnseeker's Promontory") |goto Isle of Thunder Scenario/0 56.82,40.44 |q 32279
step
talk Lor'themar Theron##67990
turnin The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.50,35.50
step
talk Taran Zhu##70160
|tip Inside the cave.
turnin Allies in the Shadows##32709 |goto Isle of Thunder/0 51.42,46.08
accept Secrets in the Isle of Thunder##32707 |goto Isle of Thunder/0 51.42,46.08
step
click Trove of the Thunder King##218593
collect 3 Shan'ze Ritual Stone##94221 |q 32707/1
|tip You can loot these from rares on Isle of Thunder.
|tip They aren't a 100% drop rate.
|tip These can be looted once per week.
step
talk Taran Zhu##70160
|tip Inside the cave.
turnin Secrets in the Isle of Thunder##32707 |goto Isle of Thunder/0 51.42,46.08
accept Setting the Trap##32708 |goto Isle of Thunder/0 51.42,46.08
step
label "Collect_3_Shan'ze_Ritual_Stones"
collect 3 Shan'ze Ritual Stone##94221 |q 32707/1
|tip These come from rares and treasure chests all around the Isle of Thunder.
step
talk Taran Zhu##70160
|tip Inside the cave.
turnin Secrets in the Isle of Thunder##32707
accept Setting the Trap##32708 |goto Isle of Thunder/0 51.42,46.09
step
clicknpc Spirit Ritual Stone##70203
Summon the Echo of Kros |q 32708/1 |goto Isle of Thunder/0 55.17,87.71
step
kill Echo of Kros##69341
|tip This may require a group if you aren't overleveled.
|tip Make sure you don't die or you'll have to farm more Shan'ze Ritual Stones.
Slay the Echo of Kros |q 32708/2 |goto Isle of Thunder/0 54.86,87.83
step
talk Taran Zhu##70160
|tip Inside the cave.
turnin Setting the Trap##32708 |goto Isle of Thunder/0 51.42,46.09
accept Champions of the Thunder King##32641 |goto Isle of Thunder/0 51.42,46.09
|tip This quest resets weekly.
step
talk Taoshi##70316
accept Treasures of the Thunder King##32296 |goto Isle of Thunder/0 51.42,46.17
step
talk Taoshi##70316
Speak to Taoshi in Bleak Hollow |q 32296/1 |goto Isle of Thunder/0 51.42,46.17
step
talk Taoshi##70316
Select _"I have the key, let's start the raid. [Queue for solo instance.]"_ |gossip 42199 |goto Isle of Thunder/0 51.42,46.17
step
Enter the Troves of the Thunder King Scenario
|tip Accept the invitation that pops up.
Enter the Trove of the Thunder King Scenario |scenariostart Troves of the Thunder King##215 |q 32296
step
talk Taoshi##70320
Select _"Here's the key.  Let's go."_ |gossip 42194
Speak to Taoshi to begin |scenariogoal 1/22944 |goto Thunder King's Citadel/0 27.91,60.44 |q 32296
step
click Golden Treasure Chest##218772
click Mogu Treasure Chest##218757
|tip Avoid the giant blue orbs spitting out lightning.
|tip The Mogu statues weilding hammers will use a stun AoE in from of them which should be avoided.
|tip You will get credit for completing this regardless of whether or not you participate.
|tip There will be several chests to open at the end of the timer.
|tip Some of them may have reputation tokens for the Shado-Pan faction.
Reach the Exit Before the Timer Expires |scenariogoal 2/22839 |goto Thunder King's Citadel/0 27.21,44.20 |q 32296
step
talk Taoshi##70320
turnin Treasures of the Thunder King##32296 |goto Thunder King's Citadel/0 35.75,79.81
step
talk Taoshi##70320 |goto Thunder King's Citadel/0 35.75,79.81
Select _"Let's head outside to the island."_ |gossip 42195
Leave the Vault of the Thudner King |goto Isle of Thunder/0 51.66,45.66 < 2000 |noway |c
step
label "Collect_9_Shan'ze_Ritual Stones"
collect 9 Shan'ze Ritual Stone##94221 |q 32641
|tip These come from rares and treasure chests all around the Isle of Thunder.
step
click Lightning Ritual Stone##69770
kill Ancient Mogu Guardian##69767
|tip It will appear behind you.
Summon and Defeat a Lightning Champion |q 32641/2 |goto Isle of Thunder/0 53.11,47.04
step
clicknpc Spirit Ritual Stone##70203
kill Kor'dok##69633
Summon and Defeat a Spirit Champion |q 32641/1 |goto Isle of Thunder/0 30.70,58.57
step
Enter the cave |goto Isle of Thunder/0 32.47,46.32 < 25 |walk
clicknpc Primal Ritual Stone##70198
|tip This will summon an elite enemy.
kill Cera##69396
Summon and Defeat a Primal Champion |q 32641/3 |goto Isle of Thunder/0 33.18,45.59
step
talk Taran Zhu##70160
|tip Inside the cave.
turnin Champions of the Thunder King##32641 |goto Isle of Thunder/0 51.42,46.09
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Timeless Isle Dailies",{
startlevel=30,
description="This guide will help you complete the dailies on the Timeless Isle. Completing these dailies awards you with Timeless Coins.",
},[[
step
Routing to proper section |next "prequests" |only if not completedq(33333)
Routing to proper section |next "dailies" |only if completedq(33333)
step
label "prequests"
Click the _Quest Accept_ Box:
accept A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms 61.70,20.40
|tip If you have already been to Timeless Isle, this quest will not be available.
Click here if this quest is unavailable |confirm
step
talk Chromie##73691
|tip On the upper balcony of the palace.
turnin A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms 80.65,33.17 |only if haveq(33230)
accept Journey to the Timeless Isle##33232 |goto Vale of Eternal Blossoms 80.65,33.17
step
use Curious Bronze Timepiece##104110
You will be teleported to the Timeless Isle |goto Timeless Isle/0 21.30,39.50 |noway |c
step
talk Chi-Ro the Skytamer##71939 |only Horde
fpath Huojin Landing |goto Timeless Isle/0 21.90,39.80 |only Horde
step
talk Watcher Alundra##73353
turnin Journey to the Timeless Isle##33232 |goto Timeless Isle/0 22.00,41.00
accept Time Keeper Kairoz##33156 |goto Timeless Isle/0 22.00,41.00
step
talk Kairoz##72870
turnin Time Keeper Kairoz##33160 |goto Timeless Isle/0 34.50,53.80
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
kill Ironfur Herdling##72842+, Ironfur Grazer##72843+, Ironfur Great Bull##72844+
kill Windfeather Chick##71143+, Windfeather Nestkeeper##72761+, Brilliant Windfeather##72762+
earn 1000 Timeless Coin##777 |q 33228/1 |goto Timeless Isle/0 43.90,55.40
step
talk Kairoz##72870
turnin Time In Your Hands##33228 |goto Timeless Isle/0 34.60,53.70
accept Hints From The Past##33332 |goto Timeless Isle/0 34.60,53.70
accept The Last Emperor##33335 |goto Timeless Isle/0 34.60,53.70
step
talk Mistweaver Ai##73305
buy Time-Worn Journal##103977 |goto Timeless Isle/0 42.80,55.60
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
Follow the path to activate one of the Shrines.
map Timeless Isle
path	30.10,45.70	26.80,52.20	30.50,62.60
path	27.90,72.00	37.40,74.40	49.70,70.40
path	66.10,72.30	63.90,50.70	35.00,29.60
click Celestial Shrine
|tip They are on a 10-15 minute cooldown, so just keep running around until you find an active one.
Receive a Blessing of the Celestials |q 33341/1
step
talk Emperor Shaohao##73303
turnin Wayshrines Of The Celestials##33341 |goto Timeless Isle 42.90,55.20
step
talk Kairoz##72870
turnin Hints From The Past##33332 |goto Timeless Isle 34.50,53.80
accept Timeless Treasures##33333 |goto Timeless Isle 34.50,53.80
step
click Moss-Covered Chest##223089
Find the Hidden Treasure |q 33333/1 |goto Timeless Isle 46.80,46.80
step
talk Kairoz##72870
turnin Timeless Treasures##33333 |goto Timeless Isle 34.60,53.80
step
label "dailies"
talk Emperor Shaohao##73303
accept Path of the Mistwalker##33374 |goto Timeless Isle 42.90,55.30
step
talk Kairoz##72870
accept Strong Enough To Survive##33334 |goto Timeless Isle 34.60,53.70
accept Empowering the Hourglass##33338 |goto Timeless Isle 34.60,53.70
|tip These are weekly quests.
step
label "rares"
This quest requires you to kill 5 _rare spawns_ on the Timeless Isle.
Most of the spawns are on a timer, so you will need to wait for them to respawn. If there are other conditions, they are listed with the mob.
|tip It's recommended that you have at least 1-2 other people helping you with this, as some of the rare spawns have a lot of health.
confirm
step
kill Monstrous Spineclaw##73166
Click here if he is not available or you have just killed him |confirm |next
Kill #5# rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 26.90,76.40 |next "out"
step
kill Great Turtle Furyshell##73161
Click here if he is not available or you have just killed him |confirm |next
Kill #5# rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 25.60,55.50 |next "out"
step
kill Chelon##72045
Click here if he is not available or you have just killed him |confirm |next
Kill #5# rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 25.20,35.70 |next "out"
step
kill Ironfur Steelhorn##73160
|tip He can spawn in the place of any of the steelhorns in this area.
Click here if he is not available or you have just killed him |confirm |next
Kill #5# rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 37.30,43.00 |next "out"
step
kill Spirit of Jadefire##72769
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/22 56.00,30.70 |next "out"
step
kill Rock Moss##73157
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/22 45.40,29.40 |next "out"
step
kill Tsavo'ka##72808
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 54.60,44.30 |next "out"
step
Wait for the cave-in, then click the hammer that spawns here. It may take a minute for the hammer to spawn, but it shouldn't be too long. |goto Timeless Isle/0 59.20,48.30
confirm
step
clicknpc Cave-In##73329
kill Spelurk##71864+
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 59.10,48.60 |next "out"
step
kill Golganarr##72970
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 62.50,63.50 |next "out"
step
kill Bufo##72775 |tip Bufo cn spawn in the place of any Gulp Frog in this area.
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 62.70,74.60 |next "out"
step
kill Rattleskew##72048
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 60.70,88.00 |next "out"
step
kill Zesqua##72245
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 46.90,87.30 |next "out"
step
talk Fin Longpaw##72151
Ask him to fish up Karkanos for you. |goto Timeless Isle/0 34.00,83.80
confirm
step
kill Karkanos##72193
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 34.20,84.70 |next "out"
step
kill Gu'chi the Swarmbringer##72909
|tip He walks around the village here, so some searching may be necessary.
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 40.40,78.00 |next "out"
step
kill Skunky Brew Alemental##71908+ |goto Timeless Isle/0 38.00,77.60
|tip You will have to wait for these to spawn as a random event. After killing 10, Zhu-Gon will spawn.
confirm
step
kill Zhu-Gon the Sour##71919+
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 38.00,77.60 |next "out"
step
kill Cranegnasher##73854
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 44.50,69.00 |next "out"
step
kill Imperial Python##73163
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle 44.40,65.50 |next "out"
step
kill Emerald Gander##73158
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 40.70,68.80 |next "out"
step
kill Jakur of Ordon##73169
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 51.50,83.30 |next "out"
step
kill Watcher Osu##73170
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 57.50,77.10 |next "out"
step
kill Champion of the Black Flame##73171
|tip The all 3 walk up and down this path here, some searching may be necessary.
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 70.90,49.90 |next "out"
step
kill Huolon##73167
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 72.90,48.70 |next "out"
step
kill Leafmender##73277
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 67.30,44.10 |next "out"
step
kill Cinderfall##73175 |tip On the bridge up above.
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 54.00,52.40 |next "out"
step
kill Garnia##73282
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 64.80,28.80 |next "out"
step
kill Flintlord Gairan##73172
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle 48.20,38.40 |next "out"
step
kill Urdur the Cauterizer##73173
Click here if he is not available or you have just killed him |confirm |next
Kill 5 rares on the Timeless Isle |q 33334/1 |goto Timeless Isle/0 45.40,26.60 |next "out"
step
kill Evermaw##73279
He swims in a circle around the isle. He's very fast, so you will either need some kind of water-walking, or the Cursed Swabby Helmet in order to fight him.
He has also been found around the following coordinates:
_ [14.50,56.50]
_ [16.10,63.90]
_ [33.30,2.60]
_ [63.40,6.90]
_ [79.60,30.40]
_ [79.00,70.00]
_ [75.00,84.00]
_ [55.00,91.00]
_ [30.00,89.00]
collect 1 Mist-Filled Spirit Lantern##104115
|tip This is a guaranteed drop.
Click here if he is not available or you have just killed him |confirm |goto Timeless Isle/0 14.10,37.50 |next "rares"
Kill 5 rares on the Timeless Isle |q 33334/1 |next "out"
step
label "out"
kill Ironfur Great Bull##72844+
kill Brilliant Windfeather##72762+
kill Death Adder##72841+
kill Great Turtle##72764+
kill Elder Great Turtle##72765+
Kill 20 Elite creatures on the Timeless Isle |q 33374/1 |goto Timeless Isle 27.00,58.60
step
kill Ironfur Great Bull##72844+, Ironfur Herdling##72842+, Ironfur Grazer##72843+
kill Great Turtle##72764+, Great Turtle Hatchling##72763+, Elder Great Turtle##72765+
kill Windfeather Chick##71143+, Windfeather Nestkeeper##72761+, Brilliant Windfeather##72762+
kill Death Adder##72841+
collect 50 Epoch Stone##105715 |q 33338/1 |goto Timeless Isle 27.00,58.60
step
talk Senior Historian Evelyna##73570
accept A Timeless Question##33211 |goto Timeless Isle/0 65.00,50.50
step
talk Senior Historian Evelyna##73570
Answer a question about Warcraft's lore. |q 33211/1 |goto Timeless Isle/0 65.00,50.50
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
You have reached the end of the guide for today.
Click here to go back to the beginning of the dailies. |confirm |next "dailies"
]])
