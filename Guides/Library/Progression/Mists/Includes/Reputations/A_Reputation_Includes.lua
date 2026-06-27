-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Alliance" then return end

------------------------------
----- The Argent Crusade -----
------------------------------

QuestCore:RegisterInclude("Argent_Crusade_Rep",[[
	--step
	--	Routing to proper section. |next |only if not completedq(13082)
	--	Routing to proper section. |next "Tabard" |only if completedq(13082)
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
		collect 10 Forgotten Depths Venom Sac##42770|q 13040/1 |goto 84.40,74.30
		Kill the white spider wrappings around this area
		Free 8 Webbed Crusaders |q 13008/1 |goto 84.40,74.30
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
		Once you pick up a Captured Crusader, fly to the following location |goto 86.90,76.50 < 5 |walk
		Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
		Repeat this process 2 more times
		Rescue #3# Captured Crusaders |q 13045/1 |goto 79.00,67.40
	step
		Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle |q 13045
	step
		talk Highlord Tirion Fordring##28179
		turnin Into The Wild Green Yonder##13045 |goto 87.50,75.80
		accept A Cold Front Approaches##13070 |goto 87.50,75.80
	step
		talk Siegemaster Fezzik##30657
		turnin A Cold Front Approaches##13070 |goto 85.60,76.00
		accept The Last Line Of Defense##13086 |goto 85.60,76.00
	step
		Click the Argent Cannon to get on it |invehicle |c |q 13086 |goto 85.30,75.90
	step
		Use the skills on your hotbar to kill scourge mobs and dragons
		kill Forgotten Depths Slayer##30593+, Frostbrood Destroyer##30575+
		Kill #100# Scourge Attackers |q 13086/1
		kill 3 Frostbrood Destroyer##30575 |q 13086/2
	step
		Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle |c
	step
		talk Siegemaster Fezzik##30657
		turnin The Last Line Of Defense##13086 |goto 85.60,76.00
	step
		talk Highlord Tirion Fordring##28179
		accept Once More Unto The Breach, Hero##13105 |only DeathKnight |goto 86.00,75.80
		accept Once More Unto The Breach, Hero##13104 |only if not DeathKnight |goto 86.00,75.80
	step
		talk The Ebon Watcher##30596
		turnin Once More Unto The Breach, Hero##13105 |only DeathKnight |goto 83.00,72.90
		turnin Once More Unto The Breach, Hero##13104 |only if not DeathKnight |goto 83.00,72.90
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
		Click the portal that appears and travel to the Valley of Echoes |goto Icecrown 83.00,72.60 < 5
		talk The Ebon Watcher##30596
		turnin The Air Stands Still##13125 |goto 83.00,72.90
	step
		kill Unbound Ent##30862+, Unbound Dryad##30860+
		collect 8 Crystallized Energy##43225 |q 13135/1 |goto Crystalsong Forest 59.90,57.20
		click Crystalline Heartwood##192908
		collect 10 Crystalline Heartwood##43217 |q 13130/1 |goto Crystalsong Forest 59.90,57.20
	step
		click Ancient Elven Masonry##192912
		collect 10 Ancient Elven Masonry##43218 |q 13130/2 |goto 73.60,64.00
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
		Stand next to the Pile of Crusader Skulls
		Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
		Defend the Banner of the Crusade against oncoming attackers
		Complete the Battle for Crusaders' Pinnacle |q 13141/1 |goto 80.10,72.00
	step
		talk Father Gustav##30683
		turnin The Battle For Crusaders' Pinnacle##13141 |goto 82.90,72.80
		accept The Crusaders' Pinnacle##13157 |goto 82.90,72.80
	step
		talk Highlord Tirion Fordring##28179
		turnin The Crusaders' Pinnacle##13157 |goto 79.80,71.80
		accept A Tale of Valor##13068 |goto 79.80,71.80
	step
		talk Marshal Ivalius##31241
		accept The Skybreaker##13225 |goto 79.40,72.90
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
		talk Keeper Remulos##11832
		turnin The Keeper's Favor##13073 |goto Moonglade 36.20,41.80
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
		Tell him you want to go to the ground level of the temple |goto Dragonblight 59.50,53.30 < 5
		talk Crusader Bridenbrad##30562
		turnin The Boon of Alexstrasza##13079 |goto Icecrown 79.80,30.80
		accept Hope Yet Remains##13080 |goto Icecrown 79.80,30.80
	step
		talk Highlord Tirion Fordring##28179
		turnin Hope Yet Remains##13080 |goto 79.80,71.80
		accept The Will of the Naaru##13081 |goto 79.80,71.80
	step
		Click the Portal to Shattrath that appears near you
		talk A'dal##18481
		turnin The Will of the Naaru##13081 |goto Shattrath City 54,44.80
		accept The Boon of A'dal##13082 |goto Shattrath City 54,44.80
	step
		talk Crusader Bridenbrad##30562
		turnin The Boon of A'dal##13082 |goto Icecrown 79.80,30.80
	step
	label "Tabard"
		You should now be above Honored with the _Argent Crusade_
		The fastest way to continue to earn reputation with Argent Crusade is to buy a tabard and run any dungeon that gives experience
		|confirm
	step
		talk Veteran Crusader Aliocha Segard##30431
		buy 1 Tabard of the Argent Crusade##43154 |goto Icecrown 87.50,75.60
	step
		Equip this Tabard in your bags |equipped Tabard of the Argent Crusade##43154 |use Tabard of the Argent Crusade##43154
		You can run any dungeon in Northrend to gain reputation for the Argent Crusade
		Friendly with Argent Crusade |complete rep("Argent Crusade")>=Friendly
		Honored with Argent Crusade |complete rep("Argent Crusade")>=Honored
		Revered with Argent Crusade |complete rep("Argent Crusade")>=Revered
		Become Exalted with Argent Crusade |complete rep("Argent Crusade")==Exalted
	step
		Congratulations! You are now Exalted with the Argent Crusade!
]])

---------------------------
----- The Argent Dawn -----
---------------------------

QuestCore:RegisterInclude("Argent_Dawn_Rep",[[
	--step
	--	Routing to proper section |next |only if not completedq(27527)
	--	Routing to proper section |next "Annals" |only if completedq(27527)
	step
		talk Fiona##45417
		turnin Into the Woods##27683 |only if haveq(27683) |goto Eastern Plaguelands 9.00,66.50
		accept Gidwin Goldbraids##27367 |goto Eastern Plaguelands 9.00,66.50
		accept Tarenar Sunstrike##27370 |goto Eastern Plaguelands 9.00,66.50
	step
		talk Gidwin Goldbraids##45428
		turnin Gidwin Goldbraids##27367 |goto 4.10,36.00
		accept Just Encased##27368 |goto 4.10,36.00
	step
		Enter the tunnel |goto 4.70,35.60 < 10 |walk
		kill Crypt Stalker##8555+,Crypt Horror##8557+, Crypt Walker##8556+, Crypt Slayer##8558+
		|tip All inside this tunnel.
		collect 8 Crypt Bile##60983 |q 27368/1 |goto 5.10,33.40
	step
		Leave the tunnel |goto 4.70,35.60 < 10 |walk
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
		clicknpc Fiona's Caravan##45400
		Choose 1 of the 3 buffs you can choose from |goto 8.80,66.60
		|tip All of the buffs only work while you're in Eastern Plaguelands. Fiona's Lucky Charm gives you a chance to loot extra gold or items from enemies. Gidwin's Weapon Oil gives you a chance to do extra Holy damage on melee and ranged attacks. Tarenar's Talisman gives you a chance to do extra Holy damage on successful spell attacks.
		|confirm
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride Fiona's Caravan |q 27373/1 |goto 8.80,66.60
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
	stickystart "plaguebat"
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
		Enter the crypt |goto 24.20,78.50 < 10 |walk
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
	stickystart "scourgechampion"
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
	label "scourgechampion"
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
		kill Redpath the Corrupted##10938
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
		Complete the Argus' Journal quest |goto 53.00,53.10
		|tip This will give you a 2% experience bonus while in Eastern Plaguelands, so will allow you to level faster.  // %
		|confirm
	step
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
		kill 3 Mossflayer Rogue##45579+ |q 27449/1 |goto 52.80,51.40
	step
		talk Vex'tul##45574
		turnin Honor and Strength##27449 |goto 52.80,51.40
	stickystart "killwithpurpose"
	step
		clicknpc Plague Puffer##45650+
		collect 8 Plague Puffer##61292 |q 27450/1 |goto 50.20,61.30
		clicknpc Infectis Incher##45655+
		collect 8 Infectis Incher##61293 |q 27450/2 |goto 50.20,61.30
		clicknpc Infectis Scuttler##45657+
		collect 8 Infectis Scuttler##61294 |q 27450/3 |goto 50.20,61.30
	step
	label "killwithpurpose"
		kill Unseen Servant##8538+, Stitched Horror##8543+, Hate Shrieker##8541+, Dark Caster##8526+, Scourge Warder##8525+, Gibbering Ghoul##8531+
		collect 7 Living Rot##15447 |n
		|tip These only last 10 minutes, so keep an eye on the timer and try to get them as fast as you can.
		Use Mortar and Pestle once you have 7 Living Rot |use Mortar and Pestle##15454
		collect Coagulated Rot##15448 |q 27451/1 |goto 53.70,62.30
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin To Kill With Purpose##27451
	step
		kill Dark Summoner##8551+, Vile Tutor##8548+
		collect Death Cultist Headwear##61280 |q 27452/1 |goto 55.70,61.00
		collect Death Cultist Robes##61281 |q 27452/2 |goto 55.70,61.00
	step
		Click the _Quest Complete_ box:
		turnin Dark Garb##27452
		accept Catalysm##27453
	step
		Use Betina's Flasks on Plague Ravagers and Blighted Surges underwater |use Betina's Flasks##61284
		collect 8 Active Liquid Plague Agent##61285 |q 27453/1 |goto 57.60,72.60
	step
		Click the _Quest Complete_ box:
		turnin Catalysm##27453
		accept Just a Drop in the Bucket##27454
	step
		Use your Death Cultist Disguise |use Death Cultist Disguise##61283
		Wear your Death Cultist Disguise |havebuff spell:85141 |q 27454 |goto 61.70,75.50 --inv_helmet_152
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
		home Light's Hope Chapel |goto 75.60,52.40
	step
		talk Leonid Barthalomew the Revered##11036
		accept The Brotherhood of Light##27459 |goto 75.60,52.00
	step
		talk Lord Maxwell Tyrosus##11034
		turnin A Boyhood Dream##27463 |goto 75.90,52.00
		accept Argent Call: The Trial of the Crypt##27464 |goto 75.90,52.00
	step
		Enter the crypt |goto 77.20,50.80 < 10 |walk
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
		Run up the path |goto 72.10,41.60 < 10 |only if walking
		kill 16 Noxious Glade Scourge |q 27465/1 |goto 77.40,37.30
		kill 8 Noxious Glade Cultists |q 27465/2 |goto 77.40,37.30
		clicknpc Slain Scourge Trooper##45695+
		Bury #10# Blades |q 27467/1
		kill Diseased Flayer##8532+, Dread Weaver##8528+, Death Singer##8542+
		kill Skullmage##45691+, Noxious Assassin##45692+
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
		Open the Portal Within the Hall of Arms |q 27612/1 |goto 78.60,72.90
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
	stickystart "mossflayereye"
	step
		Run up the path |goto 58.90,20.40 < 10 |only if walking
		Don't walk over the dirt piles on the ground, they spawn more enemies
		kill Warlord Thresh'jin##10822
		|tip Don't worry that he's elite, you can kill him easily.
		collect Body of Warlord Thresh'jin##61315 |q 27481/1 |goto 66.80,9.90
	step
		Click the _Quest Complete_ box:
		turnin Out of the Ziggurat##27481
		accept Into the Flames##27482
	step
		Use the Body of Warlordw Thresh'jin next to the Bonfire at the top of the temple |use Body of Warlord Thresh'jin##61316
		Burn Warlord Thresh'jin's Body |q 27482/1 |goto 67.40,9.00
	step
		Click the _Quest Complete_ box:
		turnin Into the Flames##27482
	step
	label "mossflayereye"
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
		kill Scourge Siege Engineer##17878+
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
		kill Karthis Darkrune##45868 |q 27525/2
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
		All around Plaguewood, do the following:
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
		Lying on the ground all around this area:
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
		|tip The Receipt Book is upstairs in the far room.
		collect Augustus' Receipt Book##15884 |q 27534/1 |goto 14.20,26.30
	step
	label "plaguedswine"
		kill 9 Plagued Swine##16117+ |q 27533/1 |goto 14.40,28.50
	step
		talk Augustus the Touched##12384
		turnin A Fate Worse Than Butchery##27533 |goto 11.30,28.60
		turnin Augustus' Receipt Book##27534 |goto 11.30,28.60
	step
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
		collect Annals of the Silver Hand##65615 |q 28755/1 |repeatable |goto Stratholme 27.50,74.70
	step
		talk Lord Raymond George##49856
		turnin Annals of the Silver Hand##28755 |goto Eastern Plaguelands 76.20,51.00
		|tip If you do not reset your instance then you will only be forced to clear mobs one time.
		Earn Exalted reputation with the Argent Dawn |complete rep('Argent Dawn')==Exalted |only if rep('Argent Dawn')==Exalted
		|next "Annals" |only if rep('Argent Dawn')<=Revered
]])

