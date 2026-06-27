-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end

------------------------------
----- The Argent Crusade -----
------------------------------

QuestCore:RegisterInclude("Argent_Crusade_Rep",[[
	--step
	--	Routing to proper section |next "tabard" |only if completedq(13083)
	--	Routing to proper section |next |only if not completedq(13083)
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
	label "tabard"
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
	step
		'Congratulations! You are now Exalted with the Argent Crusade!
]])

---------------------------
----- The Argent Dawn -----
---------------------------

QuestCore:RegisterInclude("Argent_Dawn_Rep",[[
	step
		talk Fiona##45417
		turnin Into the Woods##27683 |goto Eastern Plaguelands 9.00,66.50 |only if haveq(27683)
		accept Gidwin Goldbraids##27367|goto Eastern Plaguelands 9.00,66.50
		accept Tarenar Sunstrike##27370 |goto Eastern Plaguelands 9.00,66.50
	step
		talk Gidwin Goldbraids##45428
		turnin Gidwin Goldbraids##27367 |goto 4.10,36.00
		accept Just Encased##27368 |goto 4.10,36.00
	step
		Enter the tunnel |goto 4.70,35.60 < 5 |walk
		kill Crypt Stalker##8555+,Crypt Horror##8557+, Crypt Walker##8556+, Crypt Slayer##8558+
		collect 8 Crypt Bile##60983 |q 27368/1 |goto 5.10,33.40
	step
		Leave the tunnel |goto 4.70,35.60 < 5 |walk
		talk Gidwin Goldbraids##45428
		turnin Just Encased##27368 |goto Eastern Plaguelands 4.10,36.00
		accept Greasing the Wheel##27369 |goto Eastern Plaguelands 4.10,36.00
	step
		click Banshee's Bell##9889+
		|tip They are located right along the edge of the water.
		collect 10 Banshee's Bells##60984 |q 27369/1 |goto 3.40,38.00
	step
		talk Fiona##45417
		turnin Greasing the Wheel##27369 |goto 9.00,66.50
	step
		talk Tarenar Sunstrike##45429
		turnin Tarenar Sunstrike##27370 |goto 18.40,74.80
		accept What I Do Best##27371 |goto 18.40,74.80
	step
		kill 5 Death's Step Miscreation##45444+ |q 27371/1
	step
		Click the _Quest Complete_ box:
		turnin What I Do Best##27371 |goto 18.60,76.90
		accept A Gift For Fiona##27372 |goto 18.60,76.90
	step
		kill Plaguehound Runt##8596+
		|tip They share spawn locations with the Carrion Grubs. So, if you are having trouble finding Plaguehound Runts, kill Carrion Grubs and more should spawn.
		collect 10 Plaguehound Blood##60986 |q 27372/1 |goto 17.20,68.70
		You can find more Plague Hound Runts at the following location |goto Eastern Plaguelands 14.40,63.00
	step
		talk Fiona##45417
		turnin A Gift For Fiona##27372 |goto 9.00,66.50
		accept Onward, to Light's Hope Chapel##27373 |goto 9.00,66.50
	step
		clicknpc Captain Redpath##10937
		Choose 1 of the 3 buffs you can choose from |goto 8.80,66.60
		|tip All of the buffs only work while you're in Eastern Plaguelands. Fiona's Lucky Charm gives you a chance to loot extra gold or items from enemies. Gidwin's Weapon Oil gives you a chance to do extra Holy damage on melee and ranged attacks. Tarenar's Talisman gives you a chance to do extra Holy damage on successful spell attacks.
		Click here to proceed |confirm
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride Fiona's Caravan |q 27373/1 |goto 8.80,66.60
	step
		talk Janice Myers##44232
		fpath Crown Guard Tower |goto 34.90,67.90
	step
		talk Urk Gagbaz##45500
		accept Zaeldarr the Outcast##27432 |goto 35.00,68.10
	step
		talk Fiona##45417
		turnin Onward, to Light's Hope Chapel##27373 |goto 34.90,69.10
	step
		talk Tarenar Sunstrike##45429
		accept Traveling Companions##27381 |goto 35.30,68.80
	step
		talk Carlin Redpath##11063
		accept Little Pamela##27383 |goto 35.60,68.90
	step
		Go to the top of the tower
		talk Argus Highbeacon##45451
		Ask him if he's interested in joining your caravan
		Find a traveling companion |q 27381/1 |goto 35.90,69.30
	step
		talk Argus Highbeacon##45451
		accept Rough Roads##27382 |goto 35.90,69.30
	step
		talk Tarenar Sunstrike##45429
		turnin Traveling Companions##27381 |goto 35.30,68.90
	step
		talk Pamela Redpath##10926
		turnin Little Pamela##27383 |goto 32.40,83.70
		accept Pamela's Doll##27384 |goto 32.40,83.70
		accept I'm Not Supposed to Tell You This##27392 |goto 32.40,83.70
	step
		You can find the doll parts in all of the buildings
		click Pamela's Doll's Right Side##176143
		collect Pamela's Doll's Right Side##12888 |q 27384 |goto 35.50,85.30
		click Pamela's Doll's Left Side##176142
		collect Pamela's Doll's Left Side##12887 |q 27384 |goto 35.50,85.30
		click Pamela's Doll's Head##176116
		collect Pamela's Doll's Head##12886 |q 27384 |goto 35.50,85.30
	step
		Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
		collect Pamela's Doll##12885 |q 27384/1
	step
		kill The Lone Hunter##45450
		collect Joseph's Hunting Blade##60987 |q 27392/1 |goto 40.30,83.80
	step
		talk Pamela Redpath##10926
		turnin Pamela's Doll##27384 |goto 32.40,83.70
		turnin I'm Not Supposed to Tell You This##27392 |goto 32.40,83.70
		accept Uncle Carlin##27385 |goto 32.40,83.70
	step
		talk Carlin Redpath##11063
		turnin Uncle Carlin##27385 |goto 35.60,68.90
		accept A Strange Historian##27386 |goto 35.60,68.90
	step
		talk Chromie##10667
		turnin A Strange Historian##27386 |goto 35.30,68.00
		accept Villains of Darrowshire##27387 |goto 35.30,68.00
		accept Heroes of Darrowshire##27388 |goto 35.30,68.00
		accept Marauders of Darrowshire##27389 |goto 35.30,68.00
	step
		talk Urk Gagbaz##45500
		accept Cenarion Tenacity##27544 |goto 35.00,68.10
	step
		talk Carlin Redpath##11063
		Ask him if he has the extended Annals of Darrowshire
		collect Extended Annals of Darrowshire##13202 |q 27388/1 |goto 35.60,68.90
	step
		click Shattered Sword of Marduk##176209
		collect Shattered Sword of Marduk##12957 |q 27387/2 |goto 39.80,72.40
	step
	label "plaguebat"
		kill 13 Plaguebat##8600+ |q 27382/1 |goto 39.60,72.10
	step
		Go to the top of the tower
		talk Argus Highbeacon##45451
		turnin Rough Roads##27382 |goto 35.60,68.70
	step
		Enter the crypt |goto 24.20,78.50 < 5 |walk
		Go to the bottom of the crypt
		kill Zaeldarr the Outcast##12250
		collect Zaeldarr's Head##15785 |q 27432/1 |goto 23.80,77.90
	step
		click Redpath's Shield##176207
		collect Redpath's Shield##12955 |q 27388/3 |goto 22.10,68.20
	step
		Go upstairs
		click Davil's Libram##176206
		collect Davil's Libram##12954 |q 27388/2 |goto 22.30,68.30
	step
		talk Urk Gagbaz##45500
		turnin Zaeldarr the Outcast##27432 |goto 35.00,68.20
	step
		talk Chromie##10667
		turnin Heroes of Darrowshire##27388 |goto 35.20,68.10
	step
		click Horgus' Skull##176208
		collect Skull of Horgus##12956 |q 27387/1 |goto 37.30,60.20
	step
		talk Rayne##16135
		turnin Cenarion Tenacity##27544 |goto 30.20,56.90
		accept Postponing the Inevitable##27420 |goto 30.20,56.90
		accept Amidst Death, Life##27421 |goto 30.20,56.90
	stickystart "plaguedisseminators"
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Western Necropolis |q 27421/2 |goto 33.70,44.40
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Northeastern Necropolis |q 27421/3 |goto 37.80,42.50
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Southeastern Necropolis |q 27421/1 |goto 37.60,48.30
	step
	label "plaguedisseminators"
		kill Scourge Champion##8529+
		collect Fetid Skull##13157 |n
		Use your Mystic Crystal when you have a Fetid Skull |use Mystic Crystal##13156
		collect 5 Resonating Skull##13155 |q 27389/1 |goto 36.40,46.00
		kill Shadowmage##8550+, Dark Adept##8546+
		collect Plague Disseminator Control Rune##61037 |n
		Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
		Destroy #3# Plague Disseminators |q 27420/1 |goto 36.40,46.00
	step
		talk Rayne##16135
		turnin Postponing the Inevitable##27420 |goto 30.20,56.90
		turnin Amidst Death, Life##27421 |goto 30.20,56.90
	step
		talk Chromie##10667
		turnin Villains of Darrowshire##27387 |goto 35.30,68.10
		turnin Marauders of Darrowshire##27389 |goto 35.30,68.10
		accept The Battle of Darrowshire##27390 |goto 35.30,68.10
	step
		Use your Relic Bundle |use Relic Bundle##15209
		Fight in the battle and follow the instructions that appear on your screen
		collect Redpath the Corrupted##10938 |goto 35.10,84.00
		Joseph Redpath will appear after the battle at the following location |goto Eastern Plaguelands 35.10,84.00
		talk Joseph Redpath##10936
		Accept Redpath's Forgiveness |q 27390/1 |goto 35.10,84.00
	step
		talk Pamela Redpath##10926
		turnin The Battle of Darrowshire##27390 |goto 32.40,83.70
		accept Hidden Treasures##27391 |goto 32.40,83.70
	step
		click Joseph's Chest##177544
		turnin Hidden Treasures##27391 |goto 32.20,83.40
	step
		talk Fiona##45417
		accept The Trek Continues##27448 |goto 34.90,69.20
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride in Fiona's Caravan |q 27448/1 |goto 35.00,69.30
	step
		talk Fiona##45417
		turnin The Trek Continues##27448 |goto 52.90,53.10
		accept Boys Will Be Boys##27455 |goto 52.90,53.10
	step
		clicknpc Fiona's Caravan##45400
		Complete the Argus' Journal quest |goto 53.00,53.10 < 5
		|tip This will give you a 2% experience bonus while in Eastern Plaguelands, so will allow you to level faster.  // %
		talk Betina Bigglezink##11035
		accept To Kill With Purpose##27451 |goto 53.20,54.60
		accept Dark Garb##27452 |goto 53.20,54.60
	step
		Go to the top of the tower
		talk Frederick Calston##45575
		accept Frederick's Fish Fancy##27450 |goto 53.80,54.00
	step
		talk Vex'tul##45574
		accept Honor and Strength##27449 |goto 52.80,51.40
	step
		kill 3 Mossflayer Rogue##45579+ |q 27449/1 |goto 52.80,51.40
	step
		talk Vex'tul##45574
		turnin Honor and Strength##27449 |goto 52.80,51.40
	stickystart "livingrots"
	step
		clicknpc Plague Puffer##45650+
		collect 8 Plague Puffer##61292 |q 27450/1 |goto 50.20,61.30
		clicknpc Infectis Incher##45655+
		collect 8 Infectis Incher##61293 |q 27450/2 |goto 50.20,61.30
		clicknpc Infectis Scuttler##45657+
		collect 8 Infectis Scuttler##61294 |q 27450/3 |goto 50.20,61.30
	step
	label "livingrots"
		kill Unseen Servant##8538+, Stitched Horror##8543+, Hate Shrieker##8541+, Dark Caster##8526+, Scourge Warder##8525+, Gibbering Ghoul##8531+
		collect 7 Living Rot##15447 |n
		|tip These only last 10 minutes, so keep an eye on the timer and try to get them as fast as you can.
		Use Mortar and Pestle once you have 7 Living Rot |use Mortar and Pestle##15454
		collect Coagulated Rot##15448 |q 27451/1 |goto 53.70,62.30
	step
		Click the _Quest Complete_ box:
		turnin To Kill With Purpose##27451 |goto 53.70,62.30
	step
		kill Dark Summoner##8551+, Vile Tutor##8548+
		collect Death Cultist Headwear##61280 |q 27452/1 |goto 55.70,61.00
		collect Death Cultist Robes##61281 |q 27452/2 |goto 55.70,61.00
	step
		Click the _Quest Complete_ box:
		turnin Dark Garb##27452 |goto 55.70,61.00
		accept Catalysm##27453 |goto 55.70,61.00
	step
		Use Betina's Flasks on Plague Ravagers and Blighted Surges underwater |use Betina's Flasks##61284
		collect 8 Active Liquid Plague Agent##61285 |q 27453/1
	step
		Click the _Quest Complete_ box:
		turnin Catalysm##27453 |goto 57.60,72.60
		accept Just a Drop in the Bucket##27454 |goto 57.60,72.60
	step
		use the Death Cultist Disguise##61283
		Wear your Death Cultist Disguise |havebuff spell:85141 |q 27454 |goto 61.70,75.50
	step
		click Mereldar Plague Cauldron##205485
		Choose to throw in an entire flask
		Disturb the Mereldar Plague Cauldron |q 27454/1 |goto 62.40,76.40
	step
		talk Betina Bigglezink##11035
		turnin Just a Drop in the Bucket##27454 |goto 53.20,54.60
	step
		Go to the top of the tower
		talk Frederick Calston##45575
		turnin Frederick's Fish Fancy##27450 |goto 53.80,54.00
	step
		talk Gidwin Goldbraids##45431
		turnin Boys Will Be Boys##27455 |goto 74.40,53.30
		accept A Boyhood Dream##27463 |goto 74.40,53.30
	step
		talk Rimblat Earthshatter##16134
		accept Gathering Some Grub(s)##27456 |goto 73.80,51.90
	step
		talk Smokey LaRue##11033
		accept Smokey and the Bandage##27458 |goto 74.90,53.50
	step
		talk Jessica Chambers##16256
		home Light's Hope Chapel |q 27459 |goto 75.60,52.40
	step
		talk Leonid Barthalomew the Revered##11036
		accept The Brotherhood of Light##27459 |goto 75.60,52.00
	step
		talk Lord Maxwell Tyrosus##11034
		turnin A Boyhood Dream##27463 |goto 75.90,52.00
		accept Argent Call: The Trial of the Crypt##27464 |goto 75.90,52.00
	step
		Enter the crypt |goto 77.20,50.80 < 5 |walk
		Go to the bottom of the crypt
		Use your Argent Scroll |use Argent Scroll##61309
		kill Argent Warden##45698+
		kill Lord Raymond George##45707
		Complete the Trial of the Crypt |q 27464/1 |goto 77.20,51.40
	step
		talk Lord Maxwell Tyrosus##11034
		turnin Argent Call: The Trial of the Crypt##27464 |goto 75.90,52.00
		accept Argent Call: The Noxious Glade##27465 |goto 75.90,52.00
	step
		talk Master Craftsman Omarion##16365
		accept Buried Blades##27467 |goto 75.70,52.00
	step
		kill Stephen Browman##46167
		collect Browman's Wrappings##62028 |q 27458/1 |goto 71.90,45.40
	step
		Run up this path |goto 72.10,41.60 < 5 |only if walking
		kill Diseased Flayer##8532+, Dread Weaver##8528+, Death Singer##8542+
		kill Skullmage##45691+, Noxious Assassin##45692+
		Kill #16# Noxious Glade Scourge |q 27465/1 |goto 77.40,37.30
		Kill #8# Noxious Glade Cultists |q 27465/2 |goto 77.40,37.30
		clicknpc Slain Scourge Trooper##45695+
		Bury #10# Blades |q 27467/1 |goto 77.40,37.30
		|tip Be careful of the patrolling elite, Garginox, in this area.
	step
		talk Master Craftsman Omarion##16365
		turnin Buried Blades##27467 |goto 75.70,52.00
	step
		talk Lord Maxwell Tyrosus##11034
		turnin Argent Call: The Noxious Glade##27465 |goto 75.90,52.00
	step
		talk Smokey LaRue##11033
		turnin Smokey and the Bandage##27458 |goto 74.90,53.50
	step
		kill Carrion Grub##8603+, Carrion Devourer##8605+
		collect 15 Slab of Carrion Worm Meat##13853 |q 27456/1 |goto 71.10,60.60
	step
		talk Archmage Angela Dosantos##16116
		turnin The Brotherhood of Light##27459 |goto 72.60,74.80
		accept Soft Landing##27460 |goto 72.60,74.80
	step
		kill Scarlet Enchanter##9452+, Scarlet Warder##9447+, Scarlet Cleric##9449+
		Kill #10# Tyr's Hand Scarlet Crusaders |q 27460/1 |goto 73.60,74.80
	step
		click Crusader's Flare##205875
		turnin Soft Landing##27460 |goto 77.60,79.40
		accept To Take the Abbey##27461 |goto 77.60,79.40
		accept To Take the Barracks##27462 |goto 77.60,79.40
	step
		talk Crusade Commander Korfax##16112
		turnin To Take the Barracks##27462 |goto 75.30,76.20
		accept Scarlet Salvage##27614 |goto 75.30,76.20
		accept The Wrathcaster##27615 |goto 75.30,76.20
		accept The Huntsman##27616 |goto 75.30,76.20
		accept The Commander##27619 |goto 75.30,76.20
	step
		click Battered Chest##205880
		collect Crimson Boar##61959 |q 27614/1 |goto 74.80,76.70
	step
		click Battered Chest##205880
		collect Lihanna's Strand##61960 |q 27614/2 |goto 74.20,78.30
	step
		click Battered Chest##205880
		collect Shroud of Uther##61961 |q 27614/3 |goto 75.10,79.00
	step
		click Battered Chest##205880
		collect Gavinrad's Sigil##61962 |q 27614/4 |goto 75.90,77.50
	step
		Go into the basement of the fortress
		kill Mataus the Wrathcaster##46093 |q 27615/1 |goto 75.00,78.30
	step
		Go upstairs into the main room of the fortress
		kill Scarlet Commander Marjhan##46092 |q 27619/1 |goto 74.90,78.30
	step
		Go down the hall and up more stairs
		kill Huntsman Leopold##46094 |q 27616/1 |goto 74.50,77.50
	step
		talk Crusade Commander Korfax##16112
		turnin Scarlet Salvage##27614 |goto 75.30,76.20
		turnin The Wrathcaster##27615 |goto 75.30,76.20
		turnin The Huntsman##27616 |goto 75.30,76.20
		turnin The Commander##27619 |goto 75.30,76.20
		accept Argent Upheaval##27618 |goto 75.30,76.20
	step
		talk Archmage Angela Dosantos##16116
		turnin Argent Upheaval##27618 |goto 76.10,75.30
	step
		talk Crusade Commander Eligor Dawnbringer##16115
		turnin To Take the Abbey##27461 |goto 76.70,73.10
		accept Victory From Within##27612 |goto 76.70,73.10
		accept The Assassin##27613 |goto 76.70,73.10
	step
		Click the Argent Portal
		|tip It looks like a swirling portal in a room on the north side of the building. Follow the stairs up in the Library Wing, not the big spiral stairs in the middle of the building.
		Open the Portal within the Library Wing |q 27612/2 |goto 77.80,71.00
	step
		Click the Argent Portal
		|tip It looks like a swirling portal in a room on the west side of the building.
		Open the Portal within the Hall of Arms |q 27612/1 |goto 78.60,72.90
	step
		Follow the big spiral stairs up to the top of the bell tower
		kill Rohan the Assassin##46095 |q 27613/1 |goto 77.60,72.70
	step
		talk Crusade Commander Eligor Dawnbringer##16115
		turnin Victory From Within##27612 |goto 76.70,73.10
		turnin The Assassin##27613 |goto 76.70,73.10
		accept Befouled No More##27617 |goto 76.70,73.10
	step
		talk Archmage Angela Dosantos##16116
		turnin Befouled No More##27617 |goto 76.10,75.30
		accept Like Rats##27620 |goto 76.10,75.30
	step
		kill Crusader Lord Valdelmar##46096 |q 27620/1 |goto 82.30,79.40
	step
		talk Leonid Barthalomew the Revered##11036
		turnin Like Rats##27620 |goto 75.60,52.00
	step
		talk Tarenar Sunstrike##45729
		accept Argent Call: Northdale##27466 |goto Eastern Plaguelands 75.80,52.40
	step
		talk Rimblat Earthshatter##16134
		turnin Gathering Some Grub(s)##27456 |goto 73.80,51.90
		accept An Opportune Alliance##27457 |goto 73.80,51.90
	step
		talk Vex'tul##45574
		accept Out of the Ziggurat##27481 |goto 61.80,41.00
	step
		talk Deacon Andaal##45736
		accept Righteous Indignation##27479 |goto 61.00,43.70
	step
		talk Gamella Cracklefizz##45735
		accept The Corpulent One##27477 |goto 61.60,43.10
	step
		talk Fiona##45417
		turnin An Opportune Alliance##27457 |goto 61.50,42.70
		turnin Argent Call: Northdale##27466 |goto 61.50,42.70
	step
		talk Tarenar Sunstrike##45729
		accept Ix'lar the Underlord##27487 |goto 61.60,43.20
	step
		kill Ix'lar the Underlord##45744 |q 27487/1 |goto 61.80,35.70
		|tip He's a big purple bug that walks around this area, so you may need to search for him.
		kill Scourge Guard##8527+, Gangled Golem##8544+, Nerubian Sycophant##45743+
		Kill #10# Ix'lar Minions |q 27487/2 |goto 61.80,35.70
	step
		kill Borelgore##11896 |q 27477/1 |goto 56.70,27.90
		|tip He's a huge yellow grub that walks along in this big trench.
	stickystart "mossflayer"
	step
		Run up the path |goto 58.90,20.40 < 5 |only if walking
		Don't walk over the dirt piles on the ground, they spawn more enemies
		kill Warlord Thresh'jin##10822
		|tip Don't worry that he's elite, you can kill him easily
		collect Body of Warlord Thresh'jin##61315 |q 27481/1 |goto 66.80,9.90
	step
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Out of the Ziggurat##27481
		accept Into the Flames##27482
	step
		Use the Body of Warlordw Thresh'jin next to the Bonfire at the top of the temple |use Body of Warlord Thresh'jin##61316
		Burn Warlord Thresh'jin's Body |q 27482/1 |goto 67.40,9.00
	step
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Into the Flames##27482 |goto 67.40,9.00
	step
	label "mossflayer"
		Don't walk over the dirt piles on the ground, they spawn more enemies
		kill Mossflayer Cannibal##8562+, Mossflayer Scout##8560+, Mossflayer Shadowhunter##8561+, Infected Mossflayer##12261+
		collect 30 Mossflayer Eye##61313 |q 27479/1 |goto 64.50,13.70
	step
		talk Deacon Andaal##45736
		turnin Righteous Indignation##27479 |goto 61.30,44.50
	step
		talk Gamella Cracklefizz##45735
		turnin The Corpulent One##27477 |goto 61.60,43.10
	step
		talk Fiona##45417
		turnin Ix'lar the Underlord##27487 |goto 61.50,42.70
	step
		talk Tarenar Sunstrike##45729
		accept Impatience##27488 |goto 61.60,43.20
	step
		click Open Prayer Book##205537
		collect Gidwin's Prayer Book##61318 |q 27488/1 |goto 65.50,24.40
	step
		talk Tarenar Sunstrike##45729
		turnin Impatience##27488 |goto 61.60,43.20
		accept Nobody to Blame but Myself##27489 |goto 61.60,43.20
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride Fiona's Caravan to Northpass Tower |q 27489/1 |goto 61.60,42.50
	step
		talk Tarenar Sunstrike##45729
		turnin Nobody to Blame but Myself##27489 |goto 50.40,20.10
		accept Beat it Out of Them##27522 |goto 50.40,20.10
	step
		talk Kirkian Dawnshield##45826
		accept Wretched Hive of Scum and Villainy##27521 |goto 50.00,19.50
	step
		kill Scourge Siege Engineer##17878+ |goto 54.60,19.10
		Beat #6# Scourge Siege Engineers |q 27522/1 |goto 54.60,19.10
		Discover Gidwin's Location |q 27522/2 |goto 54.60,19.10
		Discover Gidwin's Captor |q 27522/3 |goto 54.60,19.10
	step
		kill Wretched Pathstrider##8565+, Wretched Woodsman##8563+, Wretched Ranger##8564+
		Kill #9# Quel'lithien Wretched |q 27521/1 |goto 47.00,17.40
	step
		talk Corpseburner Tim##45816
		accept Duskwing, Oh How I Hate Thee...##27523 |goto 48.00,23.00
	step
		Use The Corpseburner's Flare in this spot |use The Corpseburner's Flare##61334
		|tip If you get a message that there are no valid targets, wait until Duskwing spawns. He's a big gray bat that flies in the sky around this area.
		kill Duskwing##11897
		collect Patch of Duskwing's Fur##15850 |q 27523/1 |goto 46.40,33.80
	step
		talk Corpseburner Tim##45816
		turnin Duskwing, Oh How I Hate Thee...##27523 |goto 48.00,23.00
	step
		talk Fiona##45417
		turnin Beat it Out of Them##27522 |goto 50.50,20.20
		accept Blind Fury##27524 |goto 50.50,20.20
	step
		talk Argus Highbeacon##45451
		accept The Plaguewood Tower##27532 |goto 50.50,20.20
	step
		talk Kirkian Dawnshield##45826
		turnin Wretched Hive of Scum and Villainy##27521 |goto 50.00,19.50
	step
		talk Tarenar Sunstrike##45729
		turnin Blind Fury##27524 |goto 27.60,21.20
		accept Guardians of Stratholme##27525 |goto 27.60,21.20
	step
		talk Crusader Kevin Frost##45831
		accept Scourged Mass##27528 |goto 27.60,20.90
		accept Defenders of Darrowshire##27529 |goto 27.60,20.90
		accept Add 'em to the Pile##27539 |goto 27.60,20.90
	step
		kill Karthis Darkrune##45868 |q 27525/2 |goto 29.40,19.70
		collect The Baroness' Missive##61378 |n
		Click The Baroness' Missive in your bags |use The Baroness' Missive##61378
		accept The Baroness' Missive##27551 |goto 29.40,19.70
	step
		talk Tarenar Sunstrike##45729
		turnin The Baroness' Missive##27551 |goto 27.40,21.30
		accept Gidwin's Fate Revealed##27526 |goto 27.40,21.30
	step
		Enter this building and watch the cutscene
		Find Gidwin Goldbraids |q 27526/1 |goto 29.10,26.20
	step
		talk Gidwin Goldbraids##45730
		turnin Gidwin's Fate Revealed##27526 |goto 28.40,25.90
		accept Journey's End##27527 |goto 28.40,25.90
	stickystart "plaguewood"
	step
		kill Omasum Blighthoof##45867 |q 27525/1 |goto 25.40,19.80
	step
	label "plaguewood"
		All around Plaguewood, do the following
		kill Overstuffed Golem##45851+
		Use your Crusader's Torch on their corpses |use Crusader's Torch##61369
		Burn #8# Overstuffed Golem Corpses |q 27528/1 |goto 31.40,20.30
		kill Cursed Mage##8524+, Scourge Soldier##8523+
		collect 16 Stinking Skull##61372 |q 27539/1 |goto 31.40,20.30
		kill Cannibal Ghoul##8530+
		talk Darrowshire Spirit##11064
		|tip They spawn after you kill Cannibal Ghouls.
		Free #8# Darrowshire Spirits |q 27529/1 |goto 31.40,20.30
	step
		talk Tarenar Sunstrike##45729
		turnin Guardians of Stratholme##27525 |goto 28.50,25.90
	step
		talk Crusader Kevin Frost##45831
		turnin Scourged Mass##27528 |goto 27.60,20.90
		turnin Defenders of Darrowshire##27529 |goto 27.60,20.90
		turnin Add 'em to the Pile##27539 |goto 27.60,20.90
		accept The Corpsebeasts##27530 |goto 27.60,20.90
	step
		Use your Argent Lightwell Charm next to the big brown monster corpses |use Argent Lightwell Charm##61375
		|tip You will have to put 3 around each corpse, and you can't put them too close together.
		Destroy #3# Corpsebeasts |q 27530/1 |goto 28.30,32.30
	step
		talk Crusader Kevin Frost##45831
		turnin The Corpsebeasts##27530 |goto 27.60,20.90
	step
		talk Argent Apothecary Judkins##45828
		turnin The Plaguewood Tower##27532 |goto 17.70,28.00
		accept Counter-Plague Research##27531 |goto 17.70,28.00
		accept Just a Little Touched##27535 |goto 17.70,28.00
	step
		click Flesh Giant Foot##205558
		collect Flesh Giant Foot Scrapings##61366 |q 27531/3 |goto 25.10,34.50
	step
		click Rotberry Bush##205559
		collect 20 Rotberry##61364 |q 27531/1 |goto 23.50,22.40
		click Disembodied Arm##205560
		collect 5 Disembodied Arm##61365 |q 27531/2 |goto 23.50,22.40
	step
		talk Argent Apothecary Judkins##45828
		turnin Counter-Plague Research##27531 |goto 17.70,28.00
	step
		talk Augustus the Touched##12384
		turnin Just a Little Touched##27535 |goto 11.30,28.60
		accept A Fate Worse Than Butchery##27533 |goto 11.30,28.60
		accept Augustus' Receipt Book##27534 |goto 11.30,28.60
	stickystart "plaguedswine"
	step
		click Augustus' Receipt Book##177789
		collect Augustus' Receipt Book##15884 |q 27534/1 |goto 14.20,26.30
	step
	label "plaguedswine"
		kill 9 Plagued Swine##16117+ |q 27533/1 |goto 14.40,28.50
	step
		talk Augustus the Touched##12384
		turnin A Fate Worse Than Butchery##27533 |goto 11.30,28.60
		turnin Augustus' Receipt Book##27534 |goto 11.30,28.60
	step
		Use Gidwin's Hearthstone |use Gidwin's Hearthstone##61379
		Teleport to Light's Hope Chapel |goto 75.60,52.40 < 5
		talk Fiona##45417
		turnin Journey's End##27527 |goto 73.70,52.10
	step
	label "Annals"
		talk Lord Raymond George##49856
		|tip These are dungeon quests. If you are not high level, you will need to get a group to continue.
		accept Annals of the Silver Hand##28755 |repeatable |goto 76.10,51.00
	step
		click The Bastion Door##444
		Enter the hallway |goto Stratholme 30.50,35.80 < 10
		click Hall of the High Command Door##444
		Enter the Hallway and turn left |goto 20.10,59.50 < 10
		click Annals of the Silver Hand##207389
		collect Annals of the Silver Hand##65615 |q 28755/1 |goto Stratholme 27.50,74.70
	step
		talk Lord Raymond George##49856 |goto Eastern Plaguelands 76.20,51.00
		turnin Annals of the Silver Hand##28755 |repeatable |next "Annals" |only if rep('Argent Dawn')<=Exalted
		|tip If you do not reset your instance then you will only be forced to clear mobs one time.
		Earn Exalted reputation with the Argent Dawn |complete rep('Argent Dawn')==Exalted |next "exalted" |only if rep('Argent Dawn')==Exalted
	step
	label "exalted"
		Congratulations, you are now Exalted with the Argent Dawn!
]])

