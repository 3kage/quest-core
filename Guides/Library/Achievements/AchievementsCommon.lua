-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterInclude("FrenzyheartPreQuests",[[
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto 50.5,76.6
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 55,69.1
accept The Ape Hunter's Slave##12529 |goto 55,69.1
step
Talk to Goregek the Gorilla Hunter who is following you
accept Tormenting the Softknuckles##12530
step
kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
step
kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
step
Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
|tip Softknuckles are baby gorillas.
A Hardknuckle Matriarch will spawn eventually
kill 1 Hardknuckle Matriarch |q 12530/1 |goto 66.9,73.2
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 55,69.1
turnin Tormenting the Softknuckles##12530 |goto 55,69.1
accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.5,69.7
step
kill 6 Sapphire Hive Wasp |q 12533/1 |goto 59.6,75.8
kill 9 Sapphire Hive Drone |q 12533/2 |goto 59.6,75.8
step
Follow the path _down_ |goto 59.4,79.1 < 5 |only if walking
Continue _down_ the path |goto 57.1,79.3 < 5 |only if walking
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1
step
Follow the path _up_ |goto 55.0,69.1 |only if walking
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533
turnin The Sapphire Queen##12534
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.5,69.7
step
They are all around the village
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12532/1
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.5,69.7
accept The Underground Menace##12531 |goto 55.5,69.7
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 55,69.1
step
Click the Skyreach Crystal Formations
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 55,69.1
turnin Mischief in the Making##12535 |goto 55,69.1
accept A Rough Ride##12536 |goto 55,69.1
step
talk Captive Crocolisk##28298
Tell him let's do this
Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
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
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
step
Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
step
Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 55,69.1
accept Just Following Orders##12540 |goto 55,69.1
step
talk Injured Rainspeaker Oracle##28217
Pull it to its feet
Kill the crocodile that spawns
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto 55.7,64.9
accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
Tell him you are ready to travel to his village now.
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
step
kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
|tip He walks back and forth on this small path near the waterfall.
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
accept Making Peace##12573 |goto 54.6,56.3
turnin Gods like Shiny Things##12572 |goto 54.6,56.3
step
talk Shaman Vekjik##28315
Tell him you brought an offering
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.5,62.1
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.6,56.3
accept Back So Soon?##12574 |goto 54.6,56.3
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.1,38.6
accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
accept Forced Hand##12576 |goto 42.1,38.6
step
kill 8 Frenzyheart Spearbearer |q 12576/1 |goto 40.4,26.4
kill 6 Frenzyheart Scavenger |q 12576/2 |goto 40.4,26.4
step
kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
turnin Forced Hand##12576 |goto 42.1,38.6
accept Home Time!##12577 |goto 42.1,38.6
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.6,56.3
accept The Angry Gorloc##12578 |goto 54.6,56.3
step
Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
step
Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
talk Mosswalker Victim##28113
Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
step
Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
Click Lifeblood Shards on the ground
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
step
You can also use Moodle's Stress Ball if you have it in your bags |use Moodle's Stress Ball##38624
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
_Enter_ the cave here |goto 70.8,58.7 |walk
Follow the path _up_ |goto 72.2,57.3 |walk
kill Artruis the Heartless |q 12581/1
|tip Kill Jaloot, who will spawn during the fight. Killing Jaloot will make you allied with the Frenzyheart Tribe.
Click Artruis's Phylactery that spawns after the fight
turnin A Hero's Burden##12581
step
talk Zepik the Gorloc Hunter##28668
accept Frenzyheart Champion##12582
accept Return of the Lich Hunter##12692
]])
QuestCore:RegisterInclude("FrenzyheartDailies",[[
step
talk Elder Harkek##28138
turnin Return of the Lich Hunter##12692 |goto Sholazar Basin 55.5,69.7 |only if not QC.completedQuests[12692]
accept Chicken Party!##12702 |goto Sholazar Basin 55.5,69.7
Tell him you need to find Goregek
collect Goregek's Shackles##38619 |q 12702 |goto Sholazar Basin 55.5,69.7
step
talk Rejek##29043
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Hero's Headgear##12758 |goto 55.7,69.5 |or
accept Rejek: First Blood##12734 |goto 55.7,69.5 |or
accept Strength of the Tempest##12741 |goto 55.7,69.5 |or
accept The Heartblood's Strength##12732 |goto 55.7,69.5 |or
step
talk Vekgar##29146
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Kartak's Rampage##12703 |goto 55.5,68.7 |or
accept Secret Strength of the Frenzyheart##12760 |goto 55.5,68.7 |or
accept Tools of War##12759 |goto 55.5,68.7 |or
step
They are all around the village
Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12702/1
step
kill Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
collect Venture Co. Explosives##39651 |q 12758 |goto 33.1,47.3
step
kill Stormwatcher##28877+
Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
Click the Stormwatcher's Head that spawns
collect Stormwatcher's Head##39667 |q 12758/1 |goto 26.0,35.4
step
kill Hardknuckle Charger##28096+
Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
Blood your Blade on a Hardknuckle Charger |q 12734/2 |goto 59.7,70.9
step
kill Sapphire Hive Wasp##28086+
Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
Blood your Blade on a Sapphire Hive Wasp |q 12734/1 |goto 59.3,75.7
step
kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
Blood your Blade on 3 Mistwhisper Members |q 12734/3 |goto 43.1,40.4
step
kill Aqueous Spirit##28862+
collect 3 Essence of the Monsoon##39616 |q 12741 |goto 26.5,35.1
kill Storm Revenant##28858+
collect 3 Essence of the Storm##39643 |q 12741 |goto 26.5,35.1
step
Stand right up next to the tall stone altar
|tip You may even need to rub against, or stand next to it so that you are touching it.
Feel the True Power of the Tempest |q 12741/1 |goto 22.4,33.8
step
kill Goretalon Matriarch##29044
|tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
collect Matriarch's Heartblood##39573 |q 12732 |goto 59.7,23.9
step
Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
collect Suntouched Water##39576 |n
Click the Suntouched Water in your bags |use Suntouched Water##39576
collect Suntouched Heartblood##39575 |q 12732/1 |goto 33.8,52.1
step
kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
collect Oracle Blood##39265 |q 12703 |goto 31.6,69.5
step
Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265
|tip The Altar of Kartak has a big skull on top of it, with long curved horns. There are 3 small fires at the base of the altar, also.
Take Control of Kartak |invehicle |c |q 12703 |goto 23.3,83.0
step
Use Kartak's abilities to kill Oracle mobs around this area
kill #50# Sparktouched Gorloc |q 12703/1 |goto 30.7,78.0
step
talk Grimbooze Thunderbrew##29157
Ask him for some booze
collect Thunderbrew's Hard Ale##39738 |n
Click the Wolvar Berries in your bags |use Wolvar Berries##39739
collect Secret Strength of the Frenzyheart##39737 |q 12760/2 |goto 26.8,60.1
step
Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
Kill #30# Sparktouched Gorlocs |q 12760/1 |goto 30.1,70.7
step
Click Zepik's Trap Stash
|tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
collect Spike Bomb##39697 |q 12759 |goto 24.0,83.1
collect Ensnaring Trap##39695 |q 12759 |goto 24.0,83.1
collect Volatile Trap##39696 |q 12759 |goto 24.0,83.1
step
Use your Spike Bomb |use Spike Bomb##39697
Use your Ensnaring Trap |use Ensnaring Trap##39695
Use your Volatile Trap |use Volatile Trap##39696
Use your traps near Oracles mobs around this area
Kill #50# Sparktouched Gorlocs |q 12759/1 |goto 28.4,76.1
step
talk Shaman Jakjek##28106
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Kartak's Rampage##12703 |goto 23.4,83.3
turnin Secret Strength of the Frenzyheart##12760 |goto 23.4,83.3
turnin Tools of War##12759 |goto 23.4,83.3
step
talk Elder Harkek##28138
turnin Chicken Party!##12702 |goto 55.5,69.7
step
talk Rejek##29043
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Hero's Headgear##12758 |goto 55.7,69.5
turnin Rejek: First Blood##12734 |goto 55.7,69.5
turnin Strength of the Tempest##12741 |goto 55.7,69.5
turnin The Heartblood's Strength##12732 |goto 55.7,69.5
]])
QuestCore:RegisterInclude("OraclePreQuests",[[
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin,50.5,62.1
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto 50.5,76.6
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 55,69.1
accept The Ape Hunter's Slave##12529 |goto 55,69.1
step
Talk to Goregek the Gorilla Hunter who is following you
accept Tormenting the Softknuckles##12530
step
kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
step
kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
step
Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
|tip Softknuckles are baby gorillas.
A Hardknuckle Matriarch will spawn eventually
kill 1 Hardknuckle Matriarch |q 12530/1 |goto 66.9,73.2
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 55,69.1
turnin Tormenting the Softknuckles##12530 |goto 55,69.1
accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.5,69.7
step
kill 6 Sapphire Hive Wasp |q 12533/1 |goto 59.6,75.8
kill 9 Sapphire Hive Drone |q 12533/2 |goto 59.6,75.8
step
Follow the path down _down_ |goto 59.4,79.1,0.3 |only if walking
Continue _down_ the path |goto 57.1,79.3 |only if walking
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1
step
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto 55.0,69.1
turnin The Sapphire Queen##12534 |goto 55.0,69.1
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.5,69.7
step
They are all around the village
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12532/1
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.5,69.7
accept The Underground Menace##12531 |goto 55.5,69.7
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 55,69.1
step
Click the Skyreach Crystal Formations
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 55,69.1
turnin Mischief in the Making##12535 |goto 55,69.1
accept A Rough Ride##12536 |goto 55,69.1
step
talk Captive Crocolisk##28298
Tell him let's do this
Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
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
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
step
Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
step
Use Zepik's Hunting Horn if Zepik is not standing next to you |use Zepik's Hunting Horn##38512
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 55,69.1
accept Just Following Orders##12540 |goto 55,69.1
step
talk Injured Rainspeaker Oracle##28217
Pull it to its feet
Kill the crocodile that spawns
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto 55.7,64.9
accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
Tell him you are ready to travel to his village now
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 55.7,64.9
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
step
kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
|tip He walks back and forth on this small path near the waterfall.
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
accept Making Peace##12573 |goto 54.6,56.3
turnin Gods like Shiny Things##12572 |goto 54.6,56.3
step
talk Shaman Vekjik##28315
Tell him you brought an offering
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.5,62.1
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.6,56.3
accept Back So Soon?##12574 |goto 54.6,56.3
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.1,38.6
accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
accept Forced Hand##12576 |goto 42.1,38.6
step
kill 8 Frenzyheart Spearbearer |q 12576/1 |goto 40.4,26.4
kill 6 Frenzyheart Scavenger |q 12576/2 |goto 40.4,26.4
step
kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
turnin Forced Hand##12576 |goto 42.1,38.6
accept Home Time!##12577 |goto 42.1,38.6
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.6,56.3
accept The Angry Gorloc##12578 |goto 54.6,56.3
step
Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
step
Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
talk Mosswalker Victim##28113
Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
step
Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
Click Lifeblood Shards on the ground
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
step
You can also use Moodle's Stress Ball if you have it in your bags |use Moodle's Stress Ball##38624
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
_Enter_ the cave |goto 70.8,58.7 |walk
Follow the path inside the cave up to 72.2,57.3 |walk
kill Artruis the Heartless |q 12581/1
|tip Kill either Zepik the Gorloc Hunter who spawns during the fight. Killing Zepik the Gorloc Hunter will make you allied with The Oracles.
Click Artruis's Phylactery that spawns after the fight
turnin A Hero's Burden##12581
step
talk Jaloot##28667
accept Hand of the Oracles##12689
accept Return of the Friendly Dryskin##12695
]])
QuestCore:RegisterInclude("OracleDailies",[[
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |only if not QC.completedQuests[12695] |goto Sholazar Basin 54.6,56.4
accept Appeasing the Great Rain Stone##12704 |goto Sholazar Basin 54.6,56.4
Tell him you need to find Lafoo
collect Lafoo's Bug Bag##38622 |q 12704 |goto Sholazar Basin 54.6,56.4
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Cleansing Song##12735 |goto 53.3,56.5 |or
accept Song of Fecundity##12737 |goto 53.3,56.5 |or
accept Song of Reflection##12736 |goto 53.3,56.5 |or
accept Song of Wind and Water##12726 |goto 53.3,56.5 |or
step
talk Oracle Soo-dow##29149
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Mastery of the Crystals##12761 |goto 54.2,53.8 |or
accept Power of the Great Ones##12762 |goto 54.2,53.8 |or
accept Will of the Titans##12705 |goto 54.2,53.8 |or
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575|q 12704/1 |goto 52.4,53.2
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Atha |q 12735/1 |goto 42.7,42.8
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Ha-Khalan |q 12735/2 |goto 49.4,62.7
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Koosu |q 12735/3 |goto 48.8,70.5
step
Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
Play the Song of Fecundity 8 Times |q 12737/1 |goto 26.2,37.1
step
Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Glimmering Pillar |q 12736/1 |goto 50.0,37.4
step
Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.6,52.3
step
Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.4,74.7
step
Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.3,79.4
step
Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
Haiphoon has 2 forms: Water and Air
|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area. When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
Devour 3 Aqueous Spirits |q 12726/1 |goto 26.2,37.1
Devour 3 Storm Revenants |q 12726/2 |goto 26.2,37.1
step
Click the Sparktouched Crystal Defenses
|tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto 33.0,75.7
collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto 33.0,75.7
collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto 33.0,75.7
step
Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
Use your crystals near Frenzyheart mobs around this area
Kill #50# Frenzyheart Attackers |q 12761 /1 |goto 22.2,78.0
step
Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.5,60.2
step
Use your Energized Polished Crystal |use Energized Polished Crystal##39748
|tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
Kill 30 Frenzyheart Attackers |q 12762/1 |goto 22.2,78.0
step
kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
collect 1 Tainted Crystal##39266 |q 12705 |goto 22.9,76.0
step
Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
Take control of Soo-holu |invehicle |c |q 12705 |goto 33.7,75.0
step
Use Soo-holu's abilities to kill Frenzyheart mobs around this area
kill 50 Frenzyheart Attacker |q 12705/1 |goto 22.2,78.0
step
talk Lightningcaller Soo-met##28107
turnin Mastery of the Crystals##12761 |goto 33.5,74.8
turnin Power of the Great Ones##12762 |goto 33.5,74.8
turnin Will of the Titans##12705 |goto 33.5,74.8
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Cleansing Song##12735 |goto 53.3,56.5
turnin Song of Fecundity##12737 |goto 53.3,56.5
turnin Song of Reflection##12736 |goto 53.3,56.5
turnin Song of Wind and Water##12726 |goto 53.3,56.5
step
talk High-Oracle Soo-say##28027
turnin Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
]])
QuestCore:RegisterInclude("CleansingDrakTharon",[[
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |c |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Crystal Vial##3371 |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085|q 11990/2 |goto 14.6,45.3
step
Click a Waterweed|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795|q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
accept Subject to Interpretation##11991 |goto 16.4,47.8
step
kill trolls |n
collect #5# Frozen Mojo##35799 |q 11991 |goto 13.3,58.5
step
Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
talk Image of Drakuru##26500
turnin Subject to Interpretation##11991 |goto 13.2,60.9
accept Sacrifices Must be Made##12007 |goto 13.2,60.9
step
kill Warlord Zim'bo##26544
collect Zim'bo's Mojo##35836 |q 12007 |goto 14.5,38
step
Click the Seer of Zeb'Halak statue
|tip It's a huge blue glowing statue at the top of the stairs.
collect Eye of the Prophets##35806|q 12007/1 |goto 17.9,36.5
|tip Go up the huge stairs.
step
Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
talk Image of Drakuru##26543
turnin Sacrifices Must be Made##12007 |goto 17.4,36.4
accept Heart of the Ancients##12042 |goto 17.4,36.4
step
Click the Heart of the Ancients
|tip It's a small pointed stone laying on the floor at the top of this control station, in a small room, next to a dead goblin.
turnin Heart of the Ancients##12042 |goto 36.9,32.4
accept My Heart is in Your Hands##12802 |goto 36.9,32.4
step
kill Drakkari Defenders |n
collect 5 Desperate Mojo##36743 |q 12802 |goto 44.2,30.4
step
Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
talk Image of Drakuru##26701
turnin My Heart is in Your Hands##12802 |goto 45.0,28.4
accept Voices From the Dust##12068 |goto 45.0,28.4
step
kill Drakkari Protector##26797+, Drakkari Oracle##26795+
collect 5 Sacred Mojo##36758|q 12068 |goto 70.5,27.4
step
_Enter_ the crypt |goto 69.4,18.2 |walk
Click the Drakkari Tablets
|tip It's a big stone tablet in the corner of a small room inside this underground crypt.
collect Drakkari Tablets##36757|q 12068/1
step
Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
talk Image of Drakuru##26787
turnin Voices From the Dust##12068 |goto 71.7,26.2
accept Cleansing Drak'Tharon##12238 |goto 71.7,26.2
step
_Enter_ Drak'Tharon Keep |goto Grizzly Hills 17.4,21.2 |walk
kill Drakkari Shaman##26639+, Drakarri Guardian##26620+, Drakarri Commander##27431+ |q 12238
collect 5 Enduring Mojo##38303
step
kill The Prophet Tharon'ja##26632 |n
|tip He's at the end of the instance
Go behind the boss to Drakuru's Brazier
Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
|tip It's a square bowl at the top of the stairs.
talk Drakuru##28016
turnin Cleansing Drak'Tharon##12238
]])
QuestCore:RegisterInclude("BetrayalDrakuru",[[
step
kill Withered Trolls
collect Writhing Choker##38673 |n
use Writhing Choker##38673
accept Darkness Calling##12633 |goto Zul'Drak,15.5,69.8
step
talk Stefan Vadu##28518
turnin Darkness Calling##12633 |goto 14.1,73.8
accept Close Call##12638 |goto 14.1,73.8
step
talk Bloodrose Datura##28532
Tell her Stefan said she would demonstrate the item's purpose
Expose the Choker's Purpose |q 12638/1 |goto 14.3,74
step
talk Stefan Vadu##28518
turnin Close Call##12638 |goto 14.1,73.8
accept Silver Lining##12643 |goto 14.1,73.8
step
kill Putrid Abominations |n
collect 5 Putrid Abomination Guts##38686 |q 12643/1 |goto 19.9,73.5 |or
Click the Gooey Ghoul Drool on the ground
|tip They look like jelly blobs on the ground around this area.
collect 5 Gooey Ghoul Drool##38687 |q 12643/2 |goto 19.9,73.5
step
talk Stefan Vadu##28518
turnin Silver Lining##12643 |goto 14.1,73.8
accept Suit Up!##12649 |goto 14.1,73.8
step
Use the Ensorcelled Choker to wear a ghoul costume |use Ensorcelled Choker##38699
talk Gristlegut##28589
buy 1 Bitter Plasma##38698|q 12649/1 |goto 19.9,75.5
step
talk Stefan Vadu##28518
You will only be able to turn in 1 of these quests
turnin Suit Up!##12649
accept Infiltrating Voltarus##12661 |goto 14.1,73.8
step
Use your Ensorcelled Choker to become a ghoul |use Ensorcelled Choker##38699 |goto 28.4,44.9
Stand on this green circle
Get teleported up to Overlord Drakuru |goto Zul'Drak,28.1,45.2
talk Overlord Drakuru##28503
accept Reunited##12663 |goto 27.1,46.2
step
talk Gorebag##28666
Go on the tour of Zul'Drak
Complete the tour of Zul'Drak |q 12663/1 |goto 29.9,47.8
step
talk Overlord Drakuru##28503
turnin Reunited##112663 |goto 27.1,46.2
Complete Overlord Drakuru's task |q 12661/1 |c
step
_Teleport_ back down to the ground
Use Stefan's Horn in your bags |use Stefan's Horn##41390
talk Stefan Vadu##28518
turnin Infiltrating Voltarus##12661 |goto 28.1,44.9,0.5
accept So Far, So Bad##12669 |goto 28.1,44.9,0.5
step
_Teleport_ up to Overlord Drakuru |goto 28.1,45.2,0.5
talk Overlord Drakuru##28503
accept It Rolls Downhill##12673 |goto 27.1,46.2
step
_Teleport_ back down to the ground |goto 28.0,44.9
Use your Scepter of Suggestion on Blight Geists |use Scepter of Suggestion##39157
Use the Harvest Blight Crystal ability near Crystallized Blight |petaction Harvest Blight Crystal
|tip The Crystallized Blight look like orange crystals on the ground around this area.
Follow the Blight Geists back to the teleport pad
Collect 7 Blight Crystals |q 12673/1 |goto 27.2,45.1
step
Use your Diluting Additive next to the big cauldron 5 times |use Diluting Additive##39154
|tip It's a big cauldron on the back of this cart vehicle thing. Several Blightguards may pop out for you to fight. Wait about a minute and use your Diluting Additive next to the cauldron again. Keep repeating this process.
Dilute the Cauldron #5# times |q 12669/2 |goto 26.8,47
step
Stand on this green circle
Get teleported up to Overlord Drakuru |goto 28.1,45.2
step
talk Overlord Drakuru##28503
turnin It Rolls Downhill##12673
Complete Drakuru's task |q 12669/1 |goto 27.1,46.2
step
Teleport back down to the ground |goto 28.0,44.9
Use Stefan's Horn in your bags |use Stefan's Horn##41390
talk Stefan Vadu##28518
turnin So Far, So Bad##12669
accept Hazardous Materials##12677
step
_Teleport_ up to Overlord Drakuru |goto 28.1,45.2
talk Overlord Drakuru##28503
accept Zero Tolerance##12686 |goto 27.1,46.2
step
Click the Harvested Blight Crystal crates
|tip They look like big wooden crates around this area in the halls and rooms.
collect 5 Harvested Blight Crystal##39159 |q 12677/2 |goto 27.1,43.9
step
Teleport back down to the ground |goto 28.0,44.9
Use your Scepter of Empowerment on a Servant of Drakaru |use Scepter of Empowerment##39206
Take control of a Servant of Drakaru
Use the abilities on your Servant of Drakaru's pet bar to fight Darmuk |goto 30.4,51.5
Kill Darmuk |q 12686/1 |goto 29.7,49.6
|tip He's a huge undead mob walking around on this platform.
step
Get teleported up to Overlord Drakuru |goto 28.1,45.2
talk Overlord Drakuru##28503
turnin Zero Tolerance##12686 |goto 27.1,46.2
step
Teleport back down to the ground |goto 28.0,44.9
Use Stefan's Horn in your bags |use Stefan's Horn##41390
talk Stefan Vadu##28518
turnin Hazardous Materials##12677
accept Sabotage##12676
step
_Teleport_ up to Overlord Drakuru |goto 28.1,45.2
talk Overlord Drakuru##28503
accept Fuel for the Fire##12690 |goto 27.1,46.2
step
_Teleport_ back down to the ground |goto 28.0,44.9
Use your Scepter of Command on a Bloated Abomination |use Scepter of Command##39238
Take control of the Bloated Abomination
Go up the hill
Send your Bloated Abomination into groups of Drakkari Skullcrushers
Use the Burst at the Seams ability on your pet hotbar |petaction Burst at the Seams
Kill 60 Drakkari Skullcrushers |q 12690/1 |goto 32.1,40.6
Lure 3 Drakkari Chieftains |q 12690/2 |goto 32.1,40.6
step
Use your Explosive Charges next to Scourgewagons |use Explosive Charges##39165
|tip They look like small catapult carts.
Destroy 5 Scourgewagons |q 12676/1 |goto 30.6,45.3
step
Get teleported up to Overlord Drakuru |goto 28.1,45.2
talk Overlord Drakuru##28503
turnin Fuel for the Fire##12690 |goto 27.1,46.2
accept Disclosure##12710 |goto 27.1,46.2
Complete Drakuru's task |q 12676/2 |goto 27.1,46.2
step
_Teleport_ up to Drakuru's upper chamber |goto 27.4,42.5
Click the Musty Coffin
|tip It's a brown coffin.
Explore Drakuru's upper chamber |q 12710/1 |goto 27.2,42.3
step
Stand on this green circle to go to the bottom level of Voltarus |goto 28.1,45.2
talk Overlord Drakuru##28503
turnin Disclosure##12710
Learn Drakuru's secret |q 12676/3 |goto 27.1,46.2
step
Teleport back down to the ground |goto 28.0,44.9
Use Stefan's Horn in your bags |use Stefan's Horn##41390
talk Stefan Vadu##28518
turnin Sabotage##12676
accept Betrayal##12713
step
Stand on this green circle to go to the bottom level of Voltarus |goto 28.1,45.2
talk Overlord Drakuru##28503
Tell him you're ready to accompany him |goto 28.3,45.3
Use your Scepter of Domination on Blightblood Trolls |use Scepter of Domination##39664
Use the following abilities when they are off cooldown:
Powerful Strike |use spell##54135
Concussion Blow |use spell##54132
Blightblood Infusion |use spell##54136
Use the Scepter on another Blightblood Troll if yours dies.
collect 1 Drakuru's Skull##40425 |q 12713/1
]])
QuestCore:RegisterInclude("Explorer_Pandaria",[[
step
Discover Nectarbreeze Orchard |achieve 6351/8 |goto The Jade Forest 40.0,73.0
step
Discover Garrosh'ar Point |achieve 6351/15 |goto 46.0,90.0
step
Discover Dreamer's Pavilion |achieve 6351/3 |goto 52.1,90.8
step
Discover Slingtail Pits |achieve 6351/12 |goto 52.0,82.0
step
Discover Pearl Lake |achieve 6351/5 |goto 58.0,80.0
step
Discover Temple of the Jade Serpent |achieve 6351/13 |goto 57.0,57.0
step
Discover Serpent's Heart |achieve 6351/11 |goto 47.0,60.0
step
Discover Dawn's Blossom |achieve 6351/2 |goto 48.0,45.0
step
Discover The Arboretum |achieve 6351/14 |goto 57.0,44.0
step
Discover Windward Isle |achieve 6351/16 |goto 65.0,30.0
step
Discover Emperor's Omen |achieve 6351/4 |goto 50.0,26.2
step
Discover Greenstone Quarry |achieve 6351/7 |goto 46.0,29.0
step
Discover Tian Monastery |achieve 6351/1 |goto The Jade Forest 41.2,21.5
step
Discover Terrace of Ten Thunders |achieve 6351/10 |goto 40.0,13.0
step
Discover Honeydew Village |achieve 6351/17 |goto 29.0,13.0
step
Discover Camp Nooka Nooka |achieve 6351/9 |goto 25.0,37.0
step
Discover Grookin Hill |achieve 6351/6 |goto 25.0,48.0
step
Discover the Thunderfoot Ranch |achieve 6969/17 |goto Valley of the Four Winds 75.7,24.9
step
Discover the Pools of Purity |achieve 6969/11 |goto 60.7,27.6
step
Discover Mudmug's Place |achieve 6969/8 |goto 68.6,43.3
step
Discover Zhu's Watch |achieve 6969/18 |goto 81.53,47.92
step
Discover the Rumbling Terrace |achieve 6969/12 |goto 73.2,58.3
step
Discover Silken Fields |achieve 6969/13 |goto 65.2,57.4
step
Discover Halfhill |achieve 6969/5 |goto 56.1,49.8
step
Discover the Gilded Fan |achieve 6969/3 |goto 54.2,38.7
step
Discover the Heartland |achieve 6969/16 |goto 40.4,43.1
step
Discover the Kunzen Village |achieve 6969/7 |goto 33.1,23.5
step
Discover Paoquan Hollow |achieve 6969/10 |goto 16.6,38.7
step
Discover Singing Marshes |achieve 6969/14 |goto 25.0,43.6
step
Discover Stoneplow |achieve 6969/6 |goto 19.0,57.0
step
Discover Dustback Gorge |achieve 6969/2 |goto 13.0,75.5
step
Discover the Nesingwary Safari |achieve 6969/9 |goto 16.1,82.7
step
Discover Stormstout Brewery |achieve 6969/15 |goto 35.9,68.0
step
Discover The Imperial Granary |achieve 6969/4 |goto 52.4,63.0
step
Discover Winds' Edge |achieve 6969/1 |goto 50.1,75.1
step
Discover Zhu's Watch |achieve 6975/16 |goto Krasarang Wilds 76.6,8.7
step
Discover Krasarang Cove |achieve 6975/5 |goto 80.6,25.6
step
Discover The Krasari Ruins |achieve 6975/6 |goto 68.5,22.8
step
Discover the Dojan River |achieve 6975/3 |goto 65.3,32.9
step
Discover the Anglers Wharf |achieve 6975/1 |goto 68.0,44.2
step
Discover the Ruins of Dojan |achieve 6975/9 |goto 53.9,37.4
step
Discover The Deepwild |achieve 6975/12 |goto 45.5,31.8
step
Discover Crane Wing Refuge |achieve 6975/8 |goto 40.0,32.5
step
Discover the Temple of the Red Crane |achieve 6975/11 |goto 39.1,56.8
step
Discover Unga Ingoo |achieve 6975/15 |goto 43.3,90.2
step
Discover Nayeli Lagoon |achieve 6975/7 |goto 40.7,82.9
step
Discover the Cradle of Chi-Ji |achieve 6975/2 |goto 31.2,63.2
step
Discover The Southern Isle |achieve 6975/14 |goto 12.7,59.9
step
Discover the Ruins of Korja |achieve 6975/10 |goto 24.0,47.1
step
Discover Fallsong Village |achieve 6975/4 |goto 30.2,38.3
step
Discover The Forbidden Jungle |achieve 6975/13 |goto 14.1,39.0
step
Discover Binan Village |achieve 6976/1 |goto Kun-Lai Summit 71.8,92.2
step
Discover Muskpaw Ranch |achieve 6976/8 |goto 68.1,73.2
step
Discover the Temple of the White Tiger |achieve 6976/11 |goto 68.6,46.6
step
Discover the Isle of Reckoning |achieve 6976/4 |goto 75.5,11.9
step
Discover Zouchin Village |achieve 6976/14 |goto 62.4,29.4
step
Discover the Valley of Emperors |achieve 6976/13 |goto 53.4,48.3
step
Discover Peak of Serenity |achieve 6976/9 |goto 49.3,42.9
step
Discover Shado-Pan Monastery |achieve 6976/10 |goto 36.7,47.9
step
Discover Mount Neverest |achieve 6976/7 |goto 44.5,55.9
step
Discover the Burlap Trail |achieve 6976/12 |goto 55.4,65.9
step
Discover Mogujia |achieve 6976/6 |goto 58.0,74.8
step
Discover the Gate of the August Celestials |achieve 6976/3 |goto 55.5,92.0
step
Discover Firebough Nook |achieve 6976/2 |goto 45.4,86.2
step
Discover Kota Peak |achieve 6976/5 |goto 38.0,75.1
step
Discover Fire Camp Osul |achieve 6977/5 |goto Townlong Steppes 67.3,44.9
step
Discover Kri'vess |achieve 6977/2 |goto 56.1,53.5
step
Discover Niuzao Temple |achieve 6977/4 |goto 39.3,62.0
step
Discover Shan'ze Dao |achieve 6977/8 |goto Townlong Steppes 28.6,25.8
step
Discover Sra'vess |achieve 6977/10 |goto 26.3,39.1
step
Discover Shado-Pan Garrison |achieve 6977/7 |goto 49.2,71.0
step
Discover Sik'vess |achieve 6977/9 |goto 44.6,77.5
step
Discover Rensai's Watchpost |achieve 6977/3 |goto 54.3,79.0
step
Follow the path |goto 66.3,69.3 |only if walking
Discover the Slumprushes |achieve 6977/11 |goto 71.3,70.5
step
Discover Hatred's Vice |achieve 6977/6 |goto 82.5,72.4
step
Discover the Gao-Ran Battlefront |achieve 6977/1 |goto 75.5,82.5
step
Discover Kypari Vor |achieve 6978/3 |goto Dread Wastes 63.2,18.4
step
Discover The Sunset Brewgarden |achieve 6978/10 |goto 50.5,12.2
step
Discover Rikkitun Village |achieve 6978/5 |goto 34.6,20.0
step
Discover the Heart of Fear |achieve 6978/1 |goto 39.6,35.0
step
Discover The Clutches of Shek'zeer |achieve 6978/9 |goto 46.2,34.5
step
Discover Klaxxi'vess |achieve 6978/2 |goto 53.6,34.9
step
Discover The Briny Muck |achieve 6978/8 |goto 38.7,62.2
step
Discover Zan'vess |achieve 6978/12 |goto 30.5,73.6
step
Discover Soggy's Gamble |achieve 6978/6 |goto 55.9,70.3
step
Discover Kypari Zar |achieve 6978/4 |goto 59.2,60.6
step
Discover Writhingwood |achieve 6978/11 |goto 66.0,42.2
step
Discover Terace of Gurthan |achieve 6978/7 |goto 68.3,30.4
step
Discover the Shrine of Seven Stars |achieve 6979/6 |goto Vale of Eternal Blossoms 86.4,62.5
step
Discover the Mogu'shan Palace |achieve 6979/3 |goto 79.1,36.1
step
Discover the Shrine of Two Moons |achieve 6979/9 |goto 62.0,22.6
step
Discover the Golden Pagoda |achieve 6979/7 |goto 56.7,43.2
step
Discover The Golden Stair |achieve 6979/5 |goto 44.2,15.2
step
Discover Whitepetal Lake |achieve 6979/10 |goto 40.5,47.0
step
Discover the Ruins of Guo-Lai |achieve 6979/1 |goto 26.6,37.2
step
Discover The Five Sisters |achieve 6979/11 |goto 17.4,47.9
step
Discover the Setting Sun Garrison |achieve 6979/4 |goto 18.5,71.7
step
Discover Mistfall Village |achieve 6979/2 |goto 36.3,72.0
step
Discover the Tu Shen Burial Ground |achieve 6979/8 |goto 48.3,69.1
]])
