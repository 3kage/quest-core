-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Bloodsail Buccaneers",{
expansion="mists",
cataready=true,
description="This guide will walk you through becoming exalted with the Bloodsail Buccaneers faction.",
achieveid={2336},
patch='30100',
},[[
step
talk "Sea Wolf" MacKinley##2501
accept Scaring Shaky##26593 |goto The Cape of Stranglethorn/0 42.10,73.40
step
kill Elder Mistvale Gorilla##1557+
collect 5 Mistvale Giblets##3919 |q 26593/1 |goto The Cape of Stranglethorn/0 50.40,54.60
step
talk "Shaky" Phillipe##2502
turnin Scaring Shaky##26593 |goto The Cape of Stranglethorn/0 40.50,67.70
accept Return to MacKinley##26594 |goto The Cape of Stranglethorn/0 40.50,67.70
step
talk "Sea Wolf" MacKinley##2501
turnin Return to MacKinley##26594 |goto The Cape of Stranglethorn/0 42.10,73.40
accept Kill-Collect##26595 |goto The Cape of Stranglethorn/0 42.10,73.40
step
kill Freewheelin' Juntz Fitztittle##43376
collect Fitztittle's Ratcheting Torque Wrench##59034 |q 26595/2 |goto The Cape of Stranglethorn/0 56.60,57.60
step
click Half-Buried Bottle##204406
accept Message in a Bottle##26603 |goto The Cape of Stranglethorn/0 57.00,54.40
step
talk Ephram "Midriff" Moonfall##43377
Tell him, So you kno why I'm here then, all right Midriff, pay up.
kill Ephram "Midriff" Moonfall##43377
collect Ephram's Jeweled Mirror##59035 |q 26595/3 |goto The Cape of Stranglethorn/0 57.80,48.60
step
kill Maury "Club Foot" Wilkins##2535
collect Maury's Clubbed Foot##3924 |q 26595/1 |goto The Cape of Stranglethorn/0 59.70,49.20
step
talk Princess Poobah##2634
turnin Message in a Bottle##26603 |goto The Cape of Stranglethorn/0 59.40,79.10
accept Protecting Her Royal Highness Poobah##26604 |goto The Cape of Stranglethorn/0 59.40,79.10
step
kill 5 Jaguero Stalker##2522+ |q 26604/1 |goto The Cape of Stranglethorn/0 58.40,80.40
|tip They are stealthed around this area, so you may need to search a bit.
step
talk Princess Poobah##2634
turnin Protecting Her Royal Highness Poobah##26604 |goto The Cape of Stranglethorn/0 59.40,79.10
accept Grubby Little Paws##26605 |goto The Cape of Stranglethorn/0 59.40,79.10
stickystart "Scepter"
stickystart "Slippers"
stickystart "Diary"
step
kill Skymane Gorilla##2521, Skymane Bonobo##43417
collect Poobah's Tiara##59057 |q 26605/1 |goto The Cape of Stranglethorn/0 62.60,78.20
step
label "Scepter"
kill Skymane Gorilla##2521, Skymane Bonobo##43417 |notinsticky
collect Poobah's Scepter##59058 |q 26605/2 |goto The Cape of Stranglethorn/0 62.60,78.20
step
label "Slippers"
kill Skymane Gorilla##2521, Skymane Bonobo##43417 |notinsticky
collect Poobah's Slippers##59059 |q 26605/3 |goto The Cape of Stranglethorn/0 62.60,78.20
step
label "Diary"
kill Skymane Gorilla##2521, Skymane Bonobo##43417 |notinsticky
collect Poobah's Diary##59060 |q 26605/4 |goto The Cape of Stranglethorn/0 62.60,78.20
step
talk Princess Poobah##2634
turnin Grubby Little Paws##26605 |goto The Cape of Stranglethorn/0 59.40,79.10
accept Mukla's Demise##26606 |goto The Cape of Stranglethorn/0 59.40,79.10
step
kill King Mukla##1559+
collect Shackle Key##4103 |q 26606/1 |goto The Cape of Stranglethorn/0 63.40,83.20
step
talk Princess Poobah##2634
turnin Mukla's Demise##26606 |goto The Cape of Stranglethorn/0 59.40,79.10
step
talk "Sea Wolf" MacKinley##2501
turnin Kill-Collect##26595 |goto The Cape of Stranglethorn/0 42.10,73.40
step
talk First Mate Crazz##2490
accept The Bloodsail Buccaneers##26609 |goto The Cape of Stranglethorn/0 42.60,72.00
step
click Bloodsail Correspondence##2083
turnin The Bloodsail Buccaneers##26609 |goto The Cape of Stranglethorn/0 41.30,61.20
accept Bloodsail Treachery##26610 |goto The Cape of Stranglethorn/0 41.30,61.20
step
talk First Mate Crazz##2490
turnin Bloodsail Treachery##26610 |goto The Cape of Stranglethorn/0 42.60,72.00
accept The Baron Must Be Told##26611 |goto The Cape of Stranglethorn/0 42.60,72.00
step
talk Baron Revilgaz##2496
turnin The Baron Must Be Told##26611 |goto The Cape of Stranglethorn/0 41.20,73.10
accept Details of the Attack##26612 |goto The Cape of Stranglethorn/0 41.20,73.10
stickystart "Bloodsail Orders"
stickystart "Kill_Sea_Dog"
stickystart "Kill_Elder_Magus"
step
click Bloodsail Charts##2086
collect Bloodsail Charts##3920 |q 26612/3 |goto The Cape of Stranglethorn/0 45.00,79.50
They Can Also Be Found Here:
[The Cape of Stranglethorn/0 42.00,83.20]
[The Cape of Stranglethorn/0 40.90,82.80]
step
label "Bloodsail Orders"
click Bloodsail Orders##2087
|tip It looks like a white scroll.
collect Bloodsail Orders##3921 |q 26612/4 |goto The Cape of Stranglethorn/0 45.00,79.50
They Can Also Be Found Here: |notinsticky
[The Cape of Stranglethorn/0 42.00,83.20] |notinsticky
[The Cape of Stranglethorn/0 40.90,82.80] |notinsticky
step
label "Kill_Sea_Dog"
kill 8 Bloodsail Sea Dog##1565+ |q 26612/1 |goto The Cape of Stranglethorn/0 45.00,79.50
step
label "Kill_Elder_Magus"
kill 8 Bloodsail Elder Magus##1653+ |q 26612/2 |goto The Cape of Stranglethorn/0 45.00,79.50
step
talk Baron Revilgaz##2496
turnin Details of the Attack##26612 |goto The Cape of Stranglethorn/0 41.20,73.10
accept Getting In With the Bloodsail##26624 |goto The Cape of Stranglethorn/0 41.20,73.10
step
talk Yancey Grillsen##43504
turnin Getting In With the Bloodsail##26624 |goto The Cape of Stranglethorn/0 43.80,56.50
accept Seeing Where Your Loyalties Lie##26629 |goto The Cape of Stranglethorn/0 43.80,56.50
step
talk Fleet Master Seahorn##2487
accept Looks like a Tauren Pirate to Me##26630 |goto The Cape of Stranglethorn/0 41.10,73.30
step
talk Bossy##43505
Tell her you need to cut off her head, then do the deed
collect Cow Head##59147 |q 26630/3 |goto The Cape of Stranglethorn/0 43.30,71.70
step
talk Narkk##2663
Tell him you need an extra-large pirate hat
Seahorn's orders
collect Oversized Pirate Hat##59148 |q 26630/2 |goto The Cape of Stranglethorn/0 42.60,69.10
step
talk Fleet Master Seahorn##2487
Give him the head and the hat and tell him he's the boss
Return both items to Fleet Master Seahorn |q 26630/1 |goto The Cape of Stranglethorn/0 41.10,73.30
step
talk Fleet Master Seahorn##2487
turnin Looks Like a Tauren Pirate to Me##26630
collect Head of Fleet Master Seahorn##59146 |q 26629/1 |goto The Cape of Stranglethorn/0 41.10,73.30
step
talk Yancey Grillsen##43504
turnin Seeing Where Your Loyalties Lie##26629 |goto The Cape of Stranglethorn/0 43.80,56.50
accept Your First Day as a Pirate##26631 |goto The Cape of Stranglethorn/0 43.80,56.50
step
talk Captain Keelhaul##2548
turnin Your First Day as a Pirate##26631 |goto The Cape of Stranglethorn/0 44.50,91.40
accept Swabbing Duty##26633 |goto The Cape of Stranglethorn/0 44.50,91.40
step
click Swabbie's Mop##9742
|tip It looks like a big mop leaning against the wall on the deck of the ship.
clicknpc Deck Stain##43511+
|tip They spawn on the deck of the ship.
|tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
Swab the Decks |q 26633/1 |goto The Cape of Stranglethorn/0 44.46,92.43
step
talk "Pretty Boy" Duncan##2545
accept Cannonball Swim##26635 |goto The Cape of Stranglethorn/0 44.50,93.30
step
talk Garr Salthoof##2549
accept The Bane of Many A Pirate##26634 |goto The Cape of Stranglethorn/0 44.50,91.90
step
talk Captain Keelhaul##2548
turnin Swabbing Duty##26633 |goto The Cape of Stranglethorn/0 44.50,91.60
step
click Bloodsail Cannonball##204433
collect 6 Bloodsail Cannonball##59151 |q 26635/1 |goto The Cape of Stranglethorn/0 46.30,96.00
step
click Lime Crate##204432
|tip They look like brown wooden boxes on the ground around this area.
|tip You can find more on the islands to the west, or the coast to the northwest.
collect 5 Bushel of Limes##59150 |q 26634/1 |goto The Cape of Stranglethorn/0 52.50,87.90
step
talk "Pretty Boy" Duncan##2545
turnin Cannonball Swim##26635 |goto The Cape of Stranglethorn/0 44.50,93.20
step
talk Garr Salthoof##2549
turnin The Bane of Many A Pirate##26634 |goto The Cape of Stranglethorn/0 44.50,91.90
step
talk Captain Keelhaul##2548
accept Attracting Attention##26644 |goto The Cape of Stranglethorn/0 44.40,91.60
step
talk Fleet Master Firallon##2546
turnin Attracting Attention##26644 |goto The Cape of Stranglethorn/0 46.70,95.30
step
talk Ironpatch##2547
accept Ol' Blasty##26647 |goto The Cape of Stranglethorn/0 46.60,95.00
step
talk "Dead-Eye" Drederick McGumm##43556
accept Our Mortal Enemies##26648 |goto The Cape of Stranglethorn/0 46.80,94.00
step
clicknpc Ol' Blasty##43562
Shoot at Smilin' Timmy Sticks
|tip Use the abilities on your actiopn bar.
|tip It looks like a target dummy floating around in a small boat in the water near the ship you're on.
Hit Smilin' Timmy Sticks with #5# Cannonballs |q 26647/1 |goto The Cape of Stranglethorn/0 46.90,93.90
step
Stop Controlling Ol' Blasty |outvehicle |q 26647
|tip Click the yellow arrow on your action bar.
step
talk Ironpatch##2547
turnin Ol' Blasty##26647 |goto The Cape of Stranglethorn/0 46.60,95.00
accept Drive-By Piracy##26649 |goto The Cape of Stranglethorn/0 46.60,95.00
step
Shoot at the Venture Co. Oil Workers
|tip Use the abilities on your action bar when the boat stops moving.
|tip They look like goblins working on the metal machines.
kill 75 Venture Co. Oil Worker##43596 |q 26649/1
step
Return to the Wild Shore |goto The Cape of Stranglethorn/0 46.00,89.40 < 20 |noway |c |q 26649
|tip Use the Return to Shore ability on your action bar.
step
Run up the ramp |goto The Cape of Stranglethorn/0 45.94,93.35 < 10 |only if walking
talk Ironpatch##2547
|tip Downstairs inside the ship.
turnin Drive-By Piracy##26649 |goto The Cape of Stranglethorn/0 46.60,95.00
step
kill 15 Ninja##43553+ |q 26648/1 |goto The Cape of Stranglethorn/0 57.10,82.40
step
_Click the Complete Quest Box_
turnin Our Mortal Enemies##26648
step
talk Fleet Master Firallon##2546
accept The Damsel's Luck##26650 |goto The Cape of Stranglethorn/0 46.70,95.30
step
click Captain Stillwater's Charts##204450
turnin The Damsel's Luck##26650 |goto The Cape of Stranglethorn/0 50.20,91.50
accept The Brashtide Crew##26662 |goto The Cape of Stranglethorn/0 50.20,91.50
accept Sinking From Within##26663 |goto The Cape of Stranglethorn/0 50.20,91.50
accept Making Mutiny##26664 |goto The Cape of Stranglethorn/0 50.20,91.50
step
talk Long John Copper##43659
|tip Downstairs inside the ship.
Select _"Long John Copper, is the Brashtide Crew ready for battle?"_
Speak with Long John Copper |q 26662/1 |goto The Cape of Stranglethorn/0 51.30,91.40
step
click Grog Barrel##204454
|tip It looks like a wooden barrel all the way downstairs inside the ship.
Sabotage the Grog |q 26663/1 |goto The Cape of Stranglethorn/0 50.60,91.50
step
Jump down here |goto The Cape of Stranglethorn/0 50.30,91.44 < 10 |only if walking
Run up the ramp |goto The Cape of Stranglethorn/0 45.94,93.35 < 10 |only if walking
talk Enormous Shawn Stooker##43660
|tip All the way downstairs inside the ship.
Select _"What can you tell me about the Brashtide Crew?"_
Speak with Enormous Shawn Stooker |q 26662/2 |goto The Cape of Stranglethorn/0 46.70,94.20
step
click Gunpowder Barrel##204455
|tip It looks like a wooden barrel all the way downstairs inside the ship.
Sabotage the Gunpowder |q 26663/2 |goto The Cape of Stranglethorn/0 46.80,93.70
step
Run down the ramp |goto The Cape of Stranglethorn/0 46.37,93.45 < 10 |only if walking
Run up the ramp |goto The Cape of Stranglethorn/0 45.49,93.21 < 10 |only if walking
talk Wailing Mary Smitts##43661
|tip Downstairs inside the ship.
Select _"You know the battle plan, right?"_
Speak with Wailing Mary Smitts |q 26662/3 |goto The Cape of Stranglethorn/0 44.45,93.24
step
_Click the Complete Quest Box_
turnin The Brashtide Crew##26662
step
click Cannonball Crate##204456
|tip It looks like a big wooden box all the way downstairs inside the ship.
Sabotage the Cannonballs |q 26663/3 |goto The Cape of Stranglethorn/0 44.70,92.80
step
_Click the Complete Quest Box_
turnin Sinking From Within##26663
step
talk Bloodsail Corsair##43636+
|tip All the way downstairs inside the ship.
Select _"You're a mutinous dog!  Draw steel!"_
kill Bloodsail Corsair##43636+
Accuse and Kill #9# Bloodsail Corsairs |q 26664/1 |goto The Cape of Stranglethorn/0 44.70,92.80
step
_Click the Complete Quest Box_
turnin Making Mutiny##26664
accept Call of Booty##26665
step
talk Baron Revilgaz##2496
|tip Upstairs, outside on the balcony of the building.
turnin Call of Booty##26665 |goto The Cape of Stranglethorn/0 41.20,73.10
accept Doublerum##26678 |goto The Cape of Stranglethorn/0 41.20,73.10
|tip It is very important that you do not turn this quest in.
|tip As long as you have it in your log you will be in the correct phase to farm Bloodsail Buccaneer reputation on weaker units.
step
click Barrel of Doublerum##204578
turnin Doublerum##26678 |goto The Cape of Stranglethorn/0 40.60,73.20
|tip It is very important that you do not turn this quest in.
|tip As long as you have it in your log you will be in the correct phase to farm Bloodsail Buccaneer reputation on weaker units.
Click Here to Continue |confirm
step
kill Booty Bay Bruiser##4624
|tip In order to farm reputation you must be "At War" with Booty Bay.
|tip Find the "Booty Bay" reputation in the reputation tag and toggle At War.
Earn Exalted Status with the Bloodsail Buccaneers |complete rep('Bloodsail Buccaneers')==Exalted |goto The Cape of Stranglethorn/0 41.60,73.20
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Cenarion Circle",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Cenarion Circle faction.",
achieveid={953},
patch='30001',
},[[
step
label "menu"
There are several ways to earn reputation with _Cenarion Circle_.  Earning exalted with this Faction is half of the _Achievement Guardian of Cenarius_.
You can _farm mobs and bosses_ in the _Ruins of Ahn'Qiraj_.  You would need at least 1 other person to form the raid.
or
There are a large number of _quests_ available _at Cenarion Hold_, but once those are completed you'll need to grind your way to exalted. Click here to go to these quests |confirm always |next "quest"
or
The _only repeatable quest_ as of 4.20 is from Bor Wildmane at Cenarion Hold.  You will need to _collect 10 Encrypted Twilight Text_ per _turn in_. Click here to continue |confirm always |next "farm_text"
step
label "quest"
talk Windcaller Proudhorn##15191
accept Securing the Supply Lines##8280 |goto Silithus,54.90,36.00
step
click the Wanted Poster: Deathclasp##180448
|tip It looks like a wooden message board.
accept Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 55.00,36.00
|tip You must kill an elite mob for this quest, so you may need a partner if you cannot solo it.  You can skip this quest if you can't solo it and can't find a partner to help.
step
talk Calandrath##15174
home Cenarion Hold |goto Silithus 55.50,36.80
step
talk Beetix Ficklespragg##15189
accept Deadly Desert Venom##8277 |goto Silithus 55.40,36.30
step
talk Scout Bloodfist##17081
accept Report to General Kirika##9416 |goto Silithus 53.00,34.60
step
talk Runk Windtamer##15178
fpath Cenarion Hold |goto Silithus 52.80,34.60
step
talk Huum Wildmane##15270
accept Twilight Geolords##8320 |goto Silithus 53.20,35.20
step
talk Bor Wildmane##15306
accept Secret Communication##8318 |goto Silithus 53.20,35.10
stickystart "dredgestrike"
step
kill Twilight Avenger##11880+, Twilight Stonecaller##11882+
collect 10 Encrypted Twilight Text##20404 |q 8318/1 |goto Silithus 45.40,41.30
kill 10 Twilight Geolord##11881+ |q 8320/1 |goto Silithus 45.40,41.30
step
label "dredgestrike"
kill Sand Skitterer##11738+
collect 8 Sand Skitterer Fang##20376 |q 8277/2 |goto Silithus 46.20,34.80
kill Stonelash Scorpid##11735+
collect 8 Stonelash Scorpid Stinger##20373 |q 8277/1 |goto Silithus 46.20,34.80
kill 15 Dredge Striker##11740+ |q 8280/1 |goto Silithus 46.20,34.80
step
talk Beetix Ficklespragg##15189
turnin Deadly Desert Venom##8277 |goto Silithus 55.40,36.30
accept Noggle's Last Hope##8278 |goto Silithus 55.40,36.30
step
talk Windcaller Proudhorn##15191
turnin Securing the Supply Lines##8280 |goto Silithus 54.90,36.00
accept Stepping Up Security##8281 |goto Silithus 54.90,36.00
step
talk Bor Wildmane##15306
turnin Secret Communication##8318 |goto Silithus 53.20,35.10
step
talk Huum Wildmane##15270
turnin Twilight Geolords##8320 |goto Silithus 53.20,35.20
accept Vyral the Vile##8321 |goto Silithus 53.20,35.20
step
talk Geologist Larksbane##15183
accept The Twilight Mystery##8284 |goto Silithus 53.60,35.30
step
click Twilight Tablet Fragments##180436
|tip They look like small blue-glowing stone pieces on the ground around this area.
collect 8 Twilight Tablet Fragment##20378 |q 8284/1 |goto Silithus 31.00,13.60
step
talk Geologist Larksbane##15183
turnin The Twilight Mystery##8284 |goto Silithus 53.60,35.30
accept The Deserter##8285 |goto Silithus 53.60,35.30
step
talk Hermit Ortell##15194
turnin The Deserter##8285 |goto Silithus 68.70,63.00
accept The Twilight Lexicon##8279 |goto Silithus 68.70,63.00
stickystart "dredgecrush"
step
kill Stonelash Pincer##11736+
collect 3 Stonelash Pincer Stinger##20374 |q 8278/2 |goto Silithus 53.00,53.10
step
kill Twilight Keeper Havunth##11804
|tip He walks around this area in a purple robe, so you may need to search for him.
collect Twilight Lexicon - Chapter 3##20396 |q 8279/3 |goto Silithus 46.20,39.80
step
kill Twilight Keeper Mayna##15200
|tip She walks around this area carrying a book, so you may need to search for her.
collect Twilight Lexicon - Chapter 1##20394 |q 8279/1 |goto Silithus 33.90,34.10
step
label "dredgecrush"
kill 20 Dredge Crusher##11741+ |q 8281/1 |goto Silithus 44.90,48.70
You can find more Dredge Crushers around [37.90,32.40]
step
kill Stonelash Flayer##11737+
collect 3 Stonelash Flayer Stinger##20375 |q 8278/1 |goto Silithus 51.70,64.70
kill Rock Stalker##11739+
collect 3 Rock Stalker Fang##20377 |q 8278/3 |goto Silithus 51.70,64.70
step
talk Windcaller Proudhorn##15191
turnin Stepping Up Security##8281 |goto Silithus 54.90,36.00
step
talk Beetix Ficklespragg##15189
turnin Noggle's Last Hope##8278 |goto Silithus 55.40,36.30
step
talk Noggle Ficklespragg##15190
accept Noggle's Lost Satchel##8282 |goto Silithus 55.30,36.20
step
Enter the cave |goto Silithus 70.20,16.10 < 10 |walk
Follow the path inside the cave
kill Vyral the Vile##15202
collect Vyral's Signet Ring##20466 |q 8321/1 |goto Silithus 73.10,16.50
step
Leave the cave |goto Silithus 70.20,16.10 < 10 |walk
talk Huum Wildmane##15270
turnin Vyral the Vile##8321 |goto Silithus 52.70,35.60
step
talk Commander Mar'alith##15181
accept Dearest Natalia##8304 |goto Silithus 53.20,32.50
step
talk Frankal Stonebridge##15171
Tell him you've heard he might have some information as to the weareabouts of Mistress Natalia Mar'alith
Question Frankal |q 8304/1 |goto Silithus 46.00,79.40
step
talk Rutgar Glyphshaper##15170
Tell him the Commander has sent you here to gather some information about his missing wife
Question Rutgar |q 8304/2 |goto Silithus 46.40,79.10
step
Click the Quest Complete Box under your minimap
turnin Dearest Natalia##8304
accept Into The Maw of Madness##8306
step
Follow the path up |goto Silithus 47.40,81.10 < 10 |only if walking
click Noggle's Satchel##180435
|tip It looks like a tan bag sitting on the ground next to the wall.  Be careful of Deathclasp, the elite scorpion that patrols this small area.
collect Noggle's Satchel##20379 |q 8282/1 |goto Silithus 49.20,81.60
step
kill Deathclasp##15196
|tip He's an elite scorpion that patrols this small area with his 2 guards.
collect Deathclasp's Pincer##20385 |q 8283/1 |goto Silithus 49.50,81.30
|tip Deathclasp is an elite mob, so you may need a partner if you cannot solo him.  You can skip this quest if you can't solo it and can't find a partner to help.
step
kill Twilight Keeper Exeter##11803
collect Twilight Lexicon - Chapter 2##20395 |q 8279/2 |goto Silithus 24.80,77.30
step
talk Noggle Ficklespragg##15190
turnin Noggle's Lost Satchel##8282 |goto Silithus 55.30,36.20
step
Follow the path up |goto Silithus 54.30,34.00 < 10 |only if walking
talk Vish Kozus##15182
turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto Silithus 54.50,32.00
step
talk Frankal Stonebridge##15171
accept Breaking the Code##8310 |goto Silithus 46.00,79.40
step
talk Rutgar Glyphshaper##15170
accept Glyph Chasing##8309 |goto Silithus 46.40,79.10
stickystart "brannlost"
step
Enter the hive |goto Silithus 58.50,78.40 < 10 |walk
Follow this path |goto Silithus 57.20,79.20 < 10 |walk
Follow this path |goto Silithus 56.40,83.00 < 10 |walk
Follow this path |goto Silithus 56.10,87.80 < 10 |walk
kill Mistress Natalia Mar'alith##15215
Discover the Fate of Mistress Natalia Mar'alith |q 8306/1 |goto Silithus 55.60,90.60
step
click the Hive'Regal Glyphed Crystal
|tip It looks like a white and green crystal on the ground.
<Use the transciption device to gather a rubbing.>
collect Hive'Regal Rubbing##20456 |q 8309/1 |goto Silithus 55.60,90.50
step
label "brannlost"
Follow this path |goto Silithus 56.10,87.80 < 10 |walk
Follow this path |goto Silithus 56.40,83.00 < 10 |walk
Follow this path |goto Silithus 57.20,79.20 < 10 |walk
Leave the hive |goto Silithus 58.50,78.40 < 10 |walk
kill Hive'Regal Ambusher##11730+, Hive'Regal Slavemaker##11733+, Hive'Regal Spitfire##11732+, Hive'Regal Hive Lord##11734+
collect Hive'Regal Silithid Brain##20459 |q 8310/1 |goto Silithus 59.30,74.80
collect Brann Bronzebeard's Lost Letter##20461 |n
Use Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
accept Brann Bronzebeard's Lost Letter##8308
step
Follow the path up |goto Silithus 65.80,76.50 < 10 |only if walking
talk Hermit Ortell##15194
turnin The Twilight Lexicon##8279 |goto Silithus 68.70,63.00
accept A Terrible Purpose##8287 |goto Silithus 68.70,63.00
accept True Believers##8323 |goto Silithus 68.70,63.00
step
talk Commander Mar'alith##15181
turnin Into The Maw of Madness##8306 |goto Silithus 53.20,32.50
turnin A Terrible Purpose##8287 |goto Silithus 53.20,32.50
step
kill Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
collect 10 Encrypted Twilight Text##20404 |q 8323/1 |goto Silithus 45.40,41.30
step
talk Frankal Stonebridge##15171
turnin Breaking the Code##8310 |goto Silithus 46.00,79.40
step
talk Rutgar Glyphshaper##15170
turnin Brann Bronzebeard's Lost Letter##8308 |goto Silithus 46.40,79.10
turnin Glyph Chasing##8309 |goto Silithus 46.40,79.10
accept Unraveling the Mystery##8314 |goto Silithus 46.40,79.10
step
Follow the path up |goto Silithus 65.80,76.50 < 10 |only if walking
talk Hermit Ortell##15194
turnin True Believers##8323 |goto Silithus 68.70,63.00
step
talk Geologist Larksbane##15183
turnin Unraveling the Mystery##8314 |goto Silithus 53.60,35.30
|next "menu"
step
label "farm_text"
kill Twilight Avenger##11880+, Twilight Keeper Havunth##11804+, Twilight Stonecaller##11882+, Twilight Geolord##11881+
collect Encrypted Twilight Text##20404 |n |goto Silithus,45.60,40.10
More Twilight mobs can be found at [28.00,74.80]
Here [69.70,16.60]
Here [33.50,33.90]
When you have a lot of Twilight Texts to turn in, click here |confirm always
step
talk Bor Wildmane##15306
accept Encrypted Twilight Texts##8319 |repeatable |goto Silithus,53.20,35.10
You can click here to farm more Texts |confirm always |next "farm_text"
or
Click here to do quests outside of Silithus for more rep |confirm always
step
talk Zen'Aliri##38269
accept Finding Stormclaw##24854 |goto Un'Goro Crater,55.70,60.60
step
talk Garl Stormclaw##38274
turnin Finding Stormclaw##24854 |goto Un'Goro Crater 70.80,76.40
accept Claws of White##24719 |goto Un'Goro Crater 70.80,76.40
step
kill Ravasaur##6505+,Ravasaur Runner##6506+,Ravasaur Hunter##6507+,Venomhide Ravasaur##6508+
collect 5 White Ravasaur Claw##11477 |q 24719/1 |goto Un'Goro Crater 67.40,72.30
More can be found around [Un'Goro Crater,69.10,57.10]
step
talk Garl Stormclaw##38274
turnin Claws of White##24719 |goto Un'Goro Crater 70.60,76.80
accept Carried on the Waves##24686 |goto Un'Goro Crater 70.60,76.80
step
While traveling to the coordinates, look in the water for Bloodpetal Seeds
Catch the Bloodpetal Seeds with Garl's Net. |use Garl's Net##50441
collect 4 Un'Goro Lasher Seed##50253 |q 24686/1 |goto Un'Goro Crater 73.50,60.20
step
talk Garl Stormclaw##38274
turnin Carried on the Waves##24686 |goto Un'Goro Crater 70.60,75.90
accept Flowing to the North##24689 |goto Un'Goro Crater 70.60,75.90
step
talk Ithis Moonwarden##38263
turnin Flowing to the North##24689 |goto Un'Goro Crater 76.40,48.30
accept Bouquets of Death##24687 |goto Un'Goro Crater 76.40,48.30
step
Attack the Juvenile Bloodpetals in the area.
kill 6 Pack of Juvenile Bloodpetal##38213+ |q 24687/1 |goto Un'Goro Crater 75.80,44.10
step
talk Ithis Moonwarden##38263
turnin Bouquets of Death##24687 |goto Un'Goro Crater 76.40,48.30
accept Aberrant Flora##24855 |goto Un'Goro Crater 76.40,48.30
step
kill 11 Bloodpetal##6512+ |q 24855/1 |goto Un'Goro Crater 69.90,34.10
step
talk Ithis Moonwarden##38263
turnin Aberrant Flora##24855 |goto Un'Goro Crater 76.40,48.30
step
talk Adrine Towhide##44456
accept Zen'Kiki, the Druid##26953 |goto Western Plaguelands/0 48.90,54.80
step
talk Selyria Groenveld##44457
accept I Ain't Sayin' You a Gourd-Digger...##26956 |goto Western Plaguelands/0 48.50,54.90
stickystart "wildlifekill"
step
Click Unhealthy-Looking Pumpkins
|tip They look like pumpkins with green bottoms on the ground around this area.
kill Thrashing Pumpkin##44487+
Remove 3 Unhealthy-Looking Pumpkins |q 26956/3 |goto Western Plaguelands/0 47.40,52.90
step
Click Rotten Apples
|tip They look like red apples sitting on the ground around this area.
kill Pome Wraith##44488+
Remove 4 Rotten Apples |q 26956/2 |goto Western Plaguelands/0 46.80,54.10
step
Click Bad Corn
|tip They look like yellow-ish pieces of corn laying on the ground around this area.
kill Corn Stalker##44489+
Remove 6 Bad Corn |q 26956/1 |goto Western Plaguelands/0 45.80,53.40
step
label "wildlifekill"
kill Plague Lurker##1824+, Venom Mist Lurker##1822+, Diseased Wolf##1817+, Hulking Plaguebear##44482+
|tip You must do this with the troll Zen'Kiki next to you. If you lose him, return to the Menders' Stead and talk to him.
Kill 20 Wildlife with Zen'Kiki |q 26953/1 |goto Western Plaguelands/0 50.30,59.60
step
talk Adrine Towhide##44456
turnin Zen'Kiki, the Druid##26953 |goto Western Plaguelands/0 48.90,54.80
accept A Different Approach##26954 |goto Western Plaguelands/0 48.90,54.80
step
talk Selyria Groenveld##44457
turnin I Ain't Sayin' You a Gourd-Digger...##26956 |goto Western Plaguelands/0 48.50,54.90
step
Click Zen'Kiki
|tip He's the troll that's following you around.  Keep clicking him to pull the Diseased Hawks down to you.
kill 7 Diseased Hawk##44481 |q 26954/1 |goto Western Plaguelands/0 53.90,53.70
step
talk Adrine Towhide##44456
turnin A Different Approach##26954 |goto Western Plaguelands/0 48.90,54.80
step
talk Field Agent Kaartish##44454
accept A New Era for the Plaguelands##26999 |goto Western Plaguelands/0 49.30,55.00
step
kill Hulking Plaguebear##44482+
collect 4 Hulking Plaguebear Sample##60762 |q 26999/3 |goto Western Plaguelands/0 46.00,48.70
kill Diseased Wolf##1817+
collect 4 Diseased Wolf Sample##60763 |q 26999/4 |goto Western Plaguelands/0 46.00,48.70
step
kill Plague Lurker##1824+
collect 4 Plague Lurker Sample##60760 |q 26999/1 |goto Western Plaguelands/0 57.00,62.70
kill Venom Mist Lurker##1822+
collect 4 Venom Mist Lurker Sample##60761 |q 26999/2 |goto Western Plaguelands/0 57.00,62.70
step
talk Field Agent Kaartish##44454
turnin A New Era for the Plaguelands##26999 |goto Western Plaguelands/0 49.30,55.00
accept Northridge Lumber Mill##26935 |goto Western Plaguelands/0 49.30,55.00
step
talk Nathaniel Dumah##11616
turnin Northridge Lumber Mill##26935 |goto Western Plaguelands/0 48.10,32.40
accept Learning the Ropes##27000 |goto Western Plaguelands/0 48.10,32.40
step
Click a Hearthglen Mustang
|tip They are brown horses.
Ride the Hearthglen Mustang |invehicle |c |q 27000 |goto Western Plaguelands/0 47.70,31.70
step
Use your Whinny ability on your hotbar near Northridge Spiders
Frighten 25 Northridge Spiders |q 27000/1 |goto Western Plaguelands/0 47.40,35.00
step
talk Nathaniel Dumah##11616
turnin Learning the Ropes##27000 |goto Western Plaguelands/0 48.10,32.40
accept This Means WAR (Wild Arachnid Roundup)##27001 |goto Western Plaguelands/0 48.10,32.40
step
Click a Hearthglen Mustang |tip They are brown horses.
Ride the Hearthglen Mustang |invehicle |c |q 27001 |goto Western Plaguelands/0 47.70,31.70
step
Use your Whinny ability on your hotbar near Northridge Spiders
Continuously scare the Northridge Spiders and try to make them run to [48.00,32.90]
The Hearthglen Recruits will kill the Northridge Spiders
Lure 10 Northridge Spiders to Lumber Mill |q 27001/1 |goto Western Plaguelands/0 47.00,35.30
step
Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
step
talk Nathaniel Dumah##11616
turnin This Means WAR (Wild Arachnid Roundup)##27001 |goto Western Plaguelands/0 48.10,32.40
accept An Audience with the Highlord##27002 |goto Western Plaguelands/0 48.10,32.40
step
talk Highlord Tirion Fordring##44441
turnin An Audience with the Highlord##27002 |goto Western Plaguelands/0 42.00,14.80
step
talk Field Agent Kaartish##44454
accept Gahrron's Withering Cauldron##27053 |goto Western Plaguelands/0 49.30,54.90
step
kill Cauldron Lord Soulwrath##11078
collect Gahrron's Withering Cauldron Key##13196 |q 27053/1 |goto Western Plaguelands/0 62.70,58.90
step
Click the Scourge Cauldron
|tip It's a huge shaking black pot with orange liquid in it on a stone platform.
turnin Gahrron's Withering Cauldron##27053 |goto Western Plaguelands/0 62.60,58.60
accept Return to the Stead##27057 |goto Western Plaguelands/0 62.60,58.60
step
talk Field Agent Kaartish##44454
turnin Return to the Stead##27057 |goto Western Plaguelands/0 49.30,55.00
step
talk Adrine Towhide##44456
accept Zen'Kiki and the Cultists##26955 |goto Western Plaguelands/0 48.90,54.80
step
Click Cultist Cages
|tip They look like big yellow cages around this area
Free and Heal 4 Captive Plaguebears |q 26955/1 |goto Western Plaguelands/0 66.70,48.90
step
talk Adrine Towhide##44456
turnin Zen'Kiki and the Cultists##26955 |goto Western Plaguelands/0 48.90,54.80
step
talk Carlin Redpath##11063
accept Little Pamela##27383 |goto Eastern Plaguelands,35.60,68.90
step
talk Pamela Redpath##10926
turnin Little Pamela##27383 |goto Eastern Plaguelands,32.50,83.70
accept Pamela's Doll##27384 |goto Eastern Plaguelands,32.50,83.70
step
click Pamela's Doll's Right Side##176143
collect Pamela's Doll's Right Side##12888 |q 27384 |goto Eastern Plaguelands 34.00,85.40
click Pamela's Doll's Left Side##176142
collect Pamela's Doll's Left Side##12887 |q 27384 |goto Eastern Plaguelands 34.00,85.40
click Pamela's Doll's Head##176116
collect Pamela's Doll's Head##12886 |q 27384 |goto Eastern Plaguelands 34.00,85.40
You can find more pieces here [34.00,85.00] here [35.50,85.50] and here [35.60,82.90]
step
Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
collect Pamela's Doll##12885 |q 27384/1
step
talk Pamela Redpath##10926
turnin Pamela's Doll##27384 |goto Eastern Plaguelands 32.40,83.70
accept I'm Not Supposed to Tell You This##27392 |goto Eastern Plaguelands 32.40,83.70
step
kill The Lone Hunter##45450+
collect Joseph's Hunting Blade##60987 |q 27392/1 |goto Eastern Plaguelands 40.30,83.80
step
talk Pamela Redpath##10926
turnin I'm Not Supposed to Tell You This##27392 |goto Eastern Plaguelands 32.50,83.60
accept Uncle Carlin##27385 |goto Eastern Plaguelands 32.50,83.60
step
talk Carlin Redpath##11063
turnin Uncle Carlin##27385 |goto Eastern Plaguelands 35.60,68.90
accept A Strange Historian##27386 |goto Eastern Plaguelands 35.60,68.90
step
talk Chromie##10667
turnin A Strange Historian##27386 |goto Eastern Plaguelands 35.30,68.10
step
talk Urk Gagbaz##45500
accept Cenarion Tenacity##27544 |goto Eastern Plaguelands,35.00,68.10
step
talk Rayne##16135
turnin Cenarion Tenacity##27544 |goto Eastern Plaguelands 30.20,56.90
accept Postponing the Inevitable##27420 |goto Eastern Plaguelands 30.20,56.90
accept Amidst Death, Life##27421 |goto Eastern Plaguelands 30.20,56.90
stickystart "plagdissem"
step
Go inside the necropolis
Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
Plant a Seed in the Western Necropolis |q 27421/2 |goto Eastern Plaguelands 33.70,44.40
step
Go inside the necropolis
Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
Plant a Seed in the Northeastern Necropolis |q 27421/3 |goto Eastern Plaguelands 37.80,42.50
step
Go inside the necropolis
Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
Plant a Seed in the Southeastern Necropolis |q 27421/1 |goto Eastern Plaguelands 37.60,48.30
step
label "plagdissem"
kill Shadowmage##8550+, Dark Adept##8546+
collect Plague Disseminator Control Rune##61037 |n
Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
Destroy 3 Plague Disseminators |q 27420/1 |goto Eastern Plaguelands 36.40,46.00
step
talk Rayne##16135
turnin Postponing the Inevitable##27420 |goto Eastern Plaguelands 30.20,56.90
turnin Amidst Death, Life##27421 |goto Eastern Plaguelands 30.20,56.90
step
This is the end of the questing
Click here to go back to the Silithus Reputation menu |confirm always |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Darkspear Trolls",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Darkspear Trolls faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Darkspear Trolls') < Exalted end,
},[[
step
talk Champion Uru'zin##50477
buy Darkspear Tabard##45582 |goto Orgrimmar,50.00,58.10
Equip your Darkspear Trolls Tabard |equipped Darkspear Tabard##45582 |use Darkspear Tabard##45582 |future
You can run any dungeon that grants experience to gain reputation for the Darkspear Trolls
Become Exalted with Darkspear Trolls |complete rep('Darkspear Trolls')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\The Defilers",{
expansion="mists",
description="Complete Arathi Basin and the Comp Stomp brawl to gain reputation.",
achieveid={710},
patch='30001',
},[[
step
Reach "Friendly" Reputation with The Defilers |complete rep('The Defilers') >= Friendly
|tip Use the Player vs. Player Group Finder tool and queue for Arathi Basin.
|tip If the "Comp Stomp Brawl" bonus battleground is avalable, queue for that instead.
|tip Continue running these battlegrounds for reputation.
step
talk Zidormi##141649
Select _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete QC.InPhase('Old Arathi') or rep('The Defilers') == Exalted |goto Arathi Highlands/0 38.24,90.09
step
talk Rutherford Twing##15126
accept Defiler's Basic Care Package##8263 |goto Arathi Highlands/0 68.47,30.37 |only if default
accept Defiler's Standard Care Package##8264 |goto Arathi Highlands/0 68.47,30.37 |only if level >= 35 and level < 45
accept Defiler's Advanced Care Package##8265 |goto Arathi Highlands/0 68.47,30.37 |only if level >= 45
step
Reach "Exalted" Reputation with The Defilers |complete rep('The Defilers') == Exalted
|tip Use the Player vs. Player Group Finder tool and queue for Arathi Basin.
|tip If the "Comp Stomp Brawl" bonus battleground is avalable, queue for that instead.
|tip Continue running these battlegrounds for reputation.
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Frostwolf Clan",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Frostwolf Clan faction.",
achieveid={708},
patch='30002',
},[[
step
In order to gain reputation with the Frostwolf Clan you must participate in Alterac Valley, but first you should pick up a few quests.
|confirm
step
talk Voggah Deathgrip##13817
accept The Battle for Alterac##7142 |goto Hillsbrad Foothills 58.70,34.20
step
talk Warmaster Laggrond##13840
accept Proving Grounds##7161 |goto Hillsbrad Foothills 57.80,33.30
step
Enter the cave |goto Hillsbrad Foothills 58.70,33.40 < 5 |q 7161 |walk
talk Corporal Teeka Bloodsnarl##13776
accept Towers and Bunkers##7101 |goto Hillsbrad Foothills 59.70,31.20
accept The Graveyards of Alterac##7082 |goto Hillsbrad Foothills 59.70,31.20
accept Capture a Mine##7124 |goto Hillsbrad Foothills 59.70,31.20
step
To join Alterac Valley hit the _[H]_ key, click _Alterac Valley_, and click _Join Battle_.
|confirm
step
talk Smith Regzar##13176
accept Enemy Booty##7224 |goto Alterac Valley 49.60,82.60
step
Enter the cave |goto Alterac Valley 52.90,89.50 < 5 |q 7161 |walk
Follow the path around and click the Frostwolf Banner
click Frostwolf Banner##179025
collect Frostwolf Banner##17850 |q 7161/1 |goto Alterac Valley 50.60,93.30
step
Exit the cave |goto Alterac Valley 52.90,89.50 < 5 |c |q 7161 |walk
step
label "checklist"
While in Alterac Valley:
|tip You probably won't be able to do everything in one game, keep joining Alterac Valley matches.
Click Alliance Flag
Assault any Graveyard |q 7082/1
Capture any Mine |q 7124/1
Click Horde Flag
Assault any Tower |q 7101/1
Loot Alliance players when they die.
collect 20 Armor Scraps##17422 |q 7224/1
kill Vanndar Stormpike##11948 |q 7142/1
step
Before you leave Alterac Valley:
talk Smith Regzar##13176
turnin Enemy Booty##7224 |goto Alterac Valley 49.60,82.60
step
To return to the Alterac Valley checklist click here. |next "checklist" |confirm
To continue forward click here. |confirm
step
talk Voggah Deathgrip##13817
turnin The Battle for Alterac##7142 |goto Hillsbrad Foothills 58.70,34.20
step
talk Warmaster Laggrond##13840
turnin Proving Grounds##7161 |goto Hillsbrad Foothills 57.80,33.30
step
Enter the cave |goto Hillsbrad Foothills 58.70,33.40 < 5 |q 7124 |walk
talk Corporal Teeka Bloodsnarl##13776
turnin Towers and Bunkers##7101 |goto Hillsbrad Foothills 59.70,31.20
turnin The Graveyards of Alterac##7082 |goto Hillsbrad Foothills 59.70,31.20
turnin Capture a Mine##7124 |goto Hillsbrad Foothills 59.70,31.20
step
Continue joining Alterac Valley until you reach Friendly with the Frostwolf Clan. |complete rep('Frostwolf Clan')>=Friendly |next "friendly"
step
label "friendly"
talk Warmaster Laggrond##13840
accept Rise and Be Recognized##7163 |goto Hillsbrad Foothills 57.80,33.30
step
Continue joining Alterac Valley until you reach Honored with the Frostwolf Clan. |complete rep('Frostwolf Clan')>=Honored |next "honored"
step
label "honored"
talk Warmaster Laggrond##13840
accept Honored Amongst the Clan##7164 |goto Hillsbrad Foothills 57.80,33.30
step
Continue joining Alterac Valley until you reach Revered with the Frostwolf Clan. |complete rep('Frostwolf Clan')==Revered |next "revered"
step
label "revered"
talk Warmaster Laggrond##13840
accept Earned Reverence##7165 |goto Hillsbrad Foothills 57.80,33.30
step
Continue joining Alterac Valley until you reach Exalted with the Frostwolf Clan. |complete rep('Frostwolf Clan')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Hydraxian Waterlords",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Hydraxian Waterlords faction.",
achieveid={955},
patch='30001',
},[[
step
talk Lothos Riftwaker##14387 |goto Burning Steppes 18.20,24.90
Ask Lothos to transport you to Molten Core |goto Molten Core |noway |c
step
Kill every creature that is hostile in this instance in order to gain reputation.
|tip You will have to clear this place many times to reach Exalted.
Earn Exalted status with the Hydraxian Waterlords |complete rep('Hydraxian Waterlords')==Exalted
|tip You can only become Exalted by killing Golemagg the Incinerator or Ragnaros, the maximum rep you can get without these two dying is 20999/21000 Revered.
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Orgrimmar",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Orgrimmar faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Orgrimmar') < Exalted end,
},[[
step
talk Stone Guard Nargol##50488
buy Orgrimmar Tabard##45581 |n |goto Orgrimmar,50.40,58.40
Equip your Orgrimmar Tabard |equipped Orgrimmar Tabard##45581 |use Orgrimmar Tabard##45581 |future
You can run any dungeon that grants experience to gain reputation for Orgrimmar
Become Exalted with Orgrimmar |complete rep('Orgrimmar')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Ravenholdt",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Ravenholdt faction.",
achieveid={2336},
patch='30100',
},[[
step
In order to get Exalted with Ravenholdt Faction, you need to grind mobs to _11,999/12,000_ Honored reputation.
Once you've reached Honored, you will need to collect a lot of Heavy Junkboxes.  If you aren't a rogue, you will need the assistance of one.
You can get a lot of Heavy Junkboxes frequently if you go to Blackrock Spire, but unless you're an engineer, it will be time consuming to run back and forth to a mailbox to clear up space.
|confirm always
step
kill Syndicate Mercenary##2589+, Syndicate Highwayman##2586+, Syndicate Pathstalker##2587+, Syndicate Conjuror##2590+, Syndicate Magus##2591+, Syndicate Thief##24477+, Syndicate Prowler##2588+ |goto Arathi Highlands,27.10,30.60
You can find more Syndicate here: [Arathi Highlands,19.50,61.50]
Reach _11,999/12,000_ Honored with Ravenholdt.
|tip You can only get 1 point away from Revered by grinding, then you will have to do quests.
Click here to continue |confirm
|only if repval('Ravenholdt','Honored')<=11999
step
label "boxes"
Now that you have reached Revered, or close to it, you will need to do repeatable quests until Exalted.
The only thing you need for the repeatable quests are _Heavy Junkboxes_.
You can get these by having a _Rogue_ pickpocket mobs in the Blackrock Spire Dungeon.
|tip You can also announce in the Trade Chat of any major city that you are willing to purchase Heavy Junkboxes in multiples of 5, whether by mail or in person for x amount of gold.
You will need to turnin a total of 1400 _Heavy Junkboxes_ with at least 1 item left in them to go from _Revered_ to _Exalted_.
|tip If you have the guild perk Mr. Popularity you only need 1170.
collect Heavy Junkbox##16885+ |n |goto Blackrock Spire/2 59.00,58.10
Click here to continue and turn in your Boxes. |confirm
step
talk Winstone Wolfe##7323
accept Junkboxes Needed##8249 |repeatable |n |goto Hillsbrad Foothills 71.40,45.00
You are currently _Honored_ with Ravenholdt |only if rep('Ravenholdt')==Honored
You are currently _Revered_ with Ravenholdt |only if rep('Ravenholdt')==Revered
Reach Exalted with Ravenholdt |complete rep('Ravenholdt')==Exalted
or
Click here to get more _Heavy Junkboxes_ |confirm |next "boxes"
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\The Steamwheedle Cartel",{
expansion="mists",
description="This guide will walk you through becoming exalted with The Steamwheedle Cartel faction.",
},[[
step
label "Steam_Menu"
To earn the Insane Title, you will need to get your reputation to Exalted with all the
Steamwheedle Cartel factions: _Booty Bay_, _Gadgetzan_, _Everlook_, and _Ratchet_. While raising your reputation with these factions
You will need to keep Honored status with the _Bloodsail Buccaneers_.
Click here to continue |confirm always
step
label "Steam_Menu2"
Click here to work on _Booty Bay_ reputation. |confirm |next "bootybaymenu" |only if rep('Booty Bay')<Exalted
Click here to work on _Gadgetzan_ reputation. |confirm |next "gadgetmenu" |only if rep('Gadgetzan')<Exalted
Click here to work on _Everlook_ reputation. |confirm |next "everlookmenu" |only if rep('Everlook')<Exalted
Click here to work on _Ratchet_ reputation. |confirm |next "ratchetmenu" |only if rep('Ratchet')<Exalted
Click here if you are exalted with _Ratchet_, _Everlook_, _Booty Bay_, and are 1 reputation away from Exalted with _Gadgetzan_. |confirm |next "gadgetmenu2" |only if rep('Gadgetzan')<Exalted
step
label "bootybaymenu"
You are currently _Friendly_ with Booty Bay |only if rep('Booty Bay')==Friendly
You are currently _Honored_ with Booty Bay |only if rep('Booty Bay')==Honored
You are currently _Revered_ with Booty Bay |only if rep('Booty Bay')==Revered
Become Exalted with Booty Bay |complete rep('Booty Bay')==Exalted
Click here to raise your Reputation with Booty Bay by _killing Southsea Mobs_.
|tip You can use this regardless of your current reputation. |confirm always |next "gadget" |only if rep('Booty Bay')<=Revered
Click here to raise your Reputation with Booty Bay by _turning in stacks of cloth_.
|tip This will only work from Hated up to Neutral |confirm always |next "farmbbcloth" |only if rep('Booty Bay')<Neutral
step
label "gadgetmenu"
You are currently _Friendly_ with Gadgetzan |only if rep('Gadgetzan')==Friendly
You are currently _Honored_ with Gadgetzan |only if rep('Gadgetzan')==Honored
You are currently _Revered_ with Gadgetzan |only if rep('Gadgetzan')==Revered
Become Exalted with Gadgetzan |complete rep('Gadgetzan')==Exalted
Click here to raise your Reputation with Gadgetzan by _killing Southsea Mobs_.
|tip You can use this regardless of your current reputation. |confirm always |next "gadget" |only if rep('Gadgetzan')<=Revered
Click here to raise your Reputation with Gadgetzan by _turning in stacks of cloth_.
|tip This will only work from Hated up to Neutral |confirm always |next "farmgadgetcloth" |only if rep('Booty Bay')<Neutral
step
label "gadgetmenu2"
You are currently _Revered_ with Gadgetzan |only if rep('Gadgetzan')==Revered
Become Exalted with Gadgetzan |complete rep('Gadgetzan')==Exalted
|tip This part of the guide is only to get the last point of reputation to gain exalted reputation with Gadgetzan.
kill Southsea Cutthroat##3383+, Southsea Privateer##3384+ |goto The Barrens/0 77.20,89.80
Gain Exalted reputation with Gadgetzan |complete rep('Gadgetzan')==Exalted
step
label "everlookmenu"
You are currently _Friendly_ with Everlook |only if rep('Everlook')==Friendly
You are currently _Honored_ with Everlook |only if rep('Everlook')==Honored
You are currently _Revered_ with Everlook |only if rep('Everlook')==Revered
Become Exalted with Everlook |complete rep('Everlook')==Exalted
Click here to raise your Reputation with Everlook by _killing Southsea Mobs_.
|tip You can use this regardless of your current reputation. |confirm always |next "ratchet" |only if rep('Everlook')<=Revered
Click here to raise your Reputation with Everlook by _turning in stacks of cloth_.
|tip This will only work from Hated up to Neutral |confirm always |next "everlookcloth" |only if rep('Booty Bay')<Neutral
step
label "ratchetmenu"
You are currently _Friendly_ with Ratchet |only if rep('Ratchet')==Friendly
You are currently _Honored_ with Ratchet |only if rep('Ratchet')==Honored
You are currently _Revered_ with Ratchet |only if rep('Ratchet')==Revered
Become Exalted with Ratchet |complete rep('Ratchet')==Exalted
Click here to raise your Reputation with Ratchet by _killing Southsea Mobs_.
|tip You can use this regardless of your current reputation. |confirm always |next "ratchet" |only if rep('Ratchet')<=Revered
Click here to raise your Reputation with Ratchet by _turning in stacks of cloth_.
|tip This will only work from Hated up to Neutral |confirm always |next "ratchetcloth" |only if rep('Booty Bay')<Neutral
step
label "farmbbcloth"
map Thousand Needles
path	10.70,9.20	11.60,9.40
path	13.70,7.90	12.60,4.90
kill Grimtotem Pillager##39947+
collect 40 Silk Cloth##4306 |n
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Silk Cloth for reputation. |confirm |next "turninbbcloth"
step
label "turninbbcloth"
#include "vendor_Tailoring"
buy 4 Red Dye##2604 |n
|tip You will need 4 Red Dye for every 40 Silk Cloth.
|confirm
step
talk Bloodsail Traitor##16399
accept Traitor to the Bloodsail##9259 |n |goto The Cape of Stranglethorn 48.60,63.20
turnin Traitor to the Bloodsail##9259 |n |goto The Cape of Stranglethorn 48.60,63.20
Turn this quest in until you are Neutral with Booty Bay |complete rep('Booty Bay')>=Neutral
Click here to continue gathering cloth for turn-ins. |confirm |next "farmbbcloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "farmgadgetcloth"
kill Risen Guardsman##10418+, Risen Initiate##10420+, Risen Defender##10421+, Risen Sorcerer##10422+, Willey Hopebreaker##10997+, Risen Gallant##10424+, Risen Inquisitor##10426+, Risen Monk##11043+, Instructor Galford##10811+
collect 40 Mageweave Cloth##4338 |n |goto Stratholme/1 33.40,33.00
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Mageweave Cloth for reputation. |confirm |next "turningadgetcloth"
step
label "turningadgetcloth"
#include "vendor_Blacksmithing"
buy 4 Strong Flux##3466 |n
|tip You will need 4 Strong Flux for every 40 Mageweave Cloth.
|confirm
step
talk Rumsen Fizzlebrack##16417
accept War at Sea##9268 |n |goto Tanaris 50.40,27.20
turnin War at Sea##9268 |n |goto Tanaris 50.40,27.20
Turn this quest in until you are Neutral with Gadgetzan. |complete rep('Gadgetzan')>=Neutral
Click here to continue gathering cloth for turn-ins. |confirm |next "farmgadgetcloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "farmevercloth"
map Silithus
path	44.50,38.00	46.50,40.40	44.90,44.70
path	42.90,41.40	34.20,33.70	31.60,32.10
path	32.90,30.10	35.20,29.90
kill Twilight Avenger##11880+
kill Twilight Geolord##11881+
|tip AVOID Twilight Stonecaller##11882+
collect 40 Runecloth##14047 |n
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Silk Cloth for reputation. |confirm |next "everlookcloth"
step
label "everlookcloth"
#include "vendor_Blacksmithing"
buy 4 Coal##3857 |n
|tip You will need 4 Coal for every 40 Runecloth.
|confirm
step
talk Bronn Fitzwrench##16416
accept Making Amends##9266 |n |goto Winterspring 58.00,52.50
turnin Making Amends##9266 |n |goto Winterspring 58.00,52.50
Turn this quest in until you are Neutral with Everlook. |complete rep('Everlook')>=Neutral
Click here to continue gathering cloth for turn-ins. |confirm |next "farmevercloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "ratchetcloth"
kill Dragonmaw Whelpstealer##42041+
kill Ebon Slavehunter##42043+
collect 40 Linen Cloth##2589 |n |goto Wetlands/0 67.30,47.30
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Silk Cloth for reputation. |confirm |next "turninratchetcloth"
step
label "turninratchetcloth"
#include "vendor_Alchemy"
buy 4 Crystal Vial##3371 |n
|tip You will need 4 Crystal Vials for every 40 Linen Cloth.
|confirm
step
talk Mupsi Shacklefridd##16418
accept Mending Old Wounds##9267 |n |goto The Barrens 65.80,72.00
turnin Mending Old Wounds##9267 |n |goto The Barrens 65.80,72.00
Turn this quest in until you are Neutral with Ratchet |complete rep('Ratchet')>=Neutral
Click here to continue gathering cloth for turn-ins. |confirm |next "ratchetcloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "gadget"
kill Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+ |goto Tanaris,72.30,47.10
You can find more Pirates around here: [69.50,53.80]
Hated |complete rep('Gadgetzan')>=Hated |only if rep('Gadgetzan')>=Hated and rep('Gadgetzan')<=Hated
Hostile |complete rep('Gadgetzan')>=Hostile |only if rep('Gadgetzan')>=Hostile and rep('Gadgetzan')<=Hostile
Unfriendly |complete rep('Gadgetzan')>=Unfriendly |only if rep('Gadgetzan')>=Unfriendly and rep('Gadgetzan')<=Unfriendly
Neutral |complete rep('Gadgetzan')>=Neutral |only if rep('Gadgetzan')>=Neutral and rep('Gadgetzan')<=Neutral
Friendly |complete rep('Gadgetzan')>=Friendly |only if rep('Gadgetzan')>=Friendly and rep('Gadgetzan')<=Friendly
Honored |complete rep('Gadgetzan')>=Honored |only if rep('Gadgetzan')>=Honored and rep('Gadgetzan')<=Honored
Revered |complete rep('Gadgetzan')>=Revered |only if rep('Gadgetzan')>=Revered and rep('Gadgetzan')<=Revered
Gain Exalted reputation with Gadgetzan |complete rep('Gadgetzan')==Exalted
And
Hated |complete rep('Booty Bay')>=Hated |only if rep('Booty Bay')>=Hated and rep('Booty Bay')<=Hated
Hostile |complete rep('Booty Bay')>=Hostile |only if rep('Booty Bay')>=Hostile and rep('Booty Bay')<=Hostile
Unfriendly |complete rep('Booty Bay')>=Unfriendly |only if rep('Booty Bay')>=Unfriendly and rep('Booty Bay')<=Unfriendly
Neutral |complete rep('Booty Bay')>=Neutral |only if rep('Booty Bay')>=Neutral and rep('Booty Bay')<=Neutral
Friendly |complete rep('Booty Bay')>=Friendly |only if rep('Booty Bay')>=Friendly and rep('Booty Bay')<=Friendly
Honored |complete rep('Booty Bay')>=Honored |only if rep('Booty Bay')>=Honored and rep('Booty Bay')<=Honored
Revered |complete rep('Booty Bay')>=Revered |only if rep('Booty Bay')>=Revered and rep('Booty Bay')<=Revered
Gain Exalted reputation with Booty Bay |complete rep('Booty Bay')==Exalted
Click to go back to the Steamwheedle Menu |confirm always |next "Steam_Menu2"
|next "Steam_Menu2"
step
label "ratchet"
Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+ |goto Tanaris,72.30,47.10
Hated |complete rep('Ratchet')>=Hated |only if rep('Ratchet')>=Hated and rep('Ratchet')<=Hated
Hostile |complete rep('Ratchet')>=Hostile |only if rep('Ratchet')>=Hostile and rep('Ratchet')<=Hostile
Unfriendly |complete rep('Ratchet')>=Unfriendly |only if rep('Ratchet')>=Unfriendly and rep('Ratchet')<=Unfriendly
Neutral |complete rep('Ratchet')>=Neutral |only if rep('Ratchet')>=Neutral and rep('Ratchet')<=Neutral
Friendly |complete rep('Ratchet')>=Friendly |only if rep('Ratchet')>=Friendly and rep('Ratchet')<=Friendly
Honored |complete rep('Ratchet')>=Honored |only if rep('Ratchet')>=Honored and rep('Ratchet')<=Honored
Revered |complete rep('Ratchet')>=Revered |only if rep('Ratchet')>=Revered and rep('Ratchet')<=Revered
Gain Exalted reputation with Ratchet |complete rep('Ratchet')==Exalted
And
Hated |complete rep('Everlook')>=Hated |only if rep('Everlook')>=Hated and rep('Everlook')<=Hated
Hostile |complete rep('Everlook')>=Hostile |only if rep('Everlook')>=Hostile and rep('Everlook')<=Hostile
Unfriendly |complete rep('Everlook')>=Unfriendly |only if rep('Everlook')>=Unfriendly and rep('Everlook')<=Unfriendly
Neutral |complete rep('Everlook')>=Neutral |only if rep('Everlook')>=Neutral and rep('Everlook')<=Neutral
Friendly |complete rep('Everlook')>=Friendly |only if rep('Everlook')>=Friendly and rep('Everlook')<=Friendly
Honored |complete rep('Everlook')>=Honored |only if rep('Everlook')>=Honored and rep('Everlook')<=Honored
Revered |complete rep('Everlook')>=Revered |only if rep('Everlook')>=Revered and rep('Everlook')<=Revered
Gain Exalted reputation with Everlook |complete rep('Everlook')==Exalted
Click to go back to the Steamwheedle Menu |confirm always |next "Steam_Menu2"
|next "Steam_Menu2"
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Thunder Bluff",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Thunder Bluff faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Thunder Bluff') < Exalted end,
},[[
step
talk Brave Tuho##50483
buy Thunder Bluff Tabard##45584 |n |goto Thunder Bluff,47.00,50.20
Equip your Thunder Bluff Tabard |equipped Thunder Bluff Tabard##45584 |use Thunder Bluff Tabard##45584 |future
You can run any dungeon that grants experience to gain reputation for Thunder Bluff
Become Exalted with Thunder Bluff |complete rep('Thunder Bluff')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Timbermaw Hold",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Timbermaw Hold faction.",
achieveid={944},
patch='30001',
},[[
step
talk Nafien##15395
accept Deadwood of the North##28338 |goto Felwood,64.00,10.30
accept Disarming Bears##28366 |goto Felwood,64.00,10.30
step
talk Ferli##48461
accept Stupid Drizle!##28362 |goto Felwood 64.10,10.30
step
talk Drizle##47556
turnin Stupid Drizle!##28362 |goto Felwood 60.60,9.50
accept The Chieftain's Key##28364 |goto Felwood 60.60,9.50
step
kill Chieftain Bloodmaw##9462
collect Drizle's Key##63695 |q 28364/1 |goto Felwood 62.10,9.90
step
talk Drizle##47556
turnin The Chieftain's Key##28364 |goto Felwood 60.60,9.50
step
kill Deadwood Den Watcher##7156+, Deadwood Avenger##7157+, Deadwood Shaman##7158+
Kill 15 Deadwood Furbolg |q 28338/1 |goto Felwood 62.00,12.80
click Deadwood Weapon Pile##207126
collect 7 Deadwood Weapons##63689 |q 28366/1 |goto Felwood 62.00,12.80
collect 1 Deadwood Ritual Totem##20741 |n
accept Deadwood Ritual Totem##8470
You can find more around [Felwood,59.70,9.80].
step
talk Nafien##15395
turnin Deadwood of the North##28338 |goto Felwood 64.00,10.30
turnin Disarming Bears##28366 |goto Felwood 64.00,10.30
accept Speak to Salfa##28521 |goto Felwood 64.00,10.30
You should be able to turn in Feathers for Nafien, a repeatable reputation quest.
step
talk Kernda##11558
turnin Deadwood Ritual Totem##8470 |goto Felwood 64.70,5.70
You should be friendly with Timbermaw after completing this quest.
only if rep('Timbermaw Hold')>=Neutral
step
talk Meilosh##11557
accept Runecloth##6031 |goto Felwood 64.90,5.20
only if rep ('Timbermaw Hold')>=Friendly
step
talk Salfa##11556
turnin Speak to Salfa##28521 |goto Winterspring,21.10,46.20
accept Delivery for Donova##28524 |goto Winterspring,21.10,46.20
accept Winterfall Activity##28522 |goto Winterspring,21.10,46.20
step
talk Donova Snowden##9298
turnin Delivery for Donova##28524 |goto Winterspring 25.10,58.50
accept Threat of the Winterfall##28460 |goto Winterspring 25.10,58.50
accept Falling to Corruption##28464 |goto Winterspring 25.10,58.50
step
Click the Winterfall Cauldron.
turnin Falling to Corruption##28464 |goto Winterspring 24.50,47.60
accept Mystery Goo##28467 |goto Winterspring 24.50,47.60
step
kill Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+
Kill 15 Winterfall Furbolg |q 28460/1 |goto Winterspring 24.50,47.60
collect 10 Winterfall Spirit Beads##21383 |q 28522/1 |goto Winterspring 24.50,47.60
You can find more mobs around [Winterspring,27.30,49.30].
step
talk Donova Snowden##9298
turnin Mystery Goo##28467 |goto Winterspring 25.10,58.50
turnin Threat of the Winterfall##28460 |goto Winterspring 25.10,58.50
accept Winterfall Runners##28469 |goto Winterspring 25.10,58.50
accept Scalding Signs##28530 |goto Winterspring 25.10,58.50
stickystart "scaldspring"
step
kill Winterfall Runner##10916
collect Winterfall Crate##12829 |q 28469/1 |goto Winterspring 29.30,54.80
They walk along the road so some searching may be required.
step
label "scaldspring"
kill Scalding Springsurge##48767+,Boiling Springbubble##48768+
collect 7 Suspicious Green Sludge##64449 |q 28530/1 |goto Winterspring 32.70,50.60
step
talk Donova Snowden##9298
turnin Winterfall Runners##28469 |goto Winterspring 25.10,58.50
turnin Scalding Signs##28530 |goto Winterspring 25.10,58.50
accept High Chief Winterfall##28470 |goto Winterspring 25.10,58.50
You should be honored with Timbermaw Hold at this point.
step
kill High Chief Winterfall##10738 |q 28470/1 |goto Winterspring 37.00,55.60
step
talk Donova Snowden##9298
turnin High Chief Winterfall##28470 |goto Winterspring 25.10,58.50
step
talk Salfa##11556
turnin Winterfall Activity##28522 |goto Winterspring 21.10,46.20
You should now be able to do the quest More Beads for Salfa.
step
talk Burndl##48722
accept Bearzerker##28614 |goto Winterspring 65.30,46.20
step
talk Tanrir##48723
accept Turning the Earth##28615 |goto Winterspring 65.40,46.20
stickystart "overtotem"
step
kill Grolnar the Berserk##49178 |q 28614/1 |goto Winterspring 69.30,50.60
step
label "overtotem"
Use Tanrir's Overcharged Totem to overload Winterfall Earth Totems. |use Tanrir's Overcharged Totem##64637
Overload 4 Winterfall Earth Totems |q 28615/1 |goto Winterspring 67.00,47.70
step
talk Tanrir##48723
turnin Turning the Earth##28615 |goto Winterspring,65.40,46.20
step
talk Burndl##48722
turnin Bearzerker##28614 |goto Winterspring 65.30,46.20
step
label "the_grind"
At this point, you can do two repeatable quests, as well as grind to earn rep.
More Beads for Salfa requires that you grind in Winterspring.  You collect 5 Winterfall Spirit Beads, which are worth 2,000 Reputation per turn in.  Click here to farm at the Winterspring location. |confirm |next "winterfall"
or
Feathers for Nafien requires that you grind in Felwood. You collect 5 Deadwood Headdress Feathers, which are worth 2,000 Reputation per turn in.  Click here to farm at the Felwood location. |confirm |next "deadwood" |tip
Collecting 65 Beads/Feathers will get you from Honored to Exalted.
step
label "winterfall"
kill Winterfall Shaman##7439+,Winterfall Ursa##7438+
collect Winterfall Spirit Beads##21383 |n |goto Winterspring 67.50,49.80
|tip You need to collect at least 5.
5 Winterfall Spirit Beads = 2,000 Reputation. You're aiming for at least 60 to 65 Winterfall Spirit Beads in total.
More can be found at [Winterspring,35.60,56.30]
Click here to turn in your beads |confirm
step
talk Salfa##11556
accept More Beads for Salfa##28523 |n |goto Winterspring 21.10,46.20
Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
or
Exalted with Timbermaw Hold |complete rep('Timbermaw Hold')==Exalted
step
label "deadwood"
kill Deadwood Avenger##7157+,Deadwood Den Watcher##7156+,Deadwood Shaman##7158+
collect Deadwood Headdress Feather##21377 |n |goto Felwood,61.90,12.30
|tip You need to collect at least 5.
5 Feather Headresses = 2,000 Reputation.  You're aiming for at least 60 to 65 Feather Headresses in total.
More can be found at [Felwood,59.60,8.90]
Click here to turn in your feathers |confirm |next "turnin"
step
label "turnin"
talk Nafien##15395
accept Feathers for Nafien##28395 |n |goto Felwood 64.00,10.30
Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Undercity",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Undercity faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Undercity') < Exalted end,
},[[
step
talk Captain Donald Adams##50304
buy Undercity Tabard##45583 |n |goto Undercity,63.00,49.10
Equip your Undercity Tabard |equipped Undercity Tabard##45583 |use Undercity Tabard##45583 |future
You can run any dungeon that grants experience to gain reputation for Undercity
Become Exalted with Undercity |complete rep('Undercity')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Classic Reputations\\Warsong Outriders",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Warsong Outriders faction.",
achieveid={712},
patch='30001',
},[[
step
In order to gain reputation with the Warsong Outriders you and your team must capture flags in Warsong Gulch.
To join Warsong Gulch hit the _[H]_ key, click _Warsong Gulch_, and click _Join Battle_.
Earn Exalted status with the Warsong Outriders |complete rep('Warsong Outriders')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Ashtongue Deathsworn",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Ashtongue Deathsworn faction.",
achieveid={958},
patch='30001',
},[[
step
This reputation can be earned by running The Black Temple raid.
A full clear will grant roughly 8200 reputation.
|confirm
step
label "start"
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
Kill every creature that is hostile in this instance in order to gain reputation. |goto Black Temple/2 21.90,59.50
|tip You will have to clear this place a few times to reach Exalted.
Click here to go back to the beginning of the guide |next "start" |confirm
Earn Exalted status with Ashtongue Deathsworn |complete rep('Ashtongue Deathsworn')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Keepers of Time",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Keepers of Time faction.",
},[[
step
This faction largely relies on running certain instances repeatedly in order to gain reputation
There are a few Daily Quests to look out for in Shattrath City.  However, they won't be available to you every day
|confirm
step
talk Wind Trader Zhareem##24369
accept Wanted: Aeonus's Hourglass##11382 |or |goto Shattrath City,75.10,36.60
accept Wanted: The Epoch Hunter's Head##11378 |or |goto Shattrath City,75.10,36.60
Neither of the quests may be available. If that is the case, click here to proceed. |confirm
step
talk Nether-Stalker Mah'duun##24370
accept Wanted: Rift Lords##11383 |goto Shattrath City 75.50,37.30
This quest may not be available for the day.  If it isn't, click here to proceed. |confirm
step
talk Steward of Time##20142
accept To The Master's Lair##10279 |goto Tanaris,65.30,49.70
step
talk Andormu##20130
turnin To The Master's Lair##10279 |goto Tanaris/0 41.50,38.50
accept The Caverns of Time##10277 |goto Tanaris/0 41.50,38.50
For this quest you can either follow the Custodian around or do something else while waiting.  This is a long process
step
talk Andormu##20130
turnin The Caverns of Time##10277 |goto Tanaris/0 41.50,38.50
accept Old HIllsbrad##10282 |goto Tanaris/0 41.50,38.50
step
talk Erozion##18723
turnin Old Hillsbrad##10282 |goto Old Hillsbrad Foothills,29.00,48.30
accept Taretha's Diversion##29598 |goto Old Hillsbrad Foothills,29.00,48.30
Tell him you need a pack of incendiary bombs.
collect 1 Pack of Incendiary Bombs##25853 |q 29598 |goto Old Hillsbrad Foothills,29.00,48.30
step
talk Brazen##18725 |goto Old Hillsbrad Foothills 29.20,47.90
Tell him you're ready to go to Durnholde Keep. |goto Old Hillsbrad Foothills,69.30,71.60 |c
step
Go into Durnholde and cross the bridge. |goto Old Hillsbrad Foothills 72.20,63.40 < 5 |walk
Go to this ledge and jump down. |goto Old Hillsbrad Foothills,77.20,61.60 < 5 |walk
click Barrel##2886 |goto Old Hillsbrad Foothills 77.60,65.70
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
step
click Barrel##2886 |goto Old Hillsbrad Foothills,76.00,68.10
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
step
click Barrel##2886 |goto Old Hillsbrad Foothills 74.60,68.40
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
step
click Barrel##2886 |goto Old Hillsbrad Foothills 69.00,62.40
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
step
click Barrel##2886 |goto Old Hillsbrad Foothills 68.60,58.70
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
Internment Lodges Set Ablaze. |q 29598/1 |goto Old Hillsbrad Foothills 68.60,58.70
step
kill Lieutenant Drake##17848 |n |goto Old Hillsbrad Foothills 75.60,64.70
After you fight him, go up the stairs
Click here to continue. |confirm
step
Go up the hill to the entrance of the barracks. |goto Old Hillsbrad Foothills 73.20,61.40 < 5 |walk
Go down the steps here. |goto Old Hillsbrad Foothills,74.60,58.40 < 5 |walk
Click here once you're in the basement. |confirm
step
talk Thrall##17876
turnin Taretha's Diversion##29598 |goto Old Hillsbrad Foothills,74.50,57.70
accept Escape from Durnhold##29599 |goto Old Hillsbrad Foothills,74.50,57.70
step
Tell him you're ready to get out of there
Follow and Protect Thrall
kill Captain Skarloc##17862+ |n
After you kill Captain Skarloc, tell Thrall that Taretha cannot see him
Click here to proceed. |confirm
step
Continue following and protecting Thrall until he stops again
Tell him that you're ready
Click here to continue. |confirm
step
Follow and protect Thrall once more
Once you're upstairs with Taretha, ask her about the Strange Wizard
Click here to continue. |confirm
step
Follow Thrall outside and protect him
kill Epoch Hunter##18096+ |n
Thrall's Destiny Fulfilled. |q 29599/1
step
talk Erozion##18723
turnin Escape from Durnhold##29599 |goto Old Hillsbrad Foothills,50.20,30.90
step
talk Andormu##20130
accept The Black Morass##10296 |goto Tanaris,58.10,54.10
step
talk Sa'at##20201
turnin The Black Morass##10296 |goto The Black Morass,49.30,6.50
accept The Opening of the Dark Portal##10297 |goto The Black Morass,49.30,6.50
step
Moving to this spot will activate the event
You will need to move to the portals that appear nearby, and kill everything that comes out of it.
If Medivh is under attack you must kill whatever is attacking him.  If his shield drops to 0% you will fail
Open the Dark Portal. |q 10297/1 |goto The Black Morass,49.20,71.10
|talk Medivh##15608
step
talk Sa'at##20201
turnin The Opening of the Dark Portal##10297 |goto The Black Morass 49.30,6.50
step
talk Wind Trader Zhareem##24369
turnin Wanted: Aeonus's Hourglass##11382 |or |goto Shattrath City,75.10,36.60
turnin Wanted: The Epoch Hunter's Head##11378 |or |goto Shattrath City,75.10,36.60
step
talk Nether-Stalker Mah'duun##24370
turnin Wanted: Rift Lords##11383 |goto Shattrath City 75.50,37.30
step
At this point you will need to grind The Black Morass and Old Hillsbrad Foothills to gain reputation
If you're revered with the Keepers of time, you'll be able to talk to Zephyr in Shattrath who will teleport you to Tanaris
Earn Exalted reputation with the Keepers of Time |complete rep('Keepers of Time')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Mag'har",{
expansion="mists",
description="This guide will walk you through becoming Exalted with the Mag'har faction.",
condition_suggested=function() return level >= 80 and level <= 85 and rep('Mag\'har') < Exalted end,
achieveid={901},
patch='30100',
},[[
step
talk Lieutenant General Orion##19253
accept Arrival in Outland##10120 |goto Hellfire Peninsula/0 87.35,49.80
step
talk Vlagga Freyfeather##18930
turnin Arrival in Outland##10120 |goto Hellfire Peninsula/0 87.34,48.14
accept Journey to Thrallmar##10289 |goto Hellfire Peninsula/0 87.34,48.14
step
talk Vlagga Freyfeather##18930 |goto Hellfire Peninsula/0 87.34,48.14
Select _"Send me to Thrallmar!"_
Fly to Thrallmar |goto Hellfire Peninsula/0 56.27,36.38 < 20 |noway |c |q 10289
step
talk General Krakork##19255
turnin Journey to Thrallmar##10289 |goto Hellfire Peninsula/0 55.87,36.87
accept Report to Nazgrel##10291 |goto Hellfire Peninsula/0 55.87,36.87
step
Follow the path |goto Hellfire Peninsula/0 56.06,37.51 < 15 |only if walking
Enter the building |goto Hellfire Peninsula/0 56.44,37.76 < 7 |walk
talk Floyd Pinkus##16602
home Thrallmar |goto Hellfire Peninsula/0 56.71,37.47 |q 10291
step
Enter the building |goto Hellfire Peninsula/0 55.14,37.35 < 7 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Report to Nazgrel##10291 |goto Hellfire Peninsula/0 55.02,35.96
accept Eradicate the Burning Legion##10121 |goto Hellfire Peninsula/0 55.02,35.96
step
talk Sergeant Shatterskull##19256
turnin Eradicate the Burning Legion##10121 |goto Hellfire Peninsula/0 58.06,41.28
accept Felspark Ravine##10123 |goto Hellfire Peninsula/0 58.06,41.28
step
kill 1 Dreadcaller##19434 |q 10123/1 |goto Hellfire Peninsula/0 63.80,37.41
kill 4 Flamewaker Imp##19136 |q 10123/2 |goto Hellfire Peninsula/0 63.80,37.41
kill 6 Infernal Warbringer##19261 |q 10123/3 |goto Hellfire Peninsula/0 63.80,37.41
step
talk Sergeant Shatterskull##19256
turnin Felspark Ravine##10123 |goto Hellfire Peninsula/0 58.06,41.28
accept Forward Base: Reaver's Fall##10124 |goto Hellfire Peninsula/0 58.06,41.28
step
Follow the path |goto Hellfire Peninsula/0 63.72,46.43 < 20 |only if walking
talk Forward Commander To'arch##19273
turnin Forward Base: Reaver's Fall##10124 |goto Hellfire Peninsula/0 65.89,43.59
accept Disrupt Their Reinforcements##10208 |goto Hellfire Peninsula/0 65.89,43.59
step
Follow the path |goto Hellfire Peninsula/0 68.14,45.34 < 15 |only if walking
Kill demon enemies around this area
collect 4 Demonic Rune Stone##28513 |q 10208 |goto Hellfire Peninsula/0 70.83,45.48
step
click Portal Xilus##184290
|tip Stand inside the portal.
Disrupt Port Xilus |q 10208/1 |goto Hellfire Peninsula/0 70.83,45.48
step
Follow the path |goto Hellfire Peninsula/0 73.06,44.10 < 15 |only if walking
Follow the path |goto Hellfire Peninsula/0 73.78,42.82 < 15 |only if walking
Kill demon enemies around this area
collect 4 Demonic Rune Stone##28513 |q 10208 |goto Hellfire Peninsula/0 74.01,38.73
step
click Portal Kruul##184289
|tip Stand inside the portal.
Disrupt Port Kruul |q 10208/2 |goto Hellfire Peninsula/0 74.01,38.73
step
Follow the path |goto Hellfire Peninsula/0 72.51,40.80 < 20 |only if walking
Follow the path |goto Hellfire Peninsula/0 70.80,42.46 < 20 |only if walking
Follow the path |goto Hellfire Peninsula/0 69.45,43.89 < 20 |only if walking
Follow the path |goto Hellfire Peninsula/0 68.15,44.90 < 15 |only if walking
talk Forward Commander To'arch##19273
turnin Disrupt Their Reinforcements##10208 |goto Hellfire Peninsula/0 65.89,43.59
accept Mission: Gateways Murketh and Shaadraz##10129 |goto Hellfire Peninsula/0 65.89,43.59
step
talk Wing Commander Brack##19401
Select _"I'm on a bombing mission for Forward Commander To'arch. I need a wyvern destroyer!"_
Mount a Wyvern Destroyer |complete _G.UnitOnTaxi("player") |goto Hellfire Peninsula/0 66.10,43.72 |q 10129
step
|use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use the bomb in your bags to bomb Gateway Shaadraz.
Bomb Gateway Shaadraz |q 10129/2 |goto Hellfire Peninsula/0 77.73,51.81
step
|use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use the bomb in your bags to bomb Gateway Murketh.
Bomb Gateway Murketh |q 10129/1 |goto Hellfire Peninsula/0 78.02,47.19
step
Return the Wyvern Destroyer |complete not _G.UnitOnTaxi("player") |goto Hellfire Peninsula/0 66.10,43.72
step
talk Forward Commander To'arch##19273
turnin Mission: Gateways Murketh and Shaadraz##10129 |goto Hellfire Peninsula/0 65.89,43.59
accept Mission: The Abyssal Shelf##10162 |goto Hellfire Peninsula/0 65.89,43.59
accept Return to Thrallmar##10388 |goto Hellfire Peninsula/0 65.89,43.59
step
talk Wing Commander Brack##19401
Select _"Send me to the Abyssal Shelf!"_
Mount a Wyvern Destroyer |complete _G.UnitOnTaxi("player") |q 10162 |goto Hellfire Peninsula/0 66.10,43.72
step
|use Area 52 Special##28132
|tip Use the bomb in your bags to bomb the mobs.
|tip If you don't complete this in the first run, you can fly again until it is done.
Destroy #5# Fel Cannons |q 10162/3 |goto Hellfire Peninsula/0 72.63,17.94
kill 5 Mo'arg Overseer##19397 |q 10162/2 |goto Hellfire Peninsula/0 72.63,17.94
kill 20 Gan'arg Peon##19398 |q 10162/1 |goto Hellfire Peninsula/0 72.63,17.94
step
Return the Wyvern Destroyer |complete not _G.UnitOnTaxi("player") |goto Hellfire Peninsula/0 66.10,43.72
step
talk Forward Commander To'arch##19273
turnin Mission: The Abyssal Shelf##10162 |goto Hellfire Peninsula/0 65.89,43.59
step
Enter the building |goto Hellfire Peninsula/0 55.15,37.40 < 5 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Return to Thrallmar##10388 |goto Hellfire Peninsula/0 55.02,35.97
accept The Assassin##9400 |goto Hellfire Peninsula/0 55.02,35.97
step
Find Krun Spinebreaker |q 9400/1 |goto Hellfire Peninsula/0 33.62,43.53
step
clicknpc Fel Orc Corpse##17062
turnin The Assassin##9400 |goto Hellfire Peninsula/0 33.62,43.53
accept A Strange Weapon##9401 |goto Hellfire Peninsula/0 33.62,43.53
step
Enter the building |goto Hellfire Peninsula/0 55.15,37.40 < 5 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin A Strange Weapon##9401 |goto Hellfire Peninsula/0 55.02,35.97
accept The Warchief's Mandate##9405 |goto Hellfire Peninsula/0 55.02,35.97
step
talk Far Seer Regulkut##16574
turnin The Warchief's Mandate##9405 |goto Hellfire Peninsula/0 54.23,37.90
accept A Spirit Guide##9410 |goto Hellfire Peninsula/0 54.23,37.90
step
use the Ancestral Spirit Wolf Totem##23669
|tip Use it next to the Fel Orc Corpse.
Summon the Ancestral Spirit Wolf |havebuff Call Ancestral Spirit Wolf##29731 |goto Hellfire Peninsula/0 33.62,43.53 |q 9410
step
Watch the dialogue
|tip Stay close to the wolf and follow it until it stops.
Follow the Spirit Wolf |goto Hellfire Peninsula/0 32.05,27.83 < 10 |walk |q 9410
step
talk Gorkan Bloodfist##16845
turnin A Spirit Guide##9410 |goto Hellfire Peninsula/0 31.99,27.79
accept The Mag'har##9406 |goto Hellfire Peninsula/0 31.99,27.79
step
Enter the building |goto Hellfire Peninsula/0 55.15,37.40 < 5 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin The Mag'har##9406 |goto Hellfire Peninsula/0 55.02,35.97
step
talk Shado 'Fitz' Farstrider##18200
accept Windroc Mastery##9854 |goto Nagrand/0 71.57,40.52
step
talk Hemet Nesingwary##18180
accept Clefthoof Mastery##9789 |goto Nagrand/0 71.52,40.82
step
talk Harold Lane##18218
accept Talbuk Mastery##9857 |goto Nagrand/0 71.38,40.63
stickystart "Slay_12_Windrocs"
stickystart "Slay_12_Clefthoofs"
stickystart "Collect_3_Pairs_of_Ivory_Tusks"
step
kill 12 Talbuk Stag##17130+ |q 9857/1 |goto Nagrand/0 72.20,38.42
You can find more Talbuk Stags at [70.81,46.37]
step
label "Slay_12_Windrocs"
kill 12 Windroc##17128+ |q 9854/1 |goto Nagrand/0 66.61,39.30
step
label "Slay_12_Clefthoofs"
kill 12 Clefthoof##18205+ |q 9789/1 |goto Nagrand/0 64.02,45.11
You can find more Clefthoofs at [70.81,46.37]
step
label "Collect_3_Pairs_of_Ivory_Tusks"
kill Wild Elekk##18334
collect 3 Pair of Ivory Tusks##25463 |q 9914 |future |goto Nagrand/0 64.02,45.11
You can find more Elekks at [70.81,46.37]
step
kill Dust Howlers##17158+
collect Howling Wind##24504 |n
accept The Howling Wind##9861 |goto Nagrand/0 64.02,45.11
|tip You will eventually automatically accept this quest.
You can find more Dust Howlers at [70.81,46.37]
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9854 |goto Nagrand/0 71.57,40.52
accept Windroc Mastery##9855 |goto Nagrand/0 71.57,40.52
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9789 |goto Nagrand/0 71.52,40.82
accept Clefthoof Mastery##9850 |goto Nagrand/0 71.52,40.82
step
talk Harold Lane##18218
turnin Talbuk Mastery##9857 |goto Nagrand/0 71.38,40.63
accept Talbuk Mastery##9858 |goto Nagrand/0 71.38,40.63
step
talk Gursha##18808
fpath Garadar |goto Nagrand/0 57.19,35.25
step
talk Matron Drakia##18302
|tip She walks around inside the building.
accept Missing Mag'hari Procession##9944 |goto Nagrand/0 57.10,34.87
step
talk Matron Tikkit##18913
home Garadar |goto Nagrand/0 56.73,34.51 |q 9944
step
talk Jorin Deadeye##18106
accept The Impotent Leader##9888 |goto Nagrand/0 55.56,37.62
step
talk Warden Bullrok##18407
accept Proving Your Strength##10479 |goto Nagrand/0 55.79,37.94
step
click Garadar Bulletin Board##182392
accept Wanted: Giselda the Crone##9935 |goto Nagrand/0 55.77,38.01
accept Wanted: Zorbo the Advisor##9939 |goto Nagrand/0 55.77,38.01
step
talk Elementalist Yal'hah##18234
|tip He walks around this area.
accept The Throne of the Elements##9870 |goto Nagrand/0 55.10,39.05
step
talk Farseer Kurkush##18066
accept Vile Idolatry##9863 |goto Nagrand/0 54.78,39.41
step
talk Farseer Corhuk##18067
accept The Missing War Party##9864 |goto Nagrand/0 54.80,39.86
step
talk Farseer Margadesh##18068
accept Murkblood Leaders...##9867 |goto Nagrand/0 54.53,39.96
step
talk Consortium Recruiter##18335
accept The Consortium Needs You!##9913 |goto Nagrand/0 51.95,34.78
step
talk Elementalist Morgh##18074
turnin The Howling Wind##9861 |goto Nagrand/0 60.50,22.37
accept Murkblood Corrupters##9862 |goto Nagrand/0 60.50,22.37
step
talk Elementalist Sharvak##18072
turnin The Throne of the Elements##9870 |goto Nagrand/0 60.66,22.10
step
talk Elementalist Lo'ap##18073
accept A Rare Bean##9800 |goto Nagrand/0 60.80,22.38
accept Muck Diving##9815 |goto Nagrand/0 60.80,22.38
step
talk Elementalist Untrag##18071
accept The Underneath##9818 |goto Nagrand/0 60.66,22.65
step
talk Gordawg##18099
|tip He walks around this area.
turnin The Underneath##9818 |goto Nagrand/0 61.77,24.50
accept The Tortured Earth##9819 |goto Nagrand/0 61.77,24.50
stickystart "Collect_Digested_Caracoli"
stickystart "Slay_12_Clefhoof_Bulls"
step
kill 12 Talbuk Thorngrazer##17131+ |q 9858/1 |goto Nagrand/0 52.10,25.59
step
label "Collect_Digested_Caracoli"
click Dung##182128
|tip They looks like small green piles of swirled poop on the ground around this area.
collect 8 Digested Caracoli##24419 |q 9800/1 |goto Nagrand/0 52.10,25.59
step
label "Slay_12_Clefhoof_Bulls"
kill 12 Clefthoof Bull##17132+ |q 9850/1 |goto Nagrand/0 51.52,30.86
You can find more at [49.96,35.93]
stickystart "Slay_Warmaul_Enemies"
stickystart "Collect_Obsidian_Warbeads"
step
Enter the cave |goto Nagrand/0 46.23,18.78 < 5 |walk
kill Zorbo the Advisor##18413 |q 9939/1 |goto Nagrand/0 46.48,18.17
|tip Inside the cave.
step
label "Slay_Warmaul_Enemies"
kill 5 Warmaul Shaman##18064+ |q 9939/2 |goto Nagrand/0 47.03,23.58
kill 5 Warmaul Reaver##17138+ |q 9939/3 |goto Nagrand/0 47.03,23.58
step
label "Collect_Obsidian_Warbeads"
Kill Warmaul enemies around this area
collect 10 Obsidian Warbeads##25433 |q 10479/1 |goto Nagrand/0 47.03,23.58
step
talk Saurfang the Younger##18229
turnin The Missing War Party##9864 |goto Nagrand/0 32.44,36.03
accept Once Were Warriors##9865 |goto Nagrand/0 32.44,36.03
step
talk Elder Yorley##18414
turnin Missing Mag'hari Procession##9944 |goto Nagrand/0 32.31,36.15
accept War on the Warmaul##9945 |goto Nagrand/0 32.31,36.15
step
talk Elder Ungriz##18415
accept Finding the Survivors##9948 |goto Nagrand/0 32.36,36.21
stickystart "Free_Maghar_Prisoners"
step
Follow the path |goto Nagrand/0 29.31,31.92 < 10 |only if walking
kill 8 Warmaul Brute##18065+ |q 9945/1 |goto Nagrand/0 24.23,29.71
kill 8 Warmaul Warlock##18037+ |q 9945/2 |goto Nagrand/0 24.23,29.71
step
label "Free_Maghar_Prisoners"
Kill Warmaul enemies around this area
collect Warmaul Prison Key##25604 |n
click Warmaul Prisons
Free #5# Mag'har Prisoners |q 9948/1 |goto Nagrand/0 24.23,29.71
step
talk Elder Yorley##18414
turnin War on the Warmaul##9945 |goto Nagrand/0 32.31,36.15
step
talk Elder Ungriz##18415
turnin Finding the Survivors##9948 |goto Nagrand/0 32.36,36.21
step
kill Muck Spawn##17154+
collect 5 Muck-ridden Core##24469 |q 9815/1 |goto Nagrand/0 41.66,40.79
stickystart "Slay_Murkblood_Enemies"
stickystart "Collect_10_Murkblood_Idols"
step
kill Ortor of Murkblood##18204
|tip Inside the building.
collect Head of Ortor of Murkblood##24543 |q 9867/1 |goto Nagrand/0 30.84,42.36
step
label "Slay_Murkblood_Enemies"
kill 20 Murkblood Scavenger##18207+ |q 9865/1 |goto Nagrand/0 31.95,41.41
kill 10 Murkblood Raider##18203+ |q 9865/2 |goto Nagrand/0 31.95,41.41
kill 5 Murkblood Putrifier##18202+ |q 9862/1 |goto Nagrand/0 31.95,41.41
step
label "Collect_10_Murkblood_Idols"
Kill Murkblood enemies around this area
collect 10 Murkblood Idol##24542 |q 9863/1 |goto Nagrand/0 31.95,41.41
step
talk Saurfang the Younger##18229
turnin Once Were Warriors##9865 |goto Nagrand/0 32.44,36.03
accept He Will Walk The Earth...##9866 |goto Nagrand/0 32.44,36.03
step
talk Zerid##18276
accept Gava'xi##9900 |goto Nagrand/0 30.78,58.13
accept Matters of Security##9925 |goto Nagrand/0 30.78,58.13
step
talk Gezhe##18265
turnin The Consortium Needs You!##9913 |goto Nagrand/0 31.36,57.79
accept Stealing from Thieves##9882 |goto Nagrand/0 31.36,57.79
step
talk Shadrek##18333
accept A Head Full of Ivory##9914 |goto Nagrand/0 31.77,56.78
turnin A Head Full of Ivory##9914 |goto Nagrand/0 31.77,56.78
stickystart "Slay_Voidspawns"
step
click Oshu'gun Crystal Fragment##182258+
|tip They look like green and white crystals on the ground around this area.
kill Vir'aani Raider##17149+
collect 10 Oshu'gun Crystal Fragment##25416 |q 9882/1 |goto Nagrand/0 33.40,62.39
step
label "Slay_Voidspawns"
kill 8 Voidspawn##17981+ |q 9925/1 |goto Nagrand/0 31.28,67.73
step
kill Gava'xi##18298 |q 9900/1 |goto Nagrand/0 42.41,73.49
|tip He walks around this area.
step
kill 12 Ravenous Windroc##18220+ |q 9855/1 |goto Nagrand/0 48.44,61.49
step
talk Zerid##18276
turnin Gava'xi##9900 |goto Nagrand/0 30.78,58.13
turnin Matters of Security##9925 |goto Nagrand/0 30.78,58.13
step
talk Gezhe##18265
turnin Stealing from Thieves##9882 |goto Nagrand/0 31.36,57.79
step
talk Wazat##19035
accept I Must Have Them!##10109 |goto Nagrand/0 61.67,67.14
step
kill 10 Tortured Earth Spirit##17156+ |q 9819/1 |goto Nagrand/0 65.40,70.81
step
kill Dust Howler##17158+
collect 3 Air Elemental Gas##27807 |q 10109/1 |goto Nagrand/0 69.42,56.91
You can find more Dust Howlers at [65.46,46.90]
step
talk Wazat##19035
turnin I Must Have Them!##10109 |goto Nagrand/0 61.67,67.14
step
talk Kilrath##18273
turnin The Impotent Leader##9888 |goto Terokkar Forest/0 19.77,60.85
accept Don't Kill the Fat One##9889 |goto Terokkar Forest/0 19.77,60.85
step
kill 10 Boulderfist Invader##18260+ |q 9889/1 |goto Terokkar Forest/0 19.99,63.07
step
kill Unkor the Ruthless##18262 |q 9889/2 |goto Terokkar Forest/0 20.06,63.25
|tip He will eventually submit.
step
talk Unkor the Ruthless##18262
turnin Don't Kill the Fat One##9889 |goto Terokkar Forest/0 20.06,63.25
accept Success!##9890 |goto Terokkar Forest/0 20.06,63.25
step
talk Kilrath##18273
turnin Success!##9890 |goto Terokkar Forest/0 19.77,60.85
accept Because Kilrath is a Coward##9891 |goto Terokkar Forest/0 19.77,60.85
step
talk Jorin Deadeye##18106
turnin Because Kilrath is a Coward##9891 |goto Nagrand/0 55.56,37.62
accept Message in a Battle##9906 |goto Nagrand/0 55.56,37.62
step
talk Warden Bullrok##18407
turnin Proving Your Strength##10479 |goto Nagrand/0 55.79,37.94
turnin Wanted: Zorbo the Advisor##9939 |goto Nagrand/0 55.79,37.94
step
talk Elkay'gan the Mystic##18300
accept Standards and Practices##9910 |goto Nagrand/0 55.63,37.53
step
talk Farseer Kurkush##18066
turnin Vile Idolatry##9863 |goto Nagrand/0 54.78,39.41
step
talk Farseer Corhuk##18067
turnin He Will Walk The Earth...##9866 |goto Nagrand/0 54.80,39.86
step
talk Farseer Margadesh##18068
turnin Murkblood Leaders...##9867 |goto Nagrand/0 54.53,39.96
step
talk Gordawg##18099
|tip He walks around this area.
turnin The Tortured Earth##9819 |goto Nagrand/0 61.77,24.50
accept Eating Damnation##9821 |goto Nagrand/0 61.77,24.50
step
talk Elementalist Lo'ap##18073
turnin A Rare Bean##9800 |goto Nagrand/0 60.80,22.38
accept Agitated Spirits of Skysong##9804 |goto Nagrand/0 60.80,22.38
turnin Muck Diving##9815 |goto Nagrand/0 60.80,22.38
step
talk Elementalist Morgh##18074
turnin Murkblood Corrupters##9862 |goto Nagrand/0 60.50,22.37
step
kill 8 Lake Spirit##17153+ |q 9804/1 |goto Nagrand/0 59.80,27.25
step
talk Elementalist Lo'ap##18073
turnin Agitated Spirits of Skysong##9804 |goto Nagrand/0 60.80,22.38
accept Blessing of Incineratus##9805 |goto Nagrand/0 60.80,22.38
step
kill Enraged Crusher##18062+
collect 10 Enraged Crusher Core##24473 |q 9821/1 |goto Nagrand/0 52.02,20.09
step
talk Gordawg##18099
|tip He walks around this area.
turnin Eating Damnation##9821 |goto Nagrand/0 61.77,24.50
accept Shattering the Veil##9849 |goto Nagrand/0 61.77,24.50
step
talk Harold Lane##18218
turnin Talbuk Mastery##9858 |goto Nagrand/0 71.38,40.63
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9850 |goto Nagrand/0 71.52,40.82
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9855 |goto Nagrand/0 71.57,40.52
step
Enter the building |goto Nagrand/0 70.94,51.30 < 5 |walk
use the Living Fire##24467
|tip Inside the hut.
Destroy the Western Hut |q 9805/2 |goto Nagrand/0 70.76,51.12
step
Follow the path up |goto Nagrand/0 72.24,51.12 < 5 |only if walking
Enter the building |goto Nagrand/0 72.35,50.56 < 5 |walk
use the Living Fire##24467
|tip Inside the hut.
Destroy the Large Hut |q 9805/1 |goto Nagrand/0 72.41,50.28
step
Enter the building |goto Nagrand/0 72.67,54.58 < 5 |walk
use the Living Fire##24467
|tip Inside the hut.
Destroy the Eastern Hut |q 9805/4 |goto Nagrand/0 72.75,54.70
step
Enter the building |goto Nagrand/0 71.37,53.06 < 5 |walk
use the Living Fire##24467
|tip Inside the hut.
Destroy the Southern Hut |q 9805/3 |goto Nagrand/0 71.21,53.24
step
talk Elementalist Lo'ap##18073
turnin Blessing of Incineratus##9805 |goto Nagrand/0 60.80,22.38
accept The Spirit Polluted##9810 |goto Nagrand/0 60.80,22.38
stickystart "Slay_Boulderfist_Enemies"
step
use the Mag'har Battle Standard##25458
|tip Use it next to the bonfire.
Place the First Battle Standard |q 9910/1 |goto Nagrand/0 72.25,69.98
step
Follow the path |goto Nagrand/0 73.16,69.56 < 10 |only if walking
Follow the path up |goto Nagrand/0 72.95,68.65 < 10 |only if walking
Continue up the path |goto Nagrand/0 74.75,67.64 < 10 |only if walking
use the Mag'har Battle Standard##25458
|tip Use it next to the bonfire.
Place the Second Battle Standard |q 9910/2 |goto Nagrand/0 74.68,69.83
step
Follow the path |goto Nagrand/0 74.68,68.65 < 10 |only if walking
Continue up the path |goto Nagrand/0 75.39,67.57 < 10 |only if walking
use the Mag'har Battle Standard##25458
|tip Use it next to the bonfire.
Place the Third Battle Standard |q 9910/3 |goto Nagrand/0 75.79,68.30
step
label "Slay_Boulderfist_Enemies"
kill 8 Boulderfist Mystic##17135+ |q 9906/1 |goto Nagrand/0 72.88,69.81
kill 8 Boulderfist Crusher##17134+ |q 9906/2 |goto Nagrand/0 72.88,69.81
step
talk Jorin Deadeye##18106
turnin Message in a Battle##9906 |goto Nagrand/0 55.56,37.62
accept An Audacious Advance##9907 |goto Nagrand/0 55.56,37.62
step
talk Elkay'gan the Mystic##18300
turnin Standards and Practices##9910 |goto Nagrand/0 55.63,37.54
accept Bleeding Hollow Supply Crates##9916 |goto Nagrand/0 55.63,37.54
stickystart "Collect_Bleeding_Hollow_Supply_Crates"
step
kill 10 Boulderfist Warrior##17136+ |q 9907/1 |goto Nagrand/0 40.77,31.63
kill 10 Boulderfist Mage##17137+ |q 9907/2 |goto Nagrand/0 40.77,31.63
step
label "Collect_Bleeding_Hollow_Supply_Crates"
click Bleeding Hollow Supply Crate##182265+
collect 10 Bleeding Hollow Supply Crate##25460 |q 9916/1 |goto Nagrand/0 40.77,31.63
|tip They look like wooden boxes with a red symbol on the side of them.
stickystart "Slay_8_Lake_Surgers"
step
kill Watoosun's Polluted Essence##18145 |q 9810/1 |goto Nagrand/0 32.99,50.89
|tip Underwater.
step
label "Slay_8_Lake_Surgers"
kill 8 Lake Surger##17155+ |q 9810/2 |goto Nagrand/0 34.67,48.78
|tip Underwater.
step
kill Shattered Rumbler##17157+
use Gordawg's Boulder##24501
|tip Use it on their corpses.
kill 30 Minion of Gurok##18181+ |q 9849/1 |goto Nagrand/0 28.18,77.65
step
talk Elkay'gan the Mystic##18300
turnin Bleeding Hollow Supply Crates##9916 |goto Nagrand/0 55.63,37.54
step
talk Jorin Deadeye##18106
turnin An Audacious Advance##9907 |goto Nagrand/0 55.56,37.62
accept Diplomatic Measures##10107 |goto Nagrand/0 55.56,37.62
step
Follow the path |goto Nagrand/0 73.56,68.18 < 10 |only if walking
Follow the path up |goto Nagrand/0 74.70,67.96 < 10 |only if walking
Continue up the path |goto Nagrand/0 75.57,67.60 < 10 |only if walking
talk Lantresor of the Blade##18261
Watch the dialogue
Hear the story of the Blademaster |q 10107/1 |goto Nagrand/0 73.81,62.60
step
talk Lantresor of the Blade##18261
turnin Diplomatic Measures##10107 |goto Nagrand/0 73.81,62.60
accept Armaments for Deception##9928 |goto Nagrand/0 73.81,62.60
accept Ruthless Cunning##9927 |goto Nagrand/0 73.81,62.60
stickystart "Plant_Warmaul_Ogre_Banners"
stickystart "Slay_Kilsorrow_Agents"
stickystart "Collect_Kilsorrow_Armaments"
step
Enter the building |goto Nagrand/0 70.93,81.25 < 5 |walk
kill Giselda the Crone##18391 |q 9935/1 |goto Nagrand/0 71.16,82.36
|tip Inside the building.
step
label "Plant_Warmaul_Ogre_Banners"
Kill Kil'sorrow enemies around this area
use the Warmaul Ogre Banner##25552
|tip Use it on their corpses.
Plant #10# Warmaul Ogre Banners |q 9927/1 |goto Nagrand/0 70.28,79.76
step
label "Slay_Kilsorrow_Agents"
Kill Kil'sorrow enemies around this area
Slay #10# Kil'sorrow Agents |q 9935/2 |goto Nagrand/0 70.28,79.76
step
label "Collect_Kilsorrow_Armaments"
click Kil'sorrow Armaments##182355+
|tip They look like small tan boxes on the ground with a red axe logo on the ground around this area.
collect 10 Kil'sorrow Armaments##25554 |q 9928/1 |goto Nagrand/0 70.28,79.76
step
talk Lantresor of the Blade##18261
turnin Armaments for Deception##9928 |goto Nagrand/0 73.81,62.60
turnin Ruthless Cunning##9927 |goto Nagrand/0 73.81,62.60
accept Returning the Favor##9931 |goto Nagrand/0 73.81,62.60
accept Body of Evidence##9932 |goto Nagrand/0 73.81,62.60
step
talk Warden Bullrok##18407
turnin Wanted: Giselda the Crone##9935 |goto Nagrand/0 55.79,37.94
step
talk Gordawg##18099
|tip He walks around this area.
turnin Shattering the Veil##9849 |goto Nagrand/0 61.77,24.50
step
talk Elementalist Lo'ap##18073
turnin The Spirit Polluted##9810 |goto Nagrand/0 60.80,22.38
stickystart "Plant_Kilsorrow_Banners"
step
use the Damp Woolen Blanket##25658
|tip Use it on the Blazing Warmaul Pyre.
|tip Defend the 2 ogres that spawn until they finish placing corpses.
Plant the Kil'sorrow Bodies |q 9932/1 |goto Nagrand/0 46.57,24.28
step
label "Plant_Kilsorrow_Banners"
Kill Warmaul enemies around this area
use the Kil'sorrow Banner##25555
|tip Use it on their copses.
Plant #10# Kil'sorrow Banners |q 9931/1 |goto Nagrand/0 46.57,24.28
step
talk Lantresor of the Blade##18261
turnin Returning the Favor##9931 |goto Nagrand/0 73.81,62.60
turnin Body of Evidence##9932 |goto Nagrand/0 73.81,62.60
accept Message to Garadar##9934 |goto Nagrand/0 73.81,62.60
step
talk Garrosh##18063
turnin Message to Garadar##9934 |goto Nagrand/0 55.44,37.64
step
talk Warden Bullrok##18407
accept Wanted: Durn the Hungerer##9937 |goto Nagrand/0 55.79,37.94
step
talk Matron Celestine##18301
accept He Called Himself Altruis...##9983 |goto Nagrand/0 55.20,36.10
step
map Nagrand
path follow loose;loop;ants curved
path	46.70,63.70	40.80,63.50	37.40,62.10
path	34.00,62.70	31.70,65.40	30.50,71.30
path	32.00,75.90	35.50,78.50	39.80,78.70
path	42.40,75.50	46.00,70.20
Follow the path around looking for Durn the Hungerer
kill Durn the Hungerer##18411 |q 9937/1
|tip He walks around this area.
step
talk Altruis the Sufferer##18417
turnin He Called Himself Altruis...##9983 |goto Nagrand 27.34,43.09
accept Survey the Land##9991 |goto Nagrand 27.34,43.09
step
Watch the dialogue
Survey the Forge Camps |q 9991/1
step
talk Altruis the Sufferer##18417
turnin Survey the Land##9991 |goto Nagrand 27.34,43.09
accept Buying Time##9999 |goto Nagrand 27.34,43.09
stickystart "Slay_Moarg_Engineers"
stickystart "Slay_Ganarg_Tinkerers"
step
kill 2 Felguard Legionnaire##17152 |q 9999/1 |goto Nagrand 24.50,37.92
step
label "Slay_Moarg_Engineers"
kill 3 Mo'arg Engineer##16945 |q 9999/2 |goto Nagrand 24.50,37.92
step
label "Slay_Ganarg_Tinkerers"
kill 8 Gan'arg Tinkerer##17151 |q 9999/3 |goto Nagrand 24.50,37.92
step
talk Altruis the Sufferer##18417
turnin Buying Time##9999 |goto Nagrand 27.34,43.09
accept The Master Planner##10001 |goto Nagrand 27.34,43.09
step
kill Mo'arg Master Planner##18567
collect The Master Planner's Blueprints##25751 |q 10001/1 |goto Nagrand 17.54,50.32
step
talk Altruis the Sufferer##18417
turnin The Master Planner##10001 |goto Nagrand 27.34,43.09
accept Patience and Understanding##10004 |goto Nagrand 27.34,43.09
step
talk Elder Yorley##18414
accept Cho'war the Pillager##9946 |goto Nagrand 32.31,36.15
step
Follow the path |goto Nagrand 29.26,31.82 < 10 |only if walking
Follow the path up |goto Nagrand 25.98,29.03 < 10 |only if walking
Continue following the path |goto Nagrand 24.89,23.82 < 10 |only if walking
Enter the cave |goto Nagrand 27.14,18.37 < 10 |only if walking
Continue following the path |goto Nagrand 25.80,15.61 < 15 |c |only if walking |q 9946
step
Continue following the path |goto Nagrand 26.85,13.61 < 10 |only if walking
Leave the cave |goto Nagrand 28.16,13.44 < 10 |only if walking
Follow the path up |goto Nagrand 28.29,11.81 < 10 |c |only if walking |q 9946
step
Enter the cave |goto Nagrand 27.41,11.46 < 10 |walk
Follow the path |goto Nagrand 26.32,13.09 < 5 |walk
Continue following the path |goto Nagrand 25.53,15.78 < 5 |walk
Follow the path up |goto Nagrand 26.25,14.64 < 5 |walk
kill Cho'war the Pillager##18423
|tip Inside the cave.
collect Head of Cho'war##25590 |q 9946/1 |goto Nagrand 25.90,13.70
step
talk Elder Yorley##18414
turnin Cho'war the Pillager##9946 |goto Nagrand 32.31,36.15
step
talk Warden Bullrok##18407
turnin Wanted: Durn the Hungerer##9937 |goto Nagrand 55.79,37.94
step
Enter the building |goto Shattrath City/0 74.06,32.83 < 10 |walk
talk Sal'salabim##18584
|tip Inside the building.
Select _"Altruis sent me. He said that you could help me."_
kill Sal'salabim##18584
Persuad Sal'salabim |q 10004/1 |goto Shattrath City/0 77.29,34.86
step
talk Sal'salabim##18584
|tip Inside the building.
turnin Patience and Understanding##10004 |goto Shattrath City/0 77.29,34.86
accept Crackin' Some Skulls##10009 |goto Shattrath City/0 77.29,34.86
step
talk Raliq the Drunk##18585
|tip Inside the building.
Select _"I have been sent by Sal'salabim to collect a debt that you owe. Pay up or I'm going to have to hurt you."_
kill Raliq the Drunk##18585
Collect Raliq's Debt |q 10009/1 |goto Shattrath City/0 75.00,31.41
step
talk Coosh'coosh##18586
|tip He walks around this area.
Select _"I have been sent by Sal'salabim to collect a debt that you owe. Pay up or I'm going to have to hurt you."_
kill Coosh'coosh##18586
Collect Coosh'coosh's Debt |q 10009/2 |goto Zangarmarsh/0 80.82,91.12
step
talk Floon##18588
|tip He walks around this area.
Select _"I have been sent by Sal'salabim to collect a debt that you owe. Pay up or I'm going to have to hurt you."_
kill Floon##18588
Collect Floon's Debt |q 10009/3 |goto Terokkar Forest/0 27.14,58.19
step
Enter the building |goto Shattrath City/0 74.06,32.83 < 10 |walk
talk Sal'salabim##18584
|tip Inside the building.
turnin Crackin' Some Skulls##10009 |goto Shattrath City/0 77.29,34.86
accept It's Just That Easy?##10010 |goto Shattrath City/0 77.29,34.86
step
talk Altruis the Sufferer##18417
turnin It's Just That Easy?##10010 |goto Nagrand/0 27.34,43.09
accept Forge Camp: Annihilated##10011 |goto Nagrand/0 27.34,43.09
step
kill DemosOverseer of Hate##18535
collect 1 Fel Cannon Activator##25770 |goto Nagrand/0 24.98,36.09 |q 10011
step
use the Fel Cannon Activator##25770
Destroy Forge Camp: Hate |q 10011/1 |goto Nagrand/0 24.98,36.09
step
kill XirkosOverseer of Fear##18536
collect 1 Fel Cannon Activator##25771 |goto Nagrand/0 19.59,51.15 |q 10011
step
use the Fel Cannon Activator##25771
Destoy Forge Camp: Fear |q 10011/2 |goto Nagrand/0 19.38,50.87
step
talk Altruis the Sufferer##18417
turnin Forge Camp: Annihilated##10011 |goto Nagrand/0 27.34,43.09
step
After doing those quests the best way to gain reputation is to farm and turn in Obsidian Warbeads
confirm |only if rep("The Mag'har")<Exalted
step
label "Collect_Beads_For_Rep"
Kill Warmaul enemies around this area
collect Obsidian Warbeads##25433 |n |goto Nagrand/0 45.56,22.00
|tip Collect beads in sets of 10.
Click here to turn them in |confirm |only if rep("The Mag'har")<Exalted
step
talk Warden Bullrok##18407
accept More Warbeads##10478 |goto Nagrand/0 55.79,37.94
Click here to continue farming |next "Collect_Beads_For_Rep" |confirm |only if rep("The Mag'har")<=Revered
Earn Exalted status with The Mag'har |complete rep("The Mag'har")==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Netherwing",{
expansion="mists",
startlevel=25,
description="This guide section will walk you through completing Netherwing quests from neutral to exalted.",
},[[
step
Follow the path |goto Shadowmoon Valley/0 59.27,58.68 < 30 |walk
Continue following the path |goto Shadowmoon Valley/0 61.58,59.30 < 30 |walk
Continue following the path |goto Shadowmoon Valley/0 63.14,60.28 < 30 |walk
talk Mordenai##22113
|tip He walks along this path
accept Kindness##10804 |goto Shadowmoon Valley/0 61.86,58.32
step
Kill Rocknail enemies around this area
collect Rocknail Flayer Giblets##31373 |n
use the Rocknail Flayer Giblets##31373
|tip Combine 5 giblets into a carcass.
collect 8 Rocknail Flayer Carcass##31372 |goto Shadowmoon Valley/0 62.16,55.67 |q 10804
step
use the Rocknail Flayer Carcass##31372
|tip Stand on tall rocks or crystals.
Feed #8# Netherwing Drakes |q 10804/1 |goto Shadowmoon Valley/0 61.94,57.96
step
Follow the path |goto Shadowmoon Valley/0 59.27,58.68 < 30 |walk
Continue following the path |goto Shadowmoon Valley/0 61.58,59.30 < 30 |walk
Continue following the path |goto Shadowmoon Valley/0 63.14,60.28 < 30 |walk
talk Mordenai##22113
|tip He walks along this path
turnin Kindness##10804 |goto Shadowmoon Valley/0 61.86,58.32
accept Seek Out Neltharaku##10811 |goto Shadowmoon Valley/0 61.86,58.32
step
talk Neltharaku##21657
turnin Seek Out Neltharaku##10811 |goto Shadowmoon Valley/0 68.20,60.40
accept Neltharaku's Tale##10814 |goto Shadowmoon Valley/0 68.20,60.40
step
talk Neltharaku##21657
Listen to the Tale of Neltharaku |q 10814/1 |goto Shadowmoon Valley/0 68.20,60.40
step
talk Neltharaku##21657
turnin Neltharaku's Tale##10814 |goto Shadowmoon Valley/0 68.20,60.40
accept Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley/0 68.20,60.40
step
Kill Dragonmaw enemies around this area
Slay #15# Dragonmaw Orcs |q 10836/1 |goto Shadowmoon Valley/0 66.40,60.00
step
talk Neltharaku##21657
turnin Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley/0 68.20,60.40
accept To Netherwing Ledge!##10837 |goto Shadowmoon Valley/0 68.20,60.40
step
click Nethervine Crystal##185182+
|tip They look like big thorns with a glowing red ball atop them on the ground around this area.
collect 12 Nethervine Crystal##31504 |q 10837/1 |goto Shadowmoon Valley/0 64.10,80.70
step
talk Neltharaku##21657
turnin To Netherwing Ledge!##10837 |goto Shadowmoon Valley/0 68.20,60.40
accept The Force of Neltharaku##10854 |goto Shadowmoon Valley/0 68.20,60.40
step
use the Enchanted Nethervine Crystal##31652
|tip Use it on Enslaved Netherwing Drakes.
|tip Kill the Dragonmaw Subjugator after you free them.
Free #5# Enslaved Netherwing Drakes |q 10854/1 |goto Shadowmoon Valley/0 67.40,59.30
step
talk Neltharaku##21657
turnin The Force of Neltharaku##10854 |goto Shadowmoon Valley/0 68.20,60.40
accept Karynaku##10858 |goto Shadowmoon Valley/0 68.20,60.40
step
talk Karynaku##22112
turnin Karynaku##10858 |goto Shadowmoon Valley/0 69.90,61.50
accept Zuluhed the Whacked##10866 |goto Shadowmoon Valley/0 69.90,61.50
step
kill Zuluhed the Whacked##11980 |q 10866/2 |goto Shadowmoon Valley/0 70.90,61.50
|tip This enemy is elite and will require a group.
|tip To avoid having to fight demons, pull Zuluhed the Whacked into one of the small buildings on either side of him when he casts a summoning portal.
collect Zuluhed's Key##31664 |q 10866 |goto Shadowmoon Valley/0 70.90,61.50
step
click Zuluhed's Chains##185156
Free Karynaku |q 10866/1 |goto Shadowmoon Valley/0 69.80,61.30
step
talk Karynaku##22112
turnin Zuluhed the Whacked##10866 |goto Shadowmoon Valley/0 69.90,61.50
accept Ally of the Netherwing##10870 |goto Shadowmoon Valley/0 69.90,61.50
step
Train Artisan Flying |complete skill("Riding") >= 225
|tip Flying is required to continue this questline.
step
talk Mordenai##22113
turnin Ally of the Netherwing##10870 |goto Shadowmoon Valley/0 62.90,59.50
accept Blood Oath of the Netherwing##11012 |goto Shadowmoon Valley/0 62.90,59.50
accept In Service of the Illidari##11013 |goto Shadowmoon Valley/0 62.90,59.50
step
talk Overlord Mor'ghor##23139
turnin In Service of the Illidari##11013 |goto Shadowmoon Valley/0 66.20,85.70
accept Enter the Taskmaster##11014 |goto Shadowmoon Valley/0 66.20,85.70
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Enter the Taskmaster##11014 |goto Shadowmoon Valley/0 66.10,86.40
step
talk Yarzill the Merc##23141
accept Your Friend on the Inside##11019 |goto Shadowmoon Valley/0 66.00,86.50
accept The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley/0 66.00,86.50
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
|tip They spawn in various places, so you will probably need to search for them.
|tip Use the "Netherwing Eggs" guide for known locations.
collect 1 Netherwing Egg##32506 |q 11049/1 |goto Shadowmoon Valley/0 68.50,61.20
step
talk Yarzill the Merc##23141
turnin The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley/0 66.00,86.50
step
Reach Friendly with the Netherwing |complete rep("Netherwing") >= Friendly
|tip Complete daily quests using the "Netherwing Daily Quests" guide.
|tip You can also farm eggs using the "Netherwing Egg" guide.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Rise, Overseer!##11053 |goto Shadowmoon Valley 66.10,86.40
step
talk Overlord Mor'ghor##23139
turnin Rise, Overseer!##11053 |goto Shadowmoon Valley 66.20,85.70
step
talk Taskmaster Varkule Dragonbreath##23140
accept The Netherwing Mines##11075 |goto Shadowmoon Valley 66.10,86.40
step
talk Chief Overseer Mudlump##23291
accept Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley 66.80,86.10
step
talk Mistress of the Mines##23149
turnin The Netherwing Mines##11075 |goto Shadowmoon Valley 65.40,90.20
step
Enter the cave |goto Shadowmoon Valley 65.32,89.86 < 5 |walk
talk Ronag the Slave Driver##23166
|tip Inside the cave.
accept Crazed and Confused##11083 |goto Shadowmoon Valley 71.60,87.60
stickystart "Kill_Crazed_Murkblood_Miners"
step
kill 1 Crazed Murkblood Foreman##23305 |q 11083/1 |goto Shadowmoon Valley 73.70,88.10
|tip Inside the cave.
step
label "Kill_Crazed_Murkblood_Miners"
kill 5 Crazed Murkblood Miner##23324 |q 11083/2 |goto Shadowmoon Valley 73.70,88.10
|tip Inside the cave.
step
talk Ronag the Slave Driver##23166
|tip Inside the cave.
turnin Crazed and Confused##11083 |goto Shadowmoon Valley 71.60,87.60
step
kill Black Blood of Draenor##23286+
|tip Inside the cave.
collect Sludge-covered Object##32724 |n
use the Sludge-covered Object##32724
collect Murkblood Escape Plans##32726 |goto Shadowmoon Valley 64.80,85.60 |q 11081 |future
step
use the Murkblood Escape Plans##32726
accept The Great Murkblood Revolt##11081 |goto Shadowmoon Valley 64.80,85.60
step
Leave the cave |goto Shadowmoon Valley 65.30,90.20 < 10
talk Mistress of the Mines##23149
turnin The Great Murkblood Revolt##11081 |goto Shadowmoon Valley 65.40,90.20
accept Seeker of Truth##11082 |goto Shadowmoon Valley 65.40,90.20
step
Enter the cave |goto Shadowmoon Valley 63.17,87.77
talk Murkblood Overseer##23309
|tip Inside the cave.
Select _"Who speaks of me? What are you taling about, broken?"_
Gather Murkblood Information |q 11082/1 |goto Shadowmoon Valley 73.00,82.20
step
Watch the dialogue
|tip Inside the cave.
collect Hand of the Overseer##32734 |q 11082/2 |goto Shadowmoon Valley 73.00,82.20
step
Leave the cave |goto Shadowmoon Valley 65.30,90.20 < 10 |only if walking
talk Mistress of the Mines##23149
turnin Seeker of Truth##11082 |goto Shadowmoon Valley 65.40,90.20
step
collect 10 Knothide Leather##21887 |q 11054/1
|tip Farm them with skinning or purchase them from the auction house.
You can find mobs to skin at [60.40,45.20]
step
kill Tyrantus##20931
collect Hardened Hide of Tyrantus##32666 |q 11054/2 |goto Netherstorm 46.40,10.80
step
talk Chief Overseer Mudlump##23291
turnin Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley 66.80,86.10
step
Reach Honored with the Netherwing |complete rep("Netherwing") >= Honored
|tip Complete daily quests using the "Netherwing Daily Quests" guide.
|tip You can also farm eggs using the "Netherwing Egg" guide.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Stand Tall, Captain!##11084 |goto Shadowmoon Valley 66.10,86.40
step
talk Overlord Mor'ghor##23139
turnin Stand Tall, Captain!##11084 |goto Shadowmoon Valley 66.20,85.70
step
talk Ja'y Nosliw##22433
accept Earning Your Wings...##11063 |goto Shadowmoon Valley 65.90,87.20
step
talk Murg "Oldie" Muckjaw##23340
accept Dragonmaw Race: The Ballad of Oldie McOld##11064
step
Follow Murg "Oldie" Muckjaw as he flies
|tip Dodge the pumpkins that Murg throws at you.
|tip The easiest strategy is to fly behind and above him, so that you are looking down on him as you fly.
Defeat Murg "Oldie" Muckjaw |q 11064/1 |goto Shadowmoon Valley 65.20,85.70
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto Shadowmoon Valley 65.90,87.20
step
talk Trope the Filth-Belcher##23342
accept Dragonmaw Race: Trope the Filth-Belcher##11067
step
Follow Trope the Filth-Belcher as he flies
|tip Dodge the green bombs that Trope the Filth-Belcher throws at you.
|tip The easiest strategy is to fly behind under him.
|tip Strafe to the sides when he throws the bombs and you can dodge them easily.
Defeat Trope the Filth-Belcher |q 11067/1 |goto Shadowmoon Valley 65.20,85.50
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Trope the Filth-Belcher##11067 |goto Shadowmoon Valley 65.90,87.20
step
talk Corlok the Vet##23344
accept Dragonmaw Race: Corlok the Vet##11068
step
Follow Corlok the Vet as he flies
|tip Dodge the skulls that Corlok the Vet throws at you.
|tip The easiest strategy is to fly close behind and above him while looking down.
|tip Strafe to the sides when he throws the skulls and you can dodge them easily.
Defeat Corlok the Vet |q 11068/1 |goto Shadowmoon Valley 65.20,85.20
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Corlok the Vet##11068 |goto Shadowmoon Valley 65.90,87.20
step
talk Wing Commander Ichman##13437
accept Dragonmaw Race: Wing Commander Ichman##11069
step
Follow Wing Commander Ichman as he flies
|tip Dodge the fireballs that Wing Commander Ichman throws at you.
|tip The easiest strategy is to fly behind and far above him while looking down.
|tip Strafe to the sides when he throws fireballs and you can dodge them easily.
|tip He does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
Defeat Wing Commander Ichman |q 11069/1 |goto Shadowmoon Valley 65.20,85.00
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Ichman##11069 |goto Shadowmoon Valley 65.90,87.20
step
talk Wing Commander Mulverick##13181
accept Dragonmaw Race: Wing Commander Mulverick##11070
step
Follow Wing Commander Mulverick as he flies
|tip Dodge the lightning bolts that Wing Commander Mulverick throws at you.
|tip The lightning bolts will follow you, unlike the previous race quests.
|tip The easiest strategy is to fly beside him, while strafing, and almost ahead of him.
Defeat Wing Commander Mulverick |q 11070/1 |goto Shadowmoon Valley 65.20,84.90
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Mulverick##11070 |goto Shadowmoon Valley 65.90,87.20
step
talk Captain Skyshatter##23348
accept Dragonmaw Race: Captain Skyshatter##11071
step
Follow Captain Skyshatter as he flies
|tip Dodge the meteors that fall all around you.
|tip The easiest strategy is to fly beside him while strafing and almost ahead of him.
|tip Stay close to him and the meteors will hit both of you, stopping him for a second and allowing you to catch up to him if needed.
|tip Meteors will briefly stun you rather than dismount you.
Defeat Captain Skyshatter |q 11071/1 |goto Shadowmoon Valley 65.50,85.30
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Captain Skyshatter##11071 |goto Shadowmoon Valley 65.90,87.20
step
Reach Revered with the Netherwing |complete rep("Netherwing") >= Revered
|tip Complete daily quests using the "Netherwing Daily Quests" guide.
|tip You can also farm eggs using the "Netherwing Egg" guide.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Hail, Commander!##11092 |goto Shadowmoon Valley 66.10,86.40
step
talk Overlord Mor'ghor##23139
turnin Hail, Commander!##11092
accept Kill Them All!##11094 |goto Shadowmoon Valley 66.20,85.70 |only if rep("The Scryers") >= Friendly
accept Kill Them All!##11099 |goto Shadowmoon Valley 66.20,85.70 |only if rep("The Aldor") >= Friendly
step
kill Arvoar the Rapacious##23267+
|tip He looks like a big Flayer mob that walks in a circle in this spot.
collect Partially Digested Hand##32621 |n
Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
accept A Job Unfinished...##11041 |goto Shadowmoon Valley 74.50,86.30
stickystart "Kil_Overmine_Flayers"
step
kill Barash the Den Mother##23269 |q 11041/2 |goto Shadowmoon Valley 70.20,84.30
|tip It walks around this area.
|tip This enemy is elite and may require a group.
step
label "Kil_Overmine_Flayers"
kill 10 Overmine Flayer##23264 |q 11041/1 |goto Shadowmoon Valley 71.30,85.80
step
talk Overlord Mor'ghor##23139
turnin A Job Unfinished...##11041 |goto Shadowmoon Valley 66.20,85.70
step
talk Arcanist Thelis##21955
turnin Kill Them All!##11094 |goto Shadowmoon Valley 56.30,59.60
accept Commander Hobb##11095 |goto Shadowmoon Valley 56.30,59.60
|only if rep("The Scryers") >= Friendly
step
talk Commander Hobb##23434
turnin Commander Hobb##11095 |goto Shadowmoon Valley 56.50,58.70
|only if rep("The Scryers") >= Friendly
step
talk Anchorite Ceyla##21402
turnin Kill Them All!##11099 |goto Shadowmoon Valley 62.60,28.40
accept Commander Arcus##11100 |goto Shadowmoon Valley 62.60,28.40
|only if rep("The Aldor") >= Friendly
step
talk Commander Arcus##23452
turnin Commander Arcus##11100 |goto Shadowmoon Valley 62.40,29.30
|only if rep("The Aldor") >= Friendly
step
Reach Exalted with the Netherwing |complete rep("Netherwing") >= Exalted
|tip Complete daily quests using the "Netherwing Daily Quests" guide.
|tip You can also farm eggs using the "Netherwing Egg" guide.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Bow to the Highlord##11107 |goto Shadowmoon Valley 66.10,86.40
step
talk Overlord Mor'ghor##23139
turnin Bow to the Highlord##11107 |goto Shadowmoon Valley 66.20,85.70
accept Lord Illidan Stormrage##11108 |goto Shadowmoon Valley 66.20,85.70
step
Watch the dialogue
Arrive in Shattrath City |goto Shattrath City 65.80,18.60 < 200 |noway |c |q 11108
step
talk Barthamus##23433
turnin Lord Illidan Stormrage##11108 |goto Shattrath City 66.60,16.40
step
Pick your favorite Netherdrake:
accept Voranaku the Violet Netherwing Drake##11113 |goto Shattrath City 66.80,17.60 |noautoaccept |or
accept Zoya the Veridian Netherwing Drake##11114 |goto Shattrath City 66.80,17.60 |noautoaccept |or
accept Suraku the Azure Netherwing Drake##11112 |goto Shattrath City 66.80,17.60 |noautoaccept |or
accept Onyxien the Onyx Netherwing Drake##11111 |goto Shattrath City 66.80,17.60 |noautoaccept |or
accept Malfas the Purple Netherwing Drake##11110 |goto Shattrath City 66.80,17.60 |noautoaccept |or
accept Jorus the Cobalt Netherwing Drake##11109 |goto Shattrath City 66.80,17.60 |noautoaccept |or
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Ogri'la",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Ogri'la faction.",
achieveid={896},
patch='30001',
},[[
step
label "route"
Routing to proper section |next "daily" |only if completedq(11091)
Routing to proper section |next |only if default
step
talk V'eru##22497
accept Speak with the Ogre##10984 |goto Shattrath City,56.50,49.10
step
talk Grok##22940
turnin Speak with the Ogre##10984 |goto Shattrath City 64.90,68.10
accept Mog'dorg the Wizened##10983 |goto Shattrath City 64.90,68.10
step
talk Mog'dorg the Wizened##22941
turnin Mog'dorg the Wizened##10983 |goto Blade's Edge Mountains,55.50,44.90
accept Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains,55.50,44.90
accept Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains,55.50,44.90
accept Even Gronn Have Standards##10997 |goto Blade's Edge Mountains,55.50,44.90
step
kill Grulloc##20216 |n
click Grulloc's Dragon Skull##185567
collect 1 Grulloc's Dragon Skull##32379 |q 10995/1 |goto Blade's Edge Mountains,60.90,47.60
step
kill Maggoc##20600 |n
click Maggoc's Treasure Chest##185569
collect 1 Maggoc's Treasure Chest##32380 |q 10996/1 |goto Blade's Edge Mountains 58.50,62.20
step
kill Slaag##22199+
click Slaag's Standard##185574
collect 1 Slaag's Standard##32382 |q 10997/1 |goto Terokkar Forest,20.30,17.50
step
talk Mog'dorg the Wizened##22941
turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains,55.50,44.90
turnin Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains,55.50,44.90
turnin Even Gronn Have Standards##10997 |goto Blade's Edge Mountains,55.50,44.90
accept Grim(oire) Business##10998 |goto Blade's Edge Mountains,55.50,44.90
step
Stand in the fire until Vim'gol the Vile spawns
kill Vim'gol the Vile##22911 |n
click Vim'gol's Vile Grimoire##185562
collect 1 Vim'gol's Vile Grimoire##32358 |q 10998/1 |goto Blade's Edge Mountains 77.30,31.80
step
talk Mog'dorg the Wizened##22941
turnin Grim(oire) Business##10998 |goto Blade's Edge Mountains,55.50,44.90
accept Into the Soulgrinder##11000 |goto Blade's Edge Mountains,55.50,44.90
step
Use Vim'gol's Grimoire |use Vim'gol's Grimoire##32467
Kill all adds that spawn, defending the soul grinder.
Defeat Skulloc Soul Grinder
click Skulloc's Soul##185577
Capture Skulloc's Soul |q 11000/1 |goto Blade's Edge Mountains 60.00,24.10
step
talk Mog'dorg the Wizened##22941
turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains,55.50,44.90
accept Ogre Heaven##11009 |goto Blade's Edge Mountains,55.50,44.90
step
talk Chu'a'lor##23233
turnin Ogre Heaven##11009 |goto Blade's Edge Mountains,28.80,57.30
accept The Crystals##11025 |goto Blade's Edge Mountains,28.80,57.30
step
click Apexis Shard Formation##185911
collect 5 Apexis Shard##32569 |q 11025/1 |goto Blade's Edge Mountains,28.80,62.40
step
talk Chu'a'lor##23233
turnin The Crystals##11025 |goto Blade's Edge Mountains 28.80,57.40
accept An Apexis Relic##11058 |goto Blade's Edge Mountains 28.80,57.40
step
talk Torkus##23316
accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.40,57.60
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect Apexis Shard##32569 |q 11058 |goto Blade's Edge Mountains 29.20,65.20
step
Click the Apexis Relic
|tip It looks like a smaller floating crystal hovering over a white orb on the ground.
Insert an Apexis Shard, and begin!
Repeat the color patterns that are shown
|tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 6 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
Attain the Apexis Vibrations |q 11058/1 |goto Blade's Edge Mountains 27.70,68.10
If you fail, get another Apexis Shard around [29.20,65.20]
step
talk Chu'a'lor##23233
turnin An Apexis Relic##11058 |goto Blade's Edge Mountains 28.80,57.40
accept The Relic's Emanation##11080 |goto Blade's Edge Mountains 28.80,57.40
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect Apexis Shard##32569 |q 11080 |goto Blade's Edge Mountains 29.20,65.20
step
Click the Apexis Relic
|tip It looks like a smaller floating crystal hovering over a white orb on the ground.
Insert an Apexis Shard, and begin!
Repeat the color patterns that are shown
|tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
Attain the Apexis Vibrations |q 11080/1 |goto Blade's Edge Mountains 31.50,63.40
If you fail, get another Apexis Shard around [29.20,65.20]
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto Blade's Edge Mountains 28.80,57.40
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect 10 Apexis Shard##32569 |q 11030 |goto Blade's Edge Mountains 31.20,52.20
step
Click a Fel Crystalforge
|tip It looks like a metal machine with green bubbling floating out of it quickly.
Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards
collect Unstable Flask of the Beast##32598 |q 11030/1 |goto Blade's Edge Mountains 32.80,40.50
step
talk Torkus##23316
turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.40,57.60
accept A Father's Duty##11061 |goto Blade's Edge Mountains 28.40,57.60
step
talk Chu'a'lor##23233
accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains 28.80,57.40
step
talk Sky Commander Keller##23334
turnin The Skyguard Outpost##11062 |goto Blade's Edge Mountains 27.40,52.70
step
talk Sky Sergeant Vanderlip##23120
accept Bombing Run##11010 |only if not Druid |goto Blade's Edge Mountains 27.60,52.90
accept Bombing Run##11102 |only Druid |goto Blade's Edge Mountains 27.60,52.90
step
Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the gorund around this area.
Destroy 15 Fel Cannonball Stacks |q 11010/1 |goto Blade's Edge Mountains 33.30,44.00
only if not Druid
step
Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the gorund around this area.
Destroy 15 Fel Cannonball Stacks |q 11102/1 |goto Blade's Edge Mountains 33.30,44.00
only Druid
step
talk Sky Sergeant Vanderlip##23120
turnin Bombing Run##11010 |only if not Druid |goto Blade's Edge Mountains 27.60,52.90
turnin Bombing Run##11102 |only Druid |goto Blade's Edge Mountains 27.60,52.90
step
talk Sky Commander Keller##23334
accept Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.40,52.70
step
talk Aether-tech Apprentice##23473
turnin Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.90,52.20
step
talk Skyguard Khatie##23335
accept Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 28.00,51.50
step
kill Aether Ray##22181+
Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698
|tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
Wrangle 5 Aether Rays |q 11065/1 |goto Blade's Edge Mountains 31.60,56.40
step
talk Chu'a'lor##23233
accept Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.80,57.40
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect 35 Apexis Shard##32569 |q 11059 |goto Blade's Edge Mountains 31.20,52.20
step
Click the Apexis Monument
|tip It's a huge floating crystal that changes colors.
Insert 35 Apexis Shards, and begin!
Click any of the 4 big colored buttons on the ground
|tip You will get hit for 7,000 damage, but if you are high level, it shouldn't be a big deal.  This will make the quest mob spawn faster.
kill Apexis Guardian##22275
collect Apexis Guardian's Head##32697 |q 11059/1 |goto Blade's Edge Mountains 31.80,63.80
step
talk Chu'a'lor##23233
turnin Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.80,57.40
step
talk Skyguard Khatie##23335
turnin Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 28.00,51.50
step
talk Sky Commander Keller##23334
accept To Rule The Skies##11078 |goto Blade's Edge Mountains 27.40,52.70
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect 35 Apexis Shard##32569 |q 11078 |goto Blade's Edge Mountains 31.20,52.20
step
Click Rivendark's Egg
|tip It looks like a big brown spiked egg sitting in a nest on the ground.
Place 35 Apexis Shards near the dragon egg to crack it open
kill Rivendark##23061
collect Dragon Teeth##32732 |q 11078/1 |goto Blade's Edge Mountains 27.20,64.80
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect 10 Apexis Shard##32569 |q 11061 |goto Blade's Edge Mountains 31.20,52.20
step
talk Sky Commander Keller##23334
turnin To Rule The Skies##11078 |goto Blade's Edge Mountains 27.40,52.70
step
Click the Bash'ir Crystalforge
|tip It looks like a 3-layered well sitting on the ground in the middle of a big circular pink glowing symbol.
Purchase 1 Unstable Flask of the Sorcerer for the cost of 10 Apexis Shards
collect Unstable Flask of the Sorcerer##32601 |q 11061/1 |goto Blade's Edge Mountains 54.40,10.80
step
talk Torkus##23316
turnin A Father's Duty##11061 |goto Blade's Edge Mountains 28.40,57.60
step
talk Gahk##23300
accept A Fel Whip For Gahk##11079 |goto Blade's Edge Mountains 28.50,58.10
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect 35 Apexis Shard##32569 |q 11079 |goto Blade's Edge Mountains 31.20,52.20
step
Click the Fel Crystal Prism
|tip It's a big green crystal floating in green smoke above 4 metal vents.
Place 35 Apexis Shards into the prism
There are 4 different demons that can spawn:
kill Mo'arg Incinerator##23354
kill Braxxus##23353
kill Galvanoth##22281
kill Zarcsin##23355
collect Fel Whip##32733 |q 11079/1 |goto Blade's Edge Mountains 33.90,44.20
step
talk Gahk##23300
turnin A Fel Whip For Gahk##11079 |goto Blade's Edge Mountains 28.50,58.10
step
talk Chu'a'lor##23233
accept A Special Thank You##11091 |goto Blade's Edge Mountains 28.80,57.40
step
talk Jho'nass##23428
turnin A Special Thank You##11091 |goto Blade's Edge Mountains 28.10,58.70
step
label "daily"
talk Chu'a'lor##23233
accept The Relic's Emanation##11080 |goto Blade's Edge Mountains,28.80,57.40
step
talk Kronk##23253
accept Banish the Demons##11026 |goto Blade's Edge Mountains,28.90,57.90
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
talk Kronk##23253
accept Banish More Demons##11051 |goto Blade's Edge Mountains,28.90,57.90
|only if completedq(11026)
step
talk Skyguard Khatie##23335
accept Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains 28.00,51.50
step
talk Sky Sergeant Vanderlip##23120
accept Bomb Them Again!##11023 |goto Blade's Edge Mountains,27.60,52.90
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect Apexis Shard##32569 |q 11080 |goto Blade's Edge Mountains 29.20,65.20
step
Click the Apexis Relic
|tip It looks like a smaller floating crystal hovering over a white orb on the ground.
Insert an Apexis Shard, and begin!
Repeat the color patterns that are shown
|tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
Attain the Apexis Vibrations |q 11080/1 |goto Blade's Edge Mountains 31.50,63.40
If you fail, get another Apexis Shard around [29.20,65.20]
step
Use your Banishing Crystal |use Banishing Crystal##32696
Kill Fear Fiends and Abyssal Flamebringers near the portal that opens.
15 Demons Banished |q 11026/1 |goto Blade's Edge Mountains 29.10,79.30
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
Use your Banishing Crystal |use Banishing Crystal##32696
Kill Fear Fiends and Abyssal Flamebringers near the portal that opens
15 Demons Banished |q 11051/1 |goto Blade's Edge Mountains 29.10,79.30
|only if completedq(11026)
step
kill Aether Ray##22181+
Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698
|tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
Wrangle 5 Aether Rays |q 11066/1 |goto Blade's Edge Mountains 31.60,56.40
step
Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the gorund around this area.
Destroy 15 Fel Cannonball Stacks |q 11023/1 |goto Blade's Edge Mountains 33.30,44.00
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto Blade's Edge Mountains,28.80,57.40
step
talk Kronk##23253
turnin Banish the Demons##11026 |goto Blade's Edge Mountains,28.90,57.90
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
talk Kronk##23253
turnin Banish More Demons##11051 |goto Blade's Edge Mountains,28.90,57.90
|only if completedq(11026)
step
talk Skyguard Khatie##23335
turnin Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains 28.00,51.50
step
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains,27.60,52.90
step
You have completed the dailies for today.
Click here to be taken to the beginning of the guide |confirm |next "daily"
|only if rep("Ogri'la") < Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\The Scale of the Sands",{
expansion="mists",
description="This guide will walk you through becoming exalted with The Scale of the Sands faction.",
achieveid={959},
patch='30001',
},[[
step
This reputation can be earned by running the Caverns of Time: Hyjal Summit raid.
A full clear will grant roughly 7800 reputation.
|confirm
step
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label "start"
Kill every creature that is hostile in this instance in order to gain reputation. |goto Hyjal Summit 10.50,65.10
|tip You will have to clear this place a few times to reach Exalted.
Earn Exalted status with The Scale of the Sands |complete rep('The Scale of the Sands')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\The Scryers",{
expansion="mists",
description="This guide will walk you through becoming exalted with The Scryers faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Scryers') < Exalted end,
achieveid={903, 1205},
patch='30001',
},[[
step
talk Haggard War Veteran##19684
accept A'dal##10210 |goto Shattrath City,61.20,12.60
step
talk A'dal##18481
turnin A'dal##10210 |goto Shattrath City 54,44.80
|tip She is the big glowing floating being in the middle of the room.
step
talk Khadgar##18166
accept City of Light##10211 |goto Shattrath City 54.80,44.30
Follow Khadgar's Servant
step
Follow Khadgar's Servant until the tour is over |q 10211/1
step
talk Khadgar##18166
turnin City of Light##10211 |goto Shattrath City 54.80,44.30
accept Allegiance to the Scryers##10552 |goto Shattrath City 54.80,44.30
step
talk Khadgar##18166
accept Voren'thal the Seer##10553 |goto Shattrath City 54.80,44.30
step
Ride the elevator up to the Scryer Rise |goto Shattrath City,50.00,62.90 < 5 |q 10553 |only if walking
talk Magistrix Fyalenn##18531
accept Firewing Signets##10412 |goto Shattrath City 45.20,81.50
accept Sunfury Signets##10656 |goto Shattrath City 45.20,81.50
step
talk Voren'thal the Seer##18530
turnin Voren'thal the Seer##10553 |goto Shattrath City 42.80,91.70
accept Synthesis of Power##10416 |goto Shattrath City 42.80,91.70
step
talk Arcanist Savan##23272
accept Report to Spymaster Thalodien##11039 |goto Shattrath City,44.60,76.40
step
talk Spymaster Thalodien##19468
turnin Report to Spymaster Thalodien##11039 |goto Netherstorm,32,64
accept Manaforge B'naar##10189 |goto Netherstorm,32,64
step
kill Captain Arathyn##19635
|tip He walks around this area on a big purple bird.
collect B'naar Personnel Roster##28376 |q 10189/1 |goto Netherstorm 27.80,65
step
talk Spymaster Thalodien##19468
turnin Manaforge B'naar##10189 |goto Netherstorm 32,64
accept High Value Targets##10193 |goto Netherstorm 32,64
talk Magistrix Larynna##19469
accept Bloodgem Crystals##10204 |goto Netherstorm 32,64
only if rep ('The Scryers') >= Friendly
stickystart "sunfurysig"
step
kill Sunfury Magister##18855+
collect Bloodgem Shard##28452 |n
Use the Bloodgem Shard next to a floating crystal |use Bloodgem Shard##28452
Siphon the Bloodgem Crystal |q 10204/1 |goto Netherstorm 26.30,66.70
kill 8 Sunfury Geologist##19779+ |q 10193/3 |goto Netherstorm 26.30,66.70
step
label "sunfurysig"
kill 2 Sunfury Warp-Master##18857+ |q 10193/1 |goto Netherstorm 26.90,70.50
kill 6 Sunfury Warp-Engineer##18852+ |q 10193/2 |goto Netherstorm 26.90,70.50
collect 10 Sunfury Signet##30810 |q 10656/1 |goto Netherstorm 26.90,70.50
step
talk Spymaster Thalodien##19468
turnin High Value Targets##10193 |goto Netherstorm 32,64
accept Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32,64
talk Magistrix Larynna##19469
turnin Bloodgem Crystals##10204 |goto Netherstorm 32,64
step
kill Overseer Theredis##20416
collect B'naar Access Crystal##29366 |q 10329/2 |goto Netherstorm 23.90,70.70
step
click the B'naar Control Console
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge B'naar |q 10329/1 |goto Netherstorm 23.20,68.10
step
talk Spymaster Thalodien##19468
turnin Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32,64
accept Stealth Flight##10194 |goto Netherstorm 32,64
step
talk Veronia##20162
turnin Stealth Flight##10194 |goto Netherstorm 33.80,64.20
accept Behind Enemy Lines##10652 |goto Netherstorm 33.80,64.20
Tell her you're as ready as you'll ever be.
You will fly to Manaforge Coruu |goto Netherstorm 48.00,86.00 < 5 |noway |c |q 10652
step
talk Caledis Brightdawn##19840
turnin Behind Enemy Lines##10652 |goto Netherstorm 48.20,86.60
accept A Convincing Disguise##10197 |goto Netherstorm 48.20,86.60
step
kill Sunfury Arcanists##20134+
collect Sunfury Arcanist Robes##28635 |q 10197/3 |goto Netherstorm 47.70,84.90
step
kill Sunfury Researcher##20136+
collect Sunfury Researcher Gloves##28636 |q 10197/1 |goto Netherstorm 49,81.50
step
Go outside |goto Netherstorm 50.80,83.20 |walk
kill Sunfury Guardsmen##18850
collect Sunfury Guardsman Medallion##28637 |q 10197/2
step
talk Caledis Brightdawn##19840
turnin A Convincing Disguise##10197 |goto Netherstorm 48.20,86.60
accept Information Gathering##10198 |goto Netherstorm 48.20,86.60
step
Use the Sunfury Disguise in your bags |havebuff Sunfury Disguise##34603 |use Sunfury Disguise##28607 |q 10198
step
Go inside Manaforge Coruu
Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you
Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
Listen to them talk
Gather the Information |q 10198/1 |goto Netherstorm 48.20,84.10
step
Go outside |goto Netherstorm 48.20,86.60 |walk
talk Caledis Brightdawn##19840
turnin Information Gathering##10198 |goto Netherstorm 48.20,86.60
accept Shutting Down Manaforge Coruu##10330 |goto Netherstorm 48.20,86.60
step
_Enter_ Manaforge Coruu
Kill Overseer Seylanna
collect Coruu Access Crystal##29396 |q 10330/2 |goto Netherstorm 49,81.50
click the Coruu Control Console##183956
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Coruu |q 10330/1 |goto Netherstorm 49,81.50
step
Go outside
talk Caledis Brightdawn##19840
turnin Shutting Down Manaforge Coruu##10330 |goto Netherstorm 48.20,86.60
accept Return to Thalodien##10200 |goto Netherstorm 48.20,86.60
step
talk Spymaster Thalodien##19468
turnin Return to Thalodien##10200 |goto Netherstorm 32,64
step
talk Magistrix Larynna##19469
accept Kick Them While They're Down##10341 |goto Netherstorm 32.00,64.00
talk Spymaster Thalodien##19468
accept Shutting Down Manaforge Duro##10338 |goto Netherstorm 32.00,64.00
only if rep ('The Scryers') >= Neutral
stickystart "sunbowcent"
step
_Enter_ Manaforge Duro
kill Overseer Athanel##20435
collect 1 Duro Access Crystal##29397|q 10338/2 |goto Netherstorm 60.00,68.50
only if rep ('The Scryers') >= Friendly
step
click the Duro Control Console##184311
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Duro |q 10338/1 |goto Netherstorm 59.10,66.80
only if rep ('The Scryers') >= Friendly
step
label "sunbowcent"
kill 8 Sunfury Conjurer##20139+ |q 10341/1 |goto Netherstorm 57.90,63.40
kill 6 Sunfury Bowman##20207+ |q 10341/2 |goto Netherstorm 57.90,63.40
kill 4 Sunfury Centurion##20140+ |q 10341/3 |goto Netherstorm 57.90,63.40
only if rep ('The Scryers') >= Friendly
step
talk Spymaster Thalodien##19468
turnin Shutting Down Manaforge Duro##10338 |goto Netherstorm 32.00,64.10
talk Magistrix Larynna##19469
turnin Kick Them While They're Down##10341 |goto Netherstorm 32.00,64.10
accept A Defector##10202 |goto Netherstorm 32.00,64.10
only if rep ('The Scryers') >= Friendly
step
talk Magister Theledorn##20920
turnin A Defector##10202 |goto Netherstorm 26.20,41.60
accept Damning Evidence##10432 |goto Netherstorm 26.20,41.60
only if rep ('The Scryers') >= Friendly
step
_Enter_ Manaforge Ara
kill Gan'arg Warp-Tinker##20285+, Mo'arg Warp-Master##20326+, Daughter of Destiny##18860+
|tip You can also find more outside of Manaforge Ara.
collect 8 Orders From Kael'thas##29797 |q 10432/1 |goto Netherstorm 27.10,39.20
only if rep ('The Scryers') >= Friendly
step
talk Spymaster Thalodien##19468
turnin Damning Evidence##10432 |goto Netherstorm 32.00,64.10
accept A Gift for Voren'thal##10508 |goto Netherstorm 32.00,64.10
only if rep ('The Scryers') >= Friendly
step
kill Forgemaster Morug##20800
collect First Half of Socrethar's Stone##29624 |q 10508/1 |goto Netherstorm 37.10,27.80
only if rep ('The Scryers') >= Friendly
step
kill Silroth##20801+
collect Second Half of Socrethar's Stone##29625 |q 10508/2 |goto Netherstorm 40.80,19.60
only if rep ('The Scryers') >= Friendly
step
talk Spymaster Thalodien##19468
turnin A Gift for Voren'thal##10508 |goto Netherstorm 32.00,64.10
accept Bound for Glory##10509 |goto Netherstorm 32.00,64.10
step
talk Voren'thal the Seer##18530
turnin Bound for Glory##10509 |goto Shattrath City,42.80,91.70
accept Turnin Point##10507 |goto Shattrath City,42.80,91.70
step
Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
collect 1 Socrethar's Teleportation Stone##29796 |q 10507 |goto Netherstorm,36.40,18.40 |n
collect 1 Voren'thal's Presence##30259 |q 10507 |goto Netherstorm,36.40,18.40 |n
Step into the teleporter
Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto Netherstorm 30.60,17.60,1 |noway|c
step
Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
Socrethar slain |q 10507/1 |goto Netherstorm 29.60,14.20
step
talk Voren'thal the Seer##18530
turnin Turnin Point##10507 |goto Shattrath City,42.80,91.70
step
talk Larissa Sunstrike##21954
accept Karabor Training Grounds##10687 |goto Shadowmoon Valley,55.70,58.20
step
talk Battlemage Vyara##22211
accept Sunfury Signets##10824 |goto Shadowmoon Valley 56.30,58.80
step
talk Arcanist Thelis##21955
accept Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.30,59.60
step
talk Varen the Reclaimer##21953
accept The Ashtongue Broken##10807 |goto Shadowmoon Valley,54.70,58.20
step
kill Eclipsion Soldier##22016+, Eclipsion Spellbinder##22017+, Eclipsion Cavalier##22018+
collect 10 Sunfury Signet##30810 |q 10824/1 |goto Shadowmoon Valley 51.70,65.60
step
talk Battlemage Vyara##22211
turnin Sunfury Signets##10824 |goto Shadowmoon Valley 56.30,58.80
step
kill Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
collect 8 Sunfury Glaive##30679 |q 10687/1 |goto Shadowmoon Valley 71.10,52.00
collect 1 Arcane Tome##29739 |q 10416/1 |goto Shadowmoon Valley 71.10,52.00
step
talk Larissa Sunstrike##21954
turnin Karabor Training Grounds##10687 |goto Shadowmoon Valley 55.70,58.20
accept A Necessary Distraction##10688 |goto Shadowmoon Valley 55.70,58.20
step
kill Sunfury Warlock##21503+
collect 1 Scroll of Demonic Unbanishing##30811 |n
Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
Free Azaloth |q 10688/1 |goto Shadowmoon Valley 70.00,51.40
step
talk Larissa Sunstrike##21954
turnin A Necessary Distraction##10688 |goto Shadowmoon Valley 55.70,58.20
accept Altruis##10689 |goto Shadowmoon Valley 55.70,58.20
step
kill 3 Ashtongue Handler##21803+ |q 10807/1 |goto Shadowmoon Valley 58.80,36.50
kill 4 Ashtongue Warrior##21454+ |q 10807/2 |goto Shadowmoon Valley 58.80,36.50
kill 6 Ashtongue Shaman##21453+ |q 10807/3 |goto Shadowmoon Valley 58.80,36.50
click Baar'ri Tablet Fragment##6420
kill Ashtongue Worker##21455
collect 12 Baa'ri Tablet Fragment##30596 |q 10683/1 |goto Shadowmoon Valley 58.80,36.50
step
talk Varen the Reclaimer##21953
turnin The Ashtongue Broken##10807 |goto Shadowmoon Valley,54.70,58.20
accept The Great Retribution##10817 |goto Shadowmoon Valley,54.70,58.20
step
talk Arcanist Thelis##21955
turnin Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.30,59.60
accept Oronu the Elder##10684 |goto Shadowmoon Valley 56.30,59.60
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10684/1 |goto Shadowmoon Valley 57.20,32.90
step
kill 8 Shadowmoon Slayer##22082+ |q 10817/1 |goto Shadowmoon Valley 67.40,37.60
kill 8 Shadowmoon Chosen##22084+ |q 10817/2 |goto Shadowmoon Valley 67.40,37.60
kill 4 Shadowmoon Darkweaver##22081+ |q 10817/3 |goto Shadowmoon Valley 67.40,37.60
step
talk Arcanist Thelis##21955
turnin Oronu the Elder##10684 |goto Shadowmoon Valley 56.30,59.60
accept The Ashtongue Corruptors##10685 |goto Shadowmoon Valley 56.30,59.60
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10685/2 |goto Shadowmoon Valley 57.10,73.30
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10685/1 |goto Shadowmoon Valley 51.30,52.90
step
kill Uylaru##21710
|tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10685/4 |goto Shadowmoon Valley 48.20,39.80
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10685/3 |goto Shadowmoon Valley 49.80,23.10
step
talk Arcanist Thelis##21955
turnin The Ashtongue Corruptors##10685 |goto Shadowmoon Valley 56.30,59.60
accept The Warden's Cage##10686 |goto Shadowmoon Valley 56.30,59.60
step
Follow the path down |goto Shadowmoon Valley 57.40,49.70 < 5 |q 10686 |walk
talk Sanoru##21826
turnin The Warden's Cage##10686 |goto Shadowmoon Valley 57.30,49.60
step
talk Altruis the Sufferer##18417
turnin Altruis##10640 |goto Nagrand,27.20,43.00
accept Against All Odds##10669 |goto Nagrand,27.20,43.00
accept Against the Illidari##10668 |goto Nagrand,27.20,43.00
accept Against the Legion##10641 |goto Nagrand,27.20,43.00
step
Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
kill Xeleth##21894 |q 10669/1 |goto Zangarmarsh,16.20,40.70
step
kill Wrath Priestess##18859+
collect Freshly Drawn Blood##30850 |n |goto Netherstorm,39.60,20.50
Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850
|tip It only last 1 minute, then it disappears if you don't use it in time.
kill Avatar of Sathal##21925 |q 10641/1 |goto Netherstorm,39.60,20.50
step
kill Lothros##21928 |q 10668/1 |goto Shadowmoon Valley,28.30,49.50
|tip He walks around this area, so you may need to search for him.
step
talk Altruis the Sufferer##18417
turnin Against the Legion##10641 |goto Nagrand,27.30,43.10
turnin Against the Illidari##10668 |goto Nagrand,27.30,43.10
turnin Against All Odds##10669 |goto Nagrand,27.30,43.10
accept Illidan's Pupil##10646 |goto Nagrand,27.30,43.10
step
talk Altruis the Sufferer##18417
Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
Listen to Illidan's Pupil |q 10646/1 |goto Nagrand 27.30,43.10
step
talk Altruis the Sufferer##18417
turnin Illidan's Pupil##10646 |goto Nagrand 27.30,43.10
accept The Book of Fel Names##10649 |goto Nagrand 27.30,43.10
step
kill Blackheart the Inciter##18667
collect 1 Book of Fel Names##30808|q 10649/1 |goto Shadow Labyrinth 26.60,68.60
step
talk Altruis the Sufferer##18417
turnin The Book of Fel Names##10649 |goto Nagrand,27.30,43.10
accept Return to the Scryers##10691 |goto Nagrand,27.30,43.10
step
talk Larissa Sunstrike##21954
turnin Return to the Scryers##10691 |goto Shadowmoon Valley,55.80,58.20
accept Varedis Must Be Stopped##10692 |goto Shadowmoon Valley,55.80,58.20
step
kill Netharel##21164 |q 10692/2 |goto Shadowmoon Valley,68.60,52.70
|tip He is walking amongst the Demon Hunter Supplicants.
step
kill Alandien##21171 |q 10692/4 |goto Shadowmoon Valley 69.60,54.10
step
When Varedis gets low on health, use the _Book of Fel Names_ to defeat him.
|tip He will become immune to normal attacks.
Use Book of Fel Names |use Book of Fel Names##30854
kill Varedis##21178 |q 10692/1 |goto Shadowmoon Valley 72.20,53.70
step
kill Theras##21168 |q 10692/3 |goto Shadowmoon Valley 72.40,48.40
step
talk Larissa Sunstrike##21954
turnin Return to the Scryers##10692 |goto Shadowmoon Valley,55.80,58.20
step
talk Magistrix Fyalenn##18531
turnin Firewing Signets##10412 |goto Shattrath City,45.20,81.50
turnin Sunfury Signets##10656 |goto Shattrath City,45.20,81.50
After turning these quests in, you will unlock the daily versions of these quests, which you will have to farm.
step
talk Voren'thal the Seer##18530
turnin Synthesis of Power##10416 |goto Shattrath City,42.80,91.70
When you're done turning items in, click here to farm. |next "farming" |only if rep('The Scryers')<=Revered |confirm
step
label "farming"
kill Sunfury Bloodwarder##18853+, Sunfury Magister##18855+, Sunfury Geologist##19779+, Sunfury Astromancer##19643+, Sunfury Captain##19453+
collect 1 Arcane Tome##29739 |n |goto Netherstorm,27.80,72.60
|tip You can turn in one of these at a time.
collect 10 Sunfury Signet##30810 |n |goto Netherstorm,27.80,72.60
|tip You will need to collect multiples of 10.
You can find more around [25.70,67.20]
Click here when you're ready to turn in. |confirm
step
label "signets"
talk Magistrix Fyalenn##18531
accept More Sunfury Signets##10658 |n |goto Shattrath City,45.20,81.50
Click here to turn in Arcane Tomes |next "tomes" |confirm
Click here to continue farming. |next "farming" |confirm
Earn Exalted reputation with The Scryers. |complete rep('The Scryers')==Exalted
step
label "tomes"
talk Voren'thal the Seer##18530
accept Arcane Tomes##10419 |n |goto Shattrath City,42.80,91.70
Click here to turn in Sunfury Signets |next "signets" |confirm
Click here to continue farming. |next "farming" |confirm
Earn Exalted reputation with The Scryers. |complete rep('The Scryers')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\The Sha'tar",{
expansion="mists",
description="This guide will walk you through becoming exalted with The Sha'tar faction.",
},[[
step
talk Haggard War Veteran##19684
accept A'dal##10210 |goto Shattrath City,61.20,12.60
step
talk A'dal##18481
turnin A'dal##10210 |goto Shattrath City 54,44.80
step
talk Matron Celestine##18301
accept He Called Himself Altruis...##9983 |goto Nagrand,55.20,36.10
step
talk Mag'har Captive##18210
|tip You will have to kill the two npc's guarding him.
accept The Totem of Kar'dash##9868 |goto Nagrand,31.30,44.10
step
Escort the Mag'har Captive |q 9868/1
step
talk Altruis the Sufferer##18417
turnin He Called Himself Altruis...##9983 |goto Nagrand 27.30,43.10
accept Survey the Land##9991 |goto Nagrand 27.30,43.10
|tip Makes sure you're not mounted, or you will have to abandon and re-accept the quest.
step
Forge Camps Surveyed. |q 9991/1
step
talk Altruis the Sufferer##18417
turnin Survey the Land##9991|goto Nagrand 27.30,43.10
accept Buying Time##9999 |goto Nagrand 27.30,43.10
step
kill 2 Felguard Legionnaire##17152+ |q 9999/1 |goto Nagrand 25.20,38.30
kill 3 Mo'arg Engineer##16945+ |q 9999/2 |goto Nagrand 25.20,38.30
kill 8 Gan'arg Tinkerer##17151+ |q 9999/3 |goto Nagrand 25.20,38.30
step
talk Altruis the Sufferer##18417
turnin Buying Time##9999 |goto Nagrand 27.30,43.10
accept The Master Planner##10001 |goto Nagrand 27.30,43.10
step
kill Mo'arg Master Planner##18567
collect The Master Planner's Blueprints##25751 |q 10001/1 |goto Nagrand 23.60,34.60
step
talk Altruis the Sufferer##18417
turnin The Master Planner##10001 |goto Nagrand 27.30,43.10
accept Patience and Understanding##10004 |goto Nagrand 27.30,43.10
step
talk Garrosh##18063
turnin The Totem of Kar'dash##9868 |goto Nagrand,55.50,37.60
step
talk Jorin Deadeye##18106
accept The Impotent Leader##9888 |goto Nagrand 55.50,37.60
step
talk Kilrath##18273
turnin The Impotent Leader##9888 |goto Terokkar Forest,19.80,60.90
accept Don't Kill the Fat One##9889 |goto Terokkar Forest,19.80,60.90
step
kill 10 Boulderfist Invader##18260+ |q 9889/1 |goto Terokkar Forest 20,63.10
step
Fight Unkor the Ruthless until he submits |q 9889/2 |goto Terokkar Forest 20,63.10
talk Unkor the Ruthless##18262
turnin Don't Kill the Fat One##9889 |goto Terokkar Forest 20,63.10
accept Success!##9890 |goto Terokkar Forest 20,63.10
step
talk Kilrath##18273
turnin Success!##9890 |goto Terokkar Forest 19.80,60.90
accept Because Kilrath is a Coward##9891 |goto Terokkar Forest 19.80,60.90
step
talk Jorin Deadeye##18106
turnin Because Kilrath is a Coward##9891 |goto Nagrand,55.50,37.60
accept Message in a Battle##9906 |goto Nagrand,55.50,37.60
step
kill 8 Boulderfist Mystic##17135+ |q 9906/1 |goto Nagrand 72.90,69.80
kill 8 Boulderfist Crusher##17134+ |q 9906/2 |goto Nagrand 72.90,69.80
step
talk Jorin Deadeye##18106
turnin Message in a Battle##9906 |goto Nagrand 55.50,37.60
accept An Audacious Advance##9907 |goto Nagrand 55.50,37.60
step
kill 10 Boulderfist Warrior##17136+ |q 9907/1 |goto Nagrand 40.80,31.50
kill 10 Boulderfist Mage##17137+ |q 9907/2 |goto Nagrand 40.80,31.50
step
talk Jorin Deadeye##18106
turnin An Audacious Advance##9907 |goto Nagrand 55.50,37.60
accept Diplomatic Measures##10107 |goto Nagrand 55.50,37.60
step
talk Lantresor of the Blade##18261
Listen to his story
Hear the story of the Blademaster |q 10107/1 |goto Nagrand 73.80,62.60
turnin Diplomatic Measures##10107 |goto Nagrand 73.80,62.60
accept Armaments for Deception##9928 |goto Nagrand 73.80,62.60
accept Ruthless Cunning##9927 |goto Nagrand 73.80,62.60
step
click the Kil'sorrow Armaments##182355
|tip They look like skinny, square, tan boxes on the ground with a red axe logo on them.
collect 10 Kil'sorrow Armaments##25554 |q 9928/1 |goto Nagrand 71.40,79.40
kill Kil'sorrow Deathsworn##17148, Kil'sorrow Cultist##17147, Kil'sorrow Spellbinder##17146
Kill 10 Kil'sorrow Agents |q 9935/2 |goto Nagrand 71.40,79.40
Use your Warmaul Ogre Banner on their corpses |use Warmaul Ogre Banner##25552
Plant 10 Warmaul Ogre Banners |q 9927/1 |goto Nagrand 71.40,79.40
step
talk Lantresor of the Blade##18261
turnin Armaments for Deception##9928 |goto Nagrand 73.80,62.60
turnin Ruthless Cunning##9927 |goto Nagrand 73.80,62.60
accept Returning the Favor##9931 |goto Nagrand 73.80,62.60
accept Body of Evidence##9932 |goto Nagrand 73.80,62.60
step
kill Warmaul Shaman##18064+, Warmaul Reaver##17138+
Use your Kil'sorrow Banner on their copses |use Kil'sorrow Banner##25555
Plant 10 Kil'sorrow Banners |q 9931/1 |goto Nagrand 46.50,24.30
Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658
|tip It looks like a big burning bonfire.
Defend the 2 ogres that spawn until they finish placing corpses around
Plant the Kil'sorrow Bodies |q 9932/1 |goto Nagrand 46.50,24.30
step
talk Lantresor of the Blade##18261
turnin Returning the Favor##9931 |goto Nagrand 73.80,62.60
turnin Body of Evidence##9932 |goto Nagrand 73.80,62.60
accept Message to Garadar##9934 |goto Nagrand 73.80,62.60
step
talk Garrosh##18063
turnin Message to Garadar##9934 |goto Nagrand 55.50,37.60
step
Talk to Sal'salabim
Tell him Altruis sent you
kill Sal'salabim##18584
Persuade Sal'salabim |q 10004/1 |goto Shattrath City,77.30,34.90
step
talk Sal'salabim##18584
turnin Patience and Understanding##10004 |goto Shattrath City 77.30,34.90
accept Crackin' Some Skulls##10009 |goto Shattrath City 77.30,34.90
step
Talk to Raliq the Drunk
Tell him you've been sent by Sal'salabim to collect a debt that you owe
kill Raliq the Drunk##18585
collect Raliq's Debt##25767 |q 10009/1 |goto Shattrath City 75.00,31.40
step
Talk to Coosh'coosh
Tell him you've been sent by Sal'salabim to collect a debt that you owe
kill Coosh'coosh##18586
collect Coosh'coosh's Debt##25768 |q 10009/2 |goto Zangarmarsh,80.80,91.20
step
Talk to Floon
Tell him you've been sent by Sal'salabim to collect a debt that you owe
kill Floon##18588
collect Floon's Debt##25769 |q 10009/3 |goto Terokkar Forest,27.60,58.10
step
talk Sal'salabim##18584
turnin Crackin' Some Skulls##10009 |goto Shattrath City,77.30,34.90
accept It's Just That Easy?##10010 |goto Shattrath City,77.30,34.90
step
talk Altruis the Sufferer##18417
turnin It's Just That Easy?##10010 |goto Nagrand,27.30,43.10
accept Forge Camp: Annihilated##10011 |goto Nagrand,27.30,43.10
step
kill Demos Overseer of Hate##18535
collect Fel Cannon Activator##25770 |q 10011 |goto Nagrand 25.00,36.10
step
Use your Fel Cannon Activator on the Fel Cannon: Hate |use Fel Cannon Activator##25770
Destroy Forge Camp: Hate |q 10011/1 |goto Nagrand 25.10,36.00
step
kill Xirkos Overseer of Fear##18536
collect Fel Cannon Activator##25771 |q 10011 |goto Nagrand 19.60,51.10
step
Use your Fel Cannon Activator on the Fel Cannon: Fear |use Fel Cannon Activator##25771
Destroy Forge Camp: Fear |q 10011/2 |goto Nagrand 19.40,50.80
step
talk Altruis the Sufferer##18417
turnin Forge Camp: Annihilated##10011 |goto Nagrand 27.30,43.10
step
talk Garrosh##18063
accept A Visit With the Greatmother##10044 |goto Nagrand 55.40,37.60
step
talk Greatmother Geyah##18141
Tell her Garrosh told you she wanted to speak to you
Listen to Greatmother Geyah |q 10044/1 |goto Nagrand 56.70,34.30
step
talk Greatmother Geyah##18141
turnin A Visit With the Greatmother##10044 |goto Nagrand 56.70,34.30
accept Material Components##10045 |goto Nagrand 56.70,34.30
step
click a Telaari Frond
|tip They look like bushy grass plasnts on the ground in this canyon.
collect Telaari Frond##25864 |q 10045/3 |goto Nagrand 58.70,53.80
step
click Olemba Roots##182601
|tip They look like tangled thick tree roots on the ground at the base of trees around this area.
collect Olemba Root##25863 |q 10045/1 |goto Terokkar Forest,32.70,38.50
step
click a Dragonspine
|tip They look like red leafy plansts on the ground around this area.  They are usually next to the big spike rock formations.
collect Dragonspine##25865 |q 10045/4 |goto Blade's Edge Mountains,39.60,72.40
step
click a Marshberry
|tip They look like big red balls on the ground around this area.
collect Marshberry##25862 |q 10045/2 |goto Zangarmarsh,20.00,8.60
step
talk Greatmother Geyah##18141
turnin Material Components##10045 |goto Nagrand,56.70,34.30
accept To Meet Mother Kashur##10081 |goto Nagrand,56.70,34.30
step
talk Mother Kashur##18687
turnin To Meet Mother Kashur##10081 |goto Nagrand 26.10,60.60
accept The Agitated Ancestors##10082 |goto Nagrand 26.10,60.60
step
kill 8 Agitated Orc Spirit##18043+ |q 10082/1 |goto Nagrand 26.40,60.30
step
talk Mother Kashur##18687
turnin The Agitated Ancestors##10082 |goto Nagrand 26.10,60.60
accept A Visit With The Ancestors##10085 |goto Nagrand 26.10,60.60
step
Go to this spot
Visit Sunspring Post |q 10085/1 |goto Nagrand 31.60,43.70
step
Go to this spot
Visit the Laughing Skull Clan Ruins |q 10085/2 |goto Nagrand 46.70,23.60
step
Go to this spot
Visit Garadar |q 10085/3 |goto Nagrand 54.60,36.10
step
Go to this spot
Visit the Bleeding Hollow Clan Ruins |q 10085/4 |goto Terokkar Forest,20.00,63.00
step
talk Mother Kashur##18687
turnin A Visit With The Ancestors##10085 |goto Nagrand,26.10,60.60
accept When Spirits Speak##10101 |goto Nagrand,26.10,60.60
step
Enter Oshu'gun |goto Nagrand 35.80,67.60 < 5 |q 10102 |walk
Follow the path inside Oshu'gun
talk K'ure##17545
turnin When Spirits Speak##10101 |goto Nagrand 35.50,77.80
accept A Secret Revealed##10102 |goto Nagrand 35.50,77.80
step
Leave Oshu'gun |goto Nagrand 35.80,67.60 < 5 |q 10102 |walk
talk A'dal##18481
turnin A Secret Revealed##10102 |goto Shattrath City,54.10,44.70
accept Auchindoun...##10167 |goto Shattrath City,54.10,44.70
step
Follow the path in the Auchenai Crypts dungeon to the very end
kill Exarch Maladaar##18373 |q 10167/1 |goto Auchenai Crypts 73.80,48.90
talk D'ore##19412
|tip It's a big white floating alien being that appears after you kill Exarch Maladaar.
turnin Auchindoun...##10167 |goto Auchenai Crypts 73.80,48.90
accept What the Soul Sees##10168 |goto Auchenai Crypts 73.80,48.90
click a Soul Mirror
|tip They look like big pink floating crystals near the walls inside the Auchenai Crypts dungeon.
collect Soul Mirror##28283 |q 10168/2 |goto Auchenai Crypts 73.80,48.90
step
Use your Soul Mirror on Ancient Orc Ancestors |use Soul Mirror##28283
|tip They are ghosts that walk from all around this area to the entrance of this cave.  You can find them quickly by searching all around this area.
kill 15 Darkened Spirit##19480+ |q 10168/1 |goto Nagrand,35.90,66.30
step
talk Mother Kashur##18687
turnin What the Soul Sees##10168 |goto Nagrand 26.10,60.60
step
talk Ha'lei##19697
accept I See Dead Draenei##10227 |goto Terokkar Forest 35.10,65.10
step
talk Ramdor the Mad##19417
turnin I See Dead Draenei##10227 |goto Terokkar Forest 35.10,66.30
accept Ezekiel##10228 |goto Terokkar Forest 35.10,66.30
step
talk Ezekiel##19715
|tip He walks around Shattrath in a big circle.
turnin Ezekiel##10228 |goto Shattrath City,53.70,32.60
accept What Book? I Don't See Any Book.##10231 |goto Shattrath City,53.70,32.60
step
talk "Dirty" Larry##19720
Tell him Ezekiel said that you might have a certain book...
Beat down "Dirty" Larry for information |q 10231/1 |goto Shattrath City 43.60,29.70
turnin What Book? I Don't See Any Book.##10231 |goto Shattrath City 43.60,29.70
accept The Master's Grand Design?##10251 |goto Shattrath City 43.60,29.70
step
talk Nitrin the Learned##19844
turnin The Master's Grand Design?##10251 |goto Nagrand,51.80,56.80
accept Vision of the Dead##10252 |goto Nagrand,51.80,56.80
step
kill Aged Clefthoof##17133+
collect Aged Clefthoof Blubber##28668 |q 10252/3 |goto Nagrand 30.10,64.20
They are hard to find, searching will most likely be required.  They are all around Oshu'gun
step
kill Mountain Gronn##19201+
collect Mountain Gronn Eyeball##28665 |q 10252/1 |goto Nagrand 25.20,49.10
More can be found around [26.90,30.20], up and down the ramp
step
kill Greater Windroc##17129+
collect Flawless Greater Windroc Beak##28667 |q 10252/2 |goto Nagrand 30.90,32.90
step
talk Nitrin the Learned##19844
turnin Vision of the Dead##10252 |goto Nagrand 51.80,56.90
accept Levixus the Soul Caller##10253 |goto Nagrand 51.80,56.90
step
kill Levixus##19847
collect 1 The Book of the Dead##28677 |q 10253/1 |goto Terokkar Forest,39.60,71.30
step
talk Ramdor the Mad##19417
turnin Levixus the Soul Caller##10253 |goto Terokkar Forest 35.10,66.20
step
talk Oakun##22456
accept The Dread Relic##10877 |goto Terokkar Forest 31.10,76.50
step
talk Scout Navrin##22364
accept Taken in the Night##10873 |goto Terokkar Forest 31.40,75.70
step
Collect Restless Bones from the ground as you travel
Click the Massive Treasure Chest
collect Dread Relic##31697 |q 10877/1 |goto Terokkar Forest 43.90,76.40
step
talk Vindicator Haylen##22462
accept For the Fallen##10920 |goto Terokkar Forest 49.70,76.20
step
kill 20 Dreadfang Widow##18467+ |q 10920/1 |goto Terokkar Forest 52.60,78.50
step
talk Vindicator Haylen##22462
turnin For the Fallen##10920 |goto Terokkar Forest 49.70,76.20
accept Terokkarantula##10921 |goto Terokkar Forest 49.70,76.20
step
talk Vindicator Haylen##22462
turnin Terokkarantula##10921 |goto Terokkar Forest 49.70,76.20
accept Return to Sha'tari Base Camp##10926 |goto Terokkar Forest 49.70,76.20
step
talk Oakun##22456
turnin The Dread Relic##10877 |goto Terokkar Forest 31.10,76.50
accept Evil Draws Near##10923 |goto Terokkar Forest 31.10,76.50
stickystart "doomskull"
step
Use your Dread Relic on the Writhing Mound Summoning Circle |use Dread Relic##31811
|tip It looks like a purple glowing symbol on the ground.
kill Teribus the Cursed##22441+ |q 10923/1 |goto Terokkar Forest 48.70,67.20
step
label "doomskull"
kill Auchenai Death-Speaker##21242+, Auchenai Doomsayer##21285+
collect 20 Doom Skull##31812 |q 10923 |goto Terokkar Forest 50.00,67.80
step
talk Oakun##22456
turnin Evil Draws Near##10923 |goto Terokkar Forest 31.10,76.50
step
talk Earthmender Splinthoof##21938
accept The Hand of Gul'dan##10680 |goto Shadowmoon Valley/0 28.49,26.58
step
talk Earthmender Torlok##21024
turnin The Hand of Gul'dan##10680 |goto Shadowmoon Valley/0 42.20,45.10
accept Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley/0 42.20,45.10
step
Use your Totem of Spirits |use Totem of Spirits##30094
|tip Kill the mobs next to the totems you plant.
kill Enraged Earth Spirit##21050+
Capture 8 Earthen Souls |q 10458/1 |goto Shadowmoon Valley/0 46.50,46.90
kill Enraged Fire Spirit##21061+
Capture 8 Fiery Souls |q 10458/2 |goto Shadowmoon Valley/0 46.50,46.90
step
talk Earthmender Torlok##21024
turnin Enraged Spirits of Fire and Earth##10458 |goto Shadowmoon Valley/0 42.20,45.10
accept Enraged Spirits of Water##10480 |goto Shadowmoon Valley/0 42.20,45.10
step
Use your Totem of Spirits |use Totem of Spirits##30094
|tip Kill the mobs next to the totems you plant.
kill Enraged Water Spirit##21059+
|tip You can find them in the pools of water.
Capture 5 Watery Souls |q 10480/1 |goto Shadowmoon Valley/0 45.80,27.90
step
talk Earthmender Torlok##21024
turnin Enraged Spirits of Water##10480 |goto Shadowmoon Valley/0 42.20,45.10
accept Enraged Spirits of Air##10481 |goto Shadowmoon Valley/0 42.20,45.10
step
Use your Totem of Spirits |use Totem of Spirits##30094
|tip Kill the mobs near the totems you plant.
kill Enraged Air Spirit##21060+
Capture 10 Air Souls |q 10481/1 |goto Shadowmoon Valley/0 59.90,69.10
step
talk Earthmender Torlok##21024
turnin Enraged Spirits of Air##10481 |goto Shadowmoon Valley/0 42.20,45.10
accept Oronok Torn-heart##10513 |goto Shadowmoon Valley/0 42.20,45.10
step
talk Oronok Torn-heart##21183
turnin Oronok Torn-heart##10513 |goto Shadowmoon Valley/0 53.90,23.50
accept I Was A Lot Of Things...##10514 |goto Shadowmoon Valley/0 53.90,23.50
step
Use Oronok's Boar Whistle next to Shadowmoon Tuber Mounds while boars are nearby |use Oronok's Boar Whistle##30462
|tip They look like carrots sticking out of the ground around this area.
A boar will run over and eat the tuber
Click the Shadowmoon Tuber's that spawn
collect 10 Shadowmoon Tuber##30356 |q 10514/1 |goto Shadowmoon Valley/0 53.50,17.30
step
talk Oronok Torn-heart##21183
turnin I Was A Lot Of Things...##10514 |goto Shadowmoon Valley/0 53.90,23.50
accept A Lesson Learned##10515 |goto Shadowmoon Valley/0 53.90,23.50
step
click Ravenous Flayer Egg##184684
|tip They look like brown spiked eggs on the ground around this area.
Destroy 10 Ravenous Flayer Eggs |q 10515/1 |goto Shadowmoon Valley/0 56.10,15.80
step
talk Oronok Torn-heart##21183
turnin A Lesson Learned##10515 |goto Shadowmoon Valley/0 53.90,23.50
accept The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley/0 53.90,23.50
step
talk Oronok Torn-heart##21183
Tell him you are ready to listen to his story
Listen to the Cipher of Damnation - History and Truth |q 10519/1 |goto Shadowmoon Valley/0 53.90,23.50
step
talk Oronok Torn-heart##21183
turnin The Cipher of Damnation - Truth and History##10519 |goto Shadowmoon Valley/0 53.90,23.50
accept Grom'tor, Son of Oronok##10521 |goto Shadowmoon Valley/0 53.90,23.50
accept Ar'tor, Son of Oronok##10527 |goto Shadowmoon Valley/0 53.90,23.50
accept Borak, Son of Oronok##10546 |goto Shadowmoon Valley/0 53.90,23.50
step
talk Grom'tor Son of Oronok##21291
turnin Grom'tor, Son of Oronok##10521 |goto Shadowmoon Valley/0 44.50,23.60
accept The Cipher of Damnation - Grom'tor's Charge##10522 |goto Shadowmoon Valley/0 44.50,23.60
step
kill Coilskar Sorceress##19767+, Coilskar Myrmidon##19765+
collect Coilskar Chest Key##30426 |n |goto Shadowmoon Valley/0 52.60,27.40
Click Coilskar Chests
|tip They look like big gray stone containers around this area.
collect First Fragment of the Cipher of Damnation##30428 |q 10522/1 |goto Shadowmoon Valley/0 52.60,27.40
step
talk Grom'tor Son of Oronok##21291
turnin The Cipher of Damnation - Grom'tor's Charge##10522 |goto Shadowmoon Valley/0 44.50,23.60
accept The Cipher of Damnation - The First Fragment Recovered##10523 |goto Shadowmoon Valley/0 44.50,23.60
step
talk Oronok Torn-heart##21183
turnin The Cipher of Damnation - The First Fragment Recovered##10523 |goto Shadowmoon Valley/0 53.90,23.50
step
talk Ar'tor Son of Oronok##21292
turnin Ar'tor, Son of Oronok##10527 |goto Shadowmoon Valley/0 29.60,50.40
accept Demonic Crystal Prisons##10528 |goto Shadowmoon Valley/0 29.60,50.40
step
kill Painmistress Gabrissa##21309+
collect Crystalline Key##30442 |q 10528/1 |goto Shadowmoon Valley/0 28.00,47.50
step
talk Ar'tor Son of Oronok##21292
turnin Demonic Crystal Prisons##10528 |goto Shadowmoon Valley/0 29.60,50.40
step
talk Spirit of Ar'tor##21318
accept Lohn'goron, Bow of the Torn-heart##10537 |goto Shadowmoon Valley/0 29.50,50.50
step
kill Illidari Satyr##21656+, Illidari Shocktrooper##19802+, Illidari Dreadbringer##19799+, Illidari Painlasher##19800+
collect Lohn'goron Bow of the Torn-Heart##31072 |q 10537/1 |goto Shadowmoon Valley/0 29.60,50.30
step
talk Spirit of Ar'tor##21318
turnin Lohn'goron, Bow of the Torn-heart##10537 |goto Shadowmoon Valley/0 29.50,50.50
accept The Cipher of Damnation - Ar'tor's Charge##10540 |goto Shadowmoon Valley/0 29.50,50.50
step
Walk with the Spirit Hunter to this spot
kill Veneratus the Many##20427
collect Second Fragment of the Cipher of Damnation##30453 |q 10540/1 |goto Shadowmoon Valley/0 30.70,58.30
step
talk Spirit of Ar'tor##21318
turnin The Cipher of Damnation - Ar'tor's Charge##10540 |goto Shadowmoon Valley/0 29.50,50.50
accept The Cipher of Damnation - The Second Fragment Recovered##10541 |goto Shadowmoon Valley/0 29.50,50.50
step
talk Oronok Torn-heart##21183
turnin The Cipher of Damnation - The Second Fragment Recovered##10541 |goto Shadowmoon Valley,53.90,23.50
step
talk Borak Son of Oronok##21293
turnin Borak, Son of Oronok##10546 |goto Shadowmoon Valley 47.60,57.20
accept Of Thistleheads and Eggs...##10547 |goto Shadowmoon Valley 47.60,57.20
step
click Rotten Arakkoa Egg##184796
|tip They look like small pink-ish eggs with green steam rising off of them on the ground around this area.
collect Rotten Arakkoa Egg##30500 |q 10547/1 |goto Shadowmoon Valley 44.80,58.20
step
talk Tobias the Filth Gorger##21411
turnin Of Thistleheads and Eggs...##10547 |goto Shattrath City,64.00,70.00
accept The Bundle of Bloodthistle##10550 |goto Shattrath City,64.00,70.00
step
talk Borak Son of Oronok##21293
turnin The Bundle of Bloodthistle##10550 |goto Shadowmoon Valley,47.60,57.20
accept To Catch A Thistlehead##10570 |goto Shadowmoon Valley,47.60,57.20
step
Use your Bundle of Bloodthistle at the other end of the bridge |use Bundle of Bloodthistle##30616
kill Envoy Icarius##21409
collect Stormrage Missive##30617 |q 10570/1 |goto Shadowmoon Valley 49.00,57.50
step
talk Borak Son of Oronok##21293
turnin To Catch A Thistlehead##10570 |goto Shadowmoon Valley 47.60,57.20
accept The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.60,57.20
step
kill Eclipsion Centurion##19792+, Eclipsion Blood Knight##19795+, Eclipsion Archmage##19796+, Eclipsion Bloodwarder##19806+
collect 6 Eclipsion Armor##30640 |q 10576/1 |goto Shadowmoon Valley 49.30,60.50
step
talk Borak Son of Oronok##21293
turnin The Shadowmoon Shuffle##10576 |goto Shadowmoon Valley 47.60,57.20
accept What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.60,57.20
step
Use your Blood Elf Disguise |use Blood Elf Disguise##30639
Talk to Grand Commander Ruusk |goto Shadowmoon Valley 46.50,71.90
Deliver Illidan's Message |q 10577/1 |goto Shadowmoon Valley 45.30,68.20
step
talk Borak Son of Oronok##21293
turnin What Illidan Wants, Illidan Gets...##10577 |goto Shadowmoon Valley 47.60,57.20
accept The Cipher of Damnation - Borak's Charge##10578 |goto Shadowmoon Valley 47.60,57.20
step
kill Ruul the Darkener##21315
collect Third Fragment of the Cipher of Damnation##30645 |q 10578/1 |goto Shadowmoon Valley 61.40,57.00
step
talk Borak Son of Oronok##21293
turnin The Cipher of Damnation - Borak's Charge##10578 |goto Shadowmoon Valley 47.50,57.20
accept The Cipher of Damnation - The Third Fragment Recovered##10579 |goto Shadowmoon Valley 47.50,57.20
step
talk Oronok Torn-heart##21183
turnin The Cipher of Damnation - The Third Fragment Recovered##10579 |goto Shadowmoon Valley 53.90,23.50
accept The Cipher of Damnation##10588 |goto Shadowmoon Valley 53.90,23.50
step
Use the Cipher of Damnation while standing in front of the altar |use Cipher of Damnation##30657
talk Oronok Torn-heart##21183 |goto Shadowmoon Valley 42.80,44.70
|tip It may take a minute or so for him to show up.
Tell him you are ready.
Follow Oronok Torn-heart
kill Cyrukh the Firelord##21181 |q 10588/1|goto Shadowmoon Valley 43.10,44.90
step
talk Earthmender Torlok##21024
turnin The Cipher of Damnation##10588 |goto Shadowmoon Valley 42.20,45.10
step
talk Khadgar##18166
accept The Tempest Key##10883 |goto Shattrath City,54.80,44.30
step
talk A'dal##18481
turnin The Tempest Key##10883 |goto Shattrath City 54.00,44.80
accept Trial of the Naaru: Mercy##10884 |goto Shattrath City 54.00,44.80
accept Trial of the Naaru: Strength##10885 |goto Shattrath City 54.00,44.80
accept Trial of the Naaru: Tenacity##10886 |goto Shattrath City 54.00,44.80
These quests will require that you do Heroic Shattered Halls, Shadow Labyrinth, The Steamvault and The Arcatraz.
step
Before you enter The Shattered Halls, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
kill Grand Warlock Nethekurse##16807 |goto The Shattered Halls 34.20,55.30
Gain the "Korgath's Executioner" Buff |havebuff Kargath's Executioner##39288
|only if not completedq(10884)
step
Kill your way to the end of the instance.
After the first boss you will have 55 minutes to clear your way to the last boss.
kill Shattered Hand Executioner##17301
collect Unused Axe of the Executioner##31716 |q 10884/1 |goto The Shattered Halls 67.20,65.80
step
Before you enter The Steavmvault, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
In order to reach the final boss you will need to kill the other bosses.
kill Warlord Kalithresh##17798
collect Kalithresh's Trident##31721 |q 10885/1 |goto The Steamvault 80.60,43.60
step
Before you enter Shadow Labyrinth, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
Kill your way to Murmur at the end of the instance.
kill Murmur##18708
collect Murmur's Essence##31722 |q 10885/2 |goto Shadow Labyrinth 81.20,39.20
step
Before you enter The Arcatraz, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
Fight your way to the end of the instance.
kill Harbinger Skyriss##20912
Defeat Harbinger Skyriss and make sure Millhouse lives.
Rescue Millhouse Manastorm. |q 10886/1
talk Millhouse Manastorm##20977
step
talk A'dal##18481
turnin Trial of the Naaru: Mercy##10884 |goto Shattrath City 54.00,44.80
turnin Trial of the Naaru: Strength##10885 |goto Shattrath City 54.00,44.80
turnin Trial of the Naaru: Tenacity##10886 |goto Shattrath City 54.00,44.80
step
talk Nether-Stalker Khay'ji##19880
accept Consortium Crystal Collection##10265 |goto Netherstorm 32.40,64.20
step
kill Pentatharon##20215
|tip To the right as you enter the ruins, up on a small stage looking platform.
collect Arklon Crystal Artifact##28829 |q 10265/1 |goto Netherstorm 42.40,72.80
step
talk Nether-Stalker Khay'ji##19880
turnin Consortium Crystal Collection##10265 |goto Netherstorm 32.40,64.20
accept A Heap of Ethereals##10262 |goto Netherstorm 32.40,64.20
step
kill Zaxxis Stalker##19642+, Zaxxis Raider##18875+
collect 10 Zaxxis Insignia##29209 |q 10262/1 |goto Netherstorm 30.20,75.50
step
talk Nether-Stalker Khay'ji##19880
turnin A Heap of Ethereals##10262 |goto Netherstorm 32.40,64.20
accept Warp-Raider Nesaad##10205 |goto Netherstorm 32.40,64.20
A Heap of Ethereals becomes a daily after you turn the quest in
step
kill Warp-Raider Nesaad##19641 |q 10205/1 |goto Netherstorm 28.20,79.40
|tip In a small camp.
step
talk Nether-Stalker Khay'ji##19880
turnin Warp-Raider Nesaad##10205 |goto Netherstorm 32.40,64.20
accept Request for Assistance##10266 |goto Netherstorm 32.40,64.20
step
talk Gahruj##20066
turnin Request for Assistance##10266 |goto Netherstorm 46.70,56.90
accept Rightful Repossession##10267 |goto Netherstorm 46.70,56.90
step
click Box Surveying Equipment##6881
collect 10 Box of Surveying Equipment##28913 |q 10267/1 |goto Netherstorm 57.60,63.90
step
talk Gahruj##20066
turnin Rightful Repossession##10267 |goto Netherstorm 46.70,56.90
accept An Audience with the Prince##10268 |goto Netherstorm 46.70,56.90
step
talk Image of Nexus-Prince Haramad##20084
turnin An Audience with the Prince##10268 |goto Netherstorm 45.90,36.00
accept Triangulation Point One##10269 |goto Netherstorm 45.90,36.00
step
Use the Triangulation Device in your bags |use Triangulation Device##28962
A red arrow will appear showing you where to go
Discover the first triangulation point |q 10269/1 |goto Netherstorm 66.80,34.80
step
talk Dealer Hazzin##20092
turnin Triangulation Point One##10269 |goto Netherstorm,58.30,31.30
accept Triangulation Point Two##10275 |goto Netherstorm,58.30,31.30
step
Use the Triangulation Device in your bags |use Triangulation Device##29018
A red arrow will appear showing you where to go
Discover the second triangulation point |q 10275/1 |goto Netherstorm 29.10,40.50
step
talk Wind Trader Tuluman##20112
turnin Triangulation Point Two##10275 |goto Netherstorm 34.60,38.00
accept Full Triangle##10276 |goto Netherstorm 34.60,38.00
step
kill Culuthas##20138+
collect Ata'mal Crystal##29026 |q 10276/1 |goto Netherstorm 53.50,21.50
step
talk Image of Nexus-Prince Haramad##20084
turnin Full Triangle##10276 |goto Netherstorm 45.90,36.00
accept Special Delivery to Shattrath City##10280 |goto Netherstorm 45.90,36.00
step
talk A'dal##18481
turnin Special Delivery to Shattrath City##10280 |goto Shattrath City,54.00,44.60
accept How to Break Into the Arcatraz##10704 |goto Shattrath City,54.00,44.60
step
Before you enter The Mechanar, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
Kill your way through the instance
kill Pathaleon the Calculator##19220
collect Bottom Shard of the Arcatraz Key##31086 |q 10704/2 |goto The Mechanar 28.52,60.60
step
Before you enter The Botanica, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
Kill your way through the instance
kill Warpsplinter##17977
collect Top Shard of the Arcatraz Key##31085 |q 10704/1 |goto The Botanica 34.00,37.80
step
talk A'dal##18481
turnin How to Break Into the Arcatraz##10704 |goto Shattrath City,54.00,44.60
step
talk Arcanist Thelis##21955
accept Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.30,59.60
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
accept Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.60,28.40
only if rep ('The Aldor') >= Friendly
step
click Baar'ri Tablet Fragment##6420
kill Ashtongue Worker##21455
collect 12 Baa'ri Tablet Fragment##30596 |q 10683/1 |goto Shadowmoon Valley 56.30,59.60
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
accept Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.60,28.40
only if rep ('The Aldor') >= Friendly
step
talk Arcanist Thelis##21955
turnin Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.30,59.60
accept Oronu the Elder##10684 |goto Shadowmoon Valley 56.30,59.60
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
turnin Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.60,28.40
accept Oronu the Elder##10571 |goto Shadowmoon Valley 62.60,28.40
only if rep ('The Aldor') >= Friendly
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10684/1 |goto Shadowmoon Valley 57.20,32.90
only if rep ('The Scryers') >= Neutral
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10571/1 |goto Shadowmoon Valley 57.20,32.90
only if rep ('The Aldor') >= Friendly
step
talk Arcanist Thelis##21955
turnin Oronu the Elder##10684 |goto Shadowmoon Valley 56.30,59.60
accept The Ashtongue Corruptors##10685 |goto Shadowmoon Valley 56.30,59.60
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
turnin Oronu the Elder##10571 |goto Shadowmoon Valley 62.60,28.40
accept The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.60,28.40
only if rep ('The Aldor') >= Friendly
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10685/2 |goto Shadowmoon Valley 57.10,73.30
only if rep ('The Scryers') >= Neutral
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10574/2 |goto Shadowmoon Valley 57.10,73.30
only if rep ('The Aldor') >= Friendly
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10685/1 |goto Shadowmoon Valley 51.30,52.90
only if rep ('The Scryers') >= Neutral
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10574/1 |goto Shadowmoon Valley 51.30,52.90
only if rep ('The Aldor') >= Friendly
step
kill Uylaru##21710
|tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10685/4 |goto Shadowmoon Valley 48.20,39.80
only if rep ('The Scryers') >= Neutral
step
kill Uylaru##21710
|tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10574/4 |goto Shadowmoon Valley 48.20,39.80
only if rep ('The Aldor') >= Friendly
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10685/3 |goto Shadowmoon Valley 49.80,23.10
only if rep ('The Scryers') >= Neutral
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10574/3 |goto Shadowmoon Valley 49.80,23.10
only if rep ('The Aldor') >= Friendly
step
talk Arcanist Thelis##21955
turnin The Ashtongue Corruptors##10685 |goto Shadowmoon Valley 56.30,59.60
accept The Warden's Cage##10686 |goto Shadowmoon Valley 56.30,59.60
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
turnin The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.60,28.40
accept The Warden's Cage##10575 |goto Shadowmoon Valley 62.60,28.40
only if rep ('The Aldor') >= Friendly
step
talk Sanoru##21826
turnin The Warden's Cage##10686 |goto Shadowmoon Valley 57.30,49.60
accept Proof of Allegiance##10622 |goto Shadowmoon Valley 57.30,49.60
only if rep ('The Scryers') >= Neutral
step
talk Sanoru##21826
turnin The Warden's Cage##10575 |goto Shadowmoon Valley 57.30,49.60
accept Proof of Allegiance##10622 |goto Shadowmoon Valley 57.30,49.60
only if rep ('The Aldor') >= Friendly
step
Go back to the top of "Warden's Cage" |goto Shadowmoon Valley 57.50,49.80 < 5 |q 10622 |only if walking
kill Zandras##21827 |q 10622/1 |goto Shadowmoon Valley 57.10,48.60
|tip He patrols the top of the prison wall, so you may need to search for him.
step
Follow the path down |goto Shadowmoon Valley 57.40,49.70 < 5 |q 10622 |walk
talk Sanoru##21826
turnin Proof of Allegiance##10622 |goto Shadowmoon Valley 57.30,49.60
accept Akama##10628 |goto Shadowmoon Valley 57.30,49.60
step
Go to this spot and swim down to the other side |goto Shadowmoon Valley 57.50,47.80 < 5 |q 10628
talk Akama##21700
turnin Akama##10628 |goto Shadowmoon Valley 58.10,48.20
accept Seer Udalo##10705 |goto Shadowmoon Valley 58.10,48.20
step
clicknpc Udalo##21962
|tip It is in the room before Harbinger Skyriss, the final boss of the instance.
turnin Seer Udalo##10705
accept A Mysterious Portent##10706
step
talk Akama##21700
turnin A Mysterious Portent##10706 |goto Shadowmoon Valley,58.10,48.20
accept The Ata'mal Terrace##10707 |goto Shadowmoon Valley,58.10,48.20
step
kill Shadowmoon Soulstealer##22061+
|tip There will be 3 of them.
Once you kill him, it will trigger an event. Kill ther Shadowmoon Retainers that spawn.
|tip You can also attack Deathwail flying above you.
kill Shadowlord Deathwail##22006+
collect Heart of Fury##31307 |q 10707/1 |goto Shadowmoon Valley,71.30,35.60
step
talk Akama##21700
turnin The Ata'mal Terrace##10707 |goto Shadowmoon Valley,58.10,48.20
accept Akama's Promise##11052 |goto Shadowmoon Valley,58.10,48.20
step
kill Val'zareq the Conqueror##21979
|tip He is an elite Blood Elf on a Hawkstrider patrolling this area with Eclipsion mobs protecting him.
collect The Journal of Val'zareq##31345 |n |goto Shadowmoon Valley 53.30,59.00
Click The Journal of Val'zareq in your bags |use The Journal of Val'zareq##31345
accept The Journal of Val'zareq: Portends of War##10793
step
click Crystal Prison##185126
turnin The Journal of Val'zareq: Portends of War##10793 |goto Shadowmoon Valley 51.40,72.80
accept Battle of the Crimson Watch##10781 |goto Shadowmoon Valley 51.40,72.80
step
Fight off the waves of enemies that come.
Crimson Sigil Forces Annihilated. |q 11052/1
step
talk A'dal##18481
turnin Battle of the Crimson Watch##10781 |goto Shattrath City,54,44.80
turnin Akama's Promise##11052 |goto Shattrath City,54,44.80
step
At this point, you will need to grind for reputation. You can farm reputation in the instances below:
The Mechanar
The Botanica
The Arcatraz
Doing these on Heroic will yield more reputation gains - However you can only do it on Heroic once per day
Reach Exalted with The Sha'tar |complete rep("The Sha'tar")==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Sha'tari Skyguard",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Sha'tari Skyguard faction.",
achieveid={894},
patch='30202',
},[[
step
label "route"
Routing to Skyguard Pre-Quests |next "pre" |only if completedq(11073)
Routing to Skyguard Dailies |next "menu" |only if not completedq(11073)
step
label "pre"
talk Yuula##23449
accept Threat from Above##11096 |goto Shattrath City,64.30,42.30
step
kill 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1 |goto Terokkar Forest,21.80,16.10
You can find more around here [24.40,8.90]
step
talk Yuula##23449
turnin Threat from Above##11096 |goto Shattrath City,64.30,42.30
accept To Skettis!##11098 |goto Shattrath City,64.30,42.30
step
talk Sky Sergeant Doryn##23048
turnin To Skettis!##11098 |goto Terokkar Forest,64.50,66.70
step
talk Skyguard Handler Deesak##23415
accept Hungry Nether Rays##11093 |goto Terokkar Forest 63.50,65.80
step
talk Severin##23042
accept World of Shadows##11004 |goto Terokkar Forest 64.00,66.90
step
Use your Nether Ray Cage |use Nether Ray Cage##32834
|tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
kill Blackwind Warp Chaser##23219+
You can find more Warp Chasers here [64.50,84.40]
Provide Nether Ray Meals |q 11093/1 |goto Terokkar Forest 61.40,81.80
step
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 6 Shadow Dust##32388 |q 11004/1 |goto Terokkar Forest,61.60,75.30
You can find more here [69.50,85.50]
Here [73.20,87.90]
Here [75.20,81.30]
And here [69.20,74.10]
step
talk Severin##23042
turnin World of Shadows##11004 |goto Terokkar Forest,64.00,66.90
step
talk Skyguard Handler Deesak##23415
turnin Hungry Nether Rays##11093 |goto Terokkar Forest 63.50,65.80
step
talk Sky Commander Adaris##23038
accept Secrets of the Talonpriests##11005 |goto Terokkar Forest 64.10,66.90
step
Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446 |goto Terokkar Forest 69.70,74.70
You will get a buff Elixir of Shadows |havebuff Elixir of Shadows##37678
step
kill Talonpriest Zellek##23068 |q 11005/3 |goto Terokkar Forest 70.10,74.50
step
kill Talonpriest Ishaal##23066+ |q 11005/1 |goto Terokkar Forest 69.30,78.10
collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
accept Ishaal's Almanac##11021 |goto Terokkar Forest 69.30,78.10
step
kill Talonpriest Skizzik##23067+ |q 11005/2 |goto Terokkar Forest 69.80,81.80
step
talk Sky Commander Adaris##23038
turnin Secrets of the Talonpriests##11005 |goto Terokkar Forest 64.10,66.90
turnin Ishaal's Almanac##11021 |goto Terokkar Forest 64.10,66.90
accept An Ally in Lower City##11024 |goto Terokkar Forest 64.10,66.90
step
talk Rilak the Redeemed##22292
turnin An Ally in Lower City##11024 |goto Shattrath City 52.50,21.00
accept Countdown to Doom##11028 |goto Shattrath City 52.50,21.00
step
talk Nutral##18940
turnin Countdown to Doom##11028 |goto Terokkar Forest,64.10,66.90
step
talk Hazzik##23306
accept Hazzik's Bargain##11056 |goto Terokkar Forest 64.20,66.90
step
click Hazzik's Package##185954
collect Hazzik's Package##32687 |q 11056/1 |goto Terokkar Forest 74.80,80.10
step
talk Hazzik##23306
turnin Hazzik's Bargain##11056 |goto Terokkar Forest 64.30,66.90
accept A Shabby Disguise##11029 |goto Terokkar Forest 64.30,66.90
step
Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741 |goto Terokkar Forest 66.20,77.50
Wear the Shabby Arakkoa Disguise |havebuff Shabby Arakkoa Disguise##41181
step
talk Sahaak##23363
buy Adversarial Bloodlines##32742 |q 11029 |goto Terokkar Forest 67.00,79.70
step
talk Hazzik##23306
turnin A Shabby Disguise##11029 |goto Terokkar Forest 64.30,66.90
accept Adversarial Blood##11885 |goto Terokkar Forest 64.30,66.90
step
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 12 Shadow Dust##32388 |q 11885 |future |goto Terokkar Forest,61.60,75.30
You can find more here [69.50,85.50]
Here [73.20,87.90]
Here [75.20,81.30]
And here [69.20,74.10]
step
talk Severin##23042
accept More Shadow Dust##11006 |goto Terokkar Forest 64.00,66.90
collect 2 Elixir of Shadows##32446+ |q 11885 |future |goto Terokkar Forest 64.00,66.90
step
This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
|confirm always
step
Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
You will get a buff Elixir of Shadows |havebuff Elixir of Shadows##37678
step
kill Time-Lost Skettis High Priest##21787+
kill Time-Lost Skettis Reaver##21651+
kill Time-Lost Skettis Worshipper##21763+
collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.60,75.30
You can find more here [69.50,85.50]
Here [73.20,87.90]
Here [75.20,81.30]
And here [69.20,74.10]
step
click Skull Pile##185913
|tip This will use 10 Time-Lost Scrolls
<Call forth Darkscreecher Akkarai.>
<Call forth Karrog.>
<Call forth Gezzarak the Huntress.>
<Call forth Vakkiz the Windrager.>
kill Darkscreecher Akkarai##23161 |q 11885/1
collect Akkarai's Talons##32715
kill Karrog##23165 |q 11885/2
collect Karrog's Spine##32717
kill Gezzarak the Huntress##23163 |q 11885/3
collect Gezzarak's Claws##32716
kill Vakkiz the Windrager##23204 |q 11885/4
collect Vakkiz's Scale##32718
You can find more skull piles here: [70.10,79.50]
Here [73.50,80.70]
Here [70.20,83.30]
step
talk Hazzik##23306
turnin Adversarial Blood##11885 |goto Terokkar Forest 64.20,66.90
accept Tokens of the Descendants##11074 |goto Terokkar Forest 64.20,66.90
step
talk Sky Commander Adaris##23038
accept Terokk's Downfall##11073 |goto Terokkar Forest 64.10,66.90
step
click Skull Pile##185913
|tip This will use 1 Time-Lost Offering.
<Call forth Terokk.>
kill Terokk##21838 |goto Terokkar Forest 66.20,77.50
|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always
step
talk Sky Commander Adaris##23038
turnin Terokk's Downfall##11073 |goto Terokkar Forest 64.10,66.90
step
label "menu"
You can do a couple dailys and also grind for reputation with the _Sha'tari Skyguard_
Click here to do the Dailys and then grind |confirm always |next "dailies" |or
or
Click here to grind for reputation |confirm always |next "grind" |or
step
label "dailies"
talk Sky Sergeant Doryn##23048
accept Fires Over Skettis##11008 |goto Terokkar Forest,64.50,66.70
step
Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
Destroy 20 Monstrous Kaliri Eggs |q 11008/1 |goto Terokkar Forest 63.10,80.00
You can find more eggs here: [61.30,79.90]
Here [67.50,79.30]
Here [68.00,85.60]
Here [70.30,84.50]
step
talk Sky Sergeant Doryn##23048
turnin Fires Over Skettis##11008 |goto Terokkar Forest 64.50,66.70
step
talk Skyguard Prisoner##23383
accept Escape from Skettis##11085 |goto Terokkar Forest 61.00,75.60
He can also be found here: [68.40,74.00]
Here: [75.00,86.50]
step
Escort the Skyguard Prisoner to the bottom of the bridge
|tip Help him kill any mobs on the way down.
Rescue the Skyguard Prisoner. |q 11085/1
step
talk Sky Sergeant Doryn##23048
turnin Escape from Skettis##11085 |goto Terokkar Forest 64.50,66.70
step
label "grind"
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 12 Shadow Dust##32388  |goto Terokkar Forest,61.60,75.30
You can find more here [69.50,85.50]
Here [73.20,87.90]
Here [75.20,81.30]
And here [69.20,74.10]
step
talk Severin##23042
accept More Shadow Dust##11006 |n |goto Terokkar Forest 64.00,66.90
collect 2 Elixir of Shadows##32446 |goto Terokkar Forest 64.00,66.90
step
Use the Elixir of Shadows in your bags |use Elixir of Shadows##32446
You will get a buff Elixir of Shadows |havebuff Elixir of Shadows##37678
step
kill Time-Lost Skettis High Priest##21787+
kill Time-Lost Skettis Reaver##21651+
kill Time-Lost Skettis Worshipper##21763+
collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.60,75.30
You can find more here [69.50,85.50]
Here [73.20,87.90]
Here [75.20,81.30]
And here [69.20,74.10]
step
click Skull Pile##185913
|tip This will use 10 Time-Lost Scrolls
<Call forth Darkscreecher Akkarai.>
<Call forth Karrog.>
<Call forth Gezzarak the Huntress.>
<Call forth Vakkiz the Windrager.>
kill Darkscreecher Akkarai##23161
collect Akkarai's Talons##32715 |goto Terokkar Forest 69.70,74.70
kill Karrog##23165
collect Karrog's Spine##32717
kill Gezzarak the Huntress##23163
collect Gezzarak's Claws##32716
kill Vakkiz the Windrager##23204
collect Vakkiz's Scale##32718 |goto Terokkar Forest 69.70,74.70
You can find more skull piles here: [70.10,79.50]
Here [73.50,80.70]
Here [70.20,83.30]
step
talk Hazzik##23306
accept Tokens of the Descendants##11074 |n
collect Time-Lost Offering##32720 |goto Terokkar Forest,64.30,66.90
step
click Skull Pile##185913
|tip This will use 1 Time-Lost Offering.
<Call forth Terokk.>
kill Terokk##21838 |goto Terokkar Forest 66.20,77.50
|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Sporeggar",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Sporeggar faction.",
cataready=true,
achieveid={900},
patch='30002',
},[[
step
talk Fahssn##17923
|tip He walks around this area.
accept The Sporelings' Plight##9739 |goto Zangarmarsh/0 18.96,63.45
accept Natural Enemies##9743 |goto Zangarmarsh/0 18.96,63.45
stickystart "Collect_Mature_Spore_Sacs"
step
Kill Starving enemies around this area
collect 6 Bog Lord Tendril##24291 |q 9743/1 |goto Zangarmarsh/0 15.90,60.51
step
label "Collect_Mature_Spore_Sacs"
click Mature Spore Sac##182069+
|tip They look like small puffy, balloon-shaped sacs on on the ground around this area.
collect 10 Mature Spore Sac##24290 |q 9739/1 |goto Zangarmarsh/0 15.90,60.51
step
talk Fahssn##17923
|tip He walks around this area.
turnin The Sporelings' Plight##9739 |goto Zangarmarsh/0 18.96,63.45
turnin Natural Enemies##9743 |goto Zangarmarsh/0 18.96,63.45
step
label "Collect_Spore_Sacs_Reach_Friendly"
click Mature Spore Sac##182069+
|tip They look like small puffy, balloon-shaped sacs on on the ground around this area.
collect Mature Spore Sac##24290 |n |goto Zangarmarsh/0 15.90,60.51
|tip Collect them in in stacks of 10.
Click here to turn them in |confirm |only if rep('Sporeggar')<Friendly
step
talk Fahssn##17923
|tip He walks around this area.
accept More Spore Sacs##9742 |goto Zangarmarsh/0 18.96,63.45 |only if rep('Sporeggar')<Friendly
Click here to continue farming |next "Collect_Spore_Sacs_Reach_Friendly" |confirm |only if rep('Sporeggar')<Friendly
Reach Friendly with Sporeggar |complete rep('Sporeggar')>=Friendly |next "Reached_Friendly_Reputation"
step
label "Reached_Friendly_Reputation"
talk Fahssn##17923
|tip He walks around this area.
accept Sporeggar##9919 |goto Zangarmarsh/0 18.96,63.45
step
Enter the building |goto Zangarmarsh/0 19.54,51.82 < 5 |walk
talk Msshi'fn##17924
|tip Inside the building.
turnin Sporeggar##9919 |goto Zangarmarsh/0 19.68,52.07
step
The fastest way to go reach Exalted is to farm The Underbog dungeon
|tip You can complete the dungeon once per day on Heroic and as many times as you want on Normal.
Enter The Underbog |complete zone("The Underbog")
only if rep('Sporeggar')<Exalted
step
label "Farm_Dungeon_Collect_Sanguine_Hibiscus"
Kill everything in the dungeon
click Sanguine Hibiscus##183385+
|tip They look like small red flowery plants on the ground throughout the dungeon.
|tip They can also drop from creatures in the dungeon.
collect Sanguine Hibiscus##24246 |n
|tip Collect these and turn them in for more reputation after each run.
Click here to turn them in |confirm |only if rep('Sporeggar')<Exalted
step
talk T'shu##54674
accept Bring Me Another Shrubbery!##29692 |goto Zangarmarsh/0 31.48,65.21 |only if rep('Sporeggar')<Exalted
Click here to continue farming |next "Farm_Dungeon_Collect_Sanguine_Hibiscus" |confirm |only if rep('Sporeggar')<Exalted
|tip You can complete the dungeon once pery day on Heroic and as many times as you want on Normal.
Earn Exalted status with the Sporeggar |complete rep('Sporeggar')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\The Violet Eye",{
expansion="mists",
description="This guide will walk you through becoming exalted with The Violet Eye faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Violet Eye') < Exalted end,
achieveid={960},
patch='30001',
},[[
step
This reputation can be earned by running the Karazhan raid.
|confirm
step
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label "start"
|goto Deadwind Pass,47.00,74.80 |n
Enter _Karazhan_ here |goto Karazhan |noway |c
step
Kill every creature that is hostile in this instance in order to gain reputation.
|tip You will have to clear this place a few times to reach Exalted.
Click here to go back to the beginning of the guide |next "start" |confirm
Earn Exalted status with The Violet Eye |complete rep('The Violet Eye')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Shattered Sun Offensive",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Shattered Sun Offensive faction.",
achieveid={897},
patch='30001',
},[[
step
#include "SSO_PreQuest_Dailies"
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Silvermoon City",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Silvermoon City faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Silvermoon City') < Exalted end,
},[[
step
talk Magistrix Nizara##50484
buy Silvermoon City Tabard##45585 |n |goto Eversong Woods,54.30,50.80
Equip your Silvermoon City Tabard |equipped Silvermoon City Tabard##45585 |use Silvermoon City Tabard##45585 |future
You can run any dungeon that grants experience to gain reputation for Silvermoon City
Become Exalted with Silvermoon City |complete rep('Silvermoon City')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Thrallmar",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Thrallmar faction.",
condition_suggested=function() return level >= 60 and level <= 70 and rep('Thrallmar') < Exalted end,
},[[
step
Grinding mobs in Hellfire Ramparts and Blood Furnace until 5,999 / 6,000 Honored would be best.  You won't be able to grind these two instance once you've passed the Honored threshold unless you do heroic, which you will only be able to do once per day.
Once you've reached Honored, you will be able to grind Shattered Halls for reputation
You can also grind Heroic mode Hellfire Ramparts, Blood Furnace and Shattered Halls until exalted
Reputation gained from doing Hellfire Peninsula quests well net you around 10,000 Reputation
Click here to continue to the quest portion of the guide. |confirm
step
click Warchief's Command Board##206109
accept Warchief's Command: Outland!##28705 |goto Orgrimmar/1 49.70,76.60
step
talk Lieutenant General Orion##19253
turnin Warchief's Command: Outland!##28705 |goto Hellfire Peninsula/0 87.40,49.80
accept Arrival in Outland##10120 |goto Hellfire Peninsula/0 87.40,49.80
step
talk Vlagga Freyfeather##18930
turnin Arrival in Outland##10120 |goto Hellfire Peninsula/0 87.30,48.10
accept Journey to Thrallmar##10289 |goto Hellfire Peninsula/0 87.30,48.10
step
talk General Krakork##19255
turnin Journey to Thrallmar##10289 |goto Hellfire Peninsula/0 55.90,36.80
accept Report to Nazgrel##10291 |goto Hellfire Peninsula/0 55.90,36.80
step
talk Nazgrel##3230
turnin Report to Nazgrel##10291 |goto Hellfire Peninsula/0 55,36
accept Eradicate the Burning Legion##10121 |goto Hellfire Peninsula/0 55,36
step
talk Vurtok Axebreaker##21256
accept Bonechewer Blood##10450 |goto Hellfire Peninsula/0 55.10,36.40
step
talk Megzeg Nukklebust##21283
accept I Work... For the Horde!##10086 |goto Hellfire Peninsula/0 55.20,38.80
step
talk Floyd Pinkus##16602
home Thrallmar |goto Hellfire Peninsula/0 56.60,37.60
step
talk Sergeant Shatterskull##19256
turnin Eradicate the Burning Legion##10121 |goto Hellfire Peninsula/0 58,41.30
accept Felspark Ravine##10123 |goto Hellfire Peninsula/0 58,41.30
step
kill 1 Dreadcaller##19434 |q 10123/1 |goto Hellfire Peninsula/0 60.80,35.90
kill 4 Flamewaker Imp##19136+ |q 10123/2 |goto Hellfire Peninsula/0 60.80,35.90
kill 6 Infernal Warbringer##19261+ |q 10123/3 |goto Hellfire Peninsula/0 60.80,35.90
step
talk Sergeant Shatterskull##19256
turnin Felspark Ravine##10123 |goto Hellfire Peninsula/0 58,41.30
accept Forward Base: Reaver's Fall##10124 |goto Hellfire Peninsula/0 58,41.30
step
talk Forward Commander To'arch##19273
turnin Forward Base: Reaver's Fall##10124 |goto Hellfire Peninsula/0 65.90,43.60
accept Disrupt Their Reinforcements##10208 |goto Hellfire Peninsula/0 65.90,43.60
step
kill Doomwhisperer##18981+, Wrathguard##18975+, Fel Handler##19190+, Netherhound##16950+
collect 4 Demonic Rune Stone##28513 |q 10208 |n |goto Hellfire Peninsula/0 70.80,45.40
Stand inside the portal
click the portal
Disrupt Port Xilus |q 10208/1 |goto Hellfire Peninsula/0 70.80,45.40
step
kill Doomwhisperer##18981+, Wrathguard##18975+, Fel Handler##19190+, Netherhound##16950+
collect 4 Demonic Rune Stone##28513 |q 10208 |n |goto Hellfire Peninsula/0 74,38.70
Stand inside the portal
click the portal
Disrupt Port Kruul |q 10208/2 |goto Hellfire Peninsula/0 74,38.70
step
talk Forward Commander To'arch##19273
turnin Disrupt Their Reinforcements##10208 |goto Hellfire Peninsula/0 65.90,43.60
accept Mission: Gateways Murketh and Shaadraz##10129 |goto Hellfire Peninsula/0 65.90,43.60
step
talk Wing Commander Brack##19401
Take the flight
Use the bomb in your bags, bomb Gateway Shaadraz |use Seaforium PU-36 Explosive Nether Modulator##28038 |q 10129/2 |goto Hellfire Peninsula/0 66.10,43.70
Use the bomb in your bags, bomb Gateway Murketh |use Seaforium PU-36 Explosive Nether Modulator##28038 |q 10129/1 |goto Hellfire Peninsula/0 66.10,43.70
|tip They look like big machines with giant green crystals floating above them.
step
talk Forward Commander To'arch##19273
turnin Mission: Gateways Murketh and Shaadraz##10129 |goto Hellfire Peninsula/0 65.90,43.60
accept Mission: The Abyssal Shelf##10162 |goto Hellfire Peninsula/0 65.90,43.60
accept Return to Thrallmar##10388 |goto Hellfire Peninsula/0 65.90,43.60
step
talk Wing Commander Brack##19401
Fly to the Abyssal Shelf
Use the bomb in your bags to bomb the mobs |use Area 52 Special##28132
Destroy 5 Fel Cannons |q 10162/3 |goto Hellfire Peninsula/0 66.10,43.70
kill 5 Mo'arg Overseer##19397+ |q 10162/2 |goto Hellfire Peninsula/0 66.10,43.70
kill 20 Gan'arg Peon##19398+ |q 10162/1 |goto Hellfire Peninsula/0 66.10,43.70
|tip If you don't complete this in the first run, you can fly again until it is done.
step
talk Forward Commander To'arch##19273
turnin Mission: The Abyssal Shelf##10162 |goto Hellfire Peninsula/0 65.90,43.60
step
talk Martik Tor'seldori##16577
accept Falcon Watch##9498 |only if not BloodElf |goto Hellfire Peninsula/0 55.20,39.10
accept Falcon Watch##9499 |only BloodElf |goto Hellfire Peninsula/0 55.20,39.10
step
talk Nazgrel##3230
turnin Return to Thrallmar##10388 |goto Hellfire Peninsula/0 55,36
accept Forge Camp: Mageddon##10390 |goto Hellfire Peninsula/0 55,36
accept The Assassin##9400 |goto Hellfire Peninsula/0 55,36
step
kill 10 Gan'arg Servant##16947+ |q 10390/1
kill Razorsaw##20798
collect Head of Forgefiend Razorsaw##29586 |q 10390/2 |goto Hellfire Peninsula/0 64.40,31.90
collect the Burning Legion Missive##29590 |n |goto Hellfire Peninsula/0 64.40,31.90
Use the Burning Legion Missive |use Burning Legion Missive##29590
accept Vile Plans##10393 |goto Hellfire Peninsula/0 64.40,31.90
step
talk Nazgrel##3230
turnin Forge Camp: Mageddon##10390 |goto Hellfire Peninsula/0 55,36
accept Cannons of Rage##10391 |goto Hellfire Peninsula/0 55,36
step
talk Magister Bloodhawk##21175
turnin Vile Plans##10393 |goto Hellfire Peninsula/0 55.10,36
step
kill 3 Fel Cannon MKI##22461+ |q 10391/1 |goto Hellfire Peninsula/0 57.50,31.20
step
talk Nazgrel##3230
turnin Cannons of Rage##10391 |goto Hellfire Peninsula/0 55,36
accept Doorway to the Abyss##10392 |goto Hellfire Peninsula/0 55,36
step
kill Warbringer Arix'Amal##19298 |q 10392/1 |goto Hellfire Peninsula/0 52.80,26.40
collect Burning Legion Gate Key##29795 |q 10392/3 |goto Hellfire Peninsula/0 52.80,26.40
step
Go inside the portal
click the floating thing inside the portal
Close the Burning Legion Gate |q 10392/2 |goto Hellfire Peninsula/0 53.10,27.60
|tip You might have to stand right underneath it and zoom in your view to be able to click the floating glyph inside the portal.
step
talk Nazgrel##3230
turnin Doorway to the Abyss##10392 |goto Hellfire Peninsula/0 55,36
step
talk Magister Bloodhawk##21175
accept The Agony and the Darkness##10389 |goto Hellfire Peninsula/0 55.10,36
step
click Salvageable Metal##182938
collect 8 Salvaged Metal##25912 |q 10086/1 |goto Hellfire Peninsula/0 56.60,47.10
click Salvageable Wood##182936
collect 8 Salvaged Wood##25911 |q 10086/2 |goto Hellfire Peninsula/0 56.60,47.10
kill Bonechewer Evoker##19701+, Bonechewer Mutant##16876+, Bonechewer Scavenger##18952+, Bonechewer Raider##16925+
collect 12 Bonechewer Blood##30327 |q 10450/1 |goto Hellfire Peninsula/0 56.60,47.10
step
talk Megzeg Nukklebust##21283
turnin I Work... For the Horde!##10086 |goto Hellfire Peninsula/0 55.20,38.80
accept Burn It Up... For the Horde!##10087 |goto Hellfire Peninsula/0 55.20,38.80
step
talk Vurtok Axebreaker##21256
turnin Bonechewer Blood##10450 |goto Hellfire Peninsula/0 55.10,36.40
accept Apothecary Zelana##10449 |goto Hellfire Peninsula/0 55.10,36.40
step
talk Apothecary Zelana##21257
turnin Apothecary Zelana##10449 |goto Hellfire Peninsula/0 66.20,42
accept Spinebreaker Post##10242 |goto Hellfire Peninsula/0 66.20,42
step
talk Amilya Airheart##19558
fpath Spinebreaker Post |goto Hellfire Peninsula/0 61.70,81.20
step
talk Ogath the Mad##19683
accept The Warp Rifts##10278 |goto Hellfire Peninsula/0 61.90,81.50
step
talk Emissary Mordiba##19682
accept Make Them Listen##10220 |goto Hellfire Peninsula/0 61.80,81.70
step
talk Apothecary Albreck##21279
turnin Spinebreaker Post##10242 |goto Hellfire Peninsula/0 61.10,81.80
accept Boiling Blood##10538 |goto Hellfire Peninsula/0 61.10,81.80
step
talk Grelag##16858
accept Preparing the Salve##9345 |goto Hellfire Peninsula/0 60.90,81.70
step
click Wanted Poster##184945
accept Wanted: Worg Master Kruush##10809 |goto Hellfire Peninsula/0 61.20,80.60
step
click the Hellfire Spineleaves##6807
collect 12 Hellfire Spineleaf##24338 |q 9345/1 |goto Hellfire Peninsula/0 59.50,66.30
step
kill 12 Unyielding Footman##16904+ |q 10220/1 |goto Hellfire Peninsula/0 58,79
kill 8 Unyielding Knight##16906+ |q 10220/2 |goto Hellfire Peninsula/0 58,79
kill 6 Unyielding Sorcerer##16905+ |q 10220/3 |goto Hellfire Peninsula/0 58,79
collect A Mysterious Tome##28552 |n
Use the Mysterious Tome |use A Mysterious Tome##28552
accept Decipher the Tome##10229
step
talk Grelag##16858
turnin Preparing the Salve##9345 |goto Hellfire Peninsula/0 60.90,81.70
accept Investigate the Crash##10213 |goto Hellfire Peninsula/0 60.90,81.70
step
talk Althen the Historian##19736
turnin Decipher the Tome##10229 |goto Hellfire Peninsula/0 61.80,81.70
accept The Battle Horn##10230 |goto Hellfire Peninsula/0 61.80,81.70
talk Emissary Mordiba##19682
turnin Make Them Listen##10220 |goto Hellfire Peninsula/0 61.80,81.70
step
kill Lieutenant Commander Thalvos##16978
|tip Walking around on a black platform thing. He's a blue ghost dwarf.
collect Unyielding Battle Horn##28562 |q 10230/1 |goto Hellfire Peninsula/0 54.70,83.70
step
talk Althen the Historian##19736
turnin The Battle Horn##10230 |goto Hellfire Peninsula/0 61.80,81.70
accept Bloody Vengeance##10250 |goto Hellfire Peninsula/0 61.80,81.70
step
Use the Unyielding Battle Horn in your bags next to the white flag |use Unyielding Battle Horn##28651
kill Urtrak##19862 |q 10250/1 |goto Hellfire Peninsula/0 63.50,77.60
step
talk Althen the Historian##19736
turnin Bloody Vengeance##10250 |goto Hellfire Peninsula/0 61.80,81.70
accept Honor the Fallen##10258 |goto Hellfire Peninsula/0 61.80,81.70
step
talk Commander Hogarth##19937
turnin Honor the Fallen##10258 |goto Hellfire Peninsula/0 56.90,77.40
stickystart "bleedblood"
step
kill Worg Master Kruush##19442
|tip He's standing in the stables.
collect Worg Master's Head##31374 |q 10809/1 |goto Hellfire Peninsula/0 68.40,73.60
step
label "bleedblood"
kill Bleeding Hollow Tormentor##19424+, Bleeding Hollow Necrolyte##19422+, Bleeding Hollow Grunt##16871+, Bleeding Hollow Peon##16907+, Bleeding Hollow Dark Shaman##16873+
collect 12 Bleeding Hollow Blood##30425 |q 10538 |goto Hellfire Peninsula/0 64.60,72.70
step
click the big red glowing cauldron to get Boiled Blood
|tip It's a big red glowing cauldron.
Each time you click the cauldron, scarabs will run out
Run away and stand away from the cauldron until the scarabs disappear
collect 12 Boiled Blood##30430 |q 10538/1 |goto Hellfire Peninsula/0 65.20,71.20
step
talk Captain Darkhowl##22107
turnin Wanted: Worg Master Kruush##10809 |goto Hellfire Peninsula/0 61.20,81.30
accept Zeth'Gor Must Burn!##10792 |goto Hellfire Peninsula/0 61.20,81.30
step
talk Apothecary Albreck##21279
turnin Boiling Blood##10538 |goto Hellfire Peninsula/0 61.10,81.80
accept Apothecary Antonivich##10835 |goto Hellfire Peninsula/0 61.10,81.80
step
talk Zezzak##22231
accept The Eyes of Grillok##10813 |goto Hellfire Peninsula/0 61.70,81.90
step
Use Zezzak's Shard on an Eye of Grillok |use Zezzak's Shard##31463
|tip They look like floating green eyes around this area. It has to channel for 3 seconds and turn your character green.
Absorb an Eye of Grillok |havebuff Eye of Grillok##38495 |q 10813 |goto Hellfire Peninsula/0 66.40,74
step
Stand next to the cauldron
Return the Eye of Grillok |q 10813/1 |goto Hellfire Peninsula/0 61.70,81.90
step
talk Zezzak##22231
turnin The Eyes of Grillok##10813 |goto Hellfire Peninsula/0 61.70,81.90
accept Grillok "Darkeye"##10834 |goto Hellfire Peninsula/0 61.70,81.90
step
ding 61
stickystart "bleedtorch"
step
Go inside the cave
kill Grillok "Darkeye"##19457
collect Grillok's Eyepatch##31529 |q 10834/1 |goto Hellfire Peninsula/0 66.60,71.40
step
label "bleedtorch"
kill Bleeding Hollow Peon##16907+
collect 4 Bleeding Hollow Torch##31347 |q 10792 |n |goto Hellfire Peninsula/0 68.70,69.80
Use the torches in your bags next to the forge |use Bleeding Hollow Torch##31347
collect 4 Burning Bleeding Hollow Torch##31346 |q 10792 |goto Hellfire Peninsula/0 68.70,69.80
step
Stand near the Eastern Hovel
Use a Burning Bleeding Hollow Torch |use Burning Bleeding Hollow Torch##31346 |n
Burn the Eastern Hovel |q 10792/2 |goto Hellfire Peninsula/0 69.50,70.20
step
Stand near the Stable
Use a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346 |n
Burn the Stable |q 10792/4 |goto Hellfire Peninsula/0 68.60,72.90
step
Stand near the Western Hovel
Use a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346 |n
Burn the Western Hovel |q 10792/3 |goto Hellfire Peninsula/0 67.60,75.50
step
Stand near the Barracks
Use a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346
Burn the Barracks |q 10792/1 |goto Hellfire Peninsula/0 68.80,76.40
step
talk Captain Darkhowl##22107
turnin Zeth'Gor Must Burn!##10792 |goto Hellfire Peninsula/0 61.20,81.30
step
talk Zezzak##22231
turnin Grillok "Darkeye"##10834 |goto Hellfire Peninsula/0 61.70,81.90
step
talk "Screaming" Screed Luckheed##19367
turnin Investigate the Crash##10213 |goto Hellfire Peninsula/0 49.20,74.80
accept In Case of Emergency...##10161 |goto Hellfire Peninsula/0 49.20,74.80
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula/0 49.20,74.80
step
click Zeppelin Debris on the ground around this area
|tip They look like pieces of metal and wood around this whole area.
collect 30 Zeppelin Debris##28116 |q 10161/1 |goto Hellfire Peninsula/0 58.10,71.30
step
talk "Screaming" Screed Luckheed##19367
turnin In Case of Emergency...##10161 |goto Hellfire Peninsula/0 49.20,74.80
accept Voidwalkers Gone Wild##9351 |goto Hellfire Peninsula/0 49.20,74.80
stickystart "condense"
step
Use your Unstable Warp Rift Generator under the big black ball of lightning |use Unstable Warp Rift Generator##29027
click the Unstable Warp Rift Generator and place the green circle under the big black ball of lightning.
kill Unstable Voidwalker##20145+
collect 3 Warp Nether##29051 |q 10278/1 |goto Hellfire Peninsula/0 46.80,83.10
step
label "condense"
kill Uncontrolled Voidwalker##16975+, Rogue Voidwalker##16974+
collect 10 Condensed Voidwalker Essence##23218 |q 9351/1 |goto Hellfire Peninsula/0 49.50,81.80
step
click Ravager Egg##181385
kill Razorfang Ravagers##16933+
collect 12 Ravager Egg##23217 |q 9349/1 |goto Hellfire Peninsula/0 41.20,84.40
step
talk "Screaming" Screed Luckheed##19367
turnin Voidwalkers Gone Wild##9351 |goto Hellfire Peninsula/0 49.20,74.80
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula/0 49.20,74.80
accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula/0 49.20,74.80
step
kill Hulking Helboar##16880+, Starving Helboar##16879+, Deranged Helboar##16863+
collect Tainted Helboar Meat##23270 |q 9361 |n |goto Hellfire Peninsula/0 50.20,74.80
Use your Purification Mixture on the Tainted Helboar Meat |use Purification Mixture##23268
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto Hellfire Peninsula/0 50.20,74.80
|tip The meat won't become purified every time, it can become toxic as well.
step
kill Crust Burster##16844+
|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
collect Eroded Leather Case##23338 |n |goto Hellfire Peninsula/0 47.80,65.80
Use the Eroded Leather Case |use Eroded Leather Case##23338
accept Missing Missive##9373 |goto Hellfire Peninsula/0 47.80,65.80
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula/0 49.20,74.80
accept Smooth as Butter##9356 |goto Hellfire Peninsula/0 49.20,74.80
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto Hellfire Peninsula/0 62.60,67.30
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto Hellfire Peninsula/0 49.20,74.80
step
talk Ogath the Mad##19683
turnin The Warp Rifts##10278 |goto Hellfire Peninsula/0 61.90,81.50
accept Void Ridge##10294 |goto Hellfire Peninsula/0 61.90,81.50
step
The path over to 'Void Ridge' starts here |goto Hellfire Peninsula,71.30,67.40 < 5 |q 10294
kill Collapsing Voidwalker##17014+, Vacillating Voidcaller##19527+
collect 40 Void Ridge Soul Shard##29161 |q 10294/1 |goto Hellfire Peninsula 75.40,66.30
step
talk Ogath the Mad##19683
turnin Void Ridge##10294 |goto Hellfire Peninsula 61.90,81.50
accept From the Abyss##10295 |goto Hellfire Peninsula 61.90,81.50
step
Stand next to the 2 big pink crystals
Use the Warp Rift Generator in  your bags |use Warp Rift Generator##29226
kill Void Baron Galaxis##16939
collect Galaxis Soul Shard##29162 |q 10295/1 |goto Hellfire Peninsula 81.10,78.90
step
talk Apothecary Antonivich##16588
turnin Apothecary Antonivich##10835 |goto Hellfire Peninsula 52.30,36.50
accept A Burden of Souls##10864 |goto Hellfire Peninsula 52.30,36.50
step
talk Foreman Razelcraz##16915
accept Outland Sucks!##10236 |goto Hellfire Peninsula 51.40,30.60
stickystart "shatteredber"
step
click the Shredder Parts boxes
|tip They look like wooden crates around this area.
collect 6 Shredder Spare Parts##28554 |q 10236/1 |goto Hellfire Peninsula 48.90,35.40
step
label "shatteredber"
kill Shattered Hand Berserker##16878+, Shattered Hand Guard##19414+
Reap 20 Shattered Hand Souls |q 10864/1 |goto Hellfire Peninsula 45.90,39.80
step
talk Foreman Razelcraz##16915
turnin Outland Sucks!##10236 |goto Hellfire Peninsula 51.40,30.60
accept How to Serve Goblins##10238 |goto Hellfire Peninsula 51.40,30.60
step
talk Apothecary Antonivich##16588
turnin A Burden of Souls##10864 |goto Hellfire Peninsula 52.30,36.50
accept The Demoniac Scryer##10838 |goto Hellfire Peninsula 52.30,36.50
step
click Manni's Cage##183936
|tip It looks like a wooden cage with a goblin inside.
Save Manni |q 10238/1 |goto Hellfire Peninsula 45.10,41.00
step
click Moh's Cage##183940
|tip It looks like a wooden cage with a goblin inside.
Save Moh |q 10238/2 |goto Hellfire Peninsula 46.50,45.20
step
click Jakk's Cage##183941
|tip It looks like a wooden cage with a goblin inside.
Save Jakk |q 10238/3 |goto Hellfire Peninsula 47.50,46.60
step
Use your Demoniac Scryer in your bags at this spot |use Demoniac Scryer##31606
Defend the Demoniac Scryer until a bunch of purple things start swirling around it.
talk Demoniac Scryer##22258
collect Demoniac Scryer Reading##31607 |q 10838/1 |goto Hellfire Peninsula 45.50,47.20
step
talk Apothecary Antonivich##16588
turnin The Demoniac Scryer##10838 |goto Hellfire Peninsula 52.30,36.50
accept Report to Nazgrel##10875 |goto Hellfire Peninsula 52.30,36.50
step
talk Nazgrel##3230
turnin Report to Nazgrel##10875 |goto Hellfire Peninsula 55,36
step
talk Foreman Razelcraz##16915
turnin How to Serve Goblins##10238 |goto Hellfire Peninsula 51.40,30.60
accept Shizz Work##10629 |goto Hellfire Peninsula 51.40,30.60
step
Use the Felhound Whistle while standing next to Forman Razelcraz |use Felhound Whistle##30803 |goto Hellfire Peninsula 51.40,30.60
|tip Standing near the entrance to the mine, next to a bunch of fel guard hounds.
|confirm |q 10629
step
kill Deranged Helboar##16863+
The Fel Guard Hound will eat the corpses and poop
click the Felhound Poo##184980
collect Shredder Keys##30794 |q 10629/1 |goto Hellfire Peninsula 49.90,29.30
step
talk Foreman Razelcraz##16915
turnin Shizz Work##10629 |goto Hellfire Peninsula 51.40,30.60
accept Beneath Thrallmar##10630 |goto Hellfire Peninsula 51.40,30.60
step
Enter the mine |goto Hellfire Peninsula,51.60,31.70 < 5 |q 10630 |walk
Follow this mine shaft |goto Hellfire Peninsula 54.40,31.40 |walk
kill Urga'zz##18976 |q 10630/1
|tip All the way in the back of the mine.
step
Leave the mine |goto Hellfire Peninsula,51.60,31.70 < 5 |q 10630 |walk
talk Foreman Razelcraz##16915
turnin Beneath Thrallmar##10630 |goto Hellfire Peninsula 51.40,30.60
step
Use the Flaming Torch in your bags near the huge tank |use Flaming Torch##27479
Burn the Eastern Cannon |q 10087/1 |goto Hellfire Peninsula 61.10,52.30
step
Use the Flaming Torch in your bags near the huge tank |use Flaming Torch##27479
Burn the Western Cannon |q 10087/2 |goto Hellfire Peninsula 55,54
step
talk Ogath the Mad##19683
turnin From the Abyss##10295 |goto Hellfire Peninsula 61.90,81.50
step
talk Megzeg Nukklebust##21283
turnin Burn It Up... For the Horde!##10087 |goto Hellfire Peninsula 55.20,38.80
step
kill 10 Terrorfiend##16951+ |q 10389/1 |goto Hellfire Peninsula 39.40,36.10
step
Go to this spot
Find Krun Spinebreaker |q 9400/1 |goto Hellfire Peninsula 33.60,43.50
step
clicknpc the Fel Orc Corpse##17062
|tip It's a corpse laying halfway up the hill.
turnin The Assassin##9400 |goto Hellfire Peninsula 33.60,43.50
accept A Strange Weapon##9401 |goto Hellfire Peninsula 33.60,43.50
step
talk Magister Bloodhawk##21175
turnin The Agony and the Darkness##10389 |goto Hellfire Peninsula 55.10,36
step
talk Nazgrel##3230
turnin A Strange Weapon##9401 |goto Hellfire Peninsula 55,36
accept The Warchief's Mandate##9405 |goto Hellfire Peninsula 55,36
step
talk Far Seer Regulkut##16574
turnin The Warchief's Mandate##9405 |goto Hellfire Peninsula 54.20,37.90
accept A Spirit Guide##9410 |goto Hellfire Peninsula 54.20,37.90
step
Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669
|tip It's a corpse laying halfway up the hill.
Follow the spirit wolf |goto Hellfire Peninsula 33.60,43.50
|tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
Follow the wolf to this spot |goto Hellfire Peninsula 32,27.80 < 5 |q 9410
step
talk Gorkan Bloodfist##16845
turnin A Spirit Guide##9410 |goto Hellfire Peninsula 32,27.80
accept The Mag'har##9406 |goto Hellfire Peninsula 32,27.80
step
talk Nazgrel##3230
turnin The Mag'har##9406 |goto Hellfire Peninsula 55,36
step
talk Nazgrel##3230
accept Cruel's Intentions##10136 |goto Hellfire Peninsula,55.00,36.00
accept The Foot of the Citadel##10876 |goto Hellfire Peninsula,55.00,36.00
step
kill Arazzius the Cruel##19191 |q 10136/1 |goto Hellfire Peninsula 43.90,31.60
step
kill Force-Commander Gorax##19264
|tip He walks back and forth in this small area.
Use your Challenge from the Horde on Force-Commander Gorax's corpse |use Challenge from the Horde##31702
kill Hand of Kargath##22374
collect The Head of the Hand of Kargath##31706 |q 10876/1 |goto Hellfire Peninsula 47.30,49.60
step
talk Nazgrel##3230
turnin Cruel's Intentions##10136 |goto Hellfire Peninsula 55.00,36.00
turnin The Foot of the Citadel##10876 |goto Hellfire Peninsula 55.00,36.00
step
talk Stone Guard Stok'ton##54606
accept War on the Ramparts##29527 |goto Hellfire Ramparts 48.40,68.10
accept Demons in the Citadel##29530 |goto Hellfire Ramparts 48.40,68.10
accept Hitting Them Where It Hurts##29593 |goto Hellfire Ramparts 48.40,68.10
stickystart "hellfiresup"
step
kill Watchkeeper Gargolmar##17306+
collect Gargolmar's Hand##23881 |q 29527/1 |goto Hellfire Ramparts 74.80,33.20
step
kill Omor the Unscarred##17308+
collect Omor's Hoof##23886 |q 29530/1 |goto Hellfire Ramparts 38.80,19.30
step
kill Nazan##17307+
collect Nazan's Head##23901 |q 29527/2 |goto Hellfire Ramparts 38.80,82.00
step
label "hellfiresup"
As you go through the instance do the following:
click Hellfire Supplies##209348
|tip They are all over this instance.
collect 3 Hellfire Supplies##72160 |q 29593/1
step
talk Stone Guard Stok'ton##54606
turnin War on the Ramparts##29527 |goto Hellfire Ramparts 48.40,68.10
accept Demons in the Citadel##29530 |goto Hellfire Ramparts 48.40,68.10
turnin Hitting Them Where It Hurts##29593 |goto Hellfire Ramparts 48.40,68.10
step
talk Caza'rez##54636
accept Make Them Bleed##29535 |goto The Blood Furnace 51.50,90.10
accept Heart of Rage##29536 |goto The Blood Furnace 51.50,90.10
accept Mind the Gap##29537 |goto The Blood Furnace 51.50,90.10
stickystart "felbloodvial"
step
kill The Maker##17381+
collect Fel Infusion Rod##73200 |q 29535/2 |goto The Blood Furnace 37.10,40.80
step
Fully Investigate the Blood Furnace |q 29536/1 |goto The Blood Furnace 65.20,41.10
step
kill Keli'dan the Breaker##17377 |q 29537/1 |goto The Blood Furnace 58.30,41.20
step
label "felbloodvial"
As you go through this instance,
kill Laughing Skull Enforcer##17370+, Laughing Skull Rogue##17491+, Shadowmoon Summoner##17395+, Laughing Skull Legionnaire##17626+
collect 10 Fel Orc Blood Vial##23894 |q 29535
step
Run through this tunnel to turn in your quests |goto The Blood Furnace 62.30,51.40 < 5 |q 29537 |walk
talk Caza'rez##54636
turnin Make Them Bleed##29535 |goto The Blood Furnace 51.50,90.00
turnin Mind the Gap##29537 |goto The Blood Furnace 51.50,90.00
turnin Heart of Rage##29536 |goto The Blood Furnace 51.50,90.00
step
kill Overseer Ripsaw##21499|n
collect Illidari-Bane Shard##30579|n |goto Shadowmoon Valley,23.50,34.90
accept Illidari-Bane Shard##10623 |goto Shadowmoon Valley,23.50,34.90
step
talk Grokom Deatheye##19333
turnin Illidari-Bane Shard##10623 |goto Shadowmoon Valley,29.80,31.30
accept Capture the Weapons##10627 |goto Shadowmoon Valley,29.80,31.30
step
kill Makazradon##21501
collect Makazradon's Glaive##30786 |q 10627/1 |goto Shadowmoon Valley 22.70,35.30
step
kill Morgroron##21500
collect Morgroron's Glaive##30785 |q 10627/2 |goto Shadowmoon Valley 23.20,38.40
step
talk Grokom Deatheye##19333
turnin Capture the Weapons##10627 |goto Shadowmoon Valley,29.80,31.30
accept The Hermit Smith##10663 |goto Shadowmoon Valley,29.80,31.30
step
talk David Wayne##21465
turnin The Hermit Smith##10663 |goto Terokkar Forest,77.60,38.70
accept Additional Materials##10664 |goto Terokkar Forest,77.60,38.70
step
talk Fantei##19678
buy 1 Demon Warding Totem##30823 |q 10664/3 |goto Shattrath City 64.70,70.70
step
#include "shatt_auctioneer"
buy 4 Heavy Knothide Leather##23793 |q 10664/2
step
talk Dealer Najeeb##20981
buy 1 Adamantite Frame##23784 |q 10664/1 |goto Netherstorm 45.00,36.50
step
Make sure you have everything on this list.
collect 1 Adamantite Frame##23784 |q 10664/1
collect 4 Heavy Knothide Leather##23793 |q 10664/2
collect 1 Demon Warding Totem##30823 |q 10664/3
step
talk David Wayne##21465
turnin Additional Materials##10664 |goto Terokkar Forest,77.60,38.70
step
talk David Wayne##21465
accept Fresh from the Mechanar##10665 |goto Terokkar Forest,77.60,38.70
accept The Lexicon Demonica##10666 |goto Terokkar Forest,77.60,38.70
step
kill Grandmaster Vorpil##18732+
collect Lexicon Demonica##30827 |q 10666/1 |goto Shadow Labyrinth 53.40,56.00
step
click Overcharged Manacell##185015
collect Overcharged Manacell##30824 |q 10665/1 |goto The Mechanar 53.70,43.20
step
talk David Wayne##21465
turnin Fresh from the Mechanar##10665 |goto Terokkar Forest,77.60,38.70
turnin The Lexicon Demonica##10666 |goto Terokkar Forest,77.60,38.70
step
talk David Wayne##21465
accept Tear of the Earthmother##10670 |goto Terokkar Forest,77.60,38.70
|tip you'll have to complete the Mechanar (Fresh From the Mechanar) And Shadow Labyrinth (The Lexicon Demonica) portions of the dungeon guide in order to recive this quest
step
talk Caza'rez##54932
accept Honor the Dying##29651 |goto The Shattered Halls 58.60,88.50
step
talk Stone Guard Stok'ton##54931
accept Fel Ember##29650 |goto The Shattered Halls 58.60,88.50
accept A Very Special Cloth##29655 |goto The Shattered Halls 58.60,88.50
accept The Will of the Warchief##29653 |goto The Shattered Halls 58.60,88.50
step
kill 4 Shattered Hand Legionnaire##16700+ |q 29651/1 |goto The Shattered Halls 34.80,77.10
step
kill Grand Warlock Nethekurse##16807+
collect Grand Warlock's Amulet##23735 |q 29650 |goto The Shattered Halls 34.60,61.80
step
Use the Grand Warlock's Amulet next to this brazier |use Grand Warlock's Amulet##23735
collect Fel Ember##23726 |q 29650/1
step
kill 2 Shattered Hand Centurion##17465+ |q 29651/2 |goto The Shattered Halls 36.80,14.20
step
kill 2 Shattered Hand Champion##17671+ |q 29651/3 |goto The Shattered Halls 51.10,13.90
step
kill Warbringer O'mrogg##16809+
collect Tear of the Earthmother##30829 |q 10670/1 |goto The Shattered Halls 53.90,33.80
collect O'mrogg's Warcloth##72597 |q 29655/1 |goto The Shattered Halls 53.90,33.80
step
kill Warchief Kargath Bladefist##16808+
collect Warchief Kargath's Fist##23723 |q 29653/1 |goto The Shattered Halls 67.20,54.10
step
talk Stone Guard Stok'ton##55136
turnin Honor the Dying##29651 |goto The Shattered Halls 67.20,51.80
turnin Fel Ember##29650 |goto The Shattered Halls 67.20,51.80
turnin A Very Special Cloth##29655 |goto The Shattered Halls 67.20,51.80
turnin The Will of the Warchief##29653 |goto The Shattered Halls 67.20,51.80
step
talk David Wayne##21465
turnin Tear of the Earthmother##10670 |goto Terokkar Forest,77.60,38.70
step
At this point you will need to grind in order to reach exalted.
If you are below Honored (5,999) you can grind Normal Hellfire Ramparts, Blood Furnace and Shattered Halls.
After Honored, Normal Ramparts and Blood Furnace no long give reputation.  You will have to do Shattered Halls, or heroic Ramparts, Blood Furnace and Shattered Halls.
|confirm
step
talk Battlecryer Blackeye##18267
accept Hellfire Fortifications##13409 |only if not DeathKnight |goto Hellfire Peninsula,56.00,39.20
accept Hellfire Fortifications##13411 |only DeathKnight |goto Hellfire Peninsula,56.00,39.20
step
Capture The Overlook. |q 13409/1 |goto Hellfire Peninsula 40.10,48.50
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only if not DeathKnight
step
Capture The Stadium. |q 13409/1 |goto Hellfire Peninsula 35.70,51.50
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only if not DeathKnight
step
Capture Broken Hill. |q 13409/3 |goto Hellfire Peninsula 40.20,56.70
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only if not DeathKnight
step
Capture The Overlook. |q 13411/1 |goto Hellfire Peninsula 40.10,48.50
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
Capture The Stadium. |q 13411/1 |goto Hellfire Peninsula 35.70,51.50
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
Capture Broken Hill. |q 13411/3 |goto Hellfire Peninsula 40.20,56.70
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
talk Battlecryer Blackeye##18267
turnin Hellfire Fortifications##13411 |only DeathKnight |goto Hellfire Peninsula,56.00,39.20
turnin Hellfire Fortifications##13409 |only if not DeathKnight |goto Hellfire Peninsula,56.00,39.20
step
After the quest is completed you will unlock a daily version of the quest.
Click here to move onto it. |confirm
step
label "fort"
talk Battlecryer Blackeye##18267
accept Hellfire Fortifications##10110 |goto Hellfire Peninsula,56.00,39.20
step
Capture The Overlook. |q 10110/1 |goto Hellfire Peninsula 40.10,48.50
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
Capture The Stadium. |q 10110/1 |goto Hellfire Peninsula 35.70,51.50
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
Capture Broken Hill. |q 10110/3 |goto Hellfire Peninsula 40.20,56.70
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
talk Battlecryer Blackeye##18267
turnin Hellfire Fortifications##10110 |goto Hellfire Peninsula,56.00,39.20
|next "fort" |only if rep('Thrallmar')<=Revered
Earn Exalted Reputation with Thrallmar |c rep('Thrallmar')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\Argent Crusade",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Argent Crusade faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Argent Crusade') < Exalted end,
achieveid={947},
patch='30100',
},[[
step
Routing to proper section. |next |only if rep("Argent Crusade") < Friendly
Routing to proper section. |next "Tabard" |only if rep("Argent Crusade") >= Friendly
step
talk Aedan Moran##30433
fpath The Argent Vanguard |goto Icecrown 87.80,78.10
step
talk Highlord Tirion Fordring##28179
accept Honor Above All Else##13036 |goto Icecrown 87.50,75.80
step
talk Crusade Commander Entari##30223
turnin Honor Above All Else##13036 |goto 87.10,75.80
accept Scourge Tactics##13008 |goto 87.10,75.80
step
talk Father Gustav##30226
accept Curing The Incurable##13040 |goto 86.80,76.70
step
talk Crusader Lord Dalfors##30224
accept Defending The Vanguard##13039 |goto 86.10,75.80
step
kill Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
kill 15 Forgotten Depths Nerubian |q 13039/1 |goto 84.40,74.30
collect 10 Forgotten Depths Venom Sac##42770 |q 13040/1 |goto 84.40,74.30
Kill the white spider wrappings around this area
Free #8# Webbed Crusaders |q 13008/1 |goto 84.40,74.30
step
talk Crusader Lord Dalfors##30224
turnin Defending The Vanguard##13039 |goto 86.10,75.80
step
talk Father Gustav##30226
turnin Curing The Incurable##13040 |goto 86.80,76.70
step
talk Crusade Commander Entari##30223
turnin Scourge Tactics##13008 |goto 87.10,75.80
accept If There Are Survivors...##13044 |goto 87.10,75.80
step
talk Penumbrius##30227
turnin If There Are Survivors...##13044 |goto 87.00,79.00
accept Into The Wild Green Yonder##13045 |goto 87.00,79.00
step
Click the Argent Skytalon to ride it |invehicle |c |q 13045 |goto 87.10,79.10
step
Use the Grab Captured Crusader ability near Captured Crusaders to pick them up |petaction Grab Captured Crusader
Once you pick up a Captured Crusader, fly to the following location |goto 86.90,76.50
Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
Repeat this process 2 more times
Rescue #3# Captured Crusaders |q 13045/1 |goto 79.00,67.40
step
Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle |c
step
talk Highlord Tirion Fordring##28179
turnin Into The Wild Green Yonder##13045 |goto 87.50,75.80
accept A Cold Front Approaches##13070 |goto 87.50,75.80
step
talk Siegemaster Fezzik##30657
turnin A Cold Front Approaches##13070 |goto 85.60,76.00
accept The Last Line Of Defense##13086 |goto 85.60,76.00
step
clicknpc Argent Cannon##30236
Click the Argent Cannon to get on it |invehicle |c |q 13086 |goto 85.30,75.90
step
Use the skills on your hotbar to kill scourge mobs and dragons
kill Forgotten Depths Slayer##30593+
Kill #100# Scourge Attackers |q 13086/1
kill 3 Frostbrood Destroyer##30575+ |q 13086/2
step
Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle |c
step
talk Siegemaster Fezzik##30657
turnin The Last Line Of Defense##13086 |goto 85.60,76.00
step
talk Highlord Tirion Fordring##28179
accept Once More Unto The Breach, Hero##13105 |goto 86.00,75.80 |only DeathKnight
accept Once More Unto The Breach, Hero##13104 |goto 86.00,75.80 |only if not DeathKnight
step
talk The Ebon Watcher##30596
turnin Once More Unto The Breach, Hero##13105 |goto 83.00,72.90 |only DeathKnight
turnin Once More Unto The Breach, Hero##13104 |goto 83.00,72.90 |only if not DeathKnight
accept The Purging Of Scourgeholme##13118 |goto 83.00,72.90
accept The Scourgestone##13122 |goto 83.00,72.90
step
talk Crusade Architect Silas##30686
accept The Stone That Started A Revolution##13130 |goto 83.00,73.10
step
talk Crusade Engineer Spitzpatrick##30714
accept It Could Kill Us All##13135 |goto 83.00,73.10
step
talk Father Gustav##30683
accept The Restless Dead##13110 |goto 82.90,72.80
step
kill 8 Reanimated Crusader##31043+ |q 13118/3 |goto 80.40,68.20
kill 3 Forgotten Depths Underking##31039+ |q 13118/2 |goto 80.40,68.20
collect 15 Scourgestone##43169 |q 13122/1 |goto 80.40,68.20
Use your Holy Water on Reanimated Crusader corpses |use Holy Water##43153
Free #10# Restless Souls |q 13110/1 |goto 80.40,68.20
step
kill 3 Forgotten Depths High Priest##31037+ |q 13118/1 |goto 78.70,60.20
You can find another Forgotten Depths High Priest at the following location |goto 76.20,61.00
step
talk Father Gustav##30683
turnin The Restless Dead##13110 |goto 82.90,72.80
step
talk The Ebon Watcher##30596
turnin The Purging Of Scourgeholme##13118 |goto 83.00,72.90
turnin The Scourgestone##13122 |goto 83.00,72.90
accept The Air Stands Still##13125 |goto 83.00,72.90
step
Use your War Horn of Acherus on Salranax the Flesh Render |use War Horn of Acherus##43206
|tip A Death Knight is summoned to help you, but make sure you get the first hit on Salranax the Flesh Render, or else you won't get credit for the kill.
kill Salranax the Flesh Render##30829 |q 13125/1 |goto 77.60,62.20
step
Use your War Horn of Acherus on High Priest Yath'amon |use War Horn of Acherus##43206
|tip A Death Knight is summoned to help you, but make sure you get the first hit on High Priest Yath'amon, or else you won't get credit for the kill.
kill High Priest Yath'amon##30831 |q 13125/3 |goto 79.70,60.90
step
Use your War Horn of Acherus on Underking Talonox |use War Horn of Acherus##43206
|tip A Death Knight is summoned to help you, but make sure you get the first hit on Underking Talonox, or else you won't get credit for the kill.
kill Underking Talonox##30830 |q 13125/2 |goto 76.60,54.10
step
Click the dark portal that spawns after you kill Underking Talonox to return to the Valley of Echoes |goto Icecrown 83.00,72.60 < 5
talk The Ebon Watcher##30596
turnin The Air Stands Still##13125 |goto 83.00,72.90
step
kill Unbound Ent##30862+, Unbound Dryad##30860+
collect 8 Crystallized Energy##43225 |q 13135/1 |goto Crystalsong Forest 59.90,57.20
click Crystalline Heartwood##192908
collect 10 Crystalline Heartwood##43217 |q 13130/1 |goto Crystalsong Forest 59.90,57.20
step
click Ancient Elven Masonry##192912
collect 10 Ancient Elven Masonry##43218|q 13130/2 |goto 73.80,53.00
You can find more Ancient Elven Masonry at the following location |goto 79.60,61.30
step
talk Crusade Architect Silas##30686
turnin The Stone That Started A Revolution##13130 |goto Icecrown 83.00,73.10
step
talk Crusade Engineer Spitzpatrick##30714
turnin It Could Kill Us All##13135 |goto 83.00,73.10
step
talk Father Gustav##30683
accept Into The Frozen Heart Of Northrend##13139 |goto 82.90,72.80
step
talk Highlord Tirion Fordring##28179
turnin Into The Frozen Heart Of Northrend##13139 |goto 86.00,75.80
accept The Battle For Crusaders' Pinnacle##13141 |goto 86.00,75.80
step
Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
Watch the Battle for Crusaders' Pinnacle |q 13141/1 |goto 80.10,72.00
step
talk Father Gustav##30683
turnin The Battle For Crusaders' Pinnacle##13141 |goto 82.90,72.80
accept The Crusaders' Pinnacle##13157 |goto 82.90,72.80
step
talk Highlord Tirion Fordring##28179
turnin The Crusaders' Pinnacle##13157 |goto 79.80,71.80
accept A Tale of Valor##13068 |goto 79.80,71.80
step
talk Warlord Hork Strongbrow##31240
accept Orgrim's Hammer##13224 |goto 79.50,72.70
step
talk Crusader Bridenbrad##30562
turnin A Tale of Valor##13068 |goto 79.80,30.80
accept A Hero Remains##13072 |goto 79.80,30.80
step
talk Highlord Tirion Fordring##28179
turnin A Hero Remains##13072 |goto 79.80,71.80
accept The Keeper's Favor##13073 |goto 79.80,71.80
step
talk Arch Druid Lilliandra##30630
Ask her for a portal to Moonglade |goto 87.10,77.00 < 5
Click the Moonglade Portal that appears next to you
talk Keeper Remulos##11832
turnin The Keeper's Favor##13073
accept Hope Within the Emerald Nightmare##13074 |goto Moonglade 36.20,41.80
step
click Emerald Acorn##192676
collect 3 Emerald Acorn##44790 |q 13074/1 |goto 33.70,44.10
step
Right click your Fitful Dream buff to awaken from the nightmare |nobuff spell:57413 |q 13074
|tip The Fitfull Dream buff icon looks like a closed eye.
step
talk Keeper Remulos##11832
turnin Hope Within the Emerald Nightmare##13074 |goto 36.20,41.80
accept The Boon of Remulos##13075 |goto 36.20,41.80
step
talk Keeper Remulos##11832
Tell him you wish to return to Arch Druid Lilliandra |goto 36.20,41.80 < 5 |walk
talk Crusader Bridenbrad##30562
turnin The Boon of Remulos##13075 |goto Icecrown 79.80,30.80
accept Time Yet Remains##13076 |goto Icecrown 79.80,30.80
step
talk Highlord Tirion Fordring##28179
turnin Time Yet Remains##13076 |goto 79.80,71.80
accept The Touch of an Aspect##13077 |goto 79.80,71.80
step
talk Tariolstrasz##26443
Tell him you need to go to the top of the temple |goto Dragonblight 57.90,54.20 < 5
talk Alexstrasza the Life-Binder##26917
turnin The Touch of an Aspect##13077 |goto 59.80,54.70
accept Dahlia's Tears##13078 |goto 59.80,54.70
step
talk Torastrasza##26949
Tell him you want to go to the ground level of the temple |goto 59.50,53.30 < 5
There should be a fight happening, so just wait around until the fight is over
|tip If there isn't fight happening, just wait until the fighters spawn again, and there should be some red dragon Ruby Watchers flying above the fight.
At the end of the fight, a Ruby Watcher will blow a lot of fire on the ground and the Dahlia's Tears will spawn
click Dahlia's Tears##192773
collect Dahlia's Tears##43084 |q 13078/1 |goto 43.20,51.70
step
talk Tariolstrasz##26443
Tell him you need to go to the top of the temple |goto 57.90,54.20 < 5
talk Alexstrasza the Life-Binder##26917
turnin Dahlia's Tears##13078 |goto 59.80,54.70
accept The Boon of Alexstrasza##13079 |goto 59.80,54.70
step
talk Torastrasza##26949
Tell him you want to go to the ground level of the temple |goto 59.50,53.30 < 5
talk Crusader Bridenbrad##30562
turnin The Boon of Alexstrasza##13079 |goto Icecrown 79.80,30.80
accept Hope Yet Remains##13080 |goto Icecrown 79.80,30.80
step
talk Highlord Tirion Fordring##28179
turnin Hope Yet Remains##13080 |goto 79.80,71.80
accept The Will of the Naaru##13081 |goto 79.80,71.80
step
talk A'dal##18481
turnin The Will of the Naaru##13081 |goto Shattrath City 54,44.80
accept The Boon of A'dal##13082 |goto Shattrath City 54,44.80
step
talk Crusader Bridenbrad##30562
turnin The Boon of A'dal##13082 |goto Icecrown 79.80,30.80
step
click Bridenbrad's Possessions##192833
accept Light Within the Darkness##13083 |goto 79.80,30.80
step
talk Highlord Tirion Fordring##28179
turnin Light Within the Darkness##13083 |goto 79.80,71.80
step
label "Tabard"
You should now be above honored with the Argent Crusade.
The fastest way to continue to earn reputation with Argent Crusade is to buy a tabard and run any dungeon that gives experience.
|confirm
step
talk Veteran Crusader Aliocha Segard##30431
buy 1 Tabard of the Argent Crusade##43154 |goto Icecrown 87.50,75.60
step
Equip this Tabard in your bags |equipped Tabard of the Argent Crusade##43154 |use Tabard of the Argent Crusade##43154
You can run any dungeon in Northrend to gain reputation for the Argent Crusade
Friendly with Argent Crusade |complete rep('Argent Crusade')>=Friendly
Honored with Argent Crusade |complete rep('Argent Crusade')>=Honored
Revered with Argent Crusade |complete rep('Argent Crusade')>=Revered
Become Exalted with Argent Crusade |complete rep('Argent Crusade')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\Ashen Verdict",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Ashen Verdict faction.",
achieveid={4598},
patch='30300',
},[[
step
This reputation can be earned by running the Icecrown Citadel raid
|confirm
step
This will _require_ you to be in a _raid group_
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
Kill every creature that is hostile in this instance in order to gain reputation. |goto Icecrown Citadel 39.00,7.30
|tip You will have to clear this place a few times to reach Exalted.
Earn Exalted status with the Ashen Verdict |complete rep('Ashen Verdict')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Ashen Verdict!
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\The Frenzyheart Tribe",{
expansion="mists",
description="This guide will walk you through becoming exalted with The Frenzyheart Tribe faction.",
achieveid={950},
patch='40001',
},[[
step
Proceeding to Prequests |next |complete rep('Frenzyheart Tribe')<=Friendly |only if rep('Frenzyheart Tribe')<=Friendly
Proceeding to Dailies |next "daily" |complete rep('Frenzyheart Tribe')>=Friendly |only if rep('Frenzyheart Tribe')>=Friendly
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin,50.50,62.10
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto Sholazar Basin 50.50,77.30
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto Sholazar Basin 50.50,76.60
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto Sholazar Basin 55,69.10
accept The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.10
step
Talk to Goregek the Gorilla Hunter who is following you
accept Tormenting the Softknuckles##12530
stickystart "softpokemat"
step
kill 8 Hardknuckle Forager |q 12529/1 |goto Sholazar Basin 57.50,73.30
step
kill 6 Hardknuckle Charger |q 12529/2 |goto Sholazar Basin 61.10,71.70
step
label "softpokemat"
Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
|tip Softknuckles are baby gorillas.
A Hardknuckle Matriarch will spawn eventually
kill 1 Hardknuckle Matriarch |q 12530/1 |goto Sholazar Basin 66.90,73.20
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.10
turnin Tormenting the Softknuckles##12530 |goto Sholazar Basin 55,69.10
accept The Wasp Hunter's Apprentice##12533 |goto Sholazar Basin 55,69.10
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto Sholazar Basin 55.50,69.70
step
kill 6 Sapphire Hive Wasp |q 12533/1 |goto Sholazar Basin 59.60,75.80
kill 9 Sapphire Hive Drone |q 12533/2 |goto Sholazar Basin 59.60,75.80
step
The path down to The Sapphire Queen starts here |goto Sholazar Basin 59.40,79.10 < 5 |q 12534 |only if walkng
Follow the path down |goto Sholazar Basin 57.10,79.30 |only if walking
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1
step
Go outside
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto Sholazar Basin 55.00,69.10
turnin The Sapphire Queen##12534 |goto Sholazar Basin 55.00,69.10
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto Sholazar Basin 55.50,69.70
step
They are all around the village
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12532/1
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto Sholazar Basin 55.50,69.70
accept The Underground Menace##12531 |goto Sholazar Basin 55.50,69.70
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto Sholazar Basin 55,69.10
step
Click the Skyreach Crystal Formations
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto Sholazar Basin 56.60,84.60
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto Sholazar Basin 49.80,85
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto Sholazar Basin 55,69.10
turnin Mischief in the Making##12535 |goto Sholazar Basin 55,69.10
accept A Rough Ride##12536 |goto Sholazar Basin 55,69.10
step
talk Captive Crocolisk##28298
Tell him let's do this
Travel to Mistwhisper Refuge |q 12536/1 |goto Sholazar Basin 57.30,68.40
step
When you jump off the crocodile:
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536
accept Lightning Definitely Strikes Twice##12537
accept The Mist Isn't Listening##12538
step
Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
|tip It's a tall rectangle stone monument.
Click the Arranged Crystal Formation that appears
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto Sholazar Basin 45.40,37.20
step
Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto Sholazar Basin 45.50,39.80
step
Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto Sholazar Basin 55,69.10
accept Just Following Orders##12540 |goto Sholazar Basin 55,69.10
step
talk Injured Rainspeaker Oracle##28217
Pull it to its feet
Kill the crocodile that spawns
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto Sholazar Basin 55.70,64.90
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto Sholazar Basin 55.70,64.90
accept Fortunate Misunderstandings##12570 |goto Sholazar Basin 55.70,64.90
Tell him you are ready to travel to his village now.
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto Sholazar Basin 55.70,64.90
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto Sholazar Basin 54.60,56.30
accept Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.60,56.30
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
stickystart "shinytreas"
step
kill 1 Venomtip |q 12571/2 |goto Sholazar Basin 57.50,52.40
|tip He walks back and forth on this small path near the waterfall.
step
label "shinytreas"
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto Sholazar Basin 52.40,53.20
kill 10 Emperor Cobra |q 12571/1 |goto Sholazar Basin 52.40,53.20
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.60,56.30
accept Making Peace##12573 |goto Sholazar Basin 54.60,56.30
turnin Gods like Shiny Things##12572 |goto Sholazar Basin 54.60,56.30
step
talk Shaman Vekjik##28315
Tell him you brought an offering
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto Sholazar Basin 51.30,64.60
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto Sholazar Basin 50.50,62.10
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto Sholazar Basin 54.60,56.30
accept Back So Soon?##12574 |goto Sholazar Basin 54.60,56.30
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto Sholazar Basin 42.10,38.60
accept The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.10,38.60
accept Forced Hand##12576 |goto Sholazar Basin 42.10,38.60
stickystart "frenzyscav"
step
kill 1 Warlord Tartek |q 12575/1 |goto Sholazar Basin 41.30,19.80
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto Sholazar Basin 41.60,19.50
step
label "frenzyscav"
kill 8 Frenzyheart Spearbearer |q 12576/1 |goto Sholazar Basin 40.40,26.40
kill 6 Frenzyheart Scavenger |q 12576/2 |goto Sholazar Basin 40.40,26.40
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.10,38.60
turnin Forced Hand##12576 |goto Sholazar Basin 42.10,38.60
accept Home Time!##12577 |goto Sholazar Basin 42.10,38.60
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto Sholazar Basin 54.60,56.30
accept The Angry Gorloc##12578 |goto Sholazar Basin 54.60,56.30
step
Travel to Mosswalker Village |q 12578/1 |goto Sholazar Basin 75.30,54.10
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
talk Mosswalker Victim##28113
Rescue 6 Mosswalker Victims |q 12580/1 |goto Sholazar Basin 75.40,52.40
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
Click Lifeblood Shards on the ground
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto Sholazar Basin 68.90,54.60
step
You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto Sholazar Basin 54.50,56.60
accept A Hero's Burden##12581 |goto Sholazar Basin 54.50,56.60
step
label "daily"
During this next part you will fight a boss.
If you kill Jaloot during the fight, you will be able to pick up the Frenzyheart Tribe quest, and vice versa.
NOTE** This will decrease your Reputation with _The Oracles_ to _Hated_
kill Jaloot##28667
|confirm always
step
Enter the cave here
Follow the path inside the cave up |goto Sholazar Basin 72.20,57.30 |walk
kill Artruis the Heartless##28659 |q 12581/1 |goto Sholazar Basin 70.80,58.70
click Artruis' Phylactery##190777
|tip This will spawn after the fight
turnin A Hero's Burden##12581 |goto Sholazar Basin 70.80,58.70
talk Zepik the Gorloc Hunter##28668
accept Frenzyheart Champion##12582 |goto Sholazar Basin 70.80,58.70
accept Return of the Lich Hunter##12692 |goto Sholazar Basin 70.80,58.70
If you this quest is not available, clicke here to continue |confirm
step
talk Elder Harkek##28138
turnin Return of the Lich Hunter##12692 |goto Sholazar Basin 55.40,69.60
step
talk Elder Harkek##28138
accept Chicken Party!##12702 |goto Sholazar Basin 55.50,69.70
Tell him you need to find Goregek
collect Goregek's Shackles##38619 |q 12702 |goto Sholazar Basin 55.50,69.70
step
talk Rejek##29043
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Hero's Headgear##12758 |or |goto Sholazar Basin 55.70,69.50
accept Rejek: First Blood##12734 |or |goto Sholazar Basin 55.70,69.50
accept Strength of the Tempest##12741 |or |goto Sholazar Basin 55.70,69.50
accept The Heartblood's Strength##12732 |or |goto Sholazar Basin 55.70,69.50
step
talk Vekgar##29146
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Kartak's Rampage##12703 |or |goto Sholazar Basin 55.50,68.70
accept Secret Strength of the Frenzyheart##12760 |or |goto Sholazar Basin 55.50,68.70
accept Tools of War##12759 |or |goto Sholazar Basin 55.50,68.70
step
They are all around the village
Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12702/1
step
kill Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
collect Venture Co. Explosives##39651 |q 12758 |goto Sholazar Basin 33.10,47.30
step
kill Stormwatcher##28877+
Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
Click the Stormwatcher's Head that spawns
collect Stormwatcher's Head##39667 |q 12758/1 |goto Sholazar Basin 26.00,35.40
step
kill Hardknuckle Charger##28096+
Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
Blood your Blade on a Hardknuckle Charger |q 12734/2 |goto Sholazar Basin 59.70,70.90
step
kill Sapphire Hive Wasp##28086+
Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
Blood your Blade on a Sapphire Hive Wasp |q 12734/1 |goto Sholazar Basin 59.30,75.70
step
kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
Blood your Blade on 3 Mistwhisper Members |q 12734/3 |goto Sholazar Basin 43.10,40.40
step
kill Aqueous Spirit##28862+
collect 3 Essence of the Monsoon##39616 |q 12741 |goto Sholazar Basin 26.50,35.10
kill Storm Revenant##28858+
collect 3 Essence of the Storm##39643 |q 12741 |goto Sholazar Basin 26.50,35.10
step
Stand right up next to the tall stone altar
|tip You may even need to rub against, or stand next to it so that you are touching it.
Feel the True Power of the Tempest |q 12741/1 |goto Sholazar Basin 22.40,33.80
step
kill Goretalon Matriarch##29044
|tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
collect Matriarch's Heartblood##39573 |q 12732 |goto Sholazar Basin 59.70,23.90
step
Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
collect Suntouched Water##39576 |n
Click the Suntouched Water in your bags |use Suntouched Water##39576
collect Suntouched Heartblood##39575 |q 12732/1 |goto Sholazar Basin 33.80,52.10
step
kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
collect Oracle Blood##39265 |q 12703 |goto Sholazar Basin 31.60,69.50
step
Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265
|tip The Altar of Kartak has a big skull on top of it, with long curved horns.  There are 3 small fires at the base of the altar, also.
Take Control of Kartak |invehicle |c |q 12703 |goto Sholazar Basin 23.30,83.00
step
Use Kartak's abilities to kill Oracle mobs around this area
kill 50 Sparktouched Gorloc |q 12703/1 |goto Sholazar Basin 30.70,78.00
step
Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
Kill 30 Sparktouched Gorlocs |q 12760/1 |goto Sholazar Basin 30.10,70.70
step
Click Zepik's Trap Stash
|tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
collect Spike Bomb##39697 |q 12759 |goto Sholazar Basin 24.00,83.10
collect Ensnaring Trap##39695 |q 12759 |goto Sholazar Basin 24.00,83.10
collect Volatile Trap##39696 |q 12759 |goto Sholazar Basin 24.00,83.10
step
Use your Spike Bomb |use Spike Bomb##39697
Use your Ensnaring Trap |use Ensnaring Trap##39695
Use your Volatile Trap |use Volatile Trap##39696
Use your traps near Oracles mobs around this area
Kill 50 Sparktouched Gorlocs |q 12759/1 |goto Sholazar Basin 28.40,76.10
step
talk Shaman Jakjek##28106
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Kartak's Rampage##12703 |goto Sholazar Basin 23.40,83.30
turnin Secret Strength of the Frenzyheart##12760 |goto Sholazar Basin 23.40,83.30
turnin Tools of War##12759 |goto Sholazar Basin 23.40,83.30
step
talk Elder Harkek##28138
turnin Chicken Party!##12702 |goto Sholazar Basin 55.50,69.70
step
talk Rejek##29043
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Hero's Headgear##12758 |goto Sholazar Basin 55.70,69.50
turnin Rejek: First Blood##12734 |goto Sholazar Basin 55.70,69.50
turnin Strength of the Tempest##12741 |goto Sholazar Basin 55.70,69.50
turnin The Heartblood's Strength##12732 |goto Sholazar Basin 55.70,69.50
step
You will now have to run daily quests in order to gain reputation.
Click here to go back to the start of the dailies. Note that this will not actually reset the daily quests. |confirm |next "daily"
|next "exalted" |only if rep('Frenzyheart Tribe')==Exalted
step
label "exalted"
Congratulations, you are now Exalted with the Frenzyheart Tribe!
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\The Horde Expedition",{
expansion="mists",
description="This guide will walk you through becoming exalted with The Horde Expedition faction.",
condition_suggested=function() return level >= 10 and level <= 50 end,
achieveid={1011},
patch='unknown',
},[[
step
The best way to earn reputation with the Horde Expedition will be to run The Oculus, Halls of LIghtning, Utgarde Pinnacle or Heroic Wrath of the Lich King instances
Make sure that you _DO NOT_ have a tabard equipped, or you will not get reputation with the factions you need
Keep in mind, if you're already Exalted with the Horde Expedition, you will gain reputation with one of the factions underneath it (if you aren't exalted already)
|confirm
step
Earning reputation with _The Hand of Vengeance_, _The Sunreavers_, _The Taunka_ or _Warsong Offensive_, a percent will go towards the Horde Expedition
|tip You can also run Heroic dungeons to gain reputation.
|confirm
step
Exalted with The Hand of Vengeance |complete rep("The Hand of Vengeance")==Exalted
Exalted with The Sunreavers |complete rep('The Sunreavers')==Exalted
Exalted with The Taunka |complete rep('The Taunka')==Exalted
Exalted with Warsong Offensive |complete rep('Warsong Offensive')==Exalted
step
Congratulation, You are now Exalted with the Horde Expedition!
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\Kalu'ak",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Kalu'ak faction.",
achieveid={949},
patch='30001',
},[[
step
talk Etaruk##25292
accept Reclaiming the Quarry##11612 |goto Borean Tundra/0 54.29,36.10
step
click Elder Atkanok##187565
accept The Honored Ancestors##11605 |goto Borean Tundra/0 54.60,36.00
stickystart "Kill_Beryl_Treasure_Hunters"
step
Follow the path back up to cliff |goto Borean Tundra/0 45.44,31.11 < 15 |only if walking and subzone("The Westrift")
click "Elder Kesuk"##187662
Identify the Elder Kesuk |q 11605/1 |goto Borean Tundra/0 50.87,32.39
step
click "Elder Takret"##187664
Identify the Elder Takret |q 11605/3 |goto Borean Tundra/0 52.31,31.15
step
click "Elder Sagani"##187663
Identify the Elder Sagani |q 11605/2 |goto Borean Tundra/0 52.82,34.03
step
label "Kill_Beryl_Treasure_Hunters"
kill 12 Beryl Treasure Hunter##25353 |q 11612/1 |goto Borean Tundra/0 51.97,32.61
|tip They look like humans in purple robes.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
step
click Elder Atkanok##187565
turnin The Honored Ancestors##11605 |goto Borean Tundra/0 54.62,35.74
accept The Lost Spirits##11607 |goto Borean Tundra/0 54.62,35.74
step
talk Etaruk##25292
turnin Reclaiming the Quarry##11612 |goto Borean Tundra/0 54.29,36.10
accept Hampering Their Escape##11617 |goto Borean Tundra/0 54.29,36.10
stickystart "Free_Kaskala_Craftsman_Spirits"
stickystart "Free_Kaskala_Shaman_Spirits"
step
kill Beryl Reclaimer##25449+
|tip They look like gnomes.
|tip You can find them all around the Coldrock Quarry area.
collect 3 Gnomish Grenade##34772 |q 11617 |goto Borean Tundra/0 51.62,35.90
step
use the Gnomish Grenade##34772
|tip Use it while standing near the floating platform.
Destroy the East Platform |q 11617/1 |goto Borean Tundra/0 52.47,35.44
step
use the Gnomish Grenade##34772
|tip Use it while standing near the the floating platform.
Destroy the West Platform |q 11617/3 |goto Borean Tundra/0 50.35,34.52
step
use the Gnomish Grenade##34772
|tip Use it while standing near the floating platform.
Destroy the North Platform |q 11617/2 |goto Borean Tundra/0 52.26,31.80
step
label "Free_Kaskala_Craftsman_Spirits"
kill Beryl Hound##25355+
|tip They look like blue dogs.
collect Core of Malice##34711+ |n
use the Cores of Malice##34711
|tip Use them on Kaskala Craftsmen.
|tip They look like walrus people spirits holding hammers.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
Free #3# Kaskala Craftsman Spirits |q 11607/1 |goto Borean Tundra/0 51.49,31.33
step
label "Free_Kaskala_Shaman_Spirits"
kill Beryl Hound##25355+
|tip They look like blue dogs.
collect Core of Malice##34711+ |n
use the Cores of Malice##34711
|tip Use them on Kaskala Shamans.
|tip They look like walrus people spirits holding staves.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
Free #3# Kaskala Shaman Spirits |q 11607/2 |goto Borean Tundra/0 51.49,31.33
step
click Elder Atkanok##187565
turnin The Lost Spirits##11607 |goto Borean Tundra/0 54.62,35.74
accept Picking Up the Pieces##11609 |goto Borean Tundra/0 54.62,35.74
step
talk Etaruk##25292
turnin Hampering Their Escape##11617 |goto Borean Tundra/0 54.29,36.10
accept A Visit to the Curator##11623 |goto Borean Tundra/0 54.29,36.10
stickystart "Collect_Tuskarr_Ritual_Objects"
step
kill Curator Insivius##25448 |q 11623/1 |goto Borean Tundra/0 50.09,32.56
|tip He walks around this area.
|tip Follow the path along the top of the cliff to get to him.
step
label "Collect_Tuskarr_Ritual_Objects"
click Tuskarr Ritual Object##187671+
|tip They look like stone fish and incense smoke bowls on the ground.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
collect 6 Tuskarr Ritual Object##34713 |q 11609/1 |goto Borean Tundra/0 51.95,32.94
step
click Elder Atkanok##187565
turnin Picking Up the Pieces##11609 |goto Borean Tundra/0 54.62,35.74
accept Leading the Ancestors Home##11610 |goto Borean Tundra/0 54.62,35.74
step
talk Etaruk##25292
turnin A Visit to the Curator##11623 |goto Borean Tundra/0 54.29,36.10
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Sagani totem.
Complete Elder Sagani's Ceremony |q 11610/2 |goto Borean Tundra/0 52.82,34.04
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Takret totem.
Complete Elder Takret's Ceremony |q 11610/3 |goto Borean Tundra/0 52.31,31.15
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Kesuk totem.
Complete Elder Kesuk's Ceremony |q 11610/1 |goto Borean Tundra/0 50.87,32.39
step
click Elder Atkanok##187565
turnin Leading the Ancestors Home##11610 |goto Borean Tundra/0 54.62,35.74
step
talk Waltor of Pal'ea##25476
accept Into the Mist##11655 |goto Borean Tundra 32.34,54.27
accept Horn of the Ancient Mariner##11660 |goto Borean Tundra 32.34,54.27
stickystart "Collect_Horn_of_the_Ancient_Mariner"
step
Kill Kvaldir enemies around this area
|tip They look like large humans.
|tip You can find them all around the Garrosh's Landing area.
collect 8 Tuskarr Relic##34814 |q 11655/1 |goto Borean Tundra/0 30.67,50.99
|only if haveq(11664)
step
label "Collect_Horn_of_the_Ancient_Mariner"
Kill Kvaldir enemies around this area |notinsticky
|tip They look like large humans. |notinsticky
|tip You can find them all around the Garrosh's Landing area. |notinsticky
collect Horn of the Ancient Mariner##34813 |q 11660/1 |goto Borean Tundra/0 30.67,50.99
|only if haveq(11664)
step
talk Waltor of Pal'ea##25476
turnin Into the Mist##11655 |goto Borean Tundra/0 32.34,54.27
accept Burn in Effigy##11656 |goto Borean Tundra/0 32.34,54.27
turnin Horn of the Ancient Mariner##11660 |goto Borean Tundra/0 32.34,54.27
accept Orabus the Helmsman##11661 |goto Borean Tundra/0 32.34,54.27
step
use Tuskarr Torch##34830
Destroy Bor's Anvil |q 11656/4 |goto Borean Tundra/0 30.00,61.67
step
use Horn of the Ancient Mariner##34844
Watch the dialogue
|tip A boat approaches and stops near you.
|tip Enemies will attack one at a time, then Orabus the Helmsman will attack.
kill Kvaldir Crewman##32577+
kill Orabus the Helmsman##32576 |q 11661/1 |goto Borean Tundra/0 26.76,54.67
step
use the Tuskarr Torch##34830
|tip At the front of the ship.
Destroy Bor's Hammer |q 11656/3 |goto Borean Tundra/0 29.78,52.57
step
use the Tuskarr Torch##34830
|tip At the front of the ship.
Destroy The Kur Drakkar |q 11656/2 |goto Borean Tundra/0 31.00,48.94
step
use the Tuskarr Torch##34830
|tip At the front of the ship.
Destroy The Serpent's Maw |q 11656/1 |goto Borean Tundra/0 31.69,48.32
step
talk Waltor of Pal'ea##25476
turnin Burn in Effigy##11656 |goto Borean Tundra/0 32.34,54.27
turnin Orabus the Helmsman##11661 |goto Borean Tundra/0 32.34,54.27
accept Seek Out Karuk!##11662 |goto Borean Tundra/0 32.34,54.27
step
talk Karuk##25435
turnin Seek Out Karuk!##11662 |goto Borean Tundra/0 47.13,75.48
accept Karuk's Oath##11613 |goto Borean Tundra/0 47.13,75.48
stickystart "Kill_Skadir_Raiders"
stickystart "Kill_Skadir_Longboatsmen"
step
kill Riplash Myrmidon##24576
|tip Kill the cheering npc's nearby as well.
talk Captured Tuskarr Prisoner##25636
|tip Shortly after killing the attacking Myrmidon, he will have dialogue followed by a quest.
|tip The window to which you can accept the quest is short, so be ready.
|tip If he's not here, wait for him to respawn, or skip the quest.
|tip The quest becomes available to accept a few minutes after he spawns.
accept Cruelty of the Kvaldir##12471 |goto Borean Tundra/0 44.09,77.90
step
label "Kill_Skadir_Raiders"
kill 6 Skadir Raider##25522 |q 11613/1 |goto Borean Tundra/0 46.70,78.05
|tip They look like large green humans holding spears.
|tip You can find them all around the Riplash Strand area. |notinsticky
step
label "Kill_Skadir_Longboatsmen"
kill 5 Skadir Longboatsman##25521 |q 11613/2 |goto Borean Tundra/0 46.70,78.05
|tip They look like large green humans holding wooden mallets.
|tip You can find them all around the Riplash Strand area. |notinsticky
step
talk Karuk##25435
turnin Karuk's Oath##11613 |goto Borean Tundra/0 47.13,75.48
accept Gamel the Cruel##11619 |goto Borean Tundra/0 47.13,75.48
turnin Cruelty of the Kvaldir##12471 |goto Borean Tundra/0 47.13,75.48
step
Enter the cave |goto Borean Tundra/0 46.15,79.32 < 20 |walk
kill Gamel the Cruel##26449 |q 11619/1 |goto Borean Tundra/0 46.42,78.23
|tip Inside the small cave.
step
Leave the cave |goto Borean Tundra/0 46.15,79.32 < 20 |walk |only if subzone("Riplash Strand") and _G.IsIndoors()
talk Karuk##25435
turnin Gamel the Cruel##11619 |goto Borean Tundra/0 47.13,75.48
accept A Father's Words##11620 |goto Borean Tundra/0 47.13,75.48
step
talk Veehja##25450
turnin A Father's Words##11620 |goto Borean Tundra/0 43.61,80.52
accept The Trident of Naz'jan##11625 |goto 43.60,80.50
step
kill Ragnar Drakkarlund##26451
collect Trident of Naz'jan##35774|q 11625/1 |goto 54.70,89.10
|tip It's inside of the building.
step
talk Veehja##25450
turnin The Trident of Naz'jan##11625 |goto 43.60,80.50
accept The Emissary##11626 |goto 43.60,80.50
step
Swim underwater to the bubbling rock at the very bottom, so you don't run out of air
Use your Trident of Naz'jan on Leviroth |use Trident of Naz'jan##35850
kill Leviroth##26452 |q 11626/1 |goto 52.20,88.20
step
talk Karuk##25435
turnin The Emissary##11626 |goto 47.10,75.50
step
talk Ataika##26169
accept Not Without a Fight!##11949 |goto Borean Tundra/0 63.80,46.12
step
talk Utaik##26213
accept Preparing for the Worst##11945 |goto Borean Tundra/0 63.95,45.72
stickystart "Kill_Kvaldir_Raiders"
step
click Kaskala Supplies+
|tip They look like brown wicker baskets on the ground around this area.
|tip They can also be inside the buildings.
collect 8 Kaskala Supplies##35711 |q 11945/1 |goto Borean Tundra/0 65.51,47.45
|only if haveq(11945)
step
label "Kill_Kvaldir_Raiders"
kill 12 Kvaldir Raider##25760 |q 11949/1 |goto Borean Tundra/0 67.27,53.03
|tip They look like large green humans.
|tip You can find them all around the Kaskala area. |notinsticky
You can find more around [67.51,47.93]
step
talk Ataika##26169
turnin Not Without a Fight!##11949 |goto Borean Tundra/0 63.80,46.12 |only if readyq(11949)
accept Muahit's Wisdom##11950 |goto Borean Tundra/0 63.80,46.12
step
talk Utaik##26213
turnin Preparing for the Worst##11945 |goto Borean Tundra/0 63.95,45.72
|only if haveq(11945) or completedq(11945)
step
talk Elder Muahit##26218
turnin Muahit's Wisdom##11950 |goto Borean Tundra/0 67.20,54.85
accept Spirits Watch Over Us##11961 |goto Borean Tundra/0 67.20,54.85
step
clicknpc Iruk##26219
|tip Underwater.
Choose _<Search corpse for Issliruk's Totem.>_
collect Issliruk's Totem##35701 |q 11961/1 |goto Borean Tundra/0 67.64,50.41
step
talk Elder Muahit##26218
turnin Spirits Watch Over Us##11961 |goto Borean Tundra/0 67.20,54.85
accept The Tides Turn##11968 |goto Borean Tundra/0 67.20,54.85
step
kill Heigarr the Horrible##26266 |q 11968/1 |goto Borean Tundra/0 67.60,56.70
|tip He fights around this area.
step
talk Elder Muahit##26218
turnin The Tides Turn##11968 |goto Borean Tundra/0 67.20,54.85
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto Howling Fjord/0 40.29,60.25
step
click Mound of Debris##187022
|tip It looks like a pile of dirt.
collect Fengir's Clue##34222 |q 11504/1 |goto Howling Fjord 57.68,77.52
step
click Unlocked Chest##187023
|tip It looks like a small brown metal and wooden chest.
collect Rodin's Clue##34223 |q 11504/2 |goto Howling Fjord 59.23,76.98
step
click Long Tail Feather##187026
|tip It looks like a blue feather.
collect Isuldof's Clue##34224 |q 11504/3 |goto Howling Fjord 59.79,79.39
step
click Cannonball##187027
|tip It looks like a grey boulder.
collect Windan's Clue##34225 |q 11504/4 |goto Howling Fjord 61.97,80.06
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto Howling Fjord 40.29,60.25
accept Elder Atuik and Kamagua##11507 |goto Howling Fjord 40.29,60.25
step
Ride the lift |goto Howling Fjord/0 40.07,60.19 < 10 |only if walking
Enter the building |goto Howling Fjord/0 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Elder Atuik and Kamagua##11507 |goto Howling Fjord/0 25.02,56.97
accept Grezzix Spindlesnap##11508 |goto Howling Fjord/0 25.02,56.97
accept Feeding the Survivors##11456 |goto Howling Fjord/0 25.02,56.97
step
kill Island Shoveltusk##24681+
|tip They look like buffalo.
|tip The grey wolves will kill nearby Shoveltusks, so kill those too, if you need to.
|tip You can find them all around the Isle of Spears area.
collect 6 Island Shoveltusk Meat##36776 |q 11456/1 |goto Howling Fjord/0 30.53,60.03
You can find more around:
[29.21,58.55]
[27.24,63.61]
[28.62,64.69]
[32.64,66.28]
[36.38,53.29]
[29.16,66.53]
[30.95,62.43]
step
Enter the building |goto Howling Fjord/0 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Feeding the Survivors##11456 |goto Howling Fjord/0 25.02,56.97
accept Arming Kamagua##11457 |goto Howling Fjord/0 25.02,56.97
step
kill Frostwing Chimaera##24673+
|tip They look like blue and white two-headed dragons.
collect 3 Chimaera Horn##34101 |q 11457/1 |goto Howling Fjord/0 28.12,54.71
You can find more around [27.52,67.05]
step
Enter the building |goto Howling Fjord/0 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Arming Kamagua##11457 |goto Howling Fjord/0 25.02,56.97
accept Avenge Iskaal##11458 |goto Howling Fjord/0 25.02,56.97
step
talk Grezzix Spindlesnap##24643
|tip On the small boat.
turnin Grezzix Spindlesnap##11508 |goto Howling Fjord/0 23.08,62.66
accept Street "Cred"##11509 |goto Howling Fjord/0 23.08,62.66
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin Street "Cred"##11509 |goto Howling Fjord/0 35.09,80.94
accept "Scoodles"##11510 |goto Howling Fjord/0 35.09,80.94
step
talk Handsome Terry##24537
accept Forgotten Treasure##11434 |goto Howling Fjord/0 35.60,80.22
step
Board the ship |goto Howling Fjord/0 37.21,78.96 < 10 |only if walking
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto Howling Fjord/0 37.75,79.58
step
kill "Scoodles"##24899
|tip It looks like an orca that swims in the water around this area.
collect Sin'dorei Scrying Crystal##34235 |q 11510/1 |goto Howling Fjord/0 38.85,84.12
step
use the Fish Bladder##34076
|tip This will allow you to breathe underwater for 3 minutes.
Gain Water Breathing |havebuff Water Breathing##44235 |q 11434
step
Swim through the small window underwater |goto Howling Fjord/0 38.15,84.45 < 7 |walk
click Eagle Figurine##186886
|tip It looks like a small grey and blue stone bird statue.
|tip Underwater, inside the ship.
collect Eagle Figurine##34070 |q 11434/2 |goto Howling Fjord/0 37.77,84.62
step
click Amani Vase##186885
|tip It looks like a grey stone jar.
|tip Underwater, inside the broken boat.
collect Amani Vase##34069 |q 11434/1 |goto Howling Fjord/0 37.15,85.49
step
kill Big Roy##24785
|tip He looks like a big seal that swims in the water around this area.
collect Big Roy's Blubber##34122 |q 11469/1 |goto Howling Fjord/0 31.40,78.62
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin "Scoodles"##11510 |goto Howling Fjord/0 35.09,80.94
accept The Staff of Storm's Fury##11511 |goto Howling Fjord/0 35.09,80.94
accept The Frozen Heart of Isuldof##11512 |goto Howling Fjord/0 35.09,80.94
accept The Lost Shield of the Aesirites##11519 |goto Howling Fjord/0 35.09,80.94
accept The Ancient Armor of the Kvaldir##11567 |goto Howling Fjord/0 35.09,80.94
step
talk Handsome Terry##24537
turnin Forgotten Treasure##11434 |goto Howling Fjord/0 35.60,80.22
accept The Fragrance of Money##11455 |goto Howling Fjord/0 35.60,80.22
step
talk Taruk##24541
accept Gambling Debt##11464 |goto Howling Fjord/0 36.32,80.48
step
Board the ship |goto Howling Fjord/0 37.21,78.96 < 10 |only if walking
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto Howling Fjord/0 37.75,79.58
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
Select _"Taruk sent me to collect what you owe."_
kill "Silvermoon" Harry##24539
|tip Don't kill him, just get him to low health.
|tip You will eventually be able to talk to him again.
talk "Silvermoon" Harry##24539
Select _"Pay up, Harry!"_
collect "Silvermoon" Harry's Debt##34115 |q 11464/1 |goto Howling Fjord/0 35.09,80.94
step
talk Taruk##24541
turnin Gambling Debt##11464 |goto Howling Fjord/0 36.32,80.48
accept Jack Likes His Drink##11466 |goto Howling Fjord/0 36.32,80.48
step
Enter the building |goto Howling Fjord/0 35.28,80.22 < 10 |walk
talk Olga the Scalawag Wench##24639
|tip Inside the building.
Select _"I'd like to buy Jack a drink. Perhaps something... extra strong."_
Click Here After You Buy Jack Adams a Drink |confirm |goto Howling Fjord/0 35.31,79.59 |q 11466
step
Watch the dialogue
|tip Jack Adams will pass out on the table.
|tip Inside the building.
talk Jack Adams##24788
Choose _<Discreetly search the pirate's pockets for Taruk's payment.>_
collect Jack Adams' Debt##34116 |q 11466/1 |goto Howling Fjord/0 35.49,79.38
step
Leave the building |goto Howling Fjord/0 35.28,80.22 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
talk Taruk##24541
turnin Jack Likes His Drink##11466 |goto Howling Fjord/0 36.32,80.48
accept Dead Man's Debt##11467 |goto Howling Fjord/0 36.32,80.48
step
Follow the road to leave Scalawag Point |goto Howling Fjord/0 36.51,77.46 < 40 |only if walking and subzone("Scalawag Point")
kill Rabid Brown Bear##24633+
|tip They look like brown bears.
|tip You can find them all around the Garvan's Reef area.
collect 4 Bear Musk##34084 |q 11455/1 |goto Howling Fjord/0 34.09,77.91
step
talk Handsome Terry##24537
turnin The Fragrance of Money##11455 |goto Howling Fjord/0 35.60,80.22
accept A Traitor Among Us##11473 |goto Howling Fjord/0 35.60,80.22
step
Enter the cave |goto Howling Fjord/0 33.57,75.64 < 10 |walk
kill "Mad" Jonah Sterling##24742
|tip He looks like a human wearing a red coat.
|tip He walks around this small area inside the cave.
|tip He eventually runs away and gets eaten by a large white bear on the bottom level of the cave.
|tip He is a level 70 elite enemy, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you, or skip the quest.
Click Here After Killing "Mad" Jonah Sterling |confirm |goto Howling Fjord/0 33.78,78.02 |q 11471
step
Follow the path up |goto Howling Fjord/0 32.99,78.18 < 10 |walk
click The Frozen Heart of Isuldof##187032
|tip Downstairs inside the cave.
collect The Frozen Heart of Isuldof##34237 |q 11512/1 |goto Howling Fjord/0 32.34,78.68
step
kill 8 Crazed Northsea Slaver##24676 |q 11458/1 |goto Howling Fjord/0 33.71,63.84
step
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
|tip Board the ship when it stops at this location.
turnin The Lost Shield of the Aesirites##11519 |goto Howling Fjord/0 37.85,74.79
accept Mutiny on the Mercy##11527 |goto Howling Fjord/0 37.85,74.79
step
_Downstairs Inside the Ship:_
kill Mutinous Sea Dog##25026+
|tip Downstairs, on the bottom deck, inside the pirate ship that sails around this area.
collect 5 Barrel of Blasting Powder##34387 |q 11527/1
step
_On the Ship Desk:_
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
turnin Mutiny on the Mercy##11527
accept Sorlof's Booty##11529
step
clicknpc The Big Gun##24992
|tip At the front of the ship, on the top deck of the pirate ship that sails around this area.
|tip Keep clicking it repeatedly until Sorlof is dead on the shore.
kill Sorlof##24914
|tip He looks like a large tree that walks along the shore around this area.
click Sorlof's Booty##187238
|tip It looks like a yellow pile of gold that appears on the ground after Sorlof dies.
|tip Jump off the ship to loot it.
collect Sorlof's Booty##34468 |q 11529/1
step
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
|tip Board the ship when it stops at this location.
turnin Sorlof's Booty##11529 |goto Howling Fjord/0 37.85,74.79
accept The Shield of the Aesirites##11530 |goto Howling Fjord/0 37.85,74.79
step
Board the ship while being careful to avoid Abdul the Insane |goto Howling Fjord/0 34.94,63.68 < 10 |only if walking
Wait for Adbul the Insane to walk to the top deck of the ship, then enter the ship here |goto Howling Fjord/0 35.39,64.68 < 7 |walk
click The Staff of Storm's Fury##187033
|tip Downstairs inside the ship, on the bottom level.
collect The Staff of Storm's Fury##34236 |q 11511/1 |goto Howling Fjord/0 35.26,64.84
|only if haveq(11529)
step
Cross the hanging bridge |goto Howling Fjord/0 29.83,60.87 < 10 |only if walking
click Dirt Mound##186944
Watch the dialogue
Kill the enemies that attack
kill Black Conrad's Ghost##24790
collect Black Conrad's Treasure##34118 |q 11467/1 |goto Howling Fjord/0 32.69,60.21
step
Enter the building |goto Howling Fjord/0 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Avenge Iskaal##11458 |goto Howling Fjord/0 25.02,56.97
step
Leave the building |goto Howling Fjord/0 35.27,80.21 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
talk Taruk##24541
turnin Dead Man's Debt##11467 |goto Howling Fjord/0 36.32,80.48
step
talk Handsome Terry##24537
turnin The Fragrance of Money##11455 |goto Howling Fjord/0 35.60,80.22
step
Enter the ship |goto Howling Fjord/0 82.26,74.77 < 10 |walk
click The Ancient Armor of the Kvaldir##187381
|tip It looks like a floating metal chest armor.
|tip Downstairs inside the ship.
collect The Ancient Armor of the Kvaldir##34239 |q 11567/1 |goto Howling Fjord/0 81.78,73.91
step
Ride the lift up |goto Howling Fjord/0 42.07,67.71 < 15 |only if walking and (subzone("Scalawag Point") or subzone("Garvan's Reef") or subzone("Sorlof's Strand"))
talk Orfus of Kamagua##23804
turnin The Shield of the Aesirites##11530 |goto Howling Fjord/0 40.29,60.25
turnin The Staff of Storm's Fury##11511 |goto Howling Fjord/0 40.29,60.25
turnin The Frozen Heart of Isuldof##11512 |goto Howling Fjord/0 40.29,60.25
turnin The Ancient Armor of the Kvaldir##11567 |goto Howling Fjord/0 40.29,60.25
accept A Return to Resting##11568 |goto Howling Fjord/0 40.29,60.25
step
use the Bundle of Vrykul Artifacts##34624
Return the Shield of Aesirites |q 11568/1 |goto Howling Fjord/0 57.64,77.41
step
use the Bundle of Vrykul Artifacts##34624
Return the Staff of Storm's Fury |q 11568/2 |goto Howling Fjord/0 59.30,77.20
step
use the Bundle of Vrykul Artifacts##34624
Return the Frozen Heart of Isuldof |q 11568/3 |goto Howling Fjord/0 59.78,79.40
step
use the Bundle of Vrykul Artifacts##34624
Return the Ancient Armor of the Kvaldir |q 11568/4 |goto Howling Fjord/0 61.89,80.14
step
talk Orfus of Kamagua##23804
turnin A Return to Resting##11568 |goto Howling Fjord/0 40.29,60.25
accept Return to Atuik##11572 |goto Howling Fjord/0 40.29,60.25
step
Ride the lift |goto Howling Fjord/0 40.07,60.19 < 10 |only if walking
Enter the building |goto Howling Fjord/0 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Return to Atuik##11572 |goto Howling Fjord/0 25.02,56.97
step
talk Elder Ko'nani##26194
|tip Inside the building.
accept Let Nothing Go To Waste##11958 |goto Dragonblight 48.01,74.87
step
talk Trapper Mau'i##26228
accept Planning for the Future##11960 |goto Dragonblight 48.26,74.35
stickystart "Collect_Stolen_Moaki_Goods"
step
clicknpc Snowfall Glade Pup##26200+
|tip They look like small wolverines.
|tip They are usually close to the buildings around this area.
collect 12 Snowfall Glade Pup##35692 |q 11960/1 |goto Dragonblight 45.93,68.66
You can find more around: |notinsticky
[43.82,68.46]
[42.78,71.67]
[43.37,71.68]
[44.47,71.46]
|only if haveq(11960)
step
label "Collect_Stolen_Moaki_Goods"
Kill Snowfall Glade enemies around this area
|tip They look like wolverines.
|tip You can find them all around the Snowfall Glade area.
collect 6 Stolen Moa'ki Goods##35686 |q 11958/1 |goto Dragonblight 43.86,70.43
You can find more around [49.12,69.76]
step
talk Trapper Mau'i##26228
turnin Planning for the Future##11960 |goto Dragonblight/0 48.26,74.35
|only if haveq(11960) or completedq(11960)
step
Enter the building |goto Dragonblight/0 48.31,74.63 < 15 |walk
talk Elder Ko'nani##26194
|tip Inside the building.
turnin Let Nothing Go To Waste##11958 |goto Dragonblight/0 48.01,74.87
accept Slay Loguhn##11959 |goto Dragonblight/0 48.01,74.87
step
Follow the path up to leave Moa'ki Harbor |goto Dragonblight/0 48.85,69.18 < 40 |only if walking and subzone("Moa'ki Harbor")
kill Loguhn##26196
collect Blood of Loguhn##35688 |goto Dragonblight/0 46.31,59.15 |q 11959
step
use the Blood of Loguhn##35688
Smear Loguhn's Blood |q 11959/1
step
Enter the building |goto Dragonblight/0 48.31,74.63 < 15 |walk
talk Elder Ko'nani##26194
|tip Inside the building.
turnin Slay Loguhn##11959 |goto Dragonblight/0 48.01,74.87
step
Enter the building |goto Dragonblight/0 49.02,75.77 < 10 |walk
talk Toalu'u the Mystic##26595
|tip Inside the building.
accept Spiritual Insight##12028 |goto Dragonblight/0 49.14,75.66
step
use Toalu'u's Spiritual Incense##35907
Release Your Spirit |havebuff Spiritual Insight##47189 |goto Dragonblight/0 48.94,75.79 |q 12028
|only if haveq(12028)
step
Watch the dialogue
Attain Spiritual Insight Concerning Indu'le Village |q 12028/1
|only if haveq(12028)
step
Enter the building |goto Dragonblight/0 49.02,75.77 < 10 |walk
talk Toalu'u the Mystic##26595
|tip Inside the building.
turnin Spiritual Insight##12028 |goto Dragonblight/0 49.14,75.66
accept Elder Mana'loa##12030 |goto Dragonblight/0 49.14,75.66
step
talk Tua'kea##26245
|tip He walks around this area.
accept Tua'kea's Crab Traps##12009 |goto Dragonblight/0 47.70,76.63
step
use Tua'kea's Breathing Bladder##37265
Gain Waterbreathing |havebuff Tua'kea's Breathing Bladder##48359 |q 12009
|only if haveq(12009)
stickystart "Collect_Tuakea_Crab_Traps"
step
click Wrecked Crab Trap##188364
|tip It looks like a broken small broken brown cage on the ground underwater.
accept Signs of Big Watery Trouble##12011 |goto Dragonblight/0 47.74,79.97
|only if level < 75
step
talk Tua'kea##26245
|tip He walks around this area.
turnin Signs of Big Watery Trouble##12011 |goto Dragonblight/0 47.70,76.63
accept The Bait##12016 |goto Dragonblight/0 47.70,76.63 |only if level < 75
step
kill Kili'ua##26521
|tip He looks like a huge crab.
|tip He walks around this area on this small island.
collect The Flesh of "Two Huge Pincers"##35831 |q 12016/1 |goto Dragonblight/0 43.28,81.84
step
talk Tua'kea##26245
|tip He walks around this area.
turnin The Bait##12016 |goto Dragonblight/0 47.70,76.63
accept Meat on the Hook##12017 |goto Dragonblight/0 47.70,76.63
step
use Tu'u'gwar's Bait##35838
|tip Use it next to Tua'kea's Fishing Hook underwater.
|tip It looks like a rope leading into the water, with a large hook on the end.
kill Tu'u'gwar##26510 |q 12017/1 |goto Dragonblight/0 46.72,78.19
|tip He swims to you.
step
label "Collect_Tuakea_Crab_Traps"
click Tua'kea Crab Trap##188359+
|tip They look like small brown cages on the ground underwater.
|tip You can find them all around the Moa'ki Harbor area.
collect 8 Tua'kea Crab Trap##35802 |q 12009/1 |goto Dragonblight/0 46.58,77.72
You can find more around: |notinsticky
[49.40,79.93]
[50.70,77.29]
step
talk Tua'kea##26245
|tip He walks around this area.
turnin Tua'kea's Crab Traps##12009 |goto Dragonblight/0 47.70,76.63
turnin Meat on the Hook##12017 |goto Dragonblight/0 47.70,76.63
step
click Elder Mana'loa##188419
turnin Elder Mana'loa##12030 |goto Dragonblight/0 36.74,65.17
accept Freedom for the Lingering##12031 |goto Dragonblight/0 36.74,65.17
step
Kill Indu'le enemies around this area
|tip They look like walrus people spirits.
|tip Deranged Indu'le Villagers will not count for the quest goal.
|tip You can find them all around the Indu'le Village area.
Put #15# Indu'le Spirits to Rest |q 12031/1 |goto Dragonblight/0 38.09,66.29
step
click Elder Mana'loa##188419
turnin Freedom for the Lingering##12031 |goto Dragonblight/0 36.74,65.17
accept Conversing With the Depths##12032 |goto Dragonblight/0 36.74,65.17
step
Follow the path down the cliff |goto Dragonblight/0 34.77,75.19 < 40 |only if walking and not subzone("The Briny Pinnacle")
Follow the path up |goto Dragonblight/0 34.37,80.11 < 30 |only if walking
click The Pearl of the Depths##188422
Watch the dialogue
|tip A huge sea monster, Oacha'noa, will appear in the water nearby.
|tip You will eventually receive a 30 second buff.
|tip Jump into the water toward Oacha'noa when you have the buff.
Obey Oacha'noa's Compulsion |q 12032/1 |goto Dragonblight/0 33.99,83.45
step
Enter the building |goto Dragonblight/0 49.06,75.73 < 10 |walk
talk Toalu'u the Mystic##26595
|tip Inside the building.
turnin Conversing With the Depths##12032 |goto Dragonblight/0 49.14,75.65
step
label "Begin_Dailies"
talk Utaik##26213
accept Preparing for the Worst##11945 |goto Borean Tundra 63.95,45.72
step
click Kaskala Supplies+
|tip They look like brown wicker baskets on the ground around this area.
|tip They can also be inside the buildings.
collect 8 Kaskala Supplies##35711 |q 11945/1 |goto Borean Tundra 65.51,47.45
step
talk Utaik##26213
turnin Preparing for the Worst##11945 |goto Borean Tundra 63.95,45.72
step
talk Trapper Mau'i##26228
accept Planning for the Future##11960 |goto Dragonblight 48.26,74.35
step
clicknpc Snowfall Glade Pup##26200+
|tip They look like small wolverines.
|tip They are usually close to the buildings around this area.
collect 12 Snowfall Glade Pup##35692 |q 11960/1 |goto Dragonblight 45.93,68.66
You can find more around: |notinsticky
[43.82,68.46]
[42.78,71.67]
[43.37,71.68]
[44.47,71.46]
step
talk Trapper Mau'i##26228
turnin Planning for the Future##11960 |goto Dragonblight 48.26,74.35
step
talk Anuniaq##24810
accept The Way to His Heart...##11472 |goto Howling Fjord 24.60,58.90
step
use Anuniaq's Net##40946
|tip Use it on Schools of Tasty Reef Fish.
|tip They look like swarms of fish in the water.
kill Great Reef Shark##24637+ |n
collect 10 Tasty Reef Fish##34127|q 11472 |goto Howling Fjord/0 24.59,58.86
step
use Tasty Reef Fish##34127
|tip Use the Tasty Reef Fish on a Reef Bull as far away as you can.
|tip It will come to the spot where you're standing.
|tip Repeat this process to lead it to the other side of the water.
Lead the Reef Bull to a Reef Cow on the Other Side of the Water |q 11472/1 |goto 31,74.40
step
talk Anuniaq##24810
turnin The Way to His Heart...##11472 |goto Howling Fjord/0 24.59,58.86
step
You have completed the available dailies
|tip This section will reset when more dailies become available.
'|complete not completedq(11945,11960,11472) |next "Begin_Dailies" |or
Earn Exalted Reputation with the Kalu'ak |complete rep("Kalu'ak") == Exalted |or
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\Kirin Tor",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Kirin Tor faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Kirin Tor') < Exalted end,
achieveid={1008},
patch='30008',
},[[
step
Routing to proper section. |next |only if rep("Kirin Tor") < Friendly
Routing to proper section. |next "Tabard" |only if rep("Kirin Tor") >= Friendly
step
talk Librarian Donathan##25262
accept Prison Break##11587 |goto Borean Tundra 45.30,33.30
step
talk Librarian Garren##25291
accept Monitoring the Rift: Cleftcliff Anomaly##11576 |goto Borean Tundra 45,33.40
step
kill Beryl Mage Hunter##25585+ |n
collect Beryl Prison Key##34688 |n |goto Borean Tundra 40.50,39.20
click Arcane Prison##187561
Free an Arcane Prisoner |q 11587/1 |goto Borean Tundra 40.50,39.20
step
The path down to Monitoring the Rift: Cleftcliff Anomaly starts here |goto Borean Tundra 41.20,41.80 < 5 |q 11576 |only if walking
Use your Arcanometer in this spot next to the purple glowing crack in the ground |use Arcanometer##34669
Take the Cleftcliff Anomaly Reading |q 11576/1 |goto Borean Tundra 34.30,42
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Cleftcliff Anomaly##11576 |goto Borean Tundra 45,33.40
accept Monitoring the Rift: Sundered Chasm##11582 |goto Borean Tundra 45,33.40
step
talk Librarian Donathan##25262
turnin Prison Break##11587 |goto Borean Tundra 45.30,33.30
accept Abduction##11590 |goto Borean Tundra 45.30,33.30
step
The path down to Monitoring the Rift: Sundered Chasm starts here |goto Borean Tundra 46.80,29.30 < 5 |q 11582 |only if walking
Go down the path and underwater
Use your Arcanometer next to the huge purple glowing crack underwater |use Arcanometer##34669
Take the Sundered Chasm Reading |q 11582/1 |goto Borean Tundra 44,28.60
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Sundered Chasm##11582 |goto Borean Tundra 45,33.40
accept Monitoring the Rift: Winterfin Cavern##12728 |goto Borean Tundra 45,33.40
step
The path down to Monitoring the Rift: Winterfin Cavern starts here |goto Borean Tundra 46.80,29.30 < 5 |q 12728 |only if walking
Stand in the mouth of the cave, past the torches
Use your Arcanometer |use Arcanometer##34669
Take the Winterfin Cavern Reading |q 12728/1 |goto Borean Tundra 40.10,19.70
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Winterfin Cavern##12728 |goto Borean Tundra 45,33.40
step
Fight a Beryl Sorcerer
Use your Arcane Binder on him when you see the 'Beryl Sorcerer can now be captured' message in your chat |use Arcane Binder##34691
Capture a Beryl Sorcerer |q 11590/1 |goto Borean Tundra 43.50,37.40
step
talk Librarian Donathan##25262
turnin Abduction##11590 |goto Borean Tundra 45.30,33.30
accept The Borean Inquisition##11646 |goto Borean Tundra 45.30,33.30
step
Go inside the tall tower |goto Borean Tundra 46.30,32.80
talk Librarian Normantis##25480
turnin The Borean Inquisition##11646 |goto Borean Tundra 46.30,32.80
accept The Art of Persuasion##11648 |goto Borean Tundra 46.30,32.80
step
Use your Neural Needler on the Imprisoned Beryl Sorcerer repeatedly to Interrogate the Prisoner |use Neural Needler##34811
Interrogate the Prisoner |q 11648/1
step
talk Librarian Normantis##25480
turnin The Art of Persuasion##11648 |goto Borean Tundra 46.30,32.80
accept Sharing Intelligence##11663 |goto Borean Tundra 46.30,32.80
step
Go outside the tower |goto Borean Tundra 45.30,33.30
talk Librarian Donathan##25262
turnin Sharing Intelligence##11663
accept A Race Against Time##11671
step
Use your Beryl Shield Detonator inside the big blue glowing circle |use Beryl Shield Detonator##34897
|tip If it won't let you, wait until Inquisitor Salrand appears again.
kill Inquisitor Salrand##25584+ |n
click Salrand's Lockbox##187875
collect Salrand's Broken Key##34909 |q 11671/1 |goto Borean Tundra 42.10,39.50
step
talk Librarian Donathan##25262
turnin A Race Against Time##11671 |goto Borean Tundra 45.30,33.30
accept Reforging the Key##11679 |goto Borean Tundra 45.30,33.30
step
talk Surristrasz##24795
turnin Reforging the Key##11679 |goto Borean Tundra 45.30,34.50
accept Taking Wing##11680 |goto Borean Tundra 45.30,34.50
step
talk Warmage Anzim##25356
turnin Taking Wing##11680 |goto Borean Tundra 46.40,37.30
accept Rescuing Evanor##11681 |goto Borean Tundra 46.40,37.30
step
Watch the cutscene, then you'll get teleported back to Amber Ledge |goto Borean Tundra 46.40,32.60 < 5 |noway
step
talk Archmage Evanor##25785
turnin Rescuing Evanor##11681 |goto Borean Tundra 46.40,32.40
accept Dragonspeak##11682 |goto Borean Tundra 46.40,32.40
step
Go outside the tower |goto Borean Tundra 45.30,34.50
talk Surristrasz##24795
turnin Dragonspeak##11682 |goto Borean Tundra 45.30,34.50
accept Traversing the Rift##11733 |goto Borean Tundra 45.30,34.50
step
talk Archmage Berinand##25314
turnin Traversing the Rift##11733 |goto Borean Tundra 32.90,34.40
step
label "Tabard"
talk Archmage Alvareaux##32287
buy 1 Tabard of the Kirin Tor##43157 |goto Dalaran 25.30,47.70
step
Equip Tabard of the Kirin Tor |equipped Tabard of the Kirin Tor##43157 |use Tabard of the Kirin Tor##43157
Once you've bought the Tabard, you will have to run instances from _Wrath of the Lich King_ in order to gain rep
Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
|tip You can also run Heroic Dungeons to qualify
Earn Exalted status with the Kirin Tor |complete rep('Kirin Tor')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with The Kirin Tor!
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\Knights of the Ebon Blade",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Knights of the Ebon Blade faction.",
achieveid={1009},
patch='30008',
},[[
step
On the Orgrim's Hammer airship:
talk Koltira Deathweaver##29795
accept It's All Fun and Games##12892
step
Use your Eyesore Blaster on The Ocular |use Eyesore Blaster##41265
|tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
Destroy The Ocular |q 12892/1 |goto Icecrown 44.30,21.50
step
talk Baron Sliver##29804
turnin It's All Fun and Games##12892 |goto Icecrown 44.10,24.70
accept I Have an Idea, But First...##12891 |goto Icecrown 44.10,24.70
step
kill Shadow Cultist##29717+
collect 1 Cultist Rod##41359|q 12891/1 |goto Icecrown 43.70,24.80
kill Morbid Carcass##29719+
collect 1 Abomination Hook##41361|q 12891/2 |goto Icecrown 43.70,24.80
kill Vault Geist##29720+
collect 1 Geist Rope##41362|q 12891/3 |goto Icecrown 43.70,24.80
kill Rabid Cannibal##29722+, Death Knight Master##29738+
collect 5 Scourge Essence##41363|q 12891/4 |goto Icecrown 43.70,24.80
step
talk Baron Sliver##29804
turnin I Have and Idea, But First...##12891 |goto Icecrown 44.10,24.70
accept Free Your Mind##12893 |goto Icecrown 44.10,24.70
step
kill The Leaper##29840
Use your Sovereign Rod on The Leaper's corpse |use Soveriegn Rod##41366
Turn The Leaper |q 12893/3 |goto Icecrown 43.40,19.10
step
kill Vile##29769
Use your Sovereign Rod on Vile's corpse |use Soveriegn Rod##41366
Turn Vile |q 12893/1 |goto Icecrown 44.40,27.00
step
kill Lady Nightswood##29770
Use your Sovereign Rod on Lady Nightswood's corpse |use Soveriegn Rod##41366
Turn Lady Nightswood |q 12893/2 |goto Icecrown 41.80,24.50
step
talk Baron Sliver##29804
turnin Free Your Mind##12893 |goto Icecrown 44.10,24.70
accept If He Cannot Be Turned##12897 |goto Icecrown 44.10,24.70
step
The entrance to the Shadow Vault starts here |goto Icecrown 43.70,23.60 < 5 |c |q 12897
click General's Weapon Rack##191779
|tip It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
General Lightsbane spawns
kill General Lightsbane##29851 |q 12897/1 |goto Icecrown 44.90,19.90
step
On the Orgrim's Hammer airship:
talk Koltira Deathweaver##29795
talk Thassarian##29799
turnin If He Cannot Be Turned##12897
accept The Shadow Vault##12899
step
talk Baron Sliver##29343
turnin The Shadow Vault##12899 |goto Icecrown 42.80,24.90
accept The Duke##12938 |goto Icecrown 42.80,24.90
accept Blackwatch##13106 |goto Icecrown 42.80,24.90
step
talk Initiate Brenners##30308
home The Shadow Vault |goto Icecrown 44.00,22.20
step
talk Duke Lankral##30002
turnin The Duke##12938 |goto Icecrown 44.70,20.30
accept Honor Challenge##12939 |goto Icecrown 44.70,20.30
step
talk The Leaper##30074
accept Eliminate the Competition##12955 |goto Icecrown 43.60,24.70
stickystart "mjordin"
step
Watch out for the Mjordin Combatants. They will attack you!
talk Efrem the Faithful##30081
Challenge him to a duel
Defeat Efrem the Faithful |q 12955/2 |goto Icecrown 37.90,25.10
step
talk Tinky Wickwhistle##30162
Tell her you can't afford her as a distraction
Defeat Tinky Wickwhistle |q 12955/4 |goto Icecrown 36.10,23.60
step
label "mjordin"
Use your Challenge Flag on Mjordin Combatants to challenge them |use Challenge Flag##41372
Challenge and defeat 6 Mjordin Combatants |q 12939/1 |goto Icecrown 37.50,24.60
step
talk Sigrid Iceborn##30086
Tell her you heard vrykul women cannot fight at all
Defeat Sigrid Iceborn |q 12955/1 |goto Icecrown 37.10,22.50
step
talk Onu'zun##30180
Tell him you have bad news for him
Defeat Onu'zun |q 12955/3 |goto Icecrown 37.90,22.90
step
talk Duke Lankral##30002
turnin Honor Challenge##12939 |goto Icecrown 44.70,20.30
accept Shadow Vault Decree##12943 |goto Icecrown 44.70,20.30
step
talk The Leaper##30074
turnin Eliminate the Competition##12955 |goto Icecrown 43.60,24.70
accept The Bone Witch##12999 |goto Icecrown 43.60,24.70
step
The entrance to the Ufrang's Hall starts here |goto Icecrown 38.80,24.00 < 5 |q 12943 |walk
talk Vaelen the Flayed##30056
accept Get the Key##12949 |goto Icecrown 41.00,23.90
step
Use your Shadow Vault Decree on Thane Ulfrang the Mighty |use Shadow Vault Decree##41776
kill Thane Ulfrang the Mighty##29919 |q 12943/1 |goto Icecrown 40.30,23.90
step
Leave Ufrang's Hall |goto Icecrown 38.80,24.00 < 5 |q 12949 |walk
kill Instructor Hroegar##29915
collect Key to Vaelan's Chains##41843 |q 12949/1 |goto Icecrown 36.50,23.60
step
The entrance to the Ufrang's Hall starts here |goto Icecrown 38.80,24.00 < 5 |future |q 12951 |walk
talk Vaelen the Flayed##30056
turnin Get the Key##12949 |goto Icecrown 41.00,23.90
accept Let the Baron Know##12951 |goto Icecrown 41.00,23.90
step
Leave Ufrang's Hall |goto Icecrown 38.80,24.00 < 5 |q 12951 |walk
talk Baron Sliver##29343
turnin Let the Baron Know##12951 |goto Icecrown 42.80,24.90
accept Vaelen Has Returned##13085 |goto Icecrown 42.80,24.90
step
talk Vaelen the Flayed##30218
turnin Vaelen Has Returned##13085 |goto Icecrown 43.10,21.10
step
talk Duke Lankral##30002
turnin Shadow Vault Decree##12943 |goto Icecrown 44.70,20.30
step
talk Duchess Mynx##32538
buy 1 Tabard of the Ebon Blade##43155 |goto Icecrown 43.40,20.60
step
Equip your Tabard of the Ebon Blade |equipped Tabard of the Ebon Blade##43155 |use Tabard of the Ebon Blade##43155
Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep
Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
|tip You can also run Heroic dungeons to gain repuation.
Earn Exalted status with the Knights of the Ebon Blade |complete rep('Knights of the Ebon Blade')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Knights of the Ebon Blade!
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\The Oracles",{
expansion="mists",
description="This guide will walk you through becoming exalted with the The Oracles faction.",
achieveid={951},
patch='30008',
},[[
step
#include "Oracles_Dailies"
step
label "daily"
During this next part you will fight a boss.
If you kill Zepik the Gorloc Hunter during the fight, you will be able to pick up the Oracle quest, and vice versa.
NOTE** This will decrease your Reputation with the _Frenzyheart Tribe_ to _Hated_
kill Zepik the Gorloc Hunter##28668
|confirm always
step
Enter the cave here
Follow the path inside the cave up |goto Sholazar Basin 72.20,57.30 |walk
kill Artruis the Heartless##28659 |q 12581/1 |goto Sholazar Basin 70.80,58.70
click Artruis' Phylactery##190777
|tip This will spawn after the fight
turnin A Hero's Burden##12581
talk Jaloot##28667
accept Hand of the Oracles##12689 |goto Sholazar Basin 70.80,58.70
accept Return of the Friendly Dryskin##12695 |goto Sholazar Basin 70.80,58.70
If you cannot accept this last quest click here to continue |confirm
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto Sholazar Basin 54.60,56.40
step
talk High-Oracle Soo-say##28027
accept Appeasing the Great Rain Stone##12704 |goto Sholazar Basin 54.60,56.40
Tell him you need to find Lafoo
collect Lafoo's Bug Bag##38622 |q 12704 |goto Sholazar Basin 54.60,56.40
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Cleansing Song##12735 |or |goto Sholazar Basin 53.30,56.50
accept Song of Fecundity##12737 |or |goto Sholazar Basin 53.30,56.50
accept Song of Reflection##12736 |or |goto Sholazar Basin 53.30,56.50
accept Song of Wind and Water##12726 |or |goto Sholazar Basin 53.30,56.50
step
talk Oracle Soo-dow##29149
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Mastery of the Crystals##12761 |or |goto Sholazar Basin 54.20,53.80
accept Power of the Great Ones##12762 |or |goto Sholazar Basin 54.20,53.80
accept Will of the Titans##12705 |or |goto Sholazar Basin 54.20,53.80
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575|q 12704/1 |goto Sholazar Basin 52.40,53.20
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Atha |q 12735/1 |goto Sholazar Basin 42.70,42.80
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Ha-Khalan |q 12735/2 |goto Sholazar Basin 49.40,62.70
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Koosu |q 12735/3 |goto Sholazar Basin 48.80,70.50
step
Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
Play the Song of Fecundity 8 Times |q 12737/1 |goto Sholazar Basin 26.20,37.10
step
Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Glimmering Pillar |q 12736/1 |goto Sholazar Basin 50.00,37.40
step
Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Suntouched Pillar |q 12736/4 |goto Sholazar Basin 33.60,52.30
step
Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Mosslight Pillar |q 12736/2 |goto Sholazar Basin 36.40,74.70
step
Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Skyreach Pillar |q 12736/3 |goto Sholazar Basin 53.30,79.40
step
Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
Haiphoon has 2 forms: Water and Air
|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
Devour 3 Aqueous Spirits |q 12726/1 |goto Sholazar Basin 26.20,37.10
Devour 3 Storm Revenants |q 12726/2 |goto Sholazar Basin 26.20,37.10
step
Click the Sparktouched Crystal Defenses
|tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto Sholazar Basin 33.00,75.70
collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto Sholazar Basin 33.00,75.70
collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto Sholazar Basin 33.00,75.70
step
Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
Use your crystals near Frenzyheart mobs around this area
Kill 50 Frenzyheart Attackers |q 12761/1 |goto Sholazar Basin 22.20,78.00
step
Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
collect Energized Polished Crystal##39748 |q 12762/2 |goto Sholazar Basin 65.50,60.20
step
Use your Energized Polished Crystal |use Energized Polished Crystal##39748
|tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
Kill 30 Frenzyheart Attackers |q 12762/1 |goto Sholazar Basin 22.20,78.00
step
kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
collect 1 Tainted Crystal##39266 |q 12705 |goto Sholazar Basin 22.90,76.00
step
Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
Take control of Soo-holu |invehicle |c |q 12705 |goto Sholazar Basin 33.70,75.00
step
Use Soo-holu's abilities to kill Frenzyheart mobs around this area
kill 50 Frenzyheart Attacker |q 12705/1 |goto Sholazar Basin 22.20,78.00
step
talk Lightningcaller Soo-met##28107
turnin Mastery of the Crystals##12761 |goto Sholazar Basin 33.50,74.80
turnin Power of the Great Ones##12762 |goto Sholazar Basin 33.50,74.80
turnin Will of the Titans##12705 |goto Sholazar Basin 33.50,74.80
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Cleansing Song##12735 |goto Sholazar Basin 53.30,56.50
turnin Song of Fecundity##12737 |goto Sholazar Basin 53.30,56.50
turnin Song of Reflection##12736 |goto Sholazar Basin 53.30,56.50
turnin Song of Wind and Water##12726 |goto Sholazar Basin 53.30,56.50
step
talk High-Oracle Soo-say##28027
turnin Appeasing the Great Rain Stone##12704 |goto Sholazar Basin 54.60,56.40
step
After you complete the dailies above, you will need to repeat them in order to attain Exalted.
Click here to go back to the start of the dailies guide.  Keep in mind that they will not be reset by clicking here. |confirm |next "daily"
Reach Exalted Reputation with The Oracles |c rep("The Oracles")==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\The Sons of Hodir",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Sons of Hodir faction.",
},[[
step
Proceeding to Prequests next step |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
Proceeding to Honored Dailies |next "Daily2" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered Dailies |next "Daily3" |only if rep('The Sons of Hodir')==Revered
step
talk Jeer Sparksocket##29431
turnin Luxurious Getaway!##12853 |goto The Storm Peaks,41,86.40
accept Clean Up##12818 |goto The Storm Peaks,41,86.40
step
talk Smilin' Slirk Brassknob##29904
home K3 |goto The Storm Peaks 41.10,85.90
step
talk Gretchen Fizzlespark##29473
|tip She's inside the inn.
accept They Took Our Men!##12843 |goto The Storm Peaks 41.10,86.10
accept Equipment Recovery##12844 |goto The Storm Peaks 41.10,86.10
step
talk Ricket##29428
accept Reclaimed Rations##12827 |goto The Storm Peaks 40.90,85.30
accept Expression of Gratitude##12836 |goto The Storm Peaks 40.90,85.30
step
talk Skizzle Slickslide##29721
fpath K3 |goto The Storm Peaks 40.80,84.50
stickystart "driedrations"
step
click Charred Wreckage##191535
collect 10 Charred Wreckage##40603 |q 12818/1 |goto The Storm Peaks 39.80,86.40
step
label "driedrations"
kill Savage Hill Scavenger##29404+, Savage Hill Brute##29623+
click Dried Gnoll Rations##191843
collect 16 Dried Gnoll Rations##40645|q 12827/1 |goto The Storm Peaks 35,83.80
step
kill Gnarlhide##30003|q 12836/1 |goto The Storm Peaks 30.30,85.70
step
talk Jeer Sparksocket##29431
turnin Clean Up##12818 |goto The Storm Peaks 41,86.40
accept Just Around the Corner##12819 |goto The Storm Peaks 41,86.40
step
talk Ricket##29428
turnin Reclaimed Rations##12827 |goto The Storm Peaks 40.90,85.30
turnin Expression of Gratitude##12836 |goto The Storm Peaks 40.90,85.30
accept Ample Inspiration##12828 |goto The Storm Peaks 40.90,85.30
step
click Sparksocket's Tools##191519
collect Sparksocket's Tools##40642|q 12819/1 |goto The Storm Peaks 35.10,87.80
step
talk Jeer Sparksocket##29431
turnin Just Around the Corner##12819 |goto The Storm Peaks 41,86.40
accept Slightly Unstable##12826 |goto The Storm Peaks 41,86.40
step
talk Ricket##29428
turnin Slightly Unstable##12826 |goto The Storm Peaks 40.90,85.30
accept A Delicate Touch##12820 |goto The Storm Peaks 40.90,85.30
step
Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Attackers|q 12820/1 |goto The Storm Peaks 43.10,81.20
step
talk Tore Rumblewrench##29430
accept Moving In##12829 |goto The Storm Peaks 41.70,80
accept Ore Repossession##12830 |goto The Storm Peaks 41.70,80
step
click the U.D.E.D. Dispenser##191553
Retrieve a bomb from the dispenser
collect U.D.E.D.##40686
|q 12828 |goto The Storm Peaks 41.70,80
step
Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686
|tip They walk around this area spread out.
click  Mammoth Meat##191567
collect 8 Hearty Mammoth Meat##40728|q 12828/1 |goto The Storm Peaks 43.90,79.00
step
Go into the cave |goto The Storm Peaks 40.40,77.80 < 10 |walk
talk Injured Goblin Miner##29434
accept Only Partly Forgotten##12831 |goto The Storm Peaks 41.50,74.90
stickystart "crystalweb"
step
kill Snowblind Diggers##29413 |n
collect 5 Impure Saronite Ore##40744|q 12830/1 |goto The Storm Peaks 44,75.90
step
kill Icetip Crawler##29461
collect 1 Icetip Venom Sac##40944|q 12831/1 |goto The Storm Peaks 47.10,72.30
step
label "crystalweb"
kill 12 Crystalweb Spiders |q 12829/1 |goto The Storm Peaks 44,75.90
step
talk Injured Goblin Miner##29434
turnin Only Partly Forgotten##12831 |goto The Storm Peaks 43.50,75.20
accept Bitter Departure##12832 |goto The Storm Peaks 43.50,75.20
step
talk Injured Goblin Miner##29434
Tell the miner you're ready
Escort the Injured Goblin Miner to K3 |q 12832/1 |goto The Storm Peaks 43.50,75.20
step
Fly up to [39.80,73.30]
kill Sifreldar Storm Maiden##29323+ |n
collect 5 Cold Iron Key##40641|n
click Rusty Cage##191544
Free 5 Goblin Prisoners |q 12843/1
click K3 Equipment##191568
collect 8 K3 Equipment##40726 |q 12844/1
step
talk Tore Rumblewrench##29430
turnin Moving In##12829 |goto The Storm Peaks 41.70,80
turnin Ore Repossession##12830 |goto The Storm Peaks 41.70,80
step
talk Ricket##29428
turnin A Delicate Touch##12820 |goto The Storm Peaks 40.90,85.30
turnin Ample Inspiration##12828 |goto The Storm Peaks 40.90,85.30
turnin Bitter Departure##12832 |goto The Storm Peaks 40.90,85.30
accept Cell Block Tango##12821 |goto The Storm Peaks 40.90,85.30
step
talk Gretchen Fizzlespark##29473
turnin They Took Our Men!##12843 |goto The Storm Peaks 41.10,86.10
accept Leave No Goblin Behind##12846|goto The Storm Peaks 41.10,86.10
turnin Equipment Recovery##12844 |goto The Storm Peaks 41.10,86.10
step
click Transporter Power Cell##191576
collect Transporter Power Cell##40731|q 12821/1 |goto The Storm Peaks 45.10,82.40
step
Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731
|tip It looks like a tall machine with a fan in the bottom of it.
Activate the Garm Teleporter |q 12821/2 |goto The Storm Peaks 50.70,81.90
step
talk Ricket##29428
turnin Cell Block Tango##12821 |goto The Storm Peaks 40.90,85.30
accept Know No Fear##12822 |goto The Storm Peaks 40.90,85.30
step
talk Gino##29432
accept A Flawless Plan##12823 |goto The Storm Peaks 50.00,81.80
step
Go inside the cave |goto The Storm Peaks 50.50,77.80
Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431
|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
kill Tormar Frostgut##29626 |q 12823/2 |goto The Storm Peaks 50.50,77.80
step
kill 6 Garm Watcher##29409+ |q 12822/1 |goto The Storm Peaks 48.10,81.90
kill 8 Snowblind Devotee##29407+ |q 12822/2 |goto The Storm Peaks 48.10,81.90
step
Go outside
talk Gino##29432
turnin A Flawless Plan##12823 |goto The Storm Peaks 50.00,81.80
accept Demolitionist Extraordinaire##12824 |goto The Storm Peaks 50.00,81.80
step
Fly up into the cave |goto The Storm Peaks 42.80,68.90
talk Lok'lira the Crone##29481
turnin Leave No Goblin Behind##12846
accept The Crone's Bargain##12841
step
kill Overseer Syra##29518
collect 1 Runes of the Yrkvinn##40690|q 12841/1 |goto The Storm Peaks 44.20,68.90
step
talk Lok'lira the Crone##29481
turnin The Crone's Bargain##12841 |goto The Storm Peaks 42.80,68.90
accept Mildred the Cruel##12905 |goto The Storm Peaks 42.80,68.90
step
talk Mildred the Cruel##29885
turnin Mildred the Cruel##12905 |goto The Storm Peaks 44.40,68.90
accept Discipline##12906 |goto The Storm Peaks 44.40,68.90
step
Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837
|tip They are sitting on the ground inside these side tunnels inside this mine.
Discipline 6 Exhausted Vrykul |q 12906/1 |goto The Storm Peaks 44.80,70.30
step
talk Mildred the Cruel##29885
turnin Discipline##12906 |goto The Storm Peaks 44.40,68.90
accept Examples to be Made##12907 |goto The Storm Peaks 44.40,68.90
step
kill 1 Garhal##30147 |q 12907/1 |goto The Storm Peaks 45.40,69.10
step
talk Mildred the Cruel##29885
turnin Examples to be Made##12907 |goto The Storm Peaks 44.40,68.90
accept A Certain Prisoner##12908 |goto The Storm Peaks 44.40,68.90
step
talk Lok'lira the Crone##29481
turnin A Certain Prisoner##12908 |goto The Storm Peaks 42.80,68.90
accept A Change of Scenery##12921 |goto The Storm Peaks 42.80,68.90
step
Follow the path in the mine east out to the other side
talk Lok'lira the Crone##29975
turnin A Change of Scenery##12921 |goto The Storm Peaks 47.50,69.10
accept Is That Your Goblin?##12969 |goto The Storm Peaks 47.50,69.10
step
talk Agnetta Tyrsdottar##30154
Tell her to skip the warmup
kill Agnetta Tyrsdottar##30154 |q 12969/1 |goto The Storm Peaks 48.20,69.80
step
talk Lok'lira the Crone##29975
turnin Is That Your Goblin?##12969 |goto The Storm Peaks 47.50,69.10
accept The Hyldsmeet##12970 |goto The Storm Peaks 47.50,69.10
step
talk Lok'lira the Crone##29975
Ask her about her proposal
Listen to Lok'lira's proposal |q 12970/1 |goto The Storm Peaks 47.50,69.10
step
talk Lok'lira the Crone##29975
turnin The Hyldsmeet##12970 |goto The Storm Peaks 47.50,69.10
accept Taking on All Challengers##12971 |goto The Storm Peaks 47.50,69.10
step
talk Victorious Challenger##30012
kill 6 Victorious Challenger##30012+ |q 12971/1 |goto The Storm Peaks 51,66.40
step
talk Lok'lira the Crone##29975
turnin Taking on All Challengers##12971 |goto The Storm Peaks 47.50,69.10
accept You'll Need a Bear##12972 |goto The Storm Peaks 47.50,69.10
step
talk Iva the Vengeful##29997
accept Off With Their Black Wings##12942 |goto The Storm Peaks 48.40,72.10
accept Yulda's Folly##12968 |goto The Storm Peaks 48.40,72.10
step
talk Thyra Kvinnshal##30041
accept Aberrations##12925 |goto The Storm Peaks 48.40,72.10
step
talk Brijana##29592
turnin You'll Need a Bear##12972 |goto The Storm Peaks 53.10,65.70
accept Bearly Hanging On##12851 |goto The Storm Peaks 53.10,65.70
step
clicknpc Icefang##29598
While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
Burn 7 Frostworgs |q 12851/1 |goto The Storm Peaks 53.10,65.70
Burn 15 Frost Giants |q 12851/2 |goto The Storm Peaks 53.10,65.70
step
talk Brijana##29592
turnin Bearly Hanging On##12851 |goto The Storm Peaks 53.10,65.70
accept Cold Hearted##12856 |goto The Storm Peaks 53.10,65.70
step
Fly to |goto The Storm Peaks 63.90,62.50
clicknpc Captive Proto-Drake##29708
Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard
|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village at [The Storm Peaks 59.90,61.20], the drake will eventually go on autopilot.  Repeat this process 2 more times.
Rescue 9 Brunnhildar Prisoners |q 12856/1
Free 3 Proto-Drakes |q 12856/2
step
talk Brijana##29592
turnin Cold Hearted##12856 |goto The Storm Peaks 53.10,65.70
accept Deemed Worthy##13063 |goto The Storm Peaks 53.10,65.70
step
talk Astrid Bjornrittar##29839
turnin Deemed Worthy##13063 |goto The Storm Peaks 49.70,71.80
accept Making a Harness##12900 |goto The Storm Peaks 49.70,71.80
step
kill Icemane Yeti##29875+|n
collect 3 Icemane Yeti Hide##41424|q 12900/1 |goto The Storm Peaks 47.90,74.70
step
talk Astrid Bjornrittar##29839
turnin Making a Harness##12900 |goto The Storm Peaks 49.70,71.80
accept The Last of Her Kind##12983 |goto The Storm Peaks 49.70,71.80
accept The Slithering Darkness##12989 |goto The Storm Peaks 49.70,71.80
step
kill 8 Ravenous Jormungar##29605+ |q 12989/1 |goto The Storm Peaks 55.80,63.90
|tip They are inside the cave.
step
clicknpc Injured Icemaw Matriarch##29563
The bear runs back to Brunnhildar Village
Rescue the Icemaw Matriarch |q 12983/1 |goto The Storm Peaks 54.80,60.40
step
talk Astrid Bjornrittar##29839
turnin The Last of Her Kind##12983 |goto The Storm Peaks 49.70,71.80
accept The Warm-Up##12996 |goto The Storm Peaks 49.70,71.80
turnin The Slithering Darkness##12989 |goto The Storm Peaks 49.70,71.80
step
Use your Reins of the Warbear Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
step
Use the abilities on your hotbar to fight Kirgaraak
|tip He's a big white yeti.
Defeat Kirgaraak |q 12996/1 |goto The Storm Peaks 50.80,67.70
step
Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
talk Astrid Bjornrittar##29839
turnin The Warm-Up##12996 |goto The Storm Peaks 49.70,71.80
accept Into the Pit##12997 |goto The Storm Peaks 49.70,71.80
step
Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42499
Use the abilities on your hotbar to fight Hyldsmeet Warbears
kill 6 Hyldsmeet Warbear##30174+ |q 12997/1 |goto The Storm Peaks 49.10,69.40
step
Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
talk Astrid Bjornrittar##29839
turnin Into the Pit##12997 |goto The Storm Peaks 49.70,71.80
accept Prepare for Glory##13061 |goto The Storm Peaks 49.70,71.80
step
talk Lok'lira the Crone##29975
turnin Prepare for Glory##13061 |goto The Storm Peaks 47.50,69.10
accept Lok'lira's Parting Gift##13062 |goto The Storm Peaks 47.50,69.10
step
talk Gretta the Arbiter##29796
turnin Lok'lira's Parting Gift##13062 |goto The Storm Peaks 50.90,65.60
accept The Drakkensryd##12886 |goto The Storm Peaks 50.90,65.60
step
You fly off on a drake and start flying in circles around a tower:
Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
kill Hyldsmeet Drakerider##29694+ |n
Repeat this process 9 more times
Defeat 10 Hyldsmeet Drakeriders  |q 12886/1
step
They look like light fixtures on the side of the stone columns.
Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
step
talk Thorim##29445
turnin The Drakkensryd##12886 |goto The Storm Peaks 33.40,58
accept Sibling Rivalry##13064 |goto The Storm Peaks 33.40,58
step
talk Thorim##29445
Ask him what became of Sif
Hear Thorim's History |q 13064/1 |goto The Storm Peaks 33.40,58
step
talk Thorim##29445
turnin Sibling Rivalry##13064 |goto The Storm Peaks 33.40,58
accept Mending Fences##12915 |goto The Storm Peaks 33.40,58
step
kill 12 Nascent Val'kyr##29570+ |q 12942/1 |goto The Storm Peaks 27.30,63.70
kill Valkyrion Aspirant##29569+ |n
collect 6 Vial of Frost Oil##41612|q 12925 |goto The Storm Peaks 27.30,63.70
step
Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612
|tip They look like brown spiked eggs sitting in the yellow water around this area.
Try to get 6 at a time
Destroy 30 Plagued Proto-Drake Eggs |q 12925/1 |goto The Storm Peaks 23.70,58.30
step
kill Yulda the Stormspeaker##30046 |q 12968/1 |goto The Storm Peaks 24,61.80
click Harpoon Crate##192072
accept Valkyrion Must Burn##12953 |goto The Storm Peaks 24,61.80
step
clicknpc Valkyrion Harpoon Gun##30066
Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
Start 6 Fires |q 12953/1 |goto The Storm Peaks 26,59.80
step
Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
step
talk Ricket##29428
turnin Demolitionist Extraordinaire##12824 |goto The Storm Peaks 40.90,85.30
turnin Know No Fear##12822 |goto The Storm Peaks 40.90,85.30
accept Overstock##12833 |goto The Storm Peaks 40.90,85.30
step
Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Invader |q 12833/1 |goto The Storm Peaks 43.10,81.20
step
talk Ricket##29428
turnin Overstock##12833 |goto The Storm Peaks 40.90,85.30
step
talk Thyra Kvinnshal##30041
turnin Aberrations##12925 |goto The Storm Peaks 48.40,72.10
step
talk Iva the Vengeful##29997
turnin Off With Their Black Wings##12942 |goto The Storm Peaks 48.40,72.10
turnin Yulda's Folly##12968 |goto The Storm Peaks 48.40,72.10
turnin Valkyrion Must Burn##12953 |goto The Storm Peaks 48.40,72.10
step
click Granite Boulder##191815
Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
Help the dwarves kill them
kill 5 Stormforged Iron Giant##29375+  |q 12915/2 |goto The Storm Peaks 75.80,63
collect Slag Covered Metal##41556 |q 12922 |future |n |goto The Storm Peaks 75.80,63
use Slag Covered Metal##41556
accept The Refiner's Fire##12922 |goto The Storm Peaks 75.80,63
step
kill Seething Revenant##29504+
collect 10 Furious Spark##41558|q 12922/1 |goto The Storm Peaks 75.40,63.50
step
click Granite Boulder##191815
Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505
|tip He's a huge fire giant, holding a huge smithing hammer.
Help the dwarves kill him
kill Fjorn##29503 |q 12915/1 |goto The Storm Peaks 77.20,62.90
step
click Fjorn's Anvil##192071
turnin The Refiner's Fire##12922 |goto The Storm Peaks 77.20,62.90
accept A Spark of Hope##12956 |goto The Storm Peaks 77.20,62.90
step
talk Thorim##29445
turnin A Spark of Hope##12956 |goto The Storm Peaks 33.40,58
turnin Mending Fences##12915 |goto The Storm Peaks 33.40,58
accept Forging an Alliance##12924 |goto The Storm Peaks 33.40,58
step
talk Halvdan##32571
fpath Dun Niffelem |goto The Storm Peaks 62.60,60.90
step
talk King Jokkum##30105
accept You Can't Miss Him##12966 |goto The Storm Peaks 65.40,60.20
step
talk Njormeld##30099
turnin You Can't Miss Him##12966 |goto The Storm Peaks 75.40,63.60
accept Battling the Elements##12967 |goto The Storm Peaks 75.40,63.60
step
clicknpc Snorri##30123 |invehicle |c
Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow
|tip The Snowdrifts look like piles of snow on the ground.
Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
kill 10 Seething Revenant##29504+ |q 12967/1 |goto The Storm Peaks 75.70,63.90
step
Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|outvehicle|c
step
talk Njormeld##30099
turnin Battling the Elements##12967 |goto The Storm Peaks 75.40,63.60
step
talk Njormeld##30127
turnin Forging an Alliance##12924 |goto The Storm Peaks 63.20,63.20
accept A New Beginning##13009 |goto The Storm Peaks 63.20,63.20
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto The Storm Peaks 63.20,62.90
step
talk King Jokkum##30105
accept In Memoriam##12975 |goto The Storm Peaks 65.40,60.20
step
kill Brittle Revenant##30160+ |n
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks 69.70,60.20
step
Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246
click  Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252|q 12981/1 |goto The Storm Peaks 75.30,62.80
step
click Horn Fragment##192082
collect 8 Horn Fragment##42162|q 12975/1 |goto The Storm Peaks 72.10,49.40
step
talk King Jokkum##30105
turnin In Memoriam##12975 |goto The Storm Peaks 65.40,60.20
accept A Monument to the Fallen##12976 |goto The Storm Peaks 65.40,60.20
step
talk Njormeld##30127
turnin A Monument to the Fallen##12976 |goto The Storm Peaks 63.20,63.20
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto The Storm Peaks 63.20,62.90
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto The Storm Peaks 64.10,65.10
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses|use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks 72.10,51.80
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks 72.10,51.80
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto The Storm Peaks 64.10,65.10
step
talk Njormeld##30127
accept Forging a Head##12985 |goto The Storm Peaks 63.20,63.20
step
talk King Jokkum##30105
accept Culling Jorcuttar##13011 |goto The Storm Peaks 65.40,60.20
step
Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
kill Stormforged Ambusher##30208+ |n
collect 8 Stormforged Eye##42423|q 12985/1 |goto The Storm Peaks 69.70,58.90
step
talk Njormeld##30127
turnin Forging a Head##12985 |goto The Storm Peaks 63.20,63.20
accept Placing Hodir's Helm##12987 |goto The Storm Peaks 63.20,63.20
step
Fly to the tip of this ice spike
Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
Mount Hodir's Helm |q 12987/1 |goto The Storm Peaks 64.30,59.20
step
talk Njormeld##30127
turnin Placing Hodir's Helm##12987 |goto The Storm Peaks 63.20,63.20
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks 64.20,59.20
step
kill Viscous Oil##30325+ |n
collect 5 Viscous Oil##42640|q 13006/1 |goto The Storm Peaks 55.60,63.40
Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
collect 1 Icemaw Bear Flank##42733|q 13011 |goto The Storm Peaks 55.60,63.40
step
Follow the path inside the cave to this spot
Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
kill 1 Jorcuttar##30340 |q 13011/1 |goto The Storm Peaks 54.70,60.80
step
talk Thorim##29445
turnin A New Beginning##13009 |goto The Storm Peaks 33.40,58
accept Veranus##13050 |goto The Storm Peaks 33.40,58
step
click Small Proto-Drake Egg##192536
collect 5 Small Proto-Drake Egg##42784|q 13050/1 |goto The Storm Peaks 43.70,67.40
You can find more Small Proto-Drake Eggs at [45.20,66.90] |n
step
talk Thorim##29445
turnin Veranus##13050 |goto The Storm Peaks 33.40,58
accept Territorial Trespass##13051 |goto The Storm Peaks 33.40,58
step
Stand in this big nest
Use the Stolen Proto-Dragon Eggs in your bags |use Stolen Proto-Dragon Eggs##42797
Lure Veranus |q 13051/1 |goto The Storm Peaks 38.70,65.60
step
talk Thorim##29445
turnin Territorial Trespass##13051 |goto The Storm Peaks 33.40,58
accept Krolmir, Hammer of Storms##13010 |goto The Storm Peaks 33.40,58
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto The Storm Peaks 64.20,59.20
step
talk King Jokkum##30105
turnin Culling Jorcuttar##13011 |goto The Storm Peaks 65.40,60.20
step
talk King Jokkum##30105
Ask him what has become of Krolmir
Discover Krolmir's Fate |q 13010/1 |goto The Storm Peaks 65.40,60.20
step
talk Thorim##30390
turnin Krolmir, Hammer of Storms##13010 |goto The Storm Peaks 71.40,48.80
accept The Terrace of the Makers##13057 |goto The Storm Peaks 71.40,48.80
step
talk Thorim##30295
turnin The Terrace of the Makers##13057 |goto The Storm Peaks 56.30,51.40
accept The Earthen Oath##13005 |goto The Storm Peaks 56.30,51.40
accept Loken's Lackeys##13035 |goto The Storm Peaks 56.30,51.40
stickystart "irondwarf"
step
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
kill Eisenfaust##30341 |q 13035/1 |goto The Storm Peaks 55.30,43.30
step
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
kill Halefnir the Windborn##30376 |q 13035/2 |goto The Storm Peaks 48.60,45.60
step
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
kill Duronn the Runewrought##30353 |q 13035/3 |goto The Storm Peaks 45,38.10
step
label "irondwarf"
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
Fight mobs around this area
kill 7 Iron Sentinel##29984+ |q 13005/1 |goto The Storm Peaks 57.30,46.70
kill 20 Iron Dwarf Assailant##29978+ |q 13005/2 |goto The Storm Peaks 57.30,46.70
step
talk Thorim##30295
turnin The Earthen Oath##13005 |goto The Storm Peaks 56.30,51.40
turnin Loken's Lackeys##13035 |goto The Storm Peaks 56.30,51.40
accept The Reckoning##13047 |goto The Storm Peaks 56.30,51.40
step
talk Thorim##30399
Tell him you are with him
Witness the Reckoning |q 13047/1 |goto The Storm Peaks 35.90,31.50
step
talk King Jokkum##30105
turnin The Reckoning##13047 |goto The Storm Peaks 65.40,60.20
step
talk Ricket##29428
accept When All Else Fails##13060 |goto The Storm Peaks 40.90,85.30
step
talk Ricket##29428 |goto The Storm Peaks 40.90,85.30
Tell her you are ready to head further into Storm Peaks
You will fly to Grom'arsh Crash Site |goto The Storm Peaks 36.80,49.60 |noway |c
step
talk Olut Alegut##30472
turnin When All Else Fails##13060 |goto The Storm Peaks 37.00,49.60
step
talk Boktar Bloodfury##29651
accept The Missing Bronzebeard##12895 |goto The Storm Peaks 37.30,49.70
step
talk Archaeologist Andorin##29650
accept On Brann's Trail##12854 |goto The Storm Peaks 29.50,74.10
step
talk Peon Gakra##29944
home Grom'arsh Crash-Site |goto The Storm Peaks 37.10,49.50
step
talk Blood Guard Lorga##30247
accept Emergency Measures##13000 |goto The Storm Peaks 36.50,49.10
accept The Missing Tracker##13054 |goto The Storm Peaks 36.50,49.10
step
click Disturbed Snow##191708
collect Burlap-Wrapped Note##40947 |q 12895/1 |goto The Storm Peaks 36.10,64.10
step
Enter the cave here |goto The Storm Peaks 47.00,54.90 < 10 |walk
talk Tracker Val'zij##30469
turnin The Missing Tracker##13054 |goto The Storm Peaks 48.50,54.30
accept Cave Medicine##13055 |goto The Storm Peaks 48.50,54.30
step
click Cave Mushroom##192556
collect 8 Cave Mushroom##42926 |q 13055/1 |goto The Storm Peaks 49.30,52.80
step
kill Cavedweller Worg##30164+
collect 6 Worg Fur##42510 |q 13000/1 |goto The Storm Peaks 48.50,47.50
kill Infesting Jormungar##30148+
collect Toxin Gland##42927 |q 13055/2 |goto The Storm Peaks 48.50,47.50
step
talk Tracker Val'zij##30469
turnin Cave Medicine##13055 |goto The Storm Peaks 48.50,54.30
accept There's Always Time for Revenge##13056 |goto The Storm Peaks 48.50,54.30
step
kill Gimorak##30167 |q 13056/1 |goto The Storm Peaks 48.90,46.70
step
talk Tracker Val'zij##30469
turnin There's Always Time for Revenge##13056 |goto The Storm Peaks 48.50,54.30
step
talk Boktar Bloodfury##29651
turnin The Missing Bronzebeard##12895 |goto The Storm Peaks 37.30,49.70
accept The Nose Knows##12909 |goto The Storm Peaks 37.30,49.70
step
talk Blood Guard Lorga##30247
turnin Emergency Measures##13000 |goto The Storm Peaks 36.40,49.10
step
talk Khaliisi##29855
turnin The Nose Knows##12909 |goto The Storm Peaks 40.80,51.20
accept Sniffing Out the Perpetrator##12910 |goto The Storm Peaks 40.80,51.20
step
clicknpc Frostbite##29857
Use the abilities on your hotbar to slow down the _Steamforged Pursuers_.
Ride Frostbite until you reach the end of the scent trail. |q 12910/1 |goto The Storm Peaks 40.80,51.20
step
kill Tracker Thulin##29695+ |q 12910/2 |goto The Storm Peaks 48.50,60.80
collect Brann's Communicator##40971
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Sniffing Out the Perpetrator##12910
accept Speak Orcish, Man!##12913
step
talk Moteha Windborn##29937
turnin Speak Orcish, Man!##12913 |goto The Storm Peaks 37.30,49.70
accept Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.30,49.70
step
kill Stormrider##29624+
collect 5 Voice of the Wind##41514 |q 12917/1 |goto The Storm Peaks 27.10,42.00
step
talk Moteha Windborn##29937
turnin Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.30,49.70
step
talk Boktar Bloodfury##29651
accept Catching up with Brann##12920 |goto The Storm Peaks 37.30,49.70
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
Ask him if he can understand you. |q 12920/1
step
talk Boktar Bloodfury##29651
turnin Catching up with Brann##12920 |goto The Storm Peaks 37.30,49.70
accept Pieces of the Puzzle##12926 |goto The Storm Peaks 37.30,49.70
step
kill Library Guardian##29724 |n
collect 6 Inventor's Disk Fragment##41130 |n
Click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
collect The Inventor's Disk##41132 |q 12926/1 |goto The Storm Peaks 37.60,43.50
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Pieces of the Puzzle##12926
accept Data Mining##12927
step
Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179
|tip They look like floating round star things.
Gather 7 Hidden Data |q 12927/1 |goto The Storm Peaks 38.50,44.20
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Data Mining##12927
accept The Library Console##13416
step
click Inventor's Library Console##191760
turnin The Library Console##13416 |goto The Storm Peaks 37.40,46.80
accept Norgannon's Shell##12928 |goto The Storm Peaks 37.40,46.80
step
Click the Charged Disk in your bags |use Charged Disk##44704
kill Archivist Mechaton##29775
collect Norgannon's Shell##41258 |q 12928/1 |goto The Storm Peaks 37.40,46.80
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Norgannon's Shell##12928
accept Going After the Core##13273
accept The Earthen of Ulduar##12929
step
click Prospector Soren's Maps##193560
collect Prospector Soren's Maps##43983 |q 13273/2 |goto The Storm Peaks 59.20,51.50
step
click Prospector Khrona's Notes##193561
collect Prospector Khrona's Notes##43984 |q 13273/1 |goto The Storm Peaks 59.80,52.60
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Going After the Core##13273
accept The Core's Keeper##13274
step
Enter Loken's Bargain here |goto The Storm Peaks 56.50,58.50 < 10 |walk
kill Athan##31798+
collect Norgannon's Core##41260 |q 13274/1 |goto The Storm Peaks 56.30,52.30
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin The Core's Keeper##13274
accept Forging the Keystone##13285
step
Leave Loken's Bargain here |goto The Storm Peaks 56.50,58.50 < 10 |walk
talk Brann Bronzebeard##29579
Tell him you're ready to make the keystone.
Help Brann create the keystone |q 13285/1 |goto The Storm Peaks 45.50,49.50
step
talk Boktar Bloodfury##29651
turnin Forging the Keystone##13285 |goto The Storm Peaks 37.30,49.70
step
Enter the building here |goto The Storm Peaks 30.60,36.90 < 10 |walk
talk Breck Rockbrow##29950
fpath Bouldercrag's Refuge |goto The Storm Peaks 30.60,36.30
step
talk Bouldercrag the Rockshaper##29801
turnin The Earthen of Ulduar##12929 |goto The Storm Peaks 31.40,38.00
accept Rare Earth##12930 |goto The Storm Peaks 31.40,38.00
step
kill Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
collect 5 Frostweave Cloth##33470|q 12930/2 |goto The Storm Peaks 26.30,66.70
step
click Enchanted Earth##191845
|tip They're all over the mountain's side
collect 7 Enchanted Earth##41614|q 12930/1 |goto The Storm Peaks 28.30,29.40
step
kill Scourge Banner-Bearer##31900+
kill Converted Hero##32255+
collect 5 Frostweave Cloth##33470 |q 12930/2 |goto Icecrown 46.50,49.30
step
talk Bouldercrag the Rockshaper##29801
turnin Rare Earth##12930 |goto The Storm Peaks 31.40,38.00
accept Fighting Back##12931 |goto The Storm Peaks 31.40,38.00
accept Relief for the Fallen##12937 |goto The Storm Peaks 31.40,38.00
stickystart "steamattack"
step
Use your Telluric Poultice on _Fallen Earthen Defenders_ in this area. |use Telluric Poultice##41988
Heal 8 Fallen Earthen Defenders |q 12937/1 |goto The Storm Peaks 28.30,36.80
step
label "steamattack"
kill Stormforged Reaver##29382+, Stormforged Raider##29377+
Kill 10 Steamforged Attackers |q 12931/1 |goto The Storm Peaks 28.30,37.40
step
talk Bouldercrag the Rockshaper##29801
turnin Fighting Back##12931 |goto The Storm Peaks 31.40,38.00
turnin Relief for the Fallen##12937|goto The Storm Peaks 31.40,38.00
accept Slaves of the Stormforged##12957 |goto The Storm Peaks 31.40,38.00
accept The Dark Ore##12964 |goto The Storm Peaks 31.40,38.00
step
Enter the cave here |goto The Storm Peaks 27.40,49.80 < 10 |walk
click Ore Cart##192058
collect 5 Dark Ore Sample##42109 |q 12964/1 |goto The Storm Peaks 27.20,50.30
talk Captive Mechagnome##29384
Attempt to free Captive Mechagnome |q 12957/1 |goto The Storm Peaks 27.20,50.30
step
talk Captive Mechagnome##29384
turnin Slaves of the Stormforged##12957 |goto The Storm Peaks 31.40,38.00
turnin The Dark Ore##12964 |goto The Storm Peaks 31.40,38.00
accept The Gifts of Loken##12965 |goto The Storm Peaks 31.40,38.00
stickystart "nidavelirstorm"
step
click Loken's Fury##192120
Destroy Loken's Fury |q 12965/1 |goto The Storm Peaks 24.00,42.60
step
click Loken's Power##192121
Destroy Loken's Power |q 12965/2 |goto The Storm Peaks 26.20,47.70
step
click Loken's Favor##192122
Destroy Loken's Favor |q 12965/3 |goto The Storm Peaks 24.60,48.40
step
talk Bouldercrag the Rockshaper##29801
turnin The Gifts of Loken##12965 |goto The Storm Peaks 31.40,38.00
step
talk Bruor Ironbane##30152
accept Facing the Storm##12978 |goto The Storm Peaks 31.30,38.10
step
label "nidavelirstorm"
kill Stormforged War Golem##29380+, Stormforged Magus##29374+, Stormforged Champion##29370+
Kill 10 Nidavelir Stormforged |q 12978/1 |goto The Storm Peaks 24.70,42.70
collect 1 Dark Armor Plate##42203 |n
Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
accept Armor of Darkness##12979
step
kill Stormforged War Golem##29380+
collect 4 Dark Armor Sample##42204 |q 12979/1 |goto The Storm Peaks 24.70,42.70
step
talk Bruor Ironbane##30152
turnin Facing the Storm##12978 |goto The Storm Peaks 31.30,38.10
turnin Armor of Darkness##12979 |goto The Storm Peaks 31.30,38.10
accept The Armor's Secrets##12980 |goto The Storm Peaks 31.30,38.10
step
Enter Mimir's Workshop here |goto The Storm Peaks 33.60,39.60 < 5 |walk
talk Attendant Tock##30190
Ask him to tell him more about the armor plate. |q 12980/1 |goto The Storm Peaks 32.10,40.70
step
talk Bruor Ironbane##30152
turnin The Armor's Secrets##12980 |goto The Storm Peaks 31.30,38.10
step
talk Bouldercrag the Rockshaper##29801
accept Valduran the Stormborn##12984 |goto The Storm Peaks 31.40,38.00
step
Use Bouldercrag's Warhorn in this spot |use Bouldercrag's War Horn##42419
kill Valduran the Stormborn##29368+ |q 12984/1 |goto The Storm Peaks 24.40,52.10
step
talk Bouldercrag the Rockshaper##29801
turnin Valduran the Stormborn##12984 |goto The Storm Peaks 31.40,38.00
accept Destroy the Forges!##12988 |goto The Storm Peaks 31.40,38.00
step
talk Bruor Ironbane##30152
accept Hit Them Where it Hurts##12991 |goto The Storm Peaks 31.30,38.10
stickystart "stormforgedficer"
step
Use Bouldercrag's Bomb next to the Lightning Forge here. |use Bouldercrag's Bomb##42441
Damage the North Lightning Forge |q 12988/1 |goto The Storm Peaks 29.00,45.90
step
Use Bouldercrag's Bomb next to the Lightning Forge here. |use Bouldercrag's Bomb##42441
Damage the Central Lightning Forge |q 12988/2 |goto The Storm Peaks 29.60,45.90
step
Use Bouldercrag's Bomb next to the Lightning Forge here. |use Bouldercrag's Bomb##42441
Damage the Central Lightning Forge |q 12988/3 |goto The Storm Peaks 30.20,46.10
step
label "stormforgedficer"
kill Stormforged Artificer##29376+ |q 12991/1 |goto The Storm Peaks 29.30,46.00
step
talk Bruor Ironbane##30152
turnin Hit Them Where it Hurts##12991 |goto The Storm Peaks 31.30,38.10
step
talk Bouldercrag the Rockshaper##29801
turnin Destroy the Forges!##12988 |goto The Storm Peaks 31.40,38.00
accept A Colossal Threat##12993 |goto The Storm Peaks 31.40,38.00
step
click Colossus Defense Specs##192172
collect Colossus Defense Specs##42476 |q 12993/2 |goto The Storm Peaks 29.90,45.90
step
click Colossus Attack Specs##192171
collect Colossus Attack Specs##42475 |q 12993/1 |goto The Storm Peaks 28.90,44.10
step
talk Bouldercrag the Rockshaper##29801
turnin A Colossal Threat##12993 |goto The Storm Peaks 31.40,38.00
accept The Heart of the Storm##12998 |goto The Storm Peaks 31.40,38.00
step
Enter Uldis here |goto The Storm Peaks 32.40,63.60 < 10 |walk
click The Heart of the Storm##192181
Attempt to secure the Heart of the Swarm |q 12998/1 |goto The Storm Peaks 36.10,60.90
step
talk Bouldercrag the Rockshaper##29801
turnin The Heart of the Storm##12998 |goto The Storm Peaks 31.40,38.00
accept The Iron Colossus##13007 |goto The Storm Peaks 31.40,38.00
step
Click the shining orb in front of you to take control of a _Tamed Jormungar_. |goto The Storm Peaks 27.20,35.90
|confirm
step
Use the abilities on your hotbar to kill the Iron Colossus.
kill Iron Colossus##30300+ |q 13007/1 |goto The Storm Peaks 27.30,45.70
step
talk Bouldercrag the Rockshaper##29801
turnin The Iron Colossus##13007 |goto The Storm Peaks 31.40,38.00
step
label "Daily"
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks,64.20,59.20
step
talk Lorekeeper Randvir##30252
accept Forging Hodir's Spear##13001 |goto The Storm Peaks,64.80,59.10
only if rep ('The Sons of Hodir')>=Honored
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto The Storm Peaks 63.20,62.90
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto The Storm Peaks 64.10,65.10
stickystart "vioil"
step
kill Stoic Mammoth##30260+
collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto The Storm Peaks 59.00,61.20
only if rep ('The Sons of Hodir')>=Honored
step
label "vioil"
kill Viscous Oil##30325+
collect 5 Viscous Oil##42640 |q 13006/1 |goto The Storm Peaks 55.60,63.40
step
The entrance to the cave starts here |goto The Storm Peaks 55.90,64.20 < 10 |c
only if rep ('The Sons of Hodir')>=Honored
step
click Everfrost Shard##192191
collect 3 Everfrost Shard##42541 |q 13001/1 |goto The Storm Peaks 54.70,60.80
only if rep ('The Sons of Hodir')>=Honored
step
Leave the cave |goto The Storm Peaks 55.90,64.20 < 10 |c
only if rep ('The Sons of Hodir')>=Honored
step
talk Lorekeeper Randvir##30252
turnin Forging Hodir's Spear##13001 |goto The Storm Peaks 64.80,59.10
|tip This quest will unlock the How to Slay Your Dragon daily quest.
only if rep ('The Sons of Hodir')>=Honored
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto The Storm Peaks 64.20,59.20
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks 69.70,60.20
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
click Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks 75.30,62.80
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks 72.10,51.80
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks 72.10,51.80
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+ |goto The Storm Peaks 67.00,45.10
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+|n |goto The Storm Peaks 67.00,45.10
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto The Storm Peaks 63.20,62.90
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto The Storm Peaks 64.10,65.10
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto The Storm Peaks 66.20,61.40
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
Click here to reset the daily quests. |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
Become honored with The Sons of Hodir |complete rep('The Sons of Hodir')>=Honored |next "Daily2"
step
label "Daily2"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks,63.50,59.80
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks 64.20,59.20
step
click Hodir's Spear##192079
accept How to Slay Your Dragon##13003 |goto The Storm Peaks 65.10,60.80
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto The Storm Peaks 63.20,62.90
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto The Storm Peaks 64.10,65.10
stickystart "vioil2"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto The Storm Peaks 57.20,64.00
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto The Storm Peaks 56.60,64.30
step
label "vioil2"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto The Storm Peaks 55.60,63.40
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto The Storm Peaks 63.50,59.80
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto The Storm Peaks 64.20,59.20
step
click Hodir's Spear##192079
turnin How to Slay Your Dragon##13003 |goto The Storm Peaks 65.10,60.80
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks 69.70,60.20
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks 75.30,62.80
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks 72.10,51.80
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks 72.10,51.80
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+ |goto The Storm Peaks 67.00,45.10
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+|n |goto The Storm Peaks 67.00,45.10
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto The Storm Peaks 63.20,62.90
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto The Storm Peaks 64.10,65.10
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto The Storm Peaks 66.20,61.40
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
In order to repeat these daily quests, click here to reset the daillies. |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
Become Revered with The Sons of Hodir |complete rep('The Sons of Hodir')>=Revered |next "Daily3"
step
label "Daily3"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks,63.50,59.80
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks 64.20,59.20
step
click Hodir's Spear##192079
accept How to Slay Your Dragon##13003 |goto The Storm Peaks 65.10,60.80
step
click Arngrim the Insatiable##192524
accept Feeding Arngrim##13046 |goto The Storm Peaks 67.60,59.90
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto The Storm Peaks 63.20,62.90
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto The Storm Peaks 64.10,65.10
stickystart "vioil3"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto The Storm Peaks 57.20,64.00
step
Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
Feed Arngrim's Spirit 5 Times |q 13046/1 |goto The Storm Peaks 56.40,65.00
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto The Storm Peaks 56.60,64.30
step
label "vioil3"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto The Storm Peaks 55.60,63.40
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto The Storm Peaks 63.50,59.80
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto The Storm Peaks 64.20,59.20
step
click Hodir's Spear##192079
turnin How to Slay Your Dragon##13003 |goto The Storm Peaks 65.10,60.80
step
click Arngrim the Insatiable##192524
turnin Feeding Arngrim##13046 |goto The Storm Peaks 67.60,59.90
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto The Storm Peaks 69.70,60.20
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto The Storm Peaks 75.30,62.80
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto The Storm Peaks 72.10,51.80
Free 5 Restless Frostborn |q 12977/2 |goto The Storm Peaks 72.10,51.80
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+ |goto The Storm Peaks 67.00,45.10
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+ |n |goto The Storm Peaks 67.00,45.10
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto The Storm Peaks 63.20,62.90
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto The Storm Peaks 64.10,65.10
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto The Storm Peaks 66.20,61.40
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
To restart the Hodir daily quests, click here. |confirm |next "Daily3" |only if rep('The Sons of Hodir')<=Revered
Become Exalted with The Sons of Hodir |complete rep('The Sons of Hodir')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Wrath of the Lich King Reputations\\The Wyrmrest Accord",{
expansion="mists",
description="This guide will walk you through becoming exalted with The Wyrmrest Accord faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Wyrmrest Accord') < Exalted end,
achieveid={1007},
patch='30008',
},[[
step
Routing to proper section. |next |only if rep("The Wyrmrest Accord") < Friendly
Routing to proper section. |next "Tabard" |only if rep("The Wyrmrest Accord") >= Friendly
step
talk Raelorasz##26117
accept Basic Training##11918 |goto Borean Tundra,33.30,34.50
stickystart "coldspell"
step
kill Coldarra Spellbinder##25719+
collect 1 Scintillating Fragment##35648|n |goto Borean Tundra 32.70,29
Click the Scintillating Fragment in your bags|use Scintillating Fragment##35648
accept Puzzling...##11941 |goto Borean Tundra 32.70,29
step
label "coldspell"
kill 10 Coldarra Spellweaver##25722+ |q 11918/1 |goto Borean Tundra,24.30,34.10
|tip You can find them all around Coldarra.
step
talk Raelorasz##26117
turnin Basic Training##11918 |goto Borean Tundra 33.30,34.50
accept Hatching a Plan##11936 |goto Borean Tundra 33.30,34.50
turnin Puzzling...##11941 |goto Borean Tundra 33.30,34.50
accept The Cell##11943 |goto Borean Tundra 33.30,34.50
step
kill Coldarra Wyrmkin##25728+
collect 5 Frozen Axe##35586 |goto Borean Tundra 24.10,29.60
step
kill Warbringer Goredrak##25712
collect Energy Core##35669|q 11943/1 |goto Borean Tundra 24.10,29.60
step
kill General Cerulean##25716
collect Prison Casing##35668|q 11943/2 |goto Borean Tundra 27.30,20.50
step
click Blue Dragon Egg##188133
Destroy 5 Dragon Eggs |q 11936/1 |goto Borean Tundra 27.80,24.20
step
talk Raelorasz##26117
turnin Hatching a Plan##11936 |goto Borean Tundra 33.30,34.50
accept Drake Hunt##11919 |goto Borean Tundra 33.30,34.50
turnin The Cell##11943 |goto Borean Tundra 33.30,34.50
step
Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506
|tip They are flying above you in the sky.
Do not kill it, let it hit you until it becomes friendly |havebuff Drake Hatchling Subdued##46691 |c |q 11919 |goto Borean Tundra 24.60,27.10 |n
step
Capture the Nexus Drake |q 11919/1 |goto Borean Tundra 33.30,34.50
talk Raelorasz##26117
turnin Drake Hunt##11919 |goto Borean Tundra 33.30,34.50
accept Cracking the Code##11931 |goto Borean Tundra 33.30,34.50
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26237
accept Keristrasza##11946
turnin Keristrasza##11946
accept Bait and Switch##11951
stickystart "crystalmana"
step
kill Coldarra Spellbinder##25719+
collect 3 Shimmering Rune##35629|q 11931/1 |goto Borean Tundra 32.70,29
step
kill Inquisitor Caleras##25720
collect Azure Codex##35628|q 11931/2 |goto Borean Tundra 32.70,27.80
step
label "crystalmana"
click Crystallized Mana##188140
collect 10 Crystallized Mana Shard##35685|q 11951/1 |goto Borean Tundra 28.80,30.00
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26237
turnin Bait and Switch##11951
accept Saragosa's End##11957
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26206
Tell her you are ready to face Saragosa|goto Borean Tundra 21.20,22.50 < 5 |noway |c |q 11957
step
She teleports you to a platform
Use the Arcane Power Focus in your bags|use Arcane Power Focus##35690
kill Saragosa##26231
collect Saragosa's Corpse##35709|q 11957/1
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26206
turnin Saragosa's End##11957
accept Mustering the Reds##11967
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26206
Tell her to return you to Transitus Shield|goto Borean Tundra 33.30,34.40 < 5 |noway |c |q 11967
step
talk Raelorasz##26117
turnin Cracking the Code##11931 |goto Borean Tundra 33.30,34.50
turnin Mustering the Reds##11967 |goto Borean Tundra 33.30,34.50
accept Springing the Trap##11969 |goto Borean Tundra 33.30,34.50
step
Use Raelorasz' Spark next to the Signal Fire |use Raelorasz' Spark##44950
Watch the cutscene
Lure Malygos |q 11969/1 |goto Borean Tundra 25.40,21.70
step
talk Raelorasz##26117
turnin Springing the Trap##11969 |goto Borean Tundra 33.30,34.50
step
talk Warmage Kaitlyn##55531
accept Prisoner of War##11973 |goto The Nexus,36.20,81.40
step
kill Keristrasza##26206 |q 11973/1
|tip She's at the center of the Nexus.  You won't be able to activated her until you kill the other bosses of The Nexus.
step
talk Warmage Kaitlyn##55531
turnin Prisoner of War##11973 |goto The Nexus 36.20,81.40
step
accept The Struggle Persists##13124 |goto The Oculus 64.00,39.20
|tip This quest should automatically appear and be accepted after entering The Oculus.
step
Fight the mobs up until this point, and click the Nexus Portal. |goto The Oculus 38.60,51.30
Click here to continue. |confirm
step
kill Drakos the Interrogator##27654 |n
talk Belgaristrasz##27658
|tip You will only be able to talk to him after Drakos is dead.
turnin The Struggle Persists##13124
accept A Unified Front##13126
step
Take to either Eternos, Belgaristrasz or Verdisa and get a Dragon Essence.
|tip You will only be able to get one type of Dragon Essence.
Click the Ruby Essence in your bags. |use Ruby Essence##37860
Click the Emerald Essence in your bags. |use Emerald Essence##37815
Click the Amber Essence in your bags. |use Amber Essence##37859
Click here to proceed. |confirm |q 13126
step
You will need to kill 10 Constructs to proceed.
You can find them on the platforms above you.
You also need to kill constructs at the center ring.
Once you've killed all constructs, click here to continue. |confirm |q 13127
step
kill Varos Cloudstrider##27447 |q 13126/2
Once you kill him Belgaristrasz appears.
talk Image of Belgaristrasz##28012
turnin A Unified Front##13126
accept Mage-Lord Urom##13127
step
Click the Ruby Essence in your bags. |use Ruby Essence##37860
Click the Emerald Essence in your bags. |use Emerald Essence##37815
Click the Amber Essence in your bags. |use Amber Essence##37859
Fly up another level to the ring above. Click here to proceed. |confirm |q 13127
step
Kill Mage-Lord Urom on all 3 platforms.
Once you kill the Fake Mage-Lord Urom, fly to the center.
kill Mage-Lord Urom##27655 |q 13127/1
step
talk Image of Belgaristrasz##28012
turnin Mage-Lord Urom##13127
accept A Wing and a Prayer##13128
step
Click the Ruby Essence in your bags. |use Ruby Essence##37860
Click the Emerald Essence in your bags. |use Emerald Essence##37815
Click the Amber Essence in your bags. |use Amber Essence##37859
Fly up to the top of the construct. Once there, click here to continue. |confirm |q 13128
step
Once at the top, use your dragons abilities to kill Ley-Guardian Eregos.
kill Ley-Guardian Eregos##27656 |q 13128/1
step
talk Raelorasz##26117
turnin A Wing and a Prayer##13128 |goto Borean Tundra,33.30,34.50
step
talk Librarian Serrah##26110
accept Corastrasza##13412 |goto Borean Tundra,33.50,34.40
step
|tip You will have to fly up pretty high to the floating platforms.
talk Corastrasza##32548
turnin Corastrasza##13412 |goto Borean Tundra 29.50,24.80
accept Aces High!##13413 |goto Borean Tundra 29.50,24.80
step
Tell Corastrasza you have the courage to face Malygos drakes
She will give you a Wyrmrest Skytalon to ride
Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
Target a Scalesworn Elite flying above Corastrasza.
To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
kill 5 Scalesworn Elite##32534 |q 13413/1
step
Click the red arrow on your action bar to get off the Wyrmrest Skytalon|script VehicleExit()|outvehicle|c |q 13413 |goto Borean Tundra 29.50,24.80|n
step
talk Corastrasza##32548
turnin Aces High!##13413 |goto Borean Tundra 29.50,24.80
step
Once you do this, you will be able to do the Daily version of Aces High.
|confirm |q 11999
step
talk Image of Archmage Aethas Sunreaver##26471
accept Rifle the Bodies##11999 |goto Dragonblight,38.10,46.20
step
Go outside the cave and southwest |goto Dragonblight 22.30,54.10 < 5 |walk
Loot the Dead Mage Hunters around the area.
collect Mage Hunter Personal Effects##35792 |q 11999
Open the Mage Hunter Personal Effects bags |use Mage Hunter Personal Effects##35792
collect Moonrest Gardens Plans##35783|q 11999/1
step
talk Image of Archmage Aethas Sunreaver##26471
turnin Rifle the Bodies##11999 |goto Dragonblight 38.10,46.20
step
Go inside the building |goto Dragonblight 19.40,58.10 < 5 |walk
kill Goramosh##26349
collect Goramosh's Strange Device##36746 |q 12059
Use Goramosh's Strange Device|use Goramosh's Strange Device##36746
accept A Strange Device##12059
step
talk Image of Archmage Aethas Sunreaver##26471
turnin A Strange Device##12059 |goto Dragonblight 38.10,46.20
accept Projections and Plans##12061 |goto Dragonblight 38.10,46.20
step
Use your Surge Needle Teleporter anywhere inside Moonrest Gardens|use Surge Needle Teleporter##36747
Move toward the center of the platform you get teleported onto
Observe the Object on the Surge Needle |q 12061/1 |goto Dragonblight 22.20,54.80
step
Use your Surge Needle Teleporter to go back down to the ground |goto Dragonblight 22.60,57.00 < 5 |use Surge Needle Teleporter##36747|noway|c |q 12061
talk Image of Archmage Aethas Sunreaver##26471
turnin Projections and Plans##12061 |goto Dragonblight 38.10,46.20
accept The Focus on the Beach##12066 |goto Dragonblight 38.10,46.20
step
kill Captain Emmy Malin##26762
collect Ley Line Focus Control Ring##36751 |q 12066 |goto Dragonblight 26.40,65
Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751
|tip It's a big half-circle purple glowing thing.
Retrieve ley line focus information |q 12066/1 |goto Dragonblight 26.40,65
step
talk Image of Archmage Aethas Sunreaver##26471
turnin The Focus on the Beach##12066 |goto Dragonblight 38.10,46.20
accept Atop the Woodlands##12084 |goto Dragonblight 38.10,46.20
step
Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779
|tip It's a big half-circle purple glowing thing.
Retrieve Ley Line Focus information |q 12084/1 |goto Dragonblight 32.20,71.20
step
talk Image of Archmage Aethas Sunreaver##26471
turnin Atop the Woodlands##12084 |goto Dragonblight 38.10,46.20
accept Search Indu'le Village##12106 |goto Dragonblight 38.10,46.20
step
clicknpc Mage-Commander Evenstar##26873
|tip It's a body floating underwater.
turnin Search Indu'le Village##12106 |goto Dragonblight 40.30,66.90
accept The End of the Line##12110 |goto Dragonblight 40.30,66.90
step
Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815
|tip It's a big half-circle purple glowing thing underwater.
Retrieve Ley Line Focus information |q 12110/1 |goto Dragonblight 39.80,66.90
step
Go to this spot on the cliff to Observe Azure Dragonshrine |q 12110/2 |goto Dragonblight 53,66.40
talk Image of Archmage Aethas Sunreaver##26471
turnin The End of the Line##12110 |goto Dragonblight 38.10,46.20
accept Gaining an Audience##12122 |goto Dragonblight 38.10,46.20
step
talk Tariolstrasz##26443
turnin Gaining an Audience##12122 |goto Dragonblight 57.90,54.20
accept Speak with your Ambassador##12767 |goto Dragonblight 57.90,54.20
step
talk Golluck Rockfist##27804
turnin Speak with your Ambassador##12767 |goto Dragonblight 58,55.40
accept Report to the Ruby Dragonshrine##12461 |goto Dragonblight 58,55.40
step
talk Vargastrasz##27763
turnin Report to the Ruby Dragonshrine##12461 |goto Dragonblight 43,50.90
accept Heated Battle##12448 |goto Dragonblight 43,50.90
step
Help kill the following:
kill Frigid Ghoul Attacker##27685 |q 12416/1 |goto Dragonblight 52.70,46.20
kill 8 Frigid Geist Attacker##27686 |q 12416/2 |goto Dragonblight 52.70,46.20
kill 1 Frigid Abomination Attacker##27531 |q 12416/3 |goto Dragonblight 52.70,46.20
You can find more of these at [50.90,52.40]
step
Go up the hill
talk Vargastrasz##27763
turnin Heated Battle##12448 |goto Dragonblight 43,50.90
accept Return to the Earth##12449 |goto Dragonblight 43,50.90
step
click Ruby Acorn##189992
collect Ruby Acorns##37727 |q 12449 |goto Dragonblight 46.70,52.80
Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727
|tip The Ruby Keepers look like huge red dragons on fire.
Return 6 Ruby Keepers to the Earth |q 12449/1 |goto Dragonblight 46.70,52.80
step
talk Vargastrasz##27763
turnin Return to the Earth##12449 |goto Dragonblight 43,50.90
accept Through Fields of Flame##12450 |goto Dragonblight 43,50.90
stickystart "frigidnecro"
step
Go inside the tree trunk
kill Dahlia Suntouch##27680
Cleanse the Ruby Corruption |q 12450/2 |goto Dragonblight 47.70,49.10
step
label "frigidnecro"
kill 6 Frigid Necromancer##27539+ |q 12450/1 |goto Dragonblight 48.20,47.80
step
Go out of the valley
talk Vargastrasz##27763
turnin Through Fields of Flame##12450 |goto Dragonblight 43.00,50.90
accept The Steward of Wyrmrest Temple##12769 |goto Dragonblight 43.00,50.90
step
talk Tariolstrasz##26443
turnin The Steward of Wyrmrest Temple##12769 |goto Dragonblight 57.90,54.20
accept Informing the Queen##12124 |goto Dragonblight 57.90,54.20
step
talk Tariolstrasz##26443 |goto Dragonblight 57.90,54.20
Tell him you want to go to the top of the temple |goto Dragonblight 59.70,53.10 < 5 |noway |c |q 12124
step
talk Alexstrasza the Life-Binder##26917
turnin Informing the Queen##12124 |goto Dragonblight 59.80,54.70
accept Report to Lord Devrestrasz##12435 |goto Dragonblight 59.80,54.70
step
talk Lord Devrestrasz##27575
turnin Report to Lord Devrestrasz##12435 |goto Dragonblight 59.20,54.30
accept Defending Wyrmrest Temple##12372 |goto Dragonblight 59.20,54.30
step
talk Wyrmrest Defender##27629
Tell him you are ready to get into the fight
Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
kill 3 Azure Dragon##27608+ |q 12372/1 |goto Dragonblight 58.30,55.20
kill 5 Azure Drake##27682+ |q 12372/2 |goto Dragonblight 58.30,55.20
step
Fly southwest |goto Dragonblight 55.10,66.40
Fly into the huge purple swirling column
Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
Destabilize the Azure Dragonshrine |q 12372/3
step
talk Lord Devrestrasz##27575
turnin Defending Wyrmrest Temple##12372 |goto Dragonblight 59.20,54.30
step
kill Icefist##27004
collect Emblazoned Battle Horn##36856 |q 12147 |goto Dragonblight 42.60,40.80
Click the Emblazoned Battle Horn in your bags |use Emblazoned Battle Horn##36856
accept Disturbing Implications##12147 |goto Dragonblight 42.60,40.80
step
talk Aurastrasza##26983
turnin Disturbing Implications##12147 |goto Dragonblight 60,55.20
accept One of a Kind##12148 |goto Dragonblight 60,55.20
step
kill Bonesunder##27006
collect Emblazoned Battle Horn##26854 |q 12147/1 |goto Dragonblight 50.00,60.00
step
talk Aurastrasza##26983
turnin One of a Kind##12148 |goto Dragonblight 60,55.20
accept Mighty Magnataur##12149 |goto Dragonblight 60,55.20
step
He patrols around this area. Search along the canyon until you find him.
kill Bloodfeast##27008 |q 12149/2 |goto Dragonblight 66.30,70.50
step
kill Iceshatter##27007 |q 12149/1 |goto Dragonblight 68.40,50.50
step
kill Drakegore##27009 |q 12149/3 |goto Dragonblight 68.00,37.70
step
talk Aurastrasza##26983
turnin Mighty Magnataur##12149 |goto Dragonblight 60,55.20
accept Reclusive Runemaster##12150 |goto Dragonblight 60,55.20
step
Fight with Dregmar Runebrand until he reveals the name of the Magnataur Warlord.
Name of the Magnataur Warlord revealed. |q 12150/1 |goto Dragonblight 72.80,49.90
step
talk Aurastrasza##26983
turnin Reclusive Runemaster##12150 |goto Dragonblight 60,55.20
accept Wanton Warlord##12151 |goto Dragonblight 60,55.20
step
Use the Emblazoned Battle Horn at this location. |use Emblazoned Battle Horn##36864
kill Grom'thar the Thunderbringer##27002
collect Grom'thar's Head##36853 |q 12151/1 |goto Dragonblight,57.10,76.20
step
talk Aurastrasza##26983
turnin Wanton Warlord##12151 |goto Dragonblight 60,55.20
step
talk Chromie##27856
accept Mystery of the Infinite##12470 |goto Dragonblight 60,54.50
step
talk Nalice##27765
accept The Obsidian Dragonshrine##12447 |goto Dragonblight 60.10,54.20
step
Use your Hourglass of Eternity anywhere around this area|use Hourglass of Eternity##37923
Fight the mobs that spawn
Protect the Hourglass of Eternity |q 12470/1 |goto Dragonblight 71.70,38.90
step
Go inside the cave
talk Serinar##26593
turnin The Obsidian Dragonshrine##12447 |goto Dragonblight 35.20,30.00
accept No One to Save You##12262 |goto Dragonblight 35.20,30.00
accept No Place to Run##12261 |goto Dragonblight 35.20,30.00
step
Go outside the cave
kill 6 Burning Depths Necrolyte##27356+ |q 12262/1 |goto Dragonblight 37.90,32.00 < 5
kill 10 Smoldering Skeleton##27360+ |q 12262/2 |goto Dragonblight 37.90,32.00 < 5
step
Use your Destructive Wards in this spot|use Destructive Wards##37445
Defend the Destructive Ward from the mobs that spawn
Fully Charge the Destructive Ward |q 12261/1 |goto Dragonblight 42.10,32
step
Go west into the cave |goto Dragonblight 35.20,30.00 < 5 |walk
talk Serinar##26593
turnin No One to Save You##12262 |goto Dragonblight 35.20,30.00 < 5
turnin No Place to Run##12261 |goto Dragonblight 35.20,30.00 < 5
accept The Best of Intentions##12263 |goto Dragonblight 35.20,30.00 < 5
step
Follow the path in the cave while disguised as a cultist |goto Dragonblight 31.80,30.50
Uncover the Magmawyrm Resurrection Chamber |q 12263/1
step
Follow the path back down
talk Serinar##26593
turnin The Best of Intentions##12263 |goto Dragonblight 35.20,30.00
accept Culling the Damned##12264 |goto Dragonblight 35.20,30.00
accept Defiling the Defilers##12265 |goto Dragonblight 35.20,30.00
step
Follow the path in the cave |goto Dragonblight 34.20,26.80 < 5 |walk
kill 3 Burning Depths Necromancer##27358+ |q 12264/1 |goto Dragonblight 34.20,26.80 < 5
kill 6 Smoldering Construct##27362+ |q 12264/2 |goto Dragonblight 34.20,26.80 < 5
kill 6 Smoldering Geist##27363+ |q 12264/3 |goto Dragonblight 34.20,26.80 < 5
click Necromantic Runes on the ground
|tip The Necromantic Runes look like round purple symbols on the ground around this area in the cave.
Destroy 8 Necromantic Runes |q 12265/1 |goto Dragonblight 34.20,26.80 < 5
step
Go back down in the cave
talk Serinar##26593
turnin Culling the Damned##12264 |goto Dragonblight 35.20,30.00 < 5
turnin Defiling the Defilers##12265 |goto Dragonblight 35.20,30.00 < 5
accept Neltharion's Flame##12267 |goto Dragonblight 35.20,30.00 < 5
step
Follow the path in the cave
Use Neltharion's Flame to Cleanse the Summoning Area|use Neltharion's Flame##37539
|tip Stand on the edge of the rock, next to the lava.
kill Rothin the Decaying##27355 |q 12267/2 |goto Dragonblight 31.60,31.20 < 5
step
Go back down in the cave
talk Serinar##26593
turnin Neltharion's Flame##12267 |goto Dragonblight 35.20,30.00
accept Tales of Destruction##12266 |goto Dragonblight 35.20,30.00
step
talk Tariolstrasz##26443 |goto Dragonblight 57.90,54.20
Tell him you want to go to the top of the temple |goto Dragonblight 59.70,53.10 < 5 |noway |c |q 12266
step
talk Nalice##27765
turnin Tales of Destruction##12266 |goto Dragonblight 60.10,54.20
step
talk Chromie##27856
turnin Mystery of the Infinite##12470 |goto Dragonblight 60,54.50
step
talk Lord Itharius##27785
accept Seeds of the Lashers##12458 |goto Dragonblight 59.60,54.40
step
kill Emerald Lasher##27254+
collect 3 Lasher Seed##140458|q 12458/1 |goto Dragonblight 63.30,71
step
talk Nishera the Garden Keeper##27255
accept Cycle of Life##12454 |goto Dragonblight 63.70,71.90
step
kill 5 Emerald Skytalon##27244+ |q 12454/1 |goto Dragonblight 63.80,72.40
|tip They fly around over your head around the lake.
step
talk Nishera the Garden Keeper##27255
turnin Cycle of Life##12454 |goto Dragonblight 63.70,71.90
accept The Plume of Alystros##12456 |goto Dragonblight 63.70,71.90
step
Use Skytalon Molts at this spot. |use Skytalon Molts##37881
kill Alystros the Verdant Keeper##27249
collect The Plume of Alystros##37880 |q 12456/1 |goto Dragonblight,64.60,77.20
step
talk Nishera the Garden Keeper##27255
turnin The Plume of Alystros##12456 |goto Dragonblight 63.70,71.90
step
talk Lord Itharius##27785
turnin Seeds of the Lashers##12458 |goto Dragonblight 59.60,54.40
accept That Which Creates Can Also Destroy##12459 |goto Dragonblight 59.60,54.40
step
talk Torastrasza##26949 |goto Dragonblight 59.50,53.30
Tell him you want to go to the ground level of the temple |goto Dragonblight 58.00,55.20 < 5 |q 12459
confirm
step
Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it|use Seeds of Nature's Wrath##37887
|tip They fly around in the sky.
kill Weakened Reanimated Frost Wyrm##27821 |q 12459/1 |goto Dragonblight 55.20,45.70
step
Use your Seeds of Nature's Wrath on a Turgid the Vile to weaken him|use Seeds of Nature's Wrath##37887
|tip He's an abomination standing in a small room inside this abandoned fort.
kill Weakened Turgid the Vile##27809 |q 12459/2 |goto Dragonblight 86.20,47
step
Use your Seeds of Nature's Wrath on Overseer Deathgaze to weaken him|use Seeds of Nature's Wrath##37887
|tip He's standing on an undead looking platform.
kill Weakened Overseer Deathgaze##27807 |q 12459/3 |goto Dragonblight 89.50,19.10
step
talk Lord Itharius##27785
turnin That Which Creates Can Also Destroy##12459 |goto Dragonblight 59.60,54.40
step
kill Dahlia Suntouch##27680
collect Ruby Brooch##37833|n
Use the Ruby Brooch in your bags|use Ruby Brooch##37833
accept The Fate of the Ruby Dragonshrine##12419 |goto Dragonblight 47.70,49.10
click Ruby Lilac##188489
collect Ruby Lilac##36803 |q 12102/1 |goto Dragonblight 47.70,49.10
step
talk Krasus##27990
turnin The Fate of the Ruby Dragonshrine##12419 |goto Dragonblight 59.80,54.70
step
At this point, you will need to buy the tabard from the vendor in Dragonblight.
Click here to proceed. |confirm
step
label "Tabard"
talk Cielstrasza##32533
|tip She is at the top of the Temple.
buy Tabard of the Wyrmrest Accord##43156 |goto Dragonblight,59.90,53.00
step
Once you've bought the Tabard, you will have to run instances from Wrath of the Lich King in order to gain rep.
Wear the Tabard of the Wyrmrest Accord in order to earn reputation while you clear the instance
Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
Become Exalted with The Wyrmrest Accord |complete rep('The Wyrmrest Accord')==Exalted |next "exalted"
step
label "exalted"
Congratulation, you are now exalted with The Wyrmrest Accord!
]])
QuestCore:RegisterGuide("Reputation Guides\\Cataclysm Reputations\\Avengers of Hyjal",{
expansion="mists",
cataready=true,
description="This guide will walk you through becoming exalted with the Avengers of Hyjal faction.",
condition_suggested=function() return level >= 80 and level <= 85 and rep('Avengers of Hyjal') < Exalted end,
achieveid={5827},
patch='40200',
},[[
step
_Inside the Firelands Raid:_
Kill enemies around this area
|tip A full run will grant roughly 2400 reputation.
|tip This will only work until you reach Honored, after that only bosses and larger mobs will grant reputation.
Earn Exalted status with the Avengers of Hyjal |complete rep('Avengers of Hyjal')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Cataclysm Reputations\\The Earthen Ring",{
expansion="mists",
cataready=true,
description="This guide will walk you through becoming exalted with The Earthen Ring faction.",
condition_suggested=function() return level >= 80 and level <= 85 and rep('The Earthen Ring') < Exalted end,
achieveid={4881},
patch='40003',
},[[
step
talk Provisioner Arok##50324
buy Tabard of the Earthen Ring##65905 |n
Equip The Earthen Ring Tabard |equipped Tabard of the Earthen Ring##65905 |goto Shimmering Expanse 49.10,42.20 |n
step
_Inside the Deepholm or Vashj'ir Dungeons:_
Kill enemies around this area
|tip Make sure you are wearing the tabard for reputation.
Earn Exalted reputation with The Earthen Ring |complete rep('The Earthen Ring')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Cataclysm Reputations\\Ramkahen",{
expansion="mists",
cataready=true,
description="This guide will walk you through becoming exalted with the Ramkahen faction.",
condition_suggested=function() return level >= 80 and level <= 85 and rep('Ramkahen') < Exalted end,
achieveid={4884},
patch='40003',
},[[
step
Complete the Uldum Leveling Guide |q 28633 |future
|tip Refer to the Uldum (83-84) to accomplish this.
Click here to Load the "Uldum (83-84)" Leveling Guide |confirm |next "Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)"
|tip After completing the leveling guide, you will need to run dailies and dungeons to build up reputation with Ramkahen.
Click Here for the Daily Section |confirm |next "Dailies" |only if completedq(28633)
Click Here to Run Dungeons for Reputation |confirm |next "Dungeon"
step
label "Reset"
Wait for Dailies to Reset
|tip There are only two daily quests to complete for this faction.
'|complete not completedq(28250,28736)
step
label "Dailies"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum/0 60.30,38.30
step
use the Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash #30# Thieving Pluckers |q 28250/1 |goto Uldum/0 59.10,38.40
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto Uldum/0 60.30,38.30
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum/0 41.40,5.50
step
clicknpc Confiscated Artillery##48644
|tip It looks like a war catapult car machine.
|tip Use the Designate Target ability on your hotbar on the Infantrymen.
Slay #100# Infantrymen |q 28736/1 |goto Uldum/0 41.40,5.50
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto Uldum/0 41.40,5.50
step
Click Here to Return to the Daily Section |confirm |next "Reset"
Click Here if You Plan to Run Dungeons |confirm
step
label "Dungeon"
talk Blacksmith Abasi##48617
buy 1 Tabard of Ramkahen##65904 |n
Equip your Ramkahen Tabard |equipped Tabard of Ramkahen##65904 |goto Uldum 54.00,33.20
step
Run Dungeons While Wearing the Ramkahen Tabard
Earn Exalted reputation with Ramkahen|complete rep('Ramkahen')==Exalted
Click Here to Return to Dailies |confirm |next "Reset"
]])
QuestCore:RegisterGuide("Reputation Guides\\Cataclysm Reputations\\Dragonmaw Clan",{
expansion="mists",
cataready=true,
description="This guide will walk you through becoming exalted with the Dragonmaw Clan faction.",
condition_suggested=function() return level >= 80 and level <= 85 and rep('Dragonmaw Clan') < Exalted end,
achieveid={4886},
patch='40003',
},[[
step
Complete the "Twilight Highlands" Leveling guide |q 27787 |future |only if Alliance
Complete the "Twilight Highlands" Leveling guide |q 27788 |future |only if Horde
|tip Refer to the leveling guide to accomplish this.
Click Here to Load the Leveling Guide |confirm |next "Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)"
step
label "Reset"
talk Harkkan##46318
accept Total War##28872 |goto Twilight Highlands/0 55.10,43.60
accept Hook 'em High##28874 |goto Twilight Highlands/0 55.10,43.60
step
talk Griff##46319
accept Another Maw to Feed##28873 |goto Twilight Highlands/0 53.80,43.30
step
talk Grot Deathblow##49387
accept Bring Down the High Shaman##28875 |goto Twilight Highlands/0 53.90,42.10
step
talk Malkar##50622
accept Crushing the Wildhammer##28871 |goto Twilight Highlands/0 54.00,41.90
stickystart "Smash_Wildhammer_Kegs"
stickystart "Collect_Wildhammer_Food_Stores"
stickystart "Kill_Gryphon_Rider"
stickystart "Collect_Insignias"
step
kill High Shaman MacKilligan##46885 |q 28875/1 |goto Twilight Highlands/0 46.00,33.00
|tip He runs into town to this spot.
|tip You may need help with this.
step
label "Smash_Wildhammer_Kegs"
Click Thundermar Ale Kegs
|tip They look like wooden barrels on the ground around this area.
Smash #10# Wildhammer Kegs |q 28872/1 |goto Twilight Highlands/0 49.10,37.30
step
label "Collect_Wildhammer_Food_Stores"
Click Wildhammer Food Stores
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28873/1 |goto Twilight Highlands/0 49.10,37.30
You can find more around [Twilight Highlands/0 46.20,37.40]
step
label "Kill_Gryphon_Rider"
use the Barbed Fleshhook##62775
|tip They are big white birds that fly in the air around this area.
kill 4 Thundermar Gryphon Rider##46321 '|kill Thundermar Gryphon Rider##47188 |q 28874/1 |goto Twilight Highlands/0 51.20,40.40
step
label "Collect_Insignias"
kill Wildhammer Warbrand##46320+
collect 8 Wildhammer Insignia##62325 |q 28871/1 |goto Twilight Highlands/0 51.20,40.40
step
talk Harkkan##46318
turnin Total War##28872 |goto Twilight Highlands/0 55.10,43.60
turnin Hook 'em High##28874 |goto Twilight Highlands/0 55.10,43.60
step
talk Griff##46319
turnin Another Maw to Feed##28873 |goto Twilight Highlands/0 53.80,43.30
step
talk Grot Deathblow##49387
turnin Bring Down the High Shaman##28875 |goto Twilight Highlands/0 53.90,42.10
step
talk Malkar##50622
turnin Crushing the Wildhammer##28871 |goto Twilight Highlands/0 54.00,41.90
step
Wait for the Daily Quests to Reset
talk Craw MacGraw##49386
buy Tabard of the Wildhammer Clan##65908 |n |goto Twilight Highlands/0 48.60,30.60
|tip You can wear the tabard and grind dungeons while waiting for dailies to reset.
'|complete not completedq(28861,28862,28860,28864,28863) |next "Reset" |or
Earn Exalted reputation with the Dragonmaw Clan|complete rep('Dragonmaw Clan')==Exalted |or
]])
QuestCore:RegisterGuide("Reputation Guides\\Cataclysm Reputations\\Hellscream's Reach",{
expansion="mists",
cataready=true,
description="This guide will walk you through becoming exalted with the Hellscream's Reach faction.",
achieveid={5376},
patch='40003',
},[[
step
label "Reset"
talk 3rd Officer Kronkar##48360
accept A Sticky Task##28684 |goto Tol Barad Peninsula/0 55.20,81.30
accept Boosting Morale##28680 |goto Tol Barad Peninsula/0 55.20,81.30
accept Captain P. Harris##28678 |goto Tol Barad Peninsula/0 55.20,81.30
accept Rattling Their Cages##28679 |goto Tol Barad Peninsula/0 55.20,81.30
accept Shark Tank##28681 |goto Tol Barad Peninsula/0 55.20,81.30
accept Thinning the Brood##28683 |goto Tol Barad Peninsula/0 55.20,81.30
|noquest
step
talk Commander Larmash##48358
accept Claiming The Keep##28682 |goto Tol Barad Peninsula/0 53.50,80.60
accept Leave No Weapon Behind##28685 |goto Tol Barad Peninsula/0 53.50,80.60
accept Not The Friendliest Town##28686 |goto Tol Barad Peninsula/0 53.50,80.60
accept Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula/0 53.50,80.60
accept Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula/0 53.50,80.60
|noquest
step
talk Captain Prug##48363
accept Finish The Job##28693 |goto Tol Barad Peninsula/0 54.90,79.30
accept First Lieutenant Connor##28691 |goto Tol Barad Peninsula/0 54.90,79.30
accept Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula/0 54.90,79.30
accept Salvaging the Remains##28690 |goto Tol Barad Peninsula/0 54.90,79.30
accept The Forgotten##28689 |goto Tol Barad Peninsula/0 54.90,79.30
|noquest
step
talk Private Sarlosk##48361
accept Bomb's Away!##28696 |goto Tol Barad Peninsula/0 55.80,78.50
accept Cannonball!##28698 |goto Tol Barad Peninsula/0 55.80,78.50
accept Ghostbuster##28697 |goto Tol Barad Peninsula/0 55.80,78.50
accept Taking the Overlook Back##28700 |goto Tol Barad Peninsula/0 55.80,78.50
accept WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula/0 55.80,78.50
accept Watch Out For Splinters!##28694 |goto Tol Barad Peninsula/0 55.80,78.50
|noquest
stickystart "Collect_Stacks_of_Cannonballs"
stickystart "Kill_Largo_Ghosts"
step
Follow the path up |goto Tol Barad Peninsula/0 74.30,42.80 < 5 |only if walking
kill Commander Largo##47304 |q 28700/1 |goto Tol Barad Peninsula/0 78.60,42.00
|tip He's at the top of the tower.
step
label "Kill_Largo_Ghosts"
kill Overlook Spectre##47182, Ghastly Worker##47183, Overlook Spirit##47181, Cursed Stallion##46645
Slay #14# Largo's Overlook Ghosts |q 28697/1 |goto Tol Barad Peninsula/0 78.20,49.00
step
label "Collect_Stacks_of_Cannonballs"
click Cannonball Stack##176215
collect 4 Stack of Cannonballs##62818 |q 28698/1 |goto Tol Barad Peninsula/0 78.20,49.00
step
click String of Fish##206754
collect 22 Rustberg Seabass##63047 |q 28687/1 |goto Tol Barad Peninsula/0 69.30,23.10
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28686/1 |goto Tol Barad Peninsula/0 67.60,37.10
stickystart "Kill_Darkwood_Lurkers"
step
kill Darkwood Broodmother##46507+
collect 4 Sticky Silk Gland##62803 |q 28684/1 |goto Tol Barad Peninsula/0 54.20,47.00
step
label "Kill_Darkwood_Lurkers"
kill 12 Darkwood Lurker##46508+  |q 28683/1 |goto Tol Barad Peninsula/0 54.20,47.00
step
kill Captain P. Harris##47287 |q 28678/1 |goto Tol Barad Peninsula/0 47.90,8.10
|tip He's walking around on this broken boat.
step
kill Tank##46608 |q 28681/1 |goto Tol Barad Peninsula/0 49.40,19.80
|tip He's an elite shark that swims in the water around this area.
|tip This is a group quest, so you will probably need help.
click Barrel of Southsea Rum##206580
collect 6 Barrel of Southsea Rum##62810 |q 28680/1 |goto Tol Barad Peninsula/0 49.40,19.80
step
kill 8 Shipwrecked Sailor##46605+  |q 28679/1 |goto Tol Barad Peninsula/0 49.00,29.40
step
kill Keep Lord Farson##47447 |q 28682/1 |goto Tol Barad Peninsula/0 36.10,27.30
|tip He's upstairs in the fort.
step
talk Farson Hold Prisoner##48308
Tell him you're here to help him escape
Escort the Farson Prisoner |q 28721/1 |goto Tol Barad Peninsula/0 37.80,29.10
|tip Follow the Farson Hold Prisoner and protect him.
step
click Rack of Rifles##206664
collect 12 Rusty Rifle##62921 |q 28685/1 |goto Tol Barad Peninsula/0 41.20,35.80
step
kill Foreman Wellson##46648 |q 28695/1 |goto Tol Barad Peninsula/0 27.20,47.70
step
clicknpc Wellson Cannon##48283
Shoot the boats
Destroy 10 Wellson Supply Boats |q 28696/1 |goto Tol Barad Peninsula/0 22.20,36.30
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 28694/1 |goto Tol Barad Peninsula/0 30.10,43.90
step
kill 5 Restless Soldier##46825 |q 28693/1 |goto Tol Barad Peninsula/0 40.20,57.90
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
click Siege Scrap##206652
collect 7 Siege Engine Scrap##52285 |q 28692/1 |goto Tol Barad Peninsula/0 40.20,57.90
stickystart "wanderingsoul"
step
kill First Lieutenant Connor##46571 |q 28691/1 |goto Tol Barad Peninsula/0 38.40,77.60
|tip He's a big skeleton that walks around this area, so you may need to search for him.
step
label "wanderingsoul"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+
collect 9 Cursed Femur##62808 |q 28690/1 |goto Tol Barad Peninsula/0 38.10,71.50
click Forgotten Soldier's Tombstone##206570
Release 6 Tortured Souls |q 28689/1 |goto Tol Barad Peninsula/0 38.10,71.50
step
talk 3rd Officer Kronkar##48360
turnin A Sticky Task##28684 |goto Tol Barad Peninsula/0 55.20,81.30
turnin Boosting Morale##28680 |goto Tol Barad Peninsula/0 55.20,81.30
turnin Captain P. Harris##28678 |goto Tol Barad Peninsula/0 55.20,81.30
turnin Rattling Their Cages##28679 |goto Tol Barad Peninsula/0 55.20,81.30
turnin Shark Tank##28681 |goto Tol Barad Peninsula/0 55.20,81.30
turnin Thinning the Brood##28683 |goto Tol Barad Peninsula/0 55.20,81.30
step
talk Commander Larmash##48358
turnin Claiming The Keep##28682 |goto Tol Barad Peninsula/0 53.50,80.60
turnin Leave No Weapon Behind##28685 |goto Tol Barad Peninsula/0 53.50,80.60
turnin Not The Friendliest Town##28686 |goto Tol Barad Peninsula/0 53.50,80.60
turnin Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula/0 53.50,80.60
turnin Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula/0 53.50,80.60
step
talk Captain Prug##48363
turnin Finish The Job##28693 |goto Tol Barad Peninsula/0 54.90,79.30
turnin First Lieutenant Connor##28691 |goto Tol Barad Peninsula/0 54.90,79.30
turnin Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula/0 54.90,79.30
turnin Salvaging the Remains##28690 |goto Tol Barad Peninsula/0 54.90,79.30
turnin The Forgotten##28689 |goto Tol Barad Peninsula/0 54.90,79.30
step
talk Private Sarlosk##48361
turnin Bomb's Away!##28696 |goto Tol Barad Peninsula/0 55.80,78.50
turnin Cannonball!##28698 |goto Tol Barad Peninsula/0 55.80,78.50
turnin Ghostbuster##28697 |goto Tol Barad Peninsula/0 55.80,78.50
turnin Taking the Overlook Back##28700 |goto Tol Barad Peninsula/0 55.80,78.50
turnin WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula/0 55.80,78.50
turnin Watch Out For Splinters!##28694 |goto Tol Barad Peninsula/0 55.80,78.50
step
goto Tol Barad Peninsula/0 66.90,79.80 |n
Cross the bridge to Tol Barad. |goto Tol Barad Peninsula/0 |noway|c
step
These daily quests will only be available if the Horde faction currently controls Tol Barad
You will only be able to accept a total of 6 quests in the following guide steps
|confirm
step
talk Commander Zanoth##48069
accept A Huge Problem##28657 |goto Tol Barad/0 50.90,49.70
accept Swamp Bait##28658 |goto Tol Barad/0 50.90,49.70
accept The Leftovers##28659 |goto Tol Barad/0 50.90,49.70
step
Click here if Drillmaster Razgoth is present. |confirm |next razgoth_is_here |goto Tol Barad/0 51.40,49.60
Click here if Private Garnoth is present. |confirm |next garnoth_is_here |goto Tol Barad/0 51.40,49.60
Click here if Staff Sergeant Lazgar is present. |confirm |next lazgar_is_here |goto Tol Barad/0 51.40,49.60
|tip Only one of these NPCs will be available.
step
label "razgoth_is_here"
talk Drillmaster Razgoth##48070
accept D-Block##28663 |goto Tol Barad/0 51.50,49.70
accept Svarnos##28664 |goto Tol Barad/0 51.50,49.70
accept Cursed Shackles##28665 |goto Tol Barad/0 51.50,49.70
|next exit
step
label "garnoth_is_here"
talk Private Garnoth##48071
accept Clearing the Depths##28660 |goto Tol Barad/0 51.50,49.70
accept Learning From The Past##28662 |goto Tol Barad/0 51.50,49.70
accept The Imprisoned Archmage##28661 |goto Tol Barad/0 51.50,49.70
|next exit
step
label "lazgar_is_here"
talk Staff Sergeant Lazgar##48062
accept Food From Below##28670 |goto Tol Barad/0 51.50,49.70
accept Prison Revolt##28668 |goto Tol Barad/0 51.50,49.70
accept The Warden##28669 |goto Tol Barad/0 51.50,49.70
|next exit
step
label "exit"
Enter the underground jail |goto Tol Barad/0 42.70,39.10 < 5 |noway |c
stickystart "cursedshack"
step
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28664/1 |goto Tol Barad/0 48.30,30.70
step
label "cursedshack"
kill Imprisoned Imp##47549, Cell Watcher##47542, Shivan Destroyer##47540, Jailed Wrathguard##47548
Slay #10# Demons |q 28663/1 |goto Tol Barad/0 44.40,30.50
step
click Cursed Shackle##181
collect 8 Cursed Shackles##63149 |q 28665/1 |goto Tol Barad/0 44.40,30.50
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28658/1 |goto Tol Barad/0 42.10,41.80
step
Enter the underground jail |goto Tol Barad/0 44.00,69.20 < 5 |walk
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28669/1 |goto Tol Barad/0 37.50,71.70
step
kill Imprisoned Worker##47550, Exiled Mage##47552
Slay #10# Prisoners |q 28668/1 |goto Tol Barad/0 40.90,78.20
step
click Crate of Cellblock Rations##206996
collect 12 Cellblock Ration##63315 |q 28670/1 |goto Tol Barad/0 40.90,78.20
step
Enter the underground jail |goto Tol Barad/0 60.80,50.10 < 5 |noway |c
stickystart "Slay_Ghosts"
stickystart "Collect_Dusty_Journal"
step
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28661/1 |goto Tol Barad/0 56.80,54.80
step
label "Slay_Ghosts"
kill Captive Spirit##47531+, Ghastly Convict##47590+
Slay #9# Ghosts |q 28660/1 |goto Tol Barad/0 51.40,49.50
step
label "Collect_Dusty_Journal"
click Dusty Prison Journal##206890
collect 4 Dusty Prison Journal##63034 |q 28662/1 |goto Tol Barad/0 51.40,49.50
step
Kill 12 Alliance Infantry |q 28659/1 |goto Tol Barad/0 35.80,67.80
step
kill Problim##47593 |q 28657/1 |goto Tol Barad/0 52.80,36.70
|tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.
|tip He's elite, and the quest is a group quest, so you may need help killing him.
step
talk Commander Zanoth##48069
turnin A Huge Problem##28657 |goto Tol Barad/0 50.90,49.70
turnin Swamp Bait##28658 |goto Tol Barad/0 50.90,49.70
turnin The Leftovers##28659 |goto Tol Barad/0 50.90,49.70
step
talk Drillmaster Razgoth##48070
turnin D-Block##28663 |goto Tol Barad/0 51.50,49.70
turnin Svarnos##28664 |goto Tol Barad/0 51.50,49.70
turnin Cursed Shackles##28665 |goto Tol Barad/0 51.50,49.70
step
talk Private Garnoth##48071
turnin Clearing the Depths##28660 |goto Tol Barad/0 51.50,49.70
turnin Learning From The Past##28662 |goto Tol Barad/0 51.50,49.70
turnin The Imprisoned Archmage##28661 |goto Tol Barad/0 51.50,49.70
step
talk Staff Sergeant Lazgar##48062
turnin Food From Below##28670 |goto Tol Barad/0 51.50,49.70
turnin Prison Revolt##28668 |goto Tol Barad/0 51.50,49.70
turnin The Warden##28669 |goto Tol Barad/0 51.50,49.70
step
Wait for Daily Quests to Reset
|tip You can do the PVP Event in Tol Barad for reputation while waiting.
'|complete not completedq(28684,28680,28678,28679,28681,28683,28682,28685,28686,28687,28721,28693,28691,28692,28690,28689,28696,28698,28697,28700,28695,28694,28657,28658,28659,28663,28664,28665,28660,28662,28661,28670,28668,28669) |next "Reset" |or
Earn Exalted reputation with Hellscream's Reach. |complete rep("Hellscream's Reach")==Exalted |or
]])