---------------------------
----- Cenarian Circle -----
---------------------------

QuestCore:RegisterInclude("Cenarion_Circle_Rep",[[
	step
	label "menu"
		There are several ways to earn reputation with _Cenarion Circle_. Earning Exalted with this Faction is half of the _Achievement Guardian of Cenarius_.
		You can _farm mobs and bosses_ in the _Ruins of Ahn'Qiraj_. You would need at least 1 other person to form the raid.
		There are a large number of _quests_ available at _Cenarion Hold_, but once those are completed you'll need to grind your way to Exalted. Click here to go to these quests |confirm always |next "quest"
		The _only repeatable quest_ as of 4.20 is from Bor Wildmane at Cenarion Hold. You will need to _collect 10 Encrypted Twilight Text_ per _turn in_. Click here to continue |confirm always |next "farm_text"
		Reach Exalted Reputation with Cenarion Circle Faction |only if rep('Cenarion Circle')==Exalted
	step
	label "quest"
		talk Windcaller Proudhorn##15191
		accept Securing the Supply Lines##8280 |goto Silithus 54.90,36.00
	step
		click Wanted Poster: Deathclasp##180448
		accept Wanted - Deathclasp, Terror of the Sands##8283 |goto 55.00,36.00
		|tip You must kill an elite mob for this quest, so you may need a partner if you cannot solo it. You can skip this quest if you can't solo it and can't find a partner to help.
	step
		talk Calandrath##15174
		home Cenarion Hold |goto 55.50,36.80
	step
		talk Beetix Ficklespragg##15189
		accept Deadly Desert Venom##8277 |goto 55.40,36.30
	step
		talk Rifleman Torrig##17082
		accept Report to Marshal Bluewall##9415 |goto 54.50,33.00
	step
		talk Bor Wildmane##15306
		accept Secret Communication##8318 |goto 53.20,35.10
	step
		talk Huum Wildmane##15270
		accept Twilight Geolords##8320 |goto 53.20,35.10
	step
		kill Twilight Avenger##11880+, Twilight Stonecaller##11882+
		collect 10 Encrypted Twilight Text##20404 |q 8318/1 |goto 45.40,41.30
		collect 20 Encrypted Twilight Text##20404 |q 8323 |goto 45.40,41.30 |future
		|tip You need 10 extra Encrypted Twighlight Text for a future quest.
		kill 10 Twilight Geolord##11881+ |q 8320/1 |goto 45.40,41.30
	step
		kill Sand Skitterer##11738+
		collect 8 Sand Skitterer Fang##20376 |q 8277/2 |goto 46.20,34.80
		kill Stonelash Scorpid##11735+
		collect 8 Stonelash Scorpid Stinger##20373 |q 8277/1 |goto 46.20,34.80
		kill 15 Dredge Striker##11740+ |q 8280/1 |goto 46.20,34.80
	step
		talk Beetix Ficklespragg##15189
		turnin Deadly Desert Venom##8277 |goto 55.40,36.30
		accept Noggle's Last Hope##8278 |goto 55.40,36.30
	step
		talk Windcaller Proudhorn##15191
		turnin Securing the Supply Lines##8280 |goto 54.90,36.00
		accept Stepping Up Security##8281 |goto 54.90,36.00
	step
		talk Bor Wildmane##15306
		turnin Secret Communication##8318 |goto 52.70,35.60
	step
		talk Huum Wildmane##15270
		turnin Twilight Geolords##8320 |goto 52.70,35.70
		accept Vyral the Vile##8321 |goto 52.70,35.70
	step
		Enter the cave |goto 70.20,16.10 < 5 |walk
		|tip Follow the path inside the cave.
		kill Vyral the Vile##15202
		collect Vyral's Signet Ring##20466 |q 8321/1 |goto 73.10,16.50
	step
		Leave the cave |goto 70.20,16.10 < 5 |walk
		talk Huum Wildmane##15270
		turnin Vyral the Vile##8321 |goto 52.70,35.60
	step
		talk Geologist Larksbane##15183
		accept The Twilight Mystery##8284 |goto 53.60,35.30
	step
		click Twilight Tablet Fragments##180436
		collect 8 Twilight Tablet Fragment##20378 |q 8284/1 |goto 31.00,13.60
	step
		talk Geologist Larksbane##15183
		turnin The Twilight Mystery##8284 |goto 53.60,35.30
		accept The Deserter##8285 |goto 53.60,35.30
	step
		talk Commander Mar'alith##15181
		accept Dearest Natalia##8304 |goto 53.20,32.50
	step
		talk Hermit Ortell##15194
		turnin The Deserter##8285 |goto 68.70,63.00
		accept The Twilight Lexicon##8279 |goto 68.70,63.00
	step
		talk Marshal Bluewall##17080
		turnin Report to Marshal Bluewall##9415 |goto 39.60,47.00
	stickystart "dredgecrusher"
	step
		kill Twilight Keeper Havunth##11804
		|tip He walks around this area in a purple robe, so you may need to search for him.
		collect Twilight Lexicon - Chapter 3##20396 |q 8279/3 |goto 46.20,39.80
	step
		kill Twilight Keeper Mayna##15200
		|tip She walks around this area carrying a book, so you may need to search for her.
		collect Twilight Lexicon - Chapter 1##20394 |q 8279/1 |goto 33.90,34.10
	step
	label "dredgecrusher"
		kill 20 Dredge Crusher##11741+ |q 8281/1 |goto 44.90,48.70
		You can find more Dredge Crushers at the following location |goto Silithus 37.90,32.40
	step
		kill Stonelash Flayer##11737+
		collect 3 Stonelash Flayer Stinger##20375 |q 8278/1 |goto 42.80,63.50
		kill Stonelash Pincer##11736+
		collect 3 Stonelash Pincer Stinger##20374 |q 8278/2 |goto 42.80,63.50
		kill Rock Stalker##11739+
		collect 3 Rock Stalker Fang##20377 |q 8278/3 |goto 42.80,63.50
	step
		talk Windcaller Proudhorn##15191
		turnin Stepping Up Security##8281 |goto 54.90,36.00
	step
		talk Beetix Ficklespragg##15189
		turnin Noggle's Last Hope##8278 |goto 55.40,36.30
	step
		talk Noggle Ficklespragg##15190
		accept Noggle's Lost Satchel##8282 |goto 55.30,36.20
	step
		talk Frankal Stonebridge##15171
		Tell him _"I've heard you might have some information as to the weareabouts of Mistress Natalia Mar'alith."_
		Question Frankal |q 8304/1 |goto 46.00,79.40
	step
		talk Rutgar Glyphshaper##15170
		Tell him _"The Commander has sent me here to gather some information about your missing wife."_
		Question Rutgar |q 8304/2 |goto 46.40,79.10
	step
		Click the _Quest Complete_ box:
		turnin Dearest Natalia##8304
		accept Into The Maw of Madness##8306
	step
		Follow the path up |goto 47.40,81.10 < 10
		click Noggle's Satchel##180435
		|tip Be careful of Deathclasp, the elite scorpion that patrols this small area.
		collect Noggle's Satchel##20379 |q 8282/1 |goto 49.20,81.60
	step
		kill Deathclasp##15196
		collect Deathclasp's Pincer##20385 |q 8283/1 |goto 49.50,81.30
		|tip Deathclasp is an elite mob, so you may need a partner if you cannot solo him. You can skip this quest if you can't solo it and can't find a partner to help.
	step
		kill Twilight Keeper Exeter##11803
		collect Twilight Lexicon - Chapter 2##20395 |q 8279/2 |goto 24.80,77.30
	step
		talk Noggle Ficklespragg##15190
		turnin Noggle's Lost Satchel##8282 |goto 55.30,36.20
	step
		Follow the path up |goto 54.30,34.00 < 10
		talk Vish Kozus##15182
		turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto 54.50,32.00
	step
		talk Frankal Stonebridge##15171
		accept Breaking the Code##8310 |goto 46.00,79.40
	step
		talk Rutgar Glyphshaper##15170
		accept Glyph Chasing##8309 |goto 46.40,79.10
	step
		Enter the hive |goto 58.50,78.40 < 10 |walk
		Follow the path |goto 57.20,79.20 < 10 |walk
		Continue along the path |goto 56.40,83.00 < 10 |walk
		Follow the path towards the open room |goto 56.10,87.80 < 10 |walk
		kill Mistress Natalia Mar'alith##15215
		Discover the Fate of Mistress Natalia Mar'alith |q 8306/1 |goto 55.60,90.60
	step
		click the Hive'Regal Glyphed Crystal##6414
		Select _"<Use the transcription device to gather a rubbing.>"_
		collect Hive'Regal Rubbing##20456 |q 8309/1 |goto 55.60,90.50
	step
		Enter the tunnel |goto 56.10,87.80 < 10 |walk
		Follow the path |goto 56.40,83.00 < 10 |walk
		Continue along the path |goto 57.20,79.20 < 10 |walk
		Leave the hive |goto 58.50,78.40 < 10 |walk
		kill Hive'Regal Ambusher##11730+, Hive'Regal Slavemaker##11733+, Hive'Regal Spitfire##11732+, Hive'Regal Hive Lord##11734+
		collect Hive'Regal Silithid Brain##20459 |q 8310/1 |goto 59.30,74.80
		collect 1 Brann Bronzebeard's Lost Letter##20461 |n
		Use Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
		accept Brann Bronzebeard's Lost Letter##8308 |goto 59.30,74.80
	step
		Follow the path up |goto 65.80,76.50 < 10 |only if walking
		talk Hermit Ortell##15194
		turnin The Twilight Lexicon##8279 |goto 68.70,63.00
		accept A Terrible Purpose##8287 |goto 68.70,63.00
		accept True Believers##8323 |goto 68.70,63.00
	step
		talk Commander Mar'alith##15181
		turnin Into The Maw of Madness##8306 |goto 53.20,32.50
		turnin A Terrible Purpose##8287 |goto 53.20,32.50
	step
		kill Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
		collect 10 Encrypted Twilight Text##20404 |q 8323/1 |goto 45.40,41.30
	step
		talk Frankal Stonebridge##15171
		turnin Breaking the Code##8310 |goto 46.00,79.40
	step
		talk Rutgar Glyphshaper##15170
		turnin Brann Bronzebeard's Lost Letter##8308 |goto 46.40,79.10
		turnin Glyph Chasing##8309 |goto 46.40,79.10
		accept Unraveling the Mystery##8314 |goto 46.40,79.10
	step
		Follow the path up |goto 65.80,76.50 < 10 |only if walking
		talk Hermit Ortell##15194
		turnin True Believers##8323 |goto 68.70,63.00
	step
		talk Geologist Larksbane##15183
		turnin Unraveling the Mystery##8314 |goto 53.60,35.30 |next "menu"
	step
	label "farm_text"
		map Silithus
		path loop on
		path	45.60,40.10	28.00,74.80	69.70,16.60
		path	33.50,33.90
		Kill the enemies at the provided locations
		kill Twilight Avenger##11880+, Twilight Keeper Havunth##11804+, Twilight Stonecaller##11882+, Twilight Geolord##11881+
		collect Encrypted Twilight Text##20404 |n
		When you have a lot of Twilight Texts to turn in, click here |confirm
	step
		talk Bor Wildmane##15306
		accept Encrypted Twilight Texts##8319 |goto Silithus,53.20,35.10 |n
		You can click here to farm more Texts |confirm |next "farm_text"
		Click here to do quests outside of Silithus for more rep |confirm
	step
		talk Zen'Aliri##38269
		accept Finding Stormclaw##24854 |goto Un'Goro Crater 55.70,60.60
	step
		talk Garl Stormclaw##38274
		turnin Finding Stormclaw##24854 |goto 70.80,76.40
		accept Claws of White##24719 |goto 70.80,76.40
	step
		kill Ravasaur##6505+, Ravasaur Runner##6506+, Ravasaur Hunter##6507+, Venomhide Ravasaur##6508+
		collect 5 White Ravasaur Claw##11477 |q 24719/1 |goto 67.40,72.30
		More can be found at the following location |goto Un'Goro Crater 69.10,57.10
	step
		talk Garl Stormclaw##38274
		turnin Claws of White##24719 |goto 70.60,76.80
		accept Carried on the Waves##24686 |goto 70.60,76.80
	step
		While traveling to the coordinates, look in the water for Bloodpetal Seeds
		Catch the Bloodpetal Seeds with Garl's Net |use Garl's Net##50441
		collect 4 Un'Goro Lasher Seed##50253 |q 24686/1 |goto 73.50,60.20
	step
		talk Garl Stormclaw##38274
		turnin Carried on the Waves##24686 |goto 70.60,75.90
		accept Flowing to the North##24689 |goto 70.60,75.90
	step
		talk Ithis Moonwarden##38263
		turnin Flowing to the North##24689 |goto 76.40,48.30
		accept Bouquets of Death##24687 |goto 76.40,48.30
	step
		Attack the Juvenile Bloodpetals in the area
		kill 6 Pack of Juvenile Bloodpetal##38213+ |q 24687/1 |goto 75.80,44.10
	step
		talk Ithis Moonwarden##38263
		turnin Bouquets of Death##24687 |goto 76.40,48.30
		accept Aberrant Flora##24855 |goto 76.40,48.30
	step
		kill 11 Bloodpetal##6512+ |q 24855/1 |goto 69.90,34.10
	step
		talk Ithis Moonwarden##38263
		turnin Aberrant Flora##24855 |goto 76.40,48.30
	step
		talk Adrine Towhide##44456
		accept Zen'Kiki, the Druid##26953 |goto Western Plaguelands 48.90,54.80
	step
		talk Selyria Groenveld##44457
		accept I Ain't Sayin' You a Gourd-Digger...##26956 |goto 48.50,54.90
	step
		click Unhealthy-Looking Pumpkin##6326
		kill Thrashing Pumpkin##44487+
		Remove #3# Unhealthy-Looking Pumpkins |q 26956/3 |goto 47.40,52.90
	step
		click Rotten Apple##9820+
		kill Pome Wraith##44488+
		Remove #4# Rotten Apples |q 26956/2 |goto 46.80,54.10
	step
		click Bad Corn##9819
		kill Corn Stalker##44489+
		Remove #6# Bad Corn |q 26956/1 |goto 45.80,53.40
	step
		kill Plague Lurker##1824+, Venom Mist Lurker##1822+, Diseased Wolf##1817+, Hulking Plaguebear##44482+
		|tip You must do this with the Troll Zen'Kiki next to you. If you lose him, return to the Menders' Stead and talk to him.
		Kill #20# Wildlife with Zen'Kiki |q 26953/1 |goto 50.30,59.60
	step
		talk Adrine Towhide##44456
		turnin Zen'Kiki, the Druid##26953 |goto 48.90,54.80
		accept A Different Approach##26954 |goto 48.90,54.80
	step
		talk Selyria Groenveld##44457
		turnin I Ain't Sayin' You a Gourd-Digger...##26956 |goto 48.50,54.90
	step
		Click Zen'Kiki
		|tip He's the Troll that's following you around. Keep clicking him to pull the Diseased Hawks down to you.
		kill 7 Diseased Hawk##44481 |q 26954/1 |goto 53.90,53.70
	step
		talk Adrine Towhide##44456
		turnin A Different Approach##26954 |goto 48.90,54.80
	step
		talk Field Agent Kaartish##44454
		accept A New Era for the Plaguelands##26999 |goto 49.30,55.00
	step
		kill Hulking Plaguebear##44482+
		collect 4 Hulking Plaguebear Sample##60762 |q 26999/3 |goto 46.00,48.70
		kill Diseased Wolf##1817+
		collect 4 Diseased Wolf Sample##60763 |q 26999/4 |goto 46.00,48.70
	step
		kill Plague Lurker##1824+
		collect 4 Plague Lurker Sample##60760 |q 26999/1 |goto 57.00,62.70
		kill Venom Mist Lurker##1822+
		collect 4 Venom Mist Lurker Sample##60761 |q 26999/2 |goto 57.00,62.70
	step
		talk Field Agent Kaartish##44454
		turnin A New Era for the Plaguelands##26999 |goto 49.30,55.00
		accept Northridge Lumber Mill##26935 |goto 49.30,55.00
	step
		talk Nathaniel Dumah##11616
		turnin Northridge Lumber Mill##26935 |goto 48.10,32.40
		accept Learning the Ropes##27000 |goto 48.10,32.40
	step
		clicknpc Hearthglen Mustang##44836
		Ride the Hearthglen Mustang |invehicle |c |q 27000 |goto 47.70,31.70
	step
		Use your Whinny ability on your hotbar near Northridge Spiders
		Frighten #25# Northridge Spiders |q 27000/1 |goto 47.40,35.00
	step
		Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27000
	step
		talk Nathaniel Dumah##11616
		turnin Learning the Ropes##27000 |goto 48.10,32.40
		accept This Means WAR (Wild Arachnid Roundup)##27001 |goto 48.10,32.40
	step
		clicknpc Hearthglen Mustang##44836
		Ride the Hearthglen Mustang |invehicle |c |q 27001 |goto 47.70,31.70
	step
		Use your Whinny ability on your hotbar near Northridge Spiders
		Continuously scare the Northridge Spiders and try to make them run to [48.00,32.90]
		The Hearthglen Recruits will kill the Northridge Spiders
		Lure #10# Northridge Spiders to Lumber Mill |q 27001/1 |goto 47.00,35.30
	step
		Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
	step
		talk Nathaniel Dumah##11616
		turnin This Means WAR (Wild Arachnid Roundup)##27001 |goto 48.10,32.40
		accept An Audience with the Highlord##27002 |goto 48.10,32.40
	step
		talk Highlord Tirion Fordring##44441
		turnin An Audience with the Highlord##27002 |goto 42.00,14.80
	step
		talk Field Agent Kaartish##44454
		accept Gahrron's Withering Cauldron##27053 |goto 49.30,54.90
	step
		kill Cauldron Lord Soulwrath##11078
		collect Gahrron's Withering Cauldron Key##13196 |q 27053/1 |goto 62.70,58.90
	step
		Click the Scourge Cauldron
		|tip It's a huge shaking black pot with orange liquid in it on a stone platform.
		turnin Gahrron's Withering Cauldron##27053 |goto 62.60,58.60
		accept Return to the Stead##27057 |goto 62.60,58.60
	step
		talk Field Agent Kaartish##44454
		turnin Return to the Stead##27057 |goto 49.30,55.00
	step
		talk Adrine Towhide##44456
		accept Zen'Kiki and the Cultists##26955 |goto 48.90,54.80
	step
		Click Cultist Cages
		|tip They look like big yellow cages around this area.
		Free and Heal #4# Captive Plaguebears |q 26955/1 |goto 66.70,48.90
	step
		talk Adrine Towhide##44456
		turnin Zen'Kiki and the Cultists##26955 |goto 48.90,54.80
	step
		talk Carlin Redpath##11063
		accept Little Pamela##27383 |goto Eastern Plaguelands 35.60,68.90
	step
		talk Pamela Redpath##10926
		turnin Little Pamela##27383 |goto Eastern Plaguelands 32.50,83.70
		accept Pamela's Doll##27384 |goto Eastern Plaguelands 32.50,83.70
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
		talk Pamela Redpath##10926
		turnin Pamela's Doll##27384 |goto 32.40,83.70
		accept I'm Not Supposed to Tell You This##27392 |goto 32.40,83.70
	step
		kill The Lone Hunter##45450
		collect Joseph's Hunting Blade##60987 |q 27392/1 |goto 40.30,83.80
	step
		talk Pamela Redpath##10926
		turnin I'm Not Supposed to Tell You This##27392 |goto 32.50,83.60
		accept Uncle Carlin##27385 |goto 32.50,83.60
	step
		talk Carlin Redpath##11063
		turnin Uncle Carlin##27385 |goto 35.60,68.90
		accept A Strange Historian##27386 |goto 35.60,68.90
	step
		talk Chromie##10667
		turnin A Strange Historian##27386 |goto 35.30,68.10
	step
		talk Urk Gagbaz##45500
		accept Cenarion Tenacity##27544 |goto Eastern Plaguelands 35.00,68.10
	step
		talk Rayne##16135
		turnin Cenarion Tenacity##27544 |goto 30.20,56.90
		accept Postponing the Inevitable##27420 |goto 30.20,56.90
		accept Amidst Death, Life##27421 |goto 30.20,56.90
	stickystart "shadowmage"
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
	label "shadowmage"
		kill Shadowmage##8550+, Dark Adept##8546+
		collect Plague Disseminator Control Rune##61037 |n
		Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
		Destroy #3# Plague Disseminators |q 27420/1 |goto 36.40,46.00
	step
		talk Rayne##16135
		turnin Postponing the Inevitable##27420 |goto 30.20,56.90
		turnin Amidst Death, Life##27421 |goto 30.20,56.90
]])