---------------------------
----- Cenarian Circle -----
---------------------------



-------------------------------
----- Cenarian Expedition -----
-------------------------------



------------------
----- Kaluak -----
------------------

QuestCore:RegisterInclude("Kaluak_Rep",[[
	step
		talk Etaruk##25292
		accept Reclaiming the Quarry##11612 |goto Borean Tundra 54.30,36.10
	step
		talk Elder Atkanok##7633
		accept The Honored Ancestors##11605 |goto 54.70,35.80
	stickystart "berhunt"
	step
		click "Elder Sagani"##187663
		Identify the Elder Sagani |q 11605/2 |goto 52.80,34
	step
		click "Elder Takret"##187664
		Identify the Elder Takret |q 11605/3 |goto 52.30,31.20
	step
		click "Elder Kesuk"##187662
		Identify the Elder Kesuk |q 11605/1 |goto 50.90,32.40
	step
	label "berhunt"
		kill 12 Beryl Treasure Hunter##25353+ |q 11612/1 |goto 54.40,35.10
	step
		talk Elder Atkanok##7633
		turnin The Honored Ancestors##11605 |goto 54.70,35.80
		accept The Lost Spirits##11607 |goto 54.70,35.80
	step
		talk Etaruk##25292
		turnin Reclaiming the Quarry##11612 |goto 54.30,36.10
		accept Hampering Their Escape##11617 |goto 54.30,36.10
	step
		kill Beryl Hound##25355+
		collect 6 Cores of Malice##34711 |n
		Use the Cores of Malice on Kaskala Craftsmen and Kaskala Shaman |use Core of Malice##34711
		Free 3 Kaskala Craftsman spirits |q 11607/1 |goto 51.50,31.40
		Free 3 Kaskala Shaman spirits |q 11607/2 |goto 51.50,31.40
		kill Beryl Reclaimer##25449+
		collect 3 Gnomish Grenade##34772|q 11617 |goto 51.50,31.40
	step
		Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772
		|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		Destroy the North Platform |q 11617/2 |goto 52.20,32.10
	step
		Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772
		|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		Destroy the West Platform |q 11617/3 |goto 51,33.90
	step
		Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772
		|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		Destroy the East Platform |q 11617/1 |goto 52.80,34.50
	step
		talk Elder Atkanok##7633
		turnin The Lost Spirits##11607 |goto 54.70,35.80
		accept Picking Up the Pieces##11609 |goto 54.70,35.80
	step
		talk Etaruk##25292
		turnin Hampering Their Escape##11617 |goto 54.30,36.10
		accept A Visit to the Curator##11623 |goto 54.30,36.10
	step
		click Tuskarr Ritual Object##187671
		collect 6 Tuskarr Ritual Object##34713 |q 11609/1 |goto 53.10,33.30
	step
		kill Curator Insivius##25448 |q 11623/1 |goto 50.10,32.60
	step
		talk Elder Atkanok##7633
		turnin Picking Up the Pieces##11609 |goto 54.70,35.80
		accept Leading the Ancestors Home##11610 |goto 54.70,35.80
	step
		talk Etaruk##25292
		turnin A Visit to the Curator##11623 |goto 54.30,36.10
	step
		Use your Tuskarr Ritual Object while standing next to the Elder Sagani |use Tuskarr Ritual Object##34715
		|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		Complete Elder Sagani's ceremony |q 11610/2 |goto 52.80,34
	step
		Use your Tuskarr Ritual Object while standing next to the Elder Takret |use Tuskarr Ritual Object##34715
		|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		Complete Elder Takret's ceremony |q 11610/3 |goto 52.30,31.20
	step
		Use your Tuskarr Ritual Object while standing next to the Elder Kesuk |use Tuskarr Ritual Object##34715
		|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		Complete Elder Kesuk's ceremony |q 11610/1 |goto 50.90,32.40
	step
		talk Elder Atkanok##7633
		turnin Leading the Ancestors Home##11610 |goto 54.70,35.80
	step
		talk Waltor of Pal'ea##25476
		accept Into the Mist##11655 |goto 32.30,54.30
		accept Horn of the Ancient Mariner##11660 |goto 32.30,54.30
	step
		kill Kvaldir Mist Lord##25496, Kvaldir Mistweaver##25479+
		collect 8 Tuskarr Relic##34814 |q 11655/1 |goto 30.40,53.50
		collect Horn of the Ancient Mariner##34813 |q 11660/1 |goto 30.40,53.50
	step
		talk Annihilator Grek'lor##25329
		turnin Tanks a lot...##11651 |goto 32.20,54.10
		accept The Plains of Nasam##11652 |goto 32.20,54.10
	step
		talk Waltor of Pal'ea##25476
		turnin Into the Mist##11655 |goto 32.30,54.30
		accept Burn in Effigy##11656 |goto 32.30,54.30
		turnin Horn of the Ancient Mariner##11660 |goto 32.30,54.30
		accept Orabus the Helmsman##11661 |goto 32.30,54.30
	step
		Stand at the front of the ship
		Use your Tuskarr Torch |use Tuskarr Torch##34830
		Destroy Bor's Hammer |q 11656/3 |goto 29.80,52.60
	step
		Stand at the front of the ship
		Use your Tuskarr Torch |use Tuskarr Torch##34830
		Destroy The Kur Drakkar |q 11656/2 |goto 31,49
	step
		Stand at the front of the ship
		Use your Tuskarr Torch |use Tuskarr Torch##34830
		Destroy The Serpent's Maw |q 11656/1 |goto 31.70,48.30
	step
		Stand at the very edge of the rocks
		Use your Horn of the Ancient Mariner |use Horn of the Ancient Mariner##34844
		kill Orabus the Helmsman##32576 |q 11661/1 |goto 26.80,54.70
	step
		Stand at the front of the ship
		Use your Tuskarr Torch |use Tuskarr Torch##34830
		Destroy Bor's Anvil |q 11656/4 |goto 30.10,61.70
	step
		talk Waltor of Pal'ea##25476
		turnin Burn in Effigy##11656 |goto 32.30,54.30
		turnin Orabus the Helmsman##11661 |goto 32.30,54.30
		accept Seek Out Karuk!##11662 |goto 32.30,54.30
	step
		talk Karuk##25435
		turnin Seek Out Karuk!##11662 |goto 47.10,75.50
		accept Karuk's Oath##11613 |goto 47.10,75.50
	step
		kill 6 Skadir Raider##25522+ |q 11613/1 |goto 46.50,77.20
		kill 5 Skadir Longboatsman##25521+ |q 11613/2 |goto 46.50,77.20
	step
		Kill the Riplash Myrmidon and cheering Skadir mobs
		talk Captured Tuskarr Prisoner##25636
		accept Cruelty of the Kvaldir##12471 |goto 44.20,77.80
	step
		talk Karuk##25435
		turnin Karuk's Oath##11613 |goto 47.10,75.50
		accept Gamel the Cruel##11619 |goto 47.10,75.50
		turnin Cruelty of the Kvaldir##12471 |goto 47.10,75.50
	step
		kill Gamel the Cruel##26449 |q 11619/1 |goto 46.40,78.20
		|tip He's inside of the cave.
	step
		talk Karuk##25435
		turnin Gamel the Cruel##11619 |goto 47.10,75.50
		accept A Father's Words##11620 |goto 47.10,75.50
	step
		talk Veehja##25450
		turnin A Father's Words##11620 |goto 43.60,80.50
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
		accept Not Without a Fight!##11949 |goto 63.80,46.10
	step
		talk Utaik##26213
		accept Preparing for the Worst##11945 |goto 64,45.70
	step
		kill 12 Kvaldir Raider##25760+ |q 11949/1 |goto 65.30,47.20
		click Kaskala Supplies##188164
		collect 8 Kaskala Supplies##35711 |q 11945/1 |goto 65.30,47.20
	step
		talk Ataika##26169
		turnin Not Without a Fight!##11949 |goto 63.80,46.10
		accept Muahit's Wisdom##11950 |goto 63.80,46.10
	step
		talk Utaik##26213
		turnin Preparing for the Worst##11945 |goto 64,45.70
	step
		talk Elder Muahit##26218
		turnin Muahit's Wisdom##11950 |goto 67.20,54.90
		accept Spirits Watch Over Us##11961 |goto 67.20,54.90
	step
		talk Iruk##26219
		<Search corpse for Issliruk's Totem>
		collect Issliruk's Totem##35701 |q 11961/1 |goto 67.60,50.40
	step
		talk Elder Muahit##26218
		turnin Spirits Watch Over Us##11961 |goto 67.20,54.90
		accept The Tides Turn##11968 |goto 67.20,54.90
	step
		kill Heigarr the Horrible##26266 |q 11968/1 |goto 67.60,56.60
	step
		talk Elder Muahit##26218
		turnin The Tides Turn##11968 |goto 67.20,54.80
	step
		talk Orfus of Kamagua##23804
		accept The Dead Rise!##11504 |goto Howling Fjord 40.30,60.30
	step
		Click the Mound of Debris
		|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
		collect Fengir's Clue##34222 |q 11504/1 |goto 57.70,77.50
	step
		Click the Unlocked Chest
		|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
		collect Rodin's Clue##34223 |q 11504/2 |goto 59.20,77
	step
		Click the Long Tail Feather
		|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
		collect Isuldof's Clue##34224 |q 11504/3 |goto 59.80,79.40
	step
		Click the Cannonball
		|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
		collect Windan's Clue##34225 |q 11504/4 |goto 62,80
	step
		talk Orfus of Kamagua##23804
		turnin The Dead Rise!##11504 |goto 40.30,60.30
		accept Elder Atuik and Kamagua##11507 |goto 40.30,60.30
	step
		talk Elder Atuik##24755
		turnin Elder Atuik and Kamagua##11507 |goto 25.00,57.00
		accept Grezzix Spindlesnap##11508 |goto 25.00,57.00
		accept Feeding the Survivors##11456 |goto 25.00,57.00
	step
		kill Island Shoveltusk##24681+
		collect 6 Island Shoveltusk Meat##36776|q 11456/1 |goto 29.10,58.80
	step
		talk Elder Atuik##24755
		turnin Feeding the Survivors##11456 |goto 25.00,57.00
		accept Arming Kamagua##11457 |goto 25.00,57.00
	step
		kill Frostwing Chimaera##24673
		collect 3 Chimaera Horn##34101|q 11457/1 |goto 26.40,62.90
	step
		talk Elder Atuik##24755
		turnin Arming Kamagua##11457 |goto 25.00,57.00
		accept Avenge Iskaal##11458 |goto 25.00,57.00
	step
		talk Grezzix Spindlesnap##24643
		turnin Grezzix Spindlesnap##11508 |goto 23.10,62.70
		accept Street "Cred"##11509 |goto 23.10,62.70
	step
		Talk to "Silvermoon" Harry##24539
		turnin Street "Cred"##11509 |goto 35.10,80.90
		accept "Scoodles"##11510 |goto 35.10,80.90
	step
		talk Handsome Terry##24537
		accept Forgotten Treasure##11434 |goto 35.60,80.20
	step
		talk Scuttle Frostprow##24784
		accept Swabbin' Soap##11469 |goto 37.80,79.60
	step
		kill "Scoodles"##24899
		collect Sin'dorei Scrying Crystal##34235 |q 11510/1 |goto 38.30,83.40
	step
		click the Eagle Figurine##186886
		|tip It's a blue eagle statue inside this ship on the middle floor.
		collect Eagle Figurine##34070 |q 11434/2 |goto 37.80,84.60
	step
		click the Amani Vase##186885
		|tip It looks like a grey vase at the bottom of this wrecked ship.
		collect Amani Vase##34069 |q 11434/1 |goto 37.10,85.50
	step
		kill Big Roy##24785
		collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.40,77.90
	step
		talk "Silvermoon" Harry##24539
		turnin "Scoodles"##11510 |goto 35.10,80.90
		accept The Ancient Armor of the Kvaldir##11567 |goto 35.10,80.90
		accept The Frozen Heart of Isuldof##11512 |goto 35.10,80.90
		accept The Lost Shield of the Aesirites##11519 |goto 35.10,80.90
		accept The Staff of Storm's Fury##11511 |goto 35.10,80.90
	step
		talk Handsome Terry##24537
		turnin Forgotten Treasure##11434 |goto 35.60,80.20
		accept The Fragrance of Money##11455 |goto 35.60,80.20
	step
		talk Taruk##24541
		accept Gambling Debt##11464 |goto 36.30,80.50
	step
		talk Scuttle Frostprow##24784
		turnin Swabbin' Soap##11469 |goto 37.70,79.60
	step
		talk "Silvermoon" Harry##24539
		Tell him:
		Taruk sent me to collect what you owe.>
		kill "Silvermoon" Harry##24539
		After he submits to you
		<Pay up, Harry!>
		Collect "Silvermoon" Harry's Debt |q 11464/1 |goto 35.10,81.00
	step
		talk Taruk##24541
		turnin Gambling Debt##11464 |goto 36.30,80.50
		accept Jack Likes His Drink##11466 |goto 36.30,80.50
	step
		talk Olga the Scalawag Wench##24639
		Tell her:
		<I'd like to buy Jack a drink.>
		She will walk over to Jack Adams |goto 35.30,79.60
		|confirm |q 11466
	step
		clicknpc Jack Adams##24788
		Discretely search the pirate's pockets for Taruk's payment.>
		collect Jack Adams' Debt##34116 |q 11466/1 |goto 35.50,79.40
	step
		talk Taruk##24541
		turnin Jack Likes His Drink##11466 |goto 36.30,80.50
		accept Dead Man's Debt##11467 |goto 36.30,80.50
	step
		kill Rabid Brown Bear##24633+
		collect 4 Bear Musk##34084 |q 11455/1 |goto 35.40,78.10
	step
		_Enter_ the cave |goto 33.60,75.60 < 5
		kill "Mad" Jonah Sterling##24742
		After you beat him, he will jump down |goto 33.80,78.00
		|confirm |q 11512
	step
		_Run down_ the ramp |goto 33.70,79.20 < 5 |walk
		click The Frozen Heart of Isuldof##187032
		collect The Frozen Heart of Isuldof##34237 |q 11512/1 |goto 32.30,78.70
	step
		kill 8 Crazed Northsea Slaver##24676+ |q 11458/1 |goto 33.20,63.90
		|tip Leave the cave.
	step
		talk Captain Ellis##24910
		turnin The Lost Shield of the Aesirites##11519 |goto 37.20,74.80
		accept Mutiny on the Mercy##11527 |goto 37.20,74.80
	step
		Go downstairs in the ship
		kill Mutinous Sea Dog##25026+ |n
		collect 5 Barrel of Blasting Powder##34387|q 11527/1
	step
		Go upstairs to the ship deck
		talk Captain Ellis##24910
		turnin Mutiny on the Mercy##11527
		accept Sorlof's Booty##11529
	step
		Run to the other end of the ship deck to the big cannon
		clicknpc The Big Gun##24992
		Keep clicking The Big Gun until Sorlof is dead
		Sorlof will drop a big pile of gold on the shore
		Jump off the ship and click Sorlof's Booty
		collect Sorlof's Booty##34468|q 11529/1
	step
		talk Captain Ellis##24910
		turnin Sorlof's Booty##11529 |goto 37.20,74.80
		accept The Shield of the Aesirites##11530 |goto 37.20,74.80
	step
		At the bottom of the ship. If you are careful, you can avoid _Abdul the Insane_
		click The Staff of Storm's Fury##187033
		collect The Staff of Storm's Fury##34236 |q 11511/1 |goto 35.30,64.80
	step
		click Dirt Mound##186944
		kill Black Conrad's Ghost##24790+
		collect Black Conrad's Treasure##34118 |q 11467/1 |goto 32.70,60.20
	step
		talk Elder Atuik##24755
		turnin Avenge Iskaal##11458 |goto 25.00,57.00
	step
		talk Taruk##24541
		turnin Dead Man's Debt##11467 |goto 36.30,80.50
	step
		talk Handsome Terry##24537
		turnin The Fragrance of Money##11455 |goto 35.60,80.20
	step
		click The Ancient Armor of the Kvaldir##187381
		collect The Ancient Armor of the Kvaldir##34239 |q 11567/1 |goto 81.80,73.90
	step
		_Go up_ the lift |goto 40.30,60.30 < 5 |only if walking
		talk Orfus of Kamagua##23804
		turnin The Ancient Armor of the Kvaldir##11567
		turnin The Frozen Heart of Isuldof##11512
		turnin The Shield of the Aesirites##11530
		turnin The Staff of Storm's Fury##11511
		accept A Return to Resting##11568
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Shield of Aesirites |q 11568/1 |goto 57.60,77.40
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Staff of Storm's Fury |q 11568/2 |goto 59.20,77
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Frozen Heart of Isuldof |q 11568/3 |goto 59.80,79.40
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Ancient Armor of the Kvaldir |q 11568/4 |goto 62,80
	step
		talk Orfus of Kamagua##23804
		turnin A Return to Resting##11568 |goto 40.30,60.30
		accept Return to Atuik##11572 |goto 40.30,60.30
	step
		_Cross_ the Ancient Lift |goto 25.00,57.00 < 5
		talk Elder Atuik##24755
		turnin Return to Atuik##11572
	step
		talk Elder Ko'nani##26194
		accept Let Nothing Go To Waste##11958 |goto Dragonblight 48,74.90
	step
		talk Trapper Mau'i##26228
		accept Planning for the Future##11960 |goto Dragonblight 48.30,74.30
	step
		kill Snowfall Glade Reaver##26197, Snowfall Glade Wolvar##26198, Snowfall Glade Shaman##26201, Snowfall Glade Den Mother##26199
		collect 6 Stolen Moa'ki Goods##35686|q 11958/1 |goto 45.30,63.70
		clicknpc Snowfall Glade Pup##26200
		collect 12 Snowfall Glade Pup##35692|q 11960/1 |goto 45.30,63.70
	step
		talk Trapper Mau'i##26228
		turnin Planning for the Future##11960 |goto 48.30,74.30
	step
		talk Elder Ko'nani##26194
		turnin Let Nothing Go To Waste##11958 |goto 48,74.90
		accept Slay Loguhn##11959 |goto 48,74.90
	step
		kill Loguhn##26196
		collect Blood of Loguhn##35688 |n
		Click the Blood of Loguhn in your bags |use Blood of Loguhn##35688
		Smear the Blood of Loguhn on yourself |q 11959/1 |goto 46.30,59.20
	step
		talk Elder Ko'nani##26194
		turnin Slay Loguhn##11959 |goto 48,74.90
	step
		talk Toalu'u the Mystic##26595
		accept Spiritual Insight##12028 |goto 49.20,75.60
	step
		Use Toalu'u's Spiritual Incense next to Toalu'u's Brazier |use Toalu'u's Spiritual Incense##35907
		|tip Sitting next to the entrance to the small house.
		Watch yourself fly as a wisp
		Attain Spiritual Insight concerning Indu'le Village |q 12028/1 |goto 48.90,75.80
	step
		talk Toalu'u the Mystic##26595
		turnin Spiritual Insight##12028 |goto 49.20,75.60
		accept Elder Mana'loa##12030 |goto 49.20,75.60
	step
		talk Tua'kea##26245
		accept Tua'kea's Crab Traps##12009 |goto 47.70,76.60
	step
		Click Tua'kea's Crab Traps
		|tip They look like small cages on the ground underwater around this area.
		collect 8 Tua'kea Crab Trap##35802 |q 12009/1 |goto 46.60,77.50
	step
		Click the Wrecked Crab Trap
		|tip It looks like a broken version of Tue'kea's Crab Traps, on the ground underwater.
		accept Signs of Big Watery Trouble##12011 |goto 47.70,80
	step
		talk Tua'kea##26245
		turnin Tua'kea's Crab Traps##12009 |goto 47.70,76.60
		turnin Signs of Big Watery Trouble##12011 |goto 47.70,76.60
		accept The Bait##12016 |goto 47.70,76.60
	step
		kill Kili'ua##26521
		collect The Flesh of "Two Huge Pincers"##35831 |q 12016/1 |goto 43.70,82.30
	step
		talk Tua'kea##26245
		turnin The Bait##12016 |goto 47.70,76.60
		accept Meat on the Hook##12017 |goto 47.70,76.60
	step
		Use Tu'u'gwar's Bait next to Tua'kea's Fishing Hook |use Tu'u'gwar's Bait##35838
		|tip It looks like a rope leading into the water, with a big hook on the end.
		kill Tu'u'gwar##26510 |q 12017/1 |goto 46.70,78.20
	step
		talk Tua'kea##26245
		turnin Meat on the Hook##12017 |goto 47.70,76.60
	step
		Talk to Elder Mana'loa
		turnin Elder Mana'loa##12030 |goto 36.40,65
		accept Freedom for the Lingering##12031 |goto 36.40,65
	step
		kill Indu'le Mystic##26336, Indu'le Warrior##26344
		Put 15 Indu'le spirits to rest |q 12031/1 |goto 37.20,65.50
	step
		Talk to Elder Mana'loa
		turnin Freedom for the Lingering##12031 |goto 36.40,65
		accept Conversing With the Depths##12032 |goto 36.40,65
	step
		_Follow_ the path up |goto Dragonblight 34.30,79.80 < 10 |only if walking
		_Continue_ along the path |goto 34,83.40 |only if walking
		Click The Pearl of the Depths
		|tip It's a big white pearl sitting on a altar thing.
		Oacha'noa appears and tells you to jump in the water
		Jump in the water when he tells you to
		Obey Oacha'noa's compulsion |q 12032/1 |goto 34,83.40
	step
		talk Toalu'u the Mystic##26595
		turnin Conversing With the Depths##12032 |goto 49.20,75.60
	//borean//
	step
	label "daily"
		talk Utaik##26213
		accept Preparing for the Worst##11945 |goto Borean Tundra,64,45.70
	step
		click Kaskala Supplies##188164
		collect 8 Kaskala Supplies##35711 |q 11945/1 |goto 65.30,47.20
	step
		talk Utaik##26213
		turnin Preparing for the Worst##11945 |goto 64,45.70
	//dragon//
	step
		talk Trapper Mau'i##26228
		accept Planning for the Future##11960 |goto Dragonblight,48.30,74.30
	step
		clicknpc Snowfall Glade Pup##26200
		collect 12 Snowfall Glade Pup##35692 |q 11960/1 |goto 45.30,63.70
	step
		talk Trapper Mau'i##26228
		turnin Planning for the Future##11960 |goto 48.30,74.30
	//howling//
	step
		talk Anuniaq##24810
		accept The Way to His Heart...##11472 |goto Howling Fjord 24.60,58.90
	step
		Use Anuniaq's Net on the Schools of Tasty Reef Fish|use Anuniaq's Net##40946
		|tip They look like swarms of fish in the water.
		kill Great Reef Shark##24637+ |n
		collect 10 Tasty Reef Fish##34127|q 11472 |goto 28.90,74.80
	step
		Use your Tasty Reef Fish on a Reef Bull as far away as you can|use Tasty Reef Fish##34127
		He will come to the spot where you're standing
		Keep doing this
		Lead the Reef Bull to a Reef Cow on the other side of the water |q 11472/1 |goto 31,74.40
	step
		talk Anuniaq##24810
		turnin The Way to His Heart...##11472 |goto 24.60,58.90
	step
		You have reached the end of the dailies for today.
		To reset this section, click here. |next "daily" |confirm
		Earn Exalted reputation with the Kalu'ak |next "exalted" |complete rep("Kalu'ak")==Exalted
]])

-----------------------
----- The Kurenai -----
-----------------------



---------------------
----- Sporeggar -----
---------------------



-----------------------
----- The Tillers -----
-----------------------



-------------------------
----- The Timbermaw -----
-------------------------



---------------------------
----- Tabard Includes -----
---------------------------

QuestCore:RegisterInclude("OrgTabard",[[
		talk Stone Guard Nargol##50488 |only if rep("Orgrimmar")<Exalted
		buy 1 Orgrimmar Tabard##45581 |goto Orgrimmar 50.20,58.30 |only if rep("Orgrimmar")<Exalted
]])

QuestCore:RegisterInclude("BilgeTabard",[[
		talk Frizzo Villamar##50323 |only if rep("Bilgewater Cartel")<Exalted
		buy 1 Bilgewater Cartel Tabard##64884 |goto Orgrimmar 50.20,58.30 |only if rep("Bilgewater Cartel")<Exalted
]])

QuestCore:RegisterInclude("TBTabard",[[
		talk Brave Tuho##50483 |only if rep("Thunder Bluff")<Exalted
		buy 1 Thunder Bluff Tabard##45584 |goto Thunder Bluff 46.80,50.00 |only if rep("Thunder Bluff")<Exalted
]])

QuestCore:RegisterInclude("DSTabard",[[
		talk Champion Uru'zin##50477 |only if rep("Darkspear Trolls")<Exalted
		buy 1 Darkspear Tabard##45582 |goto Orgrimmar 50.20,58.30 |only if rep("Darkspear Trolls")<Exalted
]])

QuestCore:RegisterInclude("SCTabard",[[
		talk Magistrix Nizara##50484 |only if rep("Silvermoon City")<Exalted
		buy 1 Silvermoon City Tabard##45585 |goto Eversong Woods 54.20,50.80  |only if rep("Silvermoon City")<Exalted
]])

QuestCore:RegisterInclude("UCTabard",[[
		talk Captain Donald Adams##50304 |only if rep("Undercity")<Exalted
		buy 1 Undercity Tabard##45583 |goto Undercity 50.20,58.30 |only if rep("Undercity")<Exalted
]])