-------------------------------
----- Cenarian Expedition -----
-------------------------------

QuestCore:RegisterInclude("Cenarion_Expedition_Rep",[[
	step
		You will need to farm Cenarion Circle and Cenarion Expedition reputation.
		Farming rep in the dungeons Slave Pens and Underbog is a good way to gain reputation up to honoroed.
		You can also kill naga or any mobs for Unidentified Plant Parts until friendly.
		You can also grind reputation from Heroic Coilfang Instances up to exalted if you would rather do that.
		confirm always
	step
		kill Crust Burster##16844+
		|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
		collect Eroded Leather Case##23338 |n
		Use the Eroded Leather Case |use Eroded Leather Case##23338
		accept Missing Missive##9373 |goto Hellfire Peninsula 47.80,65.80
	step
		talk Thiah Redmane##16991
		turnin Missing Missive##9373 |goto 15.70,52
		accept Demonic Contamination##9372 |goto 15.70,52
	step
		kill Hulking Helboar##16880+
		collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto 24.90,54.30
	step
		talk Thiah Redmane##16991
		turnin Demonic Contamination##9372 |goto 15.70,52
		accept Testing the Antidote##10255 |goto 15.70,52
	step
		talk Mahuram Stouthoof##16888
		accept Keep Thornfang Hill Clear!##10159 |goto 15.70,52
	step
		Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
		kill Dreadtusk##16992
		Administer the Antidote |q 10255/1 |goto 25,54
	step
		talk Thiah Redmane##16991
		turnin Testing the Antidote##10255 |goto 15.70,52
	step
		kill 8 Thornfang Ravager##19349+ |q 10159/1 |goto 10.10,53.20
		kill 8 Thornfang Venomspitter##19350+ |q 10159/2 |goto 10.10,53.20
	step
		talk Mahuram Stouthoof##16888
		turnin Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula 15.70,52
	step
		talk Tola'thion##19293
		accept Colossal Menace##10132 |goto 15.60,52.00
	step
		kill 5 Raging Colossus##19188+ |q 10132/1 |goto 14.70,44.60
		collect Crimson Crystal Shard##29476 |n
		Click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
		accept Crimson Crystal Clue##10134 |goto 14.70,44.60
	step
		talk Tola'thion##19293
		turnin Colossal Menace##10132 |goto 15.60,52.00
		turnin Crimson Crystal Clue##10134 |goto 15.60,52.00
		accept The Earthbinder##10349 |goto 15.60,52.00
	step
		talk Earthbinder Galandria Nightbreeze##19294
		turnin The Earthbinder##10349 |goto 16.00,51.60
		accept Natural Remedies##10351 |goto 16.00,51.60
	step
		Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478
		|tip It's a bright green symbol on the ground.
		kill Goliathon##19305
		Revitalize Fallen Sky Ridge |q 10351/1 |goto 13.60,39.10
	step
		talk Earthbinder Galandria Nightbreeze##19294
		turnin Natural Remedies##10351 |goto 16.00,51.60
	step
		talk Lauranna Thar'well##17909
		accept Plants of Zangarmarsh##9802 |goto Zangarmarsh 80.40,64.20
		talk Ikeyen##17956
		accept The Umbrafen Tribe##9747 |goto Zangarmarsh 80.40,64.20
	step
		talk Warden Hamoot##17858
		accept A Warm Welcome##9728 |goto 79.10,65.30
	step
		talk Lethyn Moonfire##17834
		accept The Dying Balance##9895 |goto 78.50,63.10
	step
		talk Ysiel Windsinger##17841
		accept Disturbance at Umbrafen Lake##9716 |goto 78.40,62
	stickystart "unidentifiedplants"
	step
		kill Boglash##18281##18281 |q 9895/1 |goto 81,72.20
		|tip He is a tall, alien-looking, spore walker who walks in the river around here.
	step
	label "unidentifiedplants"
		Kill plant and spore enemies in this area
		collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 80.10,73.30
	step
		talk Lauranna Thar'well##17909
		turnin Plants of Zangarmarsh##9802 |goto 80.40,64.20
	step
		talk Lethyn Moonfire##17834
		turnin The Dying Balance##9895 |goto 78.50,63.10
	stickystart "umbrafenmobs"
	step
		kill Kataru##18080 |q 9747/1 |goto 85.30,90.90
		|tip In the big building, all the way at the top.
	step
	label "umbrafenmobs"
		kill 6 Umbrafen Oracle##18077+ |q 9747/2 |goto 83.10,85.20
		kill 8 Umbrafen Seer##18079+ |q 9747/3 |goto 83.10,85.20
		kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4 |goto 83.10,85.20
	step
		talk Kayra Longmane##17969
		accept Escape from Umbrafen##9752 |goto 83.40,85.50
		Escort Kayra Longmane to Safety |q 9752/1 |goto 83.40,85.50
	step
		talk Ikeyen##17956
		turnin The Umbrafen Tribe##9747 |goto 80.40,64.20
		accept A Damp, Dark Place##9788 |goto 80.40,64.20
	step
		talk Lauranna Thar'well##17909
		accept Saving the Sporeloks##10096 |goto 80.40,64.20
	step
		talk Windcaller Blackhoof##18070
		accept Safeguarding the Watchers##9894 |goto 80.40,64.70
	step
		talk Ysiel Windsinger##17841
		turnin Escape from Umbrafen##9752 |goto 78.40,62
	stickystart "marshlurker"
	step
		Follow the path up |goto Zangarmarsh 74.70,91.60 < 10 |only if walking
		Enter the cave |goto 70.50,97.90 < 5 |walk
		click Ikeyen's Belongings##182122
		collect Ikeyen's Belongings##24411 |q 9788/1 |goto 70.60,97.90
	step
		Follow the path to the northeast |goto 72.50,94.00 |walk
		kill Lord Klaq##18282 |q 9894/1
		|tip On the bottom level of the cave, in the small round room all the way in the back.
	step
	label "marshlurker"
		kill 10 Marsh Lurker##18136+ |q 10096/2 |goto 75.70,90.20
		kill 10 Marsh Dredger##18137+ |q 10096/1 |goto 75.70,90.20
	stickystart "darkcreststuff"
	step
		Investigate Umbrafen Lake |q 9716/1 |goto 70.90,82.10
	step
	label "darkcreststuff"
		kill Darkcrest Slaver##19946+,Darkcrest Sorceress##19947+
		collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 70.90,82.10
		collect 30 Naga Claws##24280 |q 9728/1 |goto 70.90,82.10
		You can find more Naga at the following locations:
		Location 1: |goto 73.40,82.30
		Location 2: |goto 72.20,75.80
	step
		talk Windcaller Blackhoof##18070
		turnin Safeguarding the Watchers##9894 |goto 80.40,64.70
	step
		talk Ikeyen##17956
		turnin A Damp, Dark Place##9788 |goto 80.40,64.20
		talk Lauranna Thar'well##17909
		turnin Saving the Sporeloks##10096 |goto 80.40,64.20
		Turn in any stacks of 10 Unidentified Plant Parts you have
		If you found an Uncatalogued Species, turn that in also
	step
		talk Warden Hamoot##17858
		turnin A Warm Welcome##9728 |goto 79.10,65.30
	step
		talk Lethyn Moonfire##17834
		accept What's Wrong at Cenarion Thicket?##9957 |goto 78.50,63.10
	step
		talk Ysiel Windsinger##17841
		turnin Disturbance at Umbrafen Lake##9716 |goto 78.40,62
		accept As the Crow Flies##9718 |goto 78.40,62
	step
		Use your Stormcrow Amulet |use Stormcrow Amulet##25465
		|tip Watch yourself fly as a crow.
		Explore the Lakes of Zangarmarsh |q 9718/1
	step
		talk Ysiel Windsinger##17841
		turnin As the Crow Flies##9718 |goto 78.40,62
		accept Balance Must Be Preserved##9720 |goto 78.40,62
	step
		talk Windcaller Blackhoof##18070
		accept Blessings of the Ancients##9785 |goto 80.40,64.70
	step
		talk Keleth##17901
		Get the Mark of War |q 9785/2 |goto 78.10,63.80
	step
		talk Ashyen##17900
		Get the Mark of Lore |q 9785/1 |goto 81.10,63.90
	step
		talk Windcaller Blackhoof##18070
		turnin Blessings of the Ancients##9785 |goto 80.40,64.70
	step
		Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
		Disable the Umbrafen Lake Pump Controls |q 9720/1 |goto 70.60,80.30
		|tip The pump controls look like a little box with some levers on it.
	step
		Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355
		Disable the Lagoon Pump Controls |q 9720/4 |goto 63.10,64.10
		|tip The pump controls look like a little box with some levers on it.
	stickystart "getdrainschematic"
	step
		Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355
		|tip The pump controls look like a little box with some levers on it.
		Disable the Serpent Lake Controls |q 9720/3 |goto 62,40.80
	step
	label "getdrainschematic"
		kill Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, and Bloodscale Wavecaller##20089+
		collect Drain Schematics##24330 |n
		Click the Drain Schematics in your bags |use Drain Schematics##24330
		accept Drain Schematics##9731 |goto 62,40.80
	step
		Swim straight down into the big bubbling pipe opening below until you discover the drain
		Locate the drain in Serpent Lake |q 9731/1 |goto 50.40,40.80
	step
		Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
		Disable the Umbrafen Lake Pump Controls |q 9720/2 |goto 25.40,42.90
		|tip The pump controls look like a little box with some levers on it.
	step
		talk Ysiel Windsinger##17841
		turnin Balance Must Be Preserved##9720 |goto 78.40,62
		turnin Drain Schematics##9731 |goto 78.40,62
		accept Warning the Cenarion Circle##9724 |goto 78.40,62
	step
		talk Lethyn Moonfire##17834
		accept What's Wrong at Cenarion Thicket?##9957 |goto 78.50,63.10
	step
		talk Amythiel Mistwalker##16885
		turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula 16,52.20
		accept Return to the Marsh##9732 |goto Hellfire Peninsula 16,52.20
	step
		talk Ysiel Windsinger##17841
		turnin Return to the Marsh##9732 |goto Zangarmarsh 78.40,62
		accept Checking Up##29566 |goto Zangarmarsh 78.40,62
		accept Storming the Steamvault##29616 |goto Zangarmarsh 78.40,62
	step
		talk Watcher Jhang##54667
		turnin Checking Up##29566 |goto The Slave Pens 18.90,11.30
	step
		talk Watcher Jhang##54667
		accept Lost in Action##29563 |goto The Slave Pens 18.90,11.30
		accept The Heart of the Matter##29565 |goto The Slave Pens 18.90,11.30
	step
		talk Nahuud##54668
		accept A Brother Betrayed##29564 |goto 17.90,12.10
	step
		Follow the path and go straight through the main room |goto 25.00,51.20 < 10 |only if walking
		Go through the hallway |goto 40.20,35.50 < 10 |only if walking
		You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro
		kill Mennu the Betrayer##17941 |q 29564/1 |goto 48.80,24.30
	step
		talk Weeder Greenthumb##17890
		Discover Weeder Greenthumb |q 29563/2 |goto 48.90,83.40
	step
		kill Rokmar the Crackler##17991+
		collect The Invader's Claw##72118 |q 29565/1 |goto 57.30,45.40
	step
		Follow the path up |goto 74.90,51.40 < 10
		talk Naturalist Bite##17893
		Discover Naturalist Bite |q 29563/2 |goto 95.70,66.20
	step
		Be ready to fight a couple mobs
		kill Coilfang Champion##17957+, Coilfang Enchantress##17961+
		talk Naturalist Bite##17893
		Tell him _"Naturalist, please grant me your boon."_
		Receive the Mark of Bite |havebuff spell:34906 |goto 95.70,66.20 |q 29565
	step
		kill Quagmirran##17942+
		collect The Slave Master's Eye##72119 |q 29565/2 |goto The Slave Pens 86.20,67.90
	step
		talk Nahuud##54668
		turnin A Brother Betrayed##29564 |goto The Slave Pens 17.90,12.20
	step
		talk Watcher Jhang##54667
		turnin Lost in Action##29563 |goto 18.80,11.30
	step
		talk Naturalist Bite##54678
		accept A Necessary Evil##29568 |goto The Underbog 29.50,64.70
	step
		talk Watcher Jhang##54675
		accept Rescuing the Expedition##29570 |goto 30.90,65.30
	step
		talk T'shu##54674
		accept Stalk the Stalker##29567 |goto 31.50,65.50
		accept Bring Me A Shrubbery!##29691 |goto 31.50,65.50
	stickystart "sanguinehibiscus"
	step
		Keep following this straight path |goto 42.50,62.00 < 10
		Follow the path up and around |goto 57.40,82.90 < 10
		He will summon mushrooms, these will explode to deal damage to player, and heal the boss.
		|tip Keep moving him so that doesn't happen.
		kill Hungarfen##17770 |q 29568/1 |goto 70.00,90.00
	step
		kill Ghaz'an##18105 |goto 77.20,43.80
		confirm |q 29567
	step
		Jump down into the water |goto 78.90,24.50 < 10
		Swim across the water and jump down |goto 79.60,15.20 < 10
		talk Earthbinder Rayge##17885
		Discover Earthbinder Rayge |q 29570/1 |goto 67.40,21.30
	step
		Follow the path down and to the right |goto 67.00,14.00 < 10
		kill Swamplord Musel'ek##17826, Claw##17827
		Talk to Windcaller Claw
		Discover Windcaller Claw |q 29570/2 |goto 41.50,25.40
	step
		kill The Black Stalker##17882
		collect Black Stalker's Brain##24248 |q 29567/1 |goto The Underbog 25.90,45.50
	step
	label "sanguinehibiscus"
		As you go through the dungeon, look for Sanguine Hibiscus
		click Sanguine Hibiscus##183385
		collect 5 Sanguine Hibiscus##24246 |q 29691/1
	step
		talk Naturalist Bite##54678
		turnin A Necessary Evil##29568 |goto The Underbog 29.50,64.50
	step
		talk Watcher Jhang##54675
		turnin Rescuing the Expedition##29570 |goto 30.80,65.30
	step
		talk T'shu##54674
		turnin Stalk the Stalker##29567 |goto 31.60,65.50
		turnin Bring Me A Shrubbery!##29691 |goto 31.60,65.50
	step
		talk Watcher Jhang##54848
		turnin Storming the Steamvault##29616 |goto The Steamvault 17.90,27.30
		accept A Proper Fate##29613 |goto The Steamvault 17.90,27.30
	step
		talk Naturalist Bite##54849
		accept Containment is Key##29614 |goto 17.50,25.90
	step
		talk Windcaller Claw##54851
		accept Windcaller Claw and the Water Thief##29615 |goto 18.90,27.80
	step
		kill 3 Bog Overlord##21694+ |q 29614/1 |goto 33.70,22.70
	step
		kill Hydromancer Thespia##17797 |q 29615/1 |goto The Steamvault 54.30,12.40
	step
		click Main Chambers Access Panel##7147 |goto 54.20,10.60
		You hear a faint echo...
		confirm always
	step
		Go through the opening on your left |goto 42.10,32.90 < 10
		Go up the ramp |goto 49.30,42.80 < 10
		Go up to the bridge on the right side |goto 55.80,47.30 < 10
		Cross the bridge and go through the hallway |goto 39.70,69.00 < 10
		kill Mekgineer Steamrigger##17796
		collect Irradiated Gear##72574 |q 29614/3 |goto The Steamvault 33.60,81.20
		kill 6 Coilfang Leper##21338+ |q 29614/2 |goto The Steamvault 33.60,81.20
	step
		click Main Chambers Access Panel##7147 |goto 31.80,84.00
		You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
		confirm always
	step
		Follow the tunnel back to the bridge |goto 54.00,51.40 < 10
		Take a right after crossing the bridge, and go up a ramp |goto 69.80,43.40 < 10
		kill Warlord Kalithresh##17798 |q 29613/1
	step
		Follow the path down to the ramp |goto 49.10,42.60 < 10
		Enter the doorway |goto 42.50,33.00 < 10
		talk Windcaller Claw##54851
		turnin Windcaller Claw and the Water Thief##29615 |goto 18.80,27.60
	step
		talk Watcher Jhang##54848
		turnin A Proper Fate##29613 |goto 18.00,27.20
	step
		talk Naturalist Bite##54849
		turnin Containment is Key##29614 |goto 17.60,25.90
	step
		click Wanted Poster##184945
		accept Leader of the Darkcrest##9730 |goto Zangarmarsh 79.10,64.80
		accept Leader of the Bloodscale##9817 |goto Zangarmarsh 79.10,64.80
	step
		kill Rajah Haghazed##18046 |q 9730/1 |goto Zangarmarsh 65.10,68.70
	step
		kill Rajis Fyashe##18044 |q 9817/1 |goto Zangarmarsh 65.10,40.90
	step
		talk Warden Hamoot##17858
		turnin Leader of the Darkcrest##9730 |goto 79.10,65.20
		turnin Leader of the Bloodscale##9817 |goto 79.10,65.20
	step
		talk Earthbinder Tavgren##18446
		turnin What's Wrong at Cenarion Thicket?##9957 |goto Terokkar Forest 44.30,26.30
		accept Strange Energy##9968 |goto Terokkar Forest 44.30,26.30
		accept Clues in the Thicket##9971 |goto Terokkar Forest 44.30,26.30
	step
		talk Warden Treelos##18424
		accept It's Watching You!##9951 |goto 45,22.50
	step
		click Strange Object##183789
		Examine the Strange Object |q 9971/1 |goto 45.10,21.80
		|tip Inside the building, looks like a white ball on the floor next to a dead guy.
	step
		kill Naphthal'ar##18438 |q 9951/1 |goto 43.40,22.10
		|tip At the top of the big tower.
	step
		talk Warden Treelos##18424
		turnin It's Watching You!##9951 |goto 45,22.50
	step
		talk Earthbinder Tavgren##18446
		turnin Clues in the Thicket##9971 |goto 44.30,26.30
	step
		kill Vicious Teromoth##18437+
		collect 4 Vicious Teromoth Sample##24279 |q 9968/2 |goto 44.10,23.80
	step
		kill Teromoth##18468+
		collect 4 Teromoth Sample##25672 |q 9968/1 |goto 45.80,29.80
	step
		talk Earthbinder Tavgren##18446
		turnin Strange Energy##9968 |goto 44.30,26.30
		accept By Any Means Necessary##9978 |goto 44.30,26.30
	step
		talk Empoor##18482
		|tip Fight Empoor until he's almost dead.
		turnin By Any Means Necessary##9978 |goto 47.10,27
		accept Wind Trader Lathrai##9979 |goto 47.10,27
	step
		talk Wind Trader Lathrai##18484
		turnin Wind Trader Lathrai##9979 |goto Shattrath City 72.20,30.70
		accept A Personal Favor##10112 |goto Shattrath City 72.20,30.70
	step
		kill Skithian Windripper##18453+
		kill Skithian Dreadhawk##18452+
		collect 5 Lathrai's Stolen Goods##27861 |q 10112/1 |goto Terokkar Forest 30.90,42.00
	step
		talk Wind Trader Lathrai##18484
		turnin A Personal Favor##10112 |goto Shattrath City 72.30,30.90
		accept Investigate Tuurem##9990 |goto Shattrath City 72.30,30.90
	step
		click Sealed Box##182542
		collect Sealed Box##25727 |q 9990/1 |goto Terokkar Forest 54.00,30.00
	step
		talk Earthbinder Tavgren##18446
		turnin Investigate Tuurem##9990 |goto 44.40,26.30
		accept What Are These Things?##9994 |goto 44.40,26.30
	step
		talk Jenai Starwhisper##18459
		turnin What Are These Things?##9994 |goto Terokkar Forest 57.00,53.50
		accept Report to the Allerian Post##10444 |goto Terokkar Forest 57.00,53.50
	step
		talk Lieutenant Meridian##21006
		turnin Report to the Allerian Post##10444 |goto Terokkar Forest 69.70,44.20
		accept Attack on Firewing Point##9996 |goto Terokkar Forest 69.70,44.20
	step
		kill 10 Firewing Defender##5355+ |q 9996/1 |goto 70.50,37.40
		kill 10 Firewing Bloodwarder##1410+ |q 9996/2 |goto 70.50,37.40
		kill 10 Firewing Warlock##16769+ |q 9996/3 |goto 70.50,37.40
	step
		talk Lieutenant Meridian##21006
		turnin Attack on Firewing Point##9996 |goto Terokkar Forest 69.70,44.20
		accept The Final Code##10446 |goto Terokkar Forest 69.70,44.20
	step
		Enter this building |goto 73.40,36.30 < 10 |walk
		click Orb of Translocation##184500 |goto 73.30,34.60 < 5 |walk
		Run up the ramp |goto 73.90,35.80 < 10
		kill Sharth Voldoun##18554+
		collect The Final Code##29912 |q 10446 |goto 73.80,35.80
	step
		click Orb of Translocation##184500
		Teleport to the bottom of the tower |goto 73.30,36.30 < 10 |walk
		click Mana Bomb##184725
		Activate Mana Bomb |q 10446/1 |goto 71.30,37.40
	step
		talk Jenai Starwhisper##18459
		turnin The Final Code##10446 |goto Terokkar Forest 57.00,53.50
		accept Letting Earthbinder Tavgren Know##10005 |goto Terokkar Forest 57.00,53.50
	step
		talk Earthbinder Tavgren##18446
		turnin Letting Earthbinder Tavgren Know##10006 |goto Terokkar Forest 44.30,26.30
	step
		talk Lakotae##22420
		accept The Infested Protectors##10896 |goto 37.90,51.70
	step
		kill Infested Root-walker##22095+
		|tip Kill the Wood Mites that come out of their corpses.
		kill 25 Wood Mite##22419+ |q 10896/1 |goto 35.20,48.80
		You can find more Infested Root-walkers at the following location |goto 39.10,47.00
	step
		talk Lakotae##22420
		turnin The Infested Protectors##10896 |goto 37.90,51.70
	step
		talk Timeon##21782
		accept Creating the Pendant##10567 |goto Blade's Edge Mountains 62.20,39.10
	step
		talk Tree Warden Chawn##22007
		accept A Time for Negotiation...##10682 |goto 62.00,39.50
	step
		talk Faradrella##22133
		accept Culling the Wild##10753 |goto 62.50,38.20
	step
		talk Mosswood the Ancient##22053
		accept From the Ashes##10771 |goto 61.30,38.40
		accept Little Embers##10770 |goto 61.30,38.40
	step
		talk Overseer Nuaar##21981
		|tip He wanders around the Wyrmcult camps.
		Negotiate with Overseer Nuaar |q 10682/1 |goto 58.80,39.10
	step
		talk Tree Warden Chawn##22007
		turnin A Time for Negotiation...##10682 |goto 62,39.50
		accept ...and a Time for Action##10713 |goto 62,39.50
	step
		talk Samia Inkling##21983
		accept Poaching from Poachers##10717 |goto 61.80,39.60
	stickystart "wyrmculthewerkills"
	step
		kill Wyrmcult Poacher##21809+
		collect 5 Wyrmcult Net##31119 |q 10717/1 |goto 59.90,37.80
		collect Meeting Note##31120 |n
		Click the Meeting Note in your bags |use Meeting Note##31120
		accept Did You Get The Note?##10719 |goto 59.90,37.80
	step
	label "wyrmculthewerkills"
		kill 10 Wyrmcult Hewer##21810+ |q 10713/1 |goto 59.90,37.80
	step
		kill Ruuan'ok Ravenguard##19987+, Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Matriarch##20211+
		collect 6 Ruuan'ok Claw##30704 |q 10567 |goto 63.90,31.50
	step
		Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
		kill Harbinger of the Raven##21767
		|tip On the little island in the pond.
		collect Harbinger's Pendant##30706 |q 10567/1 |goto 64.50,33.10
	step
		talk Timeon##21782
		turnin Creating the Pendant##10567 |goto 62.20,39.10
		accept Whispers of the Raven God##10607 |goto 62.20,39.10
	step
		talk Samia Inkling##21983
		turnin Poaching from Poachers##10717 |goto 62,39.50
	step
		talk Tree Warden Chawn##22007
		turnin ...and a Time for Action##10713 |goto 62.00,39.60
		turnin Did You Get The Note?##10719 |goto 62.00,39.60
		accept Wyrmskull Watcher##10894 |goto 62.00,39.60
	step
		talk Watcher Moonshade##22386
		turnin Wyrmskull Watcher##10894 |goto 49.90,35.90
		accept Longtail is the Lynchpin##10893 |goto 49.90,35.90
	step
		kill Draaca Longtail##22396 |q 10893/1 |goto 46.70,32.90
		|tip She walks near the Raven's Wood end of the cave.
	step
		talk Watcher Moonshade##22386
		turnin Longtail is the Lynchpin##10893 |goto 49.90,35.90
		accept Meeting at the Blackwing Coven##10722 |goto 49.90,35.90
	step
		kill Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+
		Get the Understanding Ravenspeech Buff |havebuff spell:37642 |q 10722 |goto 42.20,25.10 --Ability_Hunter_Pet_DragonHawk
		|tip Must be within melee range to receive the buff.
		|tip Anytime the buff wears off, kill Grishna mobs again to get it back.
	step
		Stand next to the wooden totem with the Understanding Ravenspeech buff on you
		|tip On the ground, next to a pond with basilisks in it.
		Receive the Third Prophecy |q 10607/3 |goto 40.70,18.70
	step
		Stand next to the wooden totem with the Understanding Ravenspeech buff on you
		|tip Up the left ramp, then left across the hanging bridge.
		Receive the First Prophecy |q 10607/1 |goto 39,17.20
	step
		Stand next to the wooden totem with the Understanding Ravenspeech buff on you
		|tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.
		Receive the Second Prophecy |q 10607/2 |goto 42.50,21.60
	step
		Stand next to the wooden totem with the Understanding Ravenspeech buff on you
		|tip On the ground, in front of a hut.
		Receive the Fourth Prophecy |q 10607/4 |goto 40.20,23
	step
		Go inside the cave
		kill Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
		collect 5 Costume Scraps##31121 |q 10722 |goto 32.30,34.90
	step
		use the Costume Scraps##31121
		|tip Combine your 5 Costume Scraps to make an Overseer Disguise.
		use the Overseer Disguise##31122
		Put on the Overseer Disguise |havebuff spell:38157 |q 10722 |goto 32.60,37.50
	step
		talk Kolphis Darkscale##22019
		Attend the meeting with Kolphis Darkscale |q 10722/1 |goto 32.60,37.50
	step
		talk Tree Warden Chawn##22007
		turnin Meeting at the Blackwing Coven##10722 |goto 62.00,39.50
		accept Maxnar Must Die!##10748 |goto 62.00,39.50
	step
		Go inside the cave |goto Blade's Edge Mountains,32.10,34.10 < 10 |q 10748 |walk
		kill Maxnar the Ashmaw##21389 |q 10748/1 |goto 33.90,35.40
		|tip Follow the cave path until it dead ends into him.
	step
		Leave the cave |goto Blade's Edge Mountains 32.10,34.10 < 10 |q 10748 |walk
		talk Tree Warden Chawn##22007
		turnin Maxnar Must Die!##10748 |goto 62,39.50
	step
		talk Timeon##21782
		turnin Whispers of the Raven God##10607 |goto 62.20,39.10
	step
		kill 4 Felsworn Scalewing##21123+ |q 10753/1 |goto 68.90,35.60
		kill 4 Felsworn Daggermaw##21124+ |q 10753/2 |goto 68.90,35.60
		kill 2 Fel Corrupter##21300+ |q 10753/3 |goto 68.90,35.60
		collect Damaged Mask##31384 |n
		Click the Damaged Mask |use Damaged Mask##31384
		accept Damaged Mask##10810 |goto 68.90,35.60
	stickystart "scorchimps"
	step
		click Fertile Volcanic Soil##185148
		Plant the Ironroot Seeds |q 10771/1 |goto 71.70,22.40
	step
		click Fertile Volcanic Soil##185148
		Plant the Ironroot Seeds |q 10771/2 |goto 71.60,20.30
	step
		click Fertile Volcanic Soil##185148
		Plant the Ironroot Seeds |q 10771/3 |goto 71.60,18.50
	step
	label "scorchimps"
		kill 8 Scorch Imp##21021+ |q 10770/1 |goto 70.70,20.20
	step
		talk O'Mally Zapnabber##22020
		turnin Damaged Mask##10810 |goto 62.70,40.40
		accept Mystery Mask##10812 |goto 62.70,40.40
	step
		talk Wildlord Antelarion##22127
		turnin Mystery Mask##10812 |goto 62.20,40.10
		accept Felsworn Gas Mask##10819 |goto 62.20,40.10
	step
		talk Faradrella##22133
		turnin Culling the Wild##10753 |goto 62.60,38.20
	step
		talk Mosswood the Ancient##22053
		turnin Little Embers##10770 |goto 61.20,38.40
		turnin From the Ashes##10771 |goto 61.20,38.40
	step
		collect 1 Felsworn Gas Mask##31366 |q 10819
		It has a 60 minute timer on it
		If you need another one, talk to Wildlord Antelarion at the following location |goto 62.60,39.60
	step
		Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
		Wear the Felsworn Gas Mask |havebuff spell:38448 |c |q 10819 --INV_Helmet_31
		Click the Legion Communicator
		|tip Between 2 big green floating crystals. You must be wearing the Felsworn Gas Mask to use the Legion Communicator.
		turnin Felsworn Gas Mask##10819 |goto 73.30,40.10
		accept Deceive thy Enemy##10820 |goto 73.30,40.10
	step
		kill 4 Doomforge Attendant##19961+ |q 10820/1 |goto 74.90,39.90
		kill 4 Doomforge Engineer##19960+ |q 10820/2 |goto 74.90,39.90
	step
		Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
		Wear the Felsworn Gas Mask |havebuff spell:38448 |c |q 10819 --INV_Helmet_31
		Click the Legion Communicator
		turnin Deceive thy Enemy##10820 |goto 73.30,40.10
		|tip Between 2 big green floating crystals. Click the Legion Communicator. You must be wearing the Felsworn Gas Mask to use the Legion Communicator.
		accept You're Fired!##10821 |goto 73.30,40.10
	step
		kill Anger Guard##16952+
		collect 5 Camp Anger Key##31536 |q 10821 |goto 73.00,41.00
	step
		Click the Legion Obelisk to activate it |goto 73.50,43.50
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		Click the Legion Obelisk to activate it |goto 75.30,41.70
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		Click the Legion Obelisk to activate it |goto 73.80,41.00
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		Click the Legion Obelisk to activate it |goto 75.40,40.60
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		Click the Legion Obelisk to activate it |goto 74.00,39.90
		|tip It's a metal structure with a floating tall metal piece in the middle of it.
		|confirm |q 10821
	step
		kill Doomcryer##19963 |q 10821/1 |goto 74.30,42.50
	step
		talk Wildlord Antelarion##22127
		turnin You're Fired!##10821 |goto 62.40,38.40
		accept Death's Door##10910 |goto 62.40,38.40
	step
		Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
		talk Evergrove Druid##22423
		turnin Death's Door##10910 |goto 63.20,65.50
		accept Harvesting the Fel Ammunition##10904 |goto 63.20,65.50
	step
		kill Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
		collect 5 Fel Cannonball##31757 |q 10904/1 |goto 63.80,66.50
	step
		Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
		talk Evergrove Druid##22423
		turnin Harvesting the Fel Ammunition##10904
		accept Fire At Will!##10911
	step
		Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807
		|tip It looks like a big metal green-glowing bullet shaped machine.
		Use the Artillery on the Warp-Gate 7 Times |cast Artillery on the Warp-Gate##39221
		Destroy the South Warp-Gate |q 10911/1 |goto 64.80,68.30
	step
		Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807
		|tip It looks like a big metal green-glowing bullet shaped machine.
		Use the Artillery on the Warp-Gate 7 times |cast Artillery on the Warp-Gate##39221
		Destroy the North Warp-Gate |q 10911/2 |goto 62.00,60.30
	step
		Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
		Talk to Evergrove Druid
		turnin Fire At Will!##10911
		accept The Hound-Master##10912
	step
		kill Baelmon the Hound-Master##19747 |q 10912/1 |goto 63.60,59.10
	step
		talk Wildlord Antelarion##22127
		turnin The Hound-Master##10912 |goto 62.70,39.40
	step
		talk Aurine Moonblaze##20871
		accept Flora of the Eco-Domes##10426 |goto Netherstorm 42.30,32.60
	step
		Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
		kill Mutated Farahlon Lasher##20774+
		Test Energy Modulator #10# Times |q 10426/1 |goto 41.20,32.20
	step
		talk Aurine Moonblaze##20871
		turnin Flora of the Eco-Domes##10426 |goto 42.30,32.60
		accept Creatures of the Eco-Domes##10427 |goto 42.30,32.60
	step
		kill Talbuk Doe##20610+, Talbuk Sire##20777
		Use the Talbuk Tagger on talbuks when they are below 20% health |use Talbuk##29817
		Tag #12# Talbuk |q 10427/1 |goto 40.40,35.50
	step
		talk Aurine Moonblaze##20871
		turnin Creatures of the Eco-Domes##10427 |goto 42.30,32.60
		accept When Nature Goes Too Far##10429 |goto 42.30,32.60
	step
		kill Markaru##20775+
		collect Hulking Hydra Heart##29768 |q 10429/1 |goto 44.30,28.50
	step
		talk Aurine Moonblaze##20871
		turnin When Nature Goes Too Far##10429 |goto 42.30,32.60
	step
		talk Arch Druid Lathorius##25809
		accept A Mission Statement##11864 |goto Borean Tundra 57,44.30
		accept Ears of Our Enemies##11866 |goto Borean Tundra 57,44.30
		accept Help Those That Cannot Help Themselves##11876 |goto Borean Tundra 57,44.30
	step
		talk Hierophant Cenius##25810
		accept Happy as a Clam##11869 |goto 57.30,44.10
	step
		talk Killinger the Den Watcher##25812
		accept Ned, Lord of Rhinos...##11884 |goto 57,44
	step
		talk Zaza##25811
		accept Unfit for Death##11865 |goto 56.80,44
	stickystart "lootcrazed"
	step
		Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves |use D.E.H.T.A. Trap Smasher##35228
		|tip They look like baby elephants laying on the ground in a trap.
		Free #8# Mammoth Calves |q 11876/1 |goto 53.80,40.60
	step
	label "lootcrazed"
		kill 10 Loot Crazed Diver##25836+ |q 11869/1 |goto 53.40,42.70
		kill Loot Crazed Diver##25836s
		collect 15 Nesingwary Lackey Ear##35188 |q 11866/1 |goto 53.40,42.70
	step
		kill "Lunchbox"##25968 |q 11884/2 |goto 46.40,40
		|tip He walks around this area. Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
		kill Nedar Lord of Rhinos##25801 |q 11884/1 |goto 46.40,40
	step
		Stand inside the Caribou Traps on the ground
		|tip They look like metal spiked traps on the ground.
		Use your Pile of Fake Furs |use Pile of Fake Furs##35127
		Trap #8# Nesingwary Trappers |q 11865/1 |goto 56.20,50.50
	step
		talk Arch Druid Lathorius##25809
		turnin Ears of Our Enemies##11866 |goto 57,44.30
		turnin Help Those That Cannot Help Themselves##11876 |goto 57,44.30
		accept Khu'nok Will Know##11878 |goto 57,44.30
		|tip After you turn in Ears of Our Enemies, you will get a repeatable quest called Can't Get Ear-nough...
	step
		talk Hierophant Cenius##25810
		turnin Happy as a Clam##11869 |goto 57.30,44.10
		accept The Abandoned Reach##11870 |goto 57.30,44.10
	step
		talk Killinger the Den Watcher##25812
		turnin Ned, Lord of Rhinos...##11884 |goto 57,44
	step
		talk Zaza##25811
		turnin Unfit for Death##11865 |goto 56.80,44
		accept The Culler Cometh##11868 |goto 56.80,44
	step
		Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |goto 59.50,30.40
		kill Mammoth Calf##24613, Khu'nok the Behemoth##25862
	step
		talk Khu'nok the Behemoth##25862
		turnin Khu'nok Will Know##11878 |goto 59.50,30.40
		accept Kaw the Mammoth Destroyer##11879 |goto 59.50,30.40
	step
		Ride around and find a Wooly Mammoth Bull
		Click it to ride it |invehicle |c |q 11879
	step
		Use the skills on your mammoth action bar to do the following:
		kill Kaw the Mammoth Destroyer##25802
		Click Kaw's War Halberd on the ground
		collect Kaw's War Halberd##35234 |q 11879/1 |goto 53.70,23.90
	step
		talk Arch Druid Lathorius##25809
		turnin Kaw the Mammoth Destroyer##11879 |goto 57,44.30
	step
		kill 1 Karen "I Don't Caribou" the Culler##25803 |q 11868/1 |goto 57.30,56.50
		|tip She walks around in this spot. Be careful, she has 2 stealthed guards that come with her.
	step
		talk Hierophant Liandra##25838
		turnin The Abandoned Reach##11870 |goto 57.80,55.10
		accept Not On Our Watch##11871 |goto 57.80,55.10
	step
		kill Northsea Thugs##25843
		Click the Shipment of Animal Parts containers on the ground
		|tip They look like brown bags and crates sitting on the ground around this area.
		collect 12 Shipment of Animal Parts##35222 |q 11871/1 |goto 59.10,55.90
	step
		talk Hierophant Liandra##25838
		turnin Not On Our Watch##11871 |goto 57.80,55.10
		accept The Nefarious Clam Master...##11872 |goto 57.80,55.10
	step
		kill 1 Clam Master K##25800 |q 11872/1 |goto 61.50,66.50
		|tip He's walking around underwater.
	step
		talk Hierophant Cenius##25810
		turnin The Nefarious Clam Master...##11872 |goto 57.30,44.10
	step
		talk Zaza##25811
		turnin The Culler Cometh##11868 |goto 56.80,44
	step
		talk King Mrgl-Mrgl##25197
		accept Learning to Communicate##11571 |goto 43.50,14
	stickystart "winterfinclam"
	step
		kill Scalder##25226
		|tip It's underwater.
		Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
		collect The King's Filled Conch##34623 |q 11571/1 |goto 42.50,15.90
	step
	label "winterfinclam"
		click Winterfin Clam##187367
		|tip They are on the ground underwater.
		collect 5 Winterfin Clam##34597 |furure |q 11559 |goto 42.50,16.40
	step
		talk King Mrgl-Mrgl##25197
		turnin Learning to Communicate##11571 |goto 43.50,14
		accept Winterfin Commerce##11559 |goto 43.50,14
	step
		talk Ahlurglgr##25206
		turnin Winterfin Commerce##11559 |goto 43,13.80
	step
		click Winterfin Clam##187367
		|tip They are on the ground underwater.
		collect 5 Winterfin Clam##34597 |q 11559/1 |goto 41.50,13.40
	step
		talk Ahlurglgr##25206
		turnin Winterfin Commerce##11559 |goto 43,13.80
	step
		talk Brglmurgl##25199
		accept Them!##11561 |goto 42.80,13.70
	step
		talk King Mrgl-Mrgl##25197
		accept Oh Noes, the Tadpoles!##11560 |goto 43.50,14
	step
		kill Winterfin Oracle##25216, Winterfin Shorestriker##25215
		Kill #15# Winterfin murlocs |q 11561/1 |goto 40.60,17.50
		click the Yellow Cage##1787+
		Rescue #20# Winterfin Tadpoles |q 11560/1 |goto 40.60,17.50
	step
		talk Brglmurgl##25199
		turnin Them!##11561 |goto 42.80,13.70
	step
		talk King Mrgl-Mrgl##25197
		turnin Oh Noes, the Tadpoles!##11560 |goto 43.50,14
		accept I'm Being Blackmailed By My Cleaner##11562 |goto 43.50,14
	step
		talk Mrmrglmr##25205
		turnin I'm Being Blackmailed By My Cleaner##11562 |goto 42,12.80
		accept Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42,12.80
	step
		talk Cleaver Bmurglbrm##25211
		accept Succulent Orca Stew##11564 |goto 42,13.20
	step
		kill Glrggl##25203
		collect Glrggl's Head##34617 |q 11563/1 |goto 37.40,9.80
	step
		kill Glimmer Bay Orcas##25204+
		collect 7 Succulent Orca Blubber##34618 |q 11564/1 |goto 40.30,12.40
	step
		talk Mrmrglmr##25205
		turnin Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42,12.80
		accept The Spare Suit##11565 |goto 42,12.80
	step
		talk Cleaver Bmurglbrm##25211
		turnin Succulent Orca Stew##11564 |goto 42,13.20
	step
		talk King Mrgl-Mrgl##25197
		turnin The Spare Suit##11565 |goto 43.50,14
		accept Surrender... Not!##11566 |goto 43.50,14
	step
		Go southwest to Winterfin Village
		use King Mrgl-Mrgl's Spare Suit##34620
		Use King Mrgl-Mrgl's Spare Suit |havebuff spell:45278 |q 11566
	step
		Enter the cave |goto 37.80,23.20 < 5 |walk
		talk Glrglrglr##28375
		accept Keymaster Urmgrgl##11569 |goto 37.80,23.20
	step
		kill Keymaster Urmgrgl##25210
		collect Urmgrgl's Key##34600 |q 11569/1 |goto 38.40,22.70
	step
		Follow the path up and to the back of the cave
		kill Claximus##25209
		collect Claw of Claximus##34621 |q 11566/1 |goto 37.60,27.40
	step
		Go back up the path |goto 37.80,23.20 < 10
		talk Glrglrglr##28375
		turnin Keymaster Urmgrgl##11569 |goto 37.80,23.20
	step
		talk Lurgglbr##25208
		accept Escape from the Winterfin Caverns##11570 |goto 37.80,23
		Escort Lurgglbr to safety |q 11570/1 |goto 37.80,23
	step
		talk King Mrgl-Mrgl##25197
		turnin Surrender... Not!##11566 |goto 43.50,14
		turnin Escape from the Winterfin Caverns##11570 |goto 43.50,14
	step
	label "menu2"
		If you are not Exalted with the Cenarion Expedition, you can turn in Lackey Ears for a repeatable quest, or run Heroic Dungeons.
		The Heroic Dungeons are Slave Pens, Underbog and Steamvault.
		Click here to do the repeatable quest |confirm |next "ears"
		Click here to be taken to the Slave Pens |confirm |next "Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Slave Pens" |only if QC.guidesets['DungeonAMOP']
		Click here to be taken to the Underbog |confirm |next "Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Underbog" |only if QC.guidesets['DungeonAMOP']
		Click here to be taken to the Steamvault |confirm |next "Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: The Steamvault" |only if QC.guidesets['DungeonAMOP']
	step
	label "ears"
		kill Northsea Mercenary##25839+, Northsea Thug##25843+
		collect Nesingwary Lackey Ear##35188 |n
		Collect Lackey Ears in stacks of 15 |goto Borean Tundra 60.90,63.40
		When you want to turn in Lackey Ears, click here |next "turnin" |confirm
	step
	label "turnin"
		talk Arch Druid Lathorius##25809
		accept Can't Get Ear-Nough##11867 |goto 57.10,44.30 |n
		Click here to go back to farming ears |next "ears" |confirm
		Keep repeating this quest until you are Exalted with the Cenarion Expedition |complete rep('Cenarion Expedition')==Exalted
]])

------------------
----- Kaluak -----
------------------

QuestCore:RegisterInclude("Kaluak_rep",[[
	step
		talk Etaruk##25292
		accept Reclaiming the Quarry##11612 |goto Borean Tundra 54.30,36.10
	step
		Talk to Elder Atkanok
		accept The Honored Ancestors##11605 |goto 54.70,35.80

	stickystart "beryltreasure"
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
	label "beryltreasure"
		kill 12 Beryl Treasure Hunter##25353+ |q 11612/1 |goto 54.40,35.10
	step
		Talk to Elder Atkanok
		turnin The Honored Ancestors##11605 |goto 54.70,35.80
		accept The Lost Spirits##11607 |goto 54.70,35.80
	step
		talk Etaruk##25292
		turnin Reclaiming the Quarry##11612 |goto 54.30,36.10
		accept Hampering Their Escape##11617 |goto 54.30,36.10
	stickystart "berylhound"
	step
		kill Beryl Reclaimer##25449+
		collect 3 Gnomish Grenade##34772 |q 11617 |goto 51.50,31.40
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
	label "berylhound"
		kill Beryl Hound##25355+
		collect 6 Cores of Malice##34711 |n
		Use the Cores of Malice on Kaskala Craftsmen and Kaskala Shaman |use Core of Malice##34711
		Free 3 Kaskala Craftsman spirits |q 11607/1 |goto 51.50,31.40
		Free 3 Kaskala Shaman spirits |q 11607/2 |goto 51.50,31.40
	step
		Talk to Elder Atkanok
		turnin The Lost Spirits##11607 |goto 54.70,35.80
		accept Picking Up the Pieces##11609 |goto 54.70,35.80
	step
		talk Etaruk##25292
		turnin Hampering Their Escape##11617 |goto 54.30,36.10
		accept A Visit to the Curator##11623 |goto 54.30,36.10
	stickystart "tuskarr"
	step
		kill Curator Insivius##25448 |q 11623/1 |goto 50.10,32.60
	step
	label "tuskarr"
		click Tuskarr Ritual Object##187671
		collect 6 Tuskarr Ritual Object##34713|q 11609/1 |goto 53.10,33.30
	step
		Talk to Elder Atkanok
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
		Talk to Elder Atkanok
		turnin Leading the Ancestors Home##11610 |goto 54.70,35.80
	step
		talk Medic Hawthorn##25825
		accept A Soldier in Need##11789 |goto 55.00,68.90
	step
		click First Aid Supplies##187980
		collect Hawthorn's Anti-Venom##35119 |q 11789/1 |goto 57.50,69.30
	step
		Click the Cultist Shrine
		|tip It looks like a small candle shrine on the ground downstairs in this ship, next to the wall.
		accept Cultists Among Us##11920 |or |goto 57.50,69.10
		accept Cultists Among Us##11790 |or |goto 57.50,69.10
	step
		talk Medic Hawthorn##25825
		turnin A Soldier in Need##11789 |goto 55.00,68.90
	step
		talk Captain "Lefty" Lugsail##25298
		turnin Cultists Among Us##11920 |or |goto 57.80,69.20
		turnin Cultists Among Us##11790 |or |goto 57.80,69.20
	step
		talk Admiral Cantlebree##25299
		accept Notify Arlos##11791 |goto 57.80,69.20
	step
		talk General Arlos##25250
		turnin Notify Arlos##11791 |goto 56.70,72.60
	step
		talk Counselor Talbot##25301
		accept A Diplomatic Mission##12141 |goto 56.70,72.60
	step
		talk Medic Hawthorn##25825
		turnin A Soldier in Need##11789 |goto 55,68.90
	step
		talk Karuk##25435
		turnin A Diplomatic Mission##12141 |goto 47.10,75.50
		accept Karuk's Oath##11613 |goto 47.10,75.50
	stickystart "skadirraider"
	step
		Kill the Riplash Myrmidon and cheering Skadir mobs
		talk Captured Tuskarr Prisoner##25636 |goto 44.20,77.80
		accept Cruelty of the Kvaldir##12471 |goto 44.20,77.80
	step
	label "skadirraider"
		kill 6 Skadir Raider##25522+ |q 11613/1 |goto 46.50,77.20
		kill 5 Skadir Longboatsman##25521+ |q 11613/2 |goto 46.50,77.20
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
		|tip He's inside of the building.
		collect Trident of Naz'jan##35774|q 11625/1 |goto 54.70,89.10
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
		accept The Dead Rise!##11504 |goto Howling Fjord,40.30,60.30
	step
		Click the Mound of Debris
		|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
		collect Fengir's Clue##34222|q 11504/1 |goto 57.70,77.50
	step
		Click the Unlocked Chest
		|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
		collect Rodin's Clue##34223|q 11504/2 |goto 59.20,77
	step
		Click the Long Tail Feather
		|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
		collect Isuldof's Clue##34224|q 11504/3 |goto 59.80,79.40
	step
		Click the Cannonball
		|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
		collect Windan's Clue##34225|q 11504/4 |goto 62,80
	step
		talk Orfus of Kamagua##23804
		turnin The Dead Rise!##11504 |goto 40.30,60.30
		accept Elder Atuik and Kamagua##11507 |goto 40.30,60.30
	step
		--Go across The Ancient Lift
		talk Elder Atuik##24755
		turnin Elder Atuik and Kamagua##11507 |goto 25.00,57.00
		accept Grezzix Spindlesnap##11508 |goto 25.00,57.00
		accept Feeding the Survivors##11456 |goto 25.00,57.00
	step
		talk Kip Trawlskip##28197
		fpath Kamagua |goto 24.70,57.80
	step
		kill Island Shoveltusk##24681+
		collect 6 Island Shoveltusk Meat##36776|q 11456/1 |goto 29.10,58.80
	step
		talk Elder Atuik##24755
		turnin Feeding the Survivors##11456 |goto 25.00,57.00
		accept Arming Kamagua##11457 |goto 25.00,57.00
	step
		kill Frostwing Chimaera##24673
		collect 3 Chimaera Horn##34101 |q 11457/1 |goto 26.40,62.90
	step
		talk Elder Atuik##24755
		turnin Arming Kamagua##11457 |goto 25.00,57.00
		accept Avenge Iskaal##11458 |goto 25.00,57.00
	step
		talk Grezzix Spindlesnap##24643
		turnin Grezzix Spindlesnap##11508 |goto 23.10,62.70
		accept Street "Cred"##11509 |goto 23.10,62.70
	step
		talk "Silvermoon" Harry##24539
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
		collect Sin'dorei Scrying Crystal##34235|q 11510/1 |goto 38.30,83.40
	step
		click the Eagle Figurine##186886
		|tip It's a blue eagle statue inside this ship on the middle floor.
		collect Eagle Figurine##34070|q 11434/2 |goto 37.80,84.60
	step
		click the Amani Vase##186885
		|tip It looks like a grey vase at the bottom of this wrecked ship.
		collect Amani Vase##34069|q 11434/1 |goto 37.10,85.50
	step
		kill Big Roy##24785
		collect Big Roy's Blubber##34122|q 11469/1 |goto 31.40,77.90
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
		<I'd like to buy Jack a drink.> |goto 35.30,79.60
		She will walk over to Jack Adams
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
		_Enter_ the cave |goto 33.60,75.60 < 10 |walk
		kill "Mad" Jonah Sterling##24742 |goto 33.80,78.00
		After you beat him, he will jump down
		Run down the ramp here |goto 33.70,79.20 < 10
		click The Frozen Heart of Isuldof##187032
		collect The Frozen Heart of Isuldof##34237 |q 11512/1 |goto 32.30,78.70
	step
		talk Captain Ellis##24910
		turnin The Lost Shield of the Aesirites##11519 |goto 37.20,74.80
		accept Mutiny on the Mercy##11527 |goto 37.20,74.80
	step
		Go downstairs in the ship
		kill Mutinous Sea Dog##25026+
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
		Leave the cave
		kill 8 Crazed Northsea Slaver##24676+ |q 11458/1 |goto 33.20,63.90
	step
		If you are careful, you can avoid _Abdul the Insane_
		click The Staff of Storm's Fury##187033
		It's at the bottom of the ship
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
		Ride the big lift to the top of the cliff
		talk Orfus of Kamagua##23804
		turnin The Ancient Armor of the Kvaldir##11567 |goto 40.30,60.30
		turnin The Frozen Heart of Isuldof##11512 |goto 40.30,60.30
		turnin The Shield of the Aesirites##11530 |goto 40.30,60.30
		turnin The Staff of Storm's Fury##11511 |goto 40.30,60.30
		accept A Return to Resting##11568 |goto 40.30,60.30
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
		--Go across the Ancient Lift
		talk Elder Atuik##24755
		turnin Return to Atuik##11572 |goto 25.00,57.00
	step
		talk Elder Ko'nani##26194
		accept Let Nothing Go To Waste##11958 |goto Dragonblight 48,74.90
	step
		talk Trapper Mau'i##26228
		accept Planning for the Future##11960 |goto 48.30,74.30
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
		collect Blood of Loguhn##35688|n
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
		accept Tua'kea's Crab Traps##12009 |goto Dragonblight/0 48.00,76.10
	step
		Click Tua'kea's Crab Traps
		|tip They look like small cages on the ground underwater around this area.
		collect 8 Tua'kea Crab Trap##35802|q 12009/1 |goto 46.60,77.50
	step
		Click the Wrecked Crab Trap
		|tip It looks like a broken version of Tue'kea's Crab Traps, on the ground underwater.
		accept Signs of Big Watery Trouble##12011 |goto 47.70,80
	step
		talk Tua'kea##26245
		turnin Tua'kea's Crab Traps##12009 |goto Dragonblight/0 48.00,76.10
		turnin Signs of Big Watery Trouble##12011 |goto Dragonblight/0 48.00,76.10
		accept The Bait##12016 |goto Dragonblight/0 48.00,76.10
	step
		kill Kili'ua##26521
		collect The Flesh of "Two Huge Pincers"##35831|q 12016/1 |goto 43.70,82.30
	step
		talk Tua'kea##26245
		turnin The Bait##12016 |goto Dragonblight/0 48.00,76.10
		accept Meat on the Hook##12017 |goto Dragonblight/0 48.00,76.10
	step
		Use Tu'u'gwar's Bait next to Tua'kea's Fishing Hook |use Tu'u'gwar's Bait##35838
		|tip It looks like a rope leading into the water, with a big hook on the end.
		Kill Tu'u'gwar when he appears
		kill 1 Tu'u'gwar##26510 |q 12017/1 |goto 46.70,78.20
	step
		talk Tua'kea##26245
		turnin Meat on the Hook##12017 |goto Dragonblight/0 48.00,76.10
	step
		Talk to Elder Mana'loa
		turnin Elder Mana'loa##12030 |goto 36.40,65
		accept Freedom for the Lingering##12031 |goto 36.40,65
	step
		kill Indu'le Mystic##26336, Indu'le Warrior##26344
		Put #15# Indu'le spirits to rest |q 12031/1 |goto 37.20,65.50
	step
		Talk to Elder Mana'loa
		turnin Freedom for the Lingering##12031 |goto 36.40,65
		accept Conversing With the Depths##12032 |goto 36.40,65
	step
		_Follow_ the path up |goto Dragonblight,34.30,79.80 < 10 |only if walking
		_Continue_ along the path |goto 34,83.40 < 10 |only if walking
		Click The Pearl of the Depths
		|tip It's a big white pearl sitting on a altar thing.
		Oacha'noa appears and tells you to jump in the water
		Jump in the water when he tells you to
		Obey Oacha'noa's compulsion |q 12032/1
	step
		talk Toalu'u the Mystic##26595
		turnin Conversing With the Depths##12032 |goto 49.20,75.60
	step
		Once you've completed all of the quests above, you can now do the daily quests
		Reach exalted with The Kalu'ak |next "exalted" |only if rep("Kalu'ak")==Exalted
		|confirm |next |only if default
	//borean//
	step
	label "daily"
		talk Utaik##26213
		accept Preparing for the Worst##11945 |goto Borean Tundra,64,45.70
	step
		click Kaskala Supplies##188164
		collect 8 Kaskala Supplies##35711 |q 11945/1 |goto 67.80,49.50
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
		Use your Tasty Reef Fish on a Reef Bull as far away as you can |use Tasty Reef Fish##34127
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
	step
	label "exalted"
		Congratulation, you  have reached Exalted with the Kalu'ak
]])

---------------------
----- Sporeggar -----
---------------------

QuestCore:RegisterInclude("Sporeggar_Rep",[[
	step
		talk Fahssn##17923
		|tip He walks around this area.
		accept The Sporelings' Plight##9739 |goto Zangarmarsh/0 18.96,63.45
		accept Natural Enemies##9743 |goto Zangarmarsh/0 18.96,63.45
	stickystart "Collect_Mature_Spore_Sacs"
	step
		Kill Starving enemies around this area
		collect 6 Bog Lord Tendril##24291 |q 9743/1 |goto 15.90,60.51
	step
	label "Collect_Mature_Spore_Sacs"
		click Mature Spore Sac##182069+
		|tip They look like small puffy, balloon-shaped sacs on on the ground around this area.
		collect 10 Mature Spore Sac##24290 |q 9739/1 |goto 15.90,60.51
	step
		talk Fahssn##17923
		|tip He walks around this area.
		turnin The Sporelings' Plight##9739 |goto 18.96,63.45
		turnin Natural Enemies##9743 |goto 18.96,63.45
	step
	label "Collect_Spore_Sacs_Reach_Friendly"
		click Mature Spore Sac##182069+
		|tip They look like small puffy, balloon-shaped sacs on on the ground around this area.
		collect Mature Spore Sac##24290 |n |goto 15.90,60.51
		|tip Collect them in in stacks of 10.
		Click here to turn them in |confirm |only if rep('Sporeggar')<Friendly
	step
		talk Fahssn##17923
		|tip He walks around this area.
		accept More Spore Sacs##9742 |goto 18.96,63.45 |only if rep('Sporeggar')<Friendly
		Click here to continue farming |next "Collect_Spore_Sacs_Reach_Friendly" |confirm |only if rep('Sporeggar')<Friendly
		Reach Friendly with Sporeggar |complete rep('Sporeggar')>=Friendly |next "Reached_Friendly_Reputation"
	step
	label "Reached_Friendly_Reputation"
		talk Fahssn##17923
		|tip He walks around this area.
		accept Sporeggar##9919 |goto 18.96,63.45
	step
		Enter the building |goto 19.54,51.82 < 5 |walk
		talk Msshi'fn##17924
		|tip Inside the building.
		turnin Sporeggar##9919 |goto 19.68,52.07
	step
		The fastest way to go reach Exalted is to farm The Underbog dungeon
		|tip You can complete the dungeon once pery day on Heroic and as many times as you want on Normal.
		Enter The Underbog |goto The Underbog/1 30.02,67.39 < 1000 |c
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
		accept Bring Me Another Shrubbery!##29692 |goto 31.48,65.21 |only if rep('Sporeggar')<Exalted
		Click here to continue farming |next "Farm_Dungeon_Collect_Sanguine_Hibiscus" |confirm |only if rep('Sporeggar')<Exalted
		|tip You can complete the dungeon once pery day on Heroic and as many times as you want on Normal.
		Earn Exalted status with the Sporeggar |complete rep('Sporeggar')==Exalted
]])

-------------------------
----- The Timbermaw -----
-------------------------

QuestCore:RegisterInclude("Timbermaw_Rep",[[
	--step
	--	Routing to proper section |next "the_grind" |only if completedq(28614)
	--	Routing to proper section |next |only if not completedq(28614)
	step
		talk Nafien##15395
		accept Deadwood of the North##28338 |goto Felwood 64.00,10.30
		accept Disarming Bears##28366 |goto Felwood 64.00,10.30
	step
		talk Ferli##48461
		accept Stupid Drizle!##28362 |goto 64.10,10.30
	step
		talk Drizle##47556
		turnin Stupid Drizle!##28362 |goto 60.60,9.50
		accept The Chieftain's Key##28364 |goto 60.60,9.50
	step
		kill Chieftain Bloodmaw##9462
		collect Drizle's Key##63695 |q 28364/1 |goto 62.10,9.90
	step
		talk Drizle##47556
		turnin The Chieftain's Key##28364 |goto 60.60,9.50
	step
		kill Deadwood Den Watcher##7156+, Deadwood Avenger##7157+, Deadwood Shaman##7158+
		Kill #15# Deadwood Furbolg |q 28338/1 |goto 62.00,12.80
		click Deadwood Weapon Pile##207126
		collect 7 Deadwood Weapons##63689 |q 28366/1 |goto 62.00,12.80
		collect 1 Deadwood Ritual Totem##20741 |use Deadwood Ritual Totem##20741 |n
		accept Deadwood Ritual Totem##8470
		You can find more at the following location |goto Felwood 59.70,9.80
	step
		talk Nafien##15395
		turnin Deadwood of the North##28338 |goto 64.00,10.30
		turnin Disarming Bears##28366 |goto 64.00,10.30
		accept Speak to Salfa##28521 |goto 64.00,10.30
		|tip You should be able to turn in Feathers for Nafien, a repeatable reputation quest.
	step
		talk Kernda##11558
		turnin Deadwood Ritual Totem##8470 |goto 64.70,5.70
		|tip You should be friendly with Timbermaw after completing this quest.
		only if rep('Timbermaw Hold')>=Neutral
	step
		talk Meilosh##11557
		accept Runecloth##6031 |goto 64.90,5.20
		only if rep ('Timbermaw Hold')>=Friendly
	step
		talk Salfa##11556
		turnin Speak to Salfa##28521 |goto Winterspring 21.10,46.20
		accept Delivery for Donova##28524 |goto Winterspring 21.10,46.20
		accept Winterfall Activity##28522 |goto Winterspring 21.10,46.20
	step
		talk Donova Snowden##9298
		turnin Delivery for Donova##28524 |goto 25.10,58.50
		accept Threat of the Winterfall##28460 |goto 25.10,58.50
		accept Falling to Corruption##28464 |goto 25.10,58.50
	step
		Click the Winterfall Cauldron
		turnin Falling to Corruption##28464 |goto 24.50,47.60
		accept Mystery Goo##28467 |goto 24.50,47.60
	step
		kill Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+
		Kill #15# Winterfall Furbolg |q 28460/1 |goto 24.50,47.60
		collect 10 Winterfall Spirit Beads##21383 |q 28522/1 |goto 24.50,47.60
		You can find more mobs at the following location |goto Winterspring 27.30,49.30
	step
		talk Donova Snowden##9298
		turnin Mystery Goo##28467 |goto 25.10,58.50
		turnin Threat of the Winterfall##28460 |goto 25.10,58.50
		accept Winterfall Runners##28469 |goto 25.10,58.50
		accept Scalding Signs##28530 |goto 25.10,58.50
	step
		kill Winterfall Runner##10916
		collect Winterfall Crate##12829 |q 28469/1 |goto 29.30,54.80
		|tip They walk along the road so some searching may be required.
	step
		kill Scalding Springsurge##48767+,Boiling Springbubble##48768+
		collect 7 Suspicious Green Sludge##64449 |q 28530/1 |goto 32.70,50.60
	step
		talk Donova Snowden##9298
		turnin Winterfall Runners##28469 |goto 25.10,58.50
		turnin Scalding Signs##28530 |goto 25.10,58.50
		accept High Chief Winterfall##28470 |goto 25.10,58.50
		|tip You should be honored with Timbermaw Hold at this point.
	step
		kill High Chief Winterfall##10738 |q 28470/1 |goto 37.00,55.60
	step
		talk Donova Snowden##9298
		turnin High Chief Winterfall##28470 |goto 25.10,58.50
	step
		talk Salfa##11556
		turnin Winterfall Activity##28522 |goto 21.10,46.20
		|tip You should now be able to do the quest More Beads for Salfa.
	step
		talk Burndl##48722
		accept Bearzerker##28614 |goto 65.30,46.20
	step
		talk Tanrir##48723
		accept Turning the Earth##28615 |goto 65.40,46.20
	step
		Use Tanrir's Overcharged Totem to overload Winterfall Earth Totems |use Tanrir's Overcharged Totem##64637
		Overload 4 Winterfall Earth Totems |q 28615/1 |goto 67.00,47.70
	step
		kill Grolnar the Berserk##49178 |q 28614/1 |goto 69.30,50.60
	step
		talk Tanrir##48723
		turnin Turning the Earth##28615 |goto Winterspring 65.40,46.20
	step
		talk Burndl##48722
		turnin Bearzerker##28614 |goto 65.30,46.20
	step
	label "the_grind"
		At this point, you can do two repeatable quests, as well as grind to earn rep.
		More Beads for Salfa requires that you grind in Winterspring. You collect 5 Winterfall Spirit Beads, which are worth 2,000 Reputation per turn in. Click here to farm at the Winterspring location. |confirm |next "winterfall"
		Feathers for Nafien requires that you grind in Felwood. You collect 5 Deadwood Headdress Feathers, which are worth 2,000 Reputation per turn in. Click here to farm at the Felwood location. |confirm |next "deadwood"
		|tip Collecting 65 Beads/Feathers will get you from Honored to Exalted.
	step
	label "winterfall"
		kill Winterfall Shaman##7439+,Winterfall Ursa##7438+
		collect Winterfall Spirit Beads##21383 |n |goto 67.50,49.80
		|tip You need to collect at least 5.
		5 Winterfall Spirit Beads = 2,000 Reputation. You're aiming for at least 60 to 65 Winterfall Spirit Beads in total.
		More can be found at the following location |goto Winterspring 35.60,56.30
		Click here to turn in your beads |confirm
	step
		talk Salfa##11556
		accept More Beads for Salfa##28523 |n |goto 21.10,46.20
		Click here to go back to grinding |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
		Exalted with Timbermaw Hold |next "exalted" |complete rep('Timbermaw Hold')==Exalted
	step
	label "deadwood"
		kill Deadwood Avenger##7157+,Deadwood Den Watcher##7156+,Deadwood Shaman##7158+
		collect Deadwood Headdress Feather##21377 |n |goto Felwood 61.90,12.30
		|tip You need to collect at least 5.
		5 Feather Headresses = 2,000 Reputation. You're aiming for at least 60 to 65 Feather Headresses in total.
		More can be found at the following location |goto Felwood 59.60,8.90
		Click here to turn in your feathers |confirm |next "turnin"
	step
	label "turnin"
		talk Nafien##15395
		accept Feathers for Nafien##28395 |n |goto 64.00,10.30
		Click here to go back to grinding |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
		Exalted with Timbermaw Hold |next "exalted" |complete rep('Timbermaw Hold')==Exalted
	step
	label "exalted"
		Congratulations, you are now Exalted with Timbermaw Hold!
]])

---------------------------
----- Tabard Includes -----
---------------------------

QuestCore:RegisterInclude("SWTabard",[[
		talk Captain Lancy Revshon##49877 |only if rep("Stormwind")<Exalted
		buy 1 Stormwind Tabard##45574 |goto Stormwind City 67.60,72.80 |only if rep("Stormwind")<Exalted
]])

QuestCore:RegisterInclude("DarnTabard",[[
		talk Moon Priestess Lasara##50305 |only if rep("Darnassus")<Exalted
		buy 1 Darnassus Tabard##45579 |goto Darnassus 36.60,49.00 |only if rep("Darnassus")<Exalted
]])

QuestCore:RegisterInclude("ExTabard",[[
		talk Kadu##50306 |only if rep("Exodar")<Exalted
		buy 1 Exodar Tabard##45580 |goto The Exodar 54.60,36.80 |only if rep("Exodar")<Exalted
]])

QuestCore:RegisterInclude("GnomTabard",[[
		talk Master Tinker Trini##50308 |only if rep("Gnomeregan")<Exalted
		buy 1 Gnomeregan Tabard##45578 |goto Ironforge 56.20,49.00 |only if rep("Gnomeregan")<Exalted
]])

QuestCore:RegisterInclude("IFTabard",[[
		talk Captain Stonehelm##50309 |only if rep("Ironforge")<Exalted
		buy 1 Ironforge Tabard##45577 |goto Ironforge 55.80,47.80 |only if rep("Ironforge")<Exalted
]])

QuestCore:RegisterInclude("GilTabard",[[
		talk Lord Candren##50307 |only if rep("Gilneas")<Exalted
		buy 1 Gilneas Tabard##64882 |goto Darnassus 37.00,47.80 |only if rep("Gilneas")<Exalted
]])
