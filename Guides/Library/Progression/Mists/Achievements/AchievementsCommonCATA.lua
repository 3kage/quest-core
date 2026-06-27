-- QuestCore bundled guide (mists)
if not QuestCore then return end
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Four Play",{
expansion="mists",
mopready=true,
achieveid={5305},
patch='40003',
description="Defeat Al'Akir in the Throne of the Four Winds while he is affected by Feedback.",
},[[
step
Inside the Throne of the Four Winds (Heroic):
kill the Al'Akir##46753
|tip Drop Al'Akir's health to 80%.
|tip Keep at least one Stormling alive.
|tip Continue fighting Al'Akir and when it's about to die, kill the Stormling.
|tip THe buff only lasts {g}20 seconds{}.
Earn the "Four Play" Achievement |achieve 5305
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Majordomo Fandral Staghelm",{
expansion="mists",
mopready=true,
achieveid={5804},
patch='40200',
description="This guide will walk you through how to get the Heroic: Majordomo Fandral Staghelm achievement.",
},[[
step
Inside the Firelands Raid (Heroic):
kill Majordomo Fandral Staghelm##52571
Defeat Majordomo Fandral Staghelm on Heroic Difficulty |achieve 5804
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Heroic: Ragnaros",{
expansion="mists",
mopready=true,
achieveid={5803},
patch='40200',
description="This guide will walk you through how to get the Heroic: Ragnaros achievement.",
},[[
step
Inside the Firelands Raid (Heroic):
kill Ragnaros##52409
Defeat Ragnaros on Heroic Difficulty |achieve 5803
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Only the Penitent...",{
expansion="mists",
mopready=true,
achieveid={5799},
patch='40200',
description="Activate both of Fandral's Flames at once in Firelands without any raid member getting hit by Kneel to the Flame!",
},[[
step
Inside the Firelands Raid:
kill Majordomo Staghelm##52571
clicknpc Fandral's Flames##53696
|tip {r}Druid of Flame{} will cast {y}Kneel to the Flame!{}
|tip Set the druid as your focus target to easily watch the cast bar.
|tip You {r}MUST{} be sitting or /kneeling by the end of each cast.
|tip The default button to sit is pressing 'X'.
|tip
|tip There will be orbs at each side of the druid.
|tip The goal is to reach them and interact with them without being hit by Kneel to the Flame.
|tip Note that it takes a few seconds to interact with the orb.
|tip Make sure you wait until a fresh cast of Kneel to the Flame to interact.
|tip The achievement fails if anyone is hit by the spell.
|tip You need six people to accomplish this.
Earn the "Only the Penitent..." Achievement |achieve 5799
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Ragnar-O's",{
expansion="mists",
mopready=true,
achieveid={5855},
patch='40200',
description="This guide will walk you through how to get the Ragnar-O's achievement.",
},[[
step
This achievement is gained by defeating Ragnaros in Firelands _while three Living Meteors are ignited by Lava Wave_
kill Ragnaros##52409
|tip Weaken Ragnaros to 30% health.
|tip Living Meteors will spawn and follow you.
|tip You can attack them to knock them back and keep your distance.
|tip When there are three you must get them hit by the Lava Waves generated from Ragnaros' Sulfuras Smash.
|tip
|tip Track the achievement.
|tip It will start out with red text.
|tip After the three meteors are hit by the lava wave the text will turn white and you can kill Ragnaros.
Earn the "Ragnar-O's" Achievement |achieve 5855
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Cataclysm Raids\\Stay Chill",{
expansion="mists",
mopready=true,
achieveid={5304},
patch='40003',
description="Defeat the Conclave of Wind in the Throne of the Four Winds while everyone in the raid has at least 7 stacks of Wind Chill.",
},[[
step
Inside Throne of the Four Winds (Heroic):
kill Nezir##45871
|tip Jump to Nezir's platform, making sure you don't attack him yet.
|tip Gain 3 stacks of Wind Chill.
|tip Jump to Rohash's platform and kill him.
|tip Jump back to Nezir's platform and gain 6 stacks of Wind Chill.
|tip Don't attack Nezir yet.
|tip Let Anshal finish casting Zephyr, then jump onto his platform and kill him.
|tip Jump back to Nezir's platform and gain 7 stacks of Wind Chill.
|tip Kill Nezir for the achievement.
Earn the "Stay Chill" Achievement |achieve 5304
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Journeyman Fisherman",{
expansion="mists",
mopready=true,
achieveid={126},
patch='30003',
description="Obtain 150 skill points in fishing.",
},[[
step
Reach 150 Fishing Skill |achieve 126
|tip
Click Here to Load the "Fishing 1-600" Guide |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing (1-600)"
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Expert Fisherman",{
expansion="mists",
mopready=true,
achieveid={127},
patch='30003',
description="Obtain 225 skill points in fishing.",
},[[
step
Reach 225 Fishing Skill |achieve 127
|tip
Click Here to Load the "Fishing 1-600" Guide |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing (1-600)"
step
Congratulations, you have _earned_ the _Expert Fisherman_ achievement!
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Artisan Fisherman",{
expansion="mists",
mopready=true,
achieveid={128},
patch='30003',
description="Obtain 300 skill points in fishing.",
},[[
step
Reach 300 Fishing Skill |achieve 128
|tip
Click Here to Load the "Fishing 1-600" Guide |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing (1-600)"
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Master Fisherman",{
expansion="mists",
mopready=true,
achieveid={129},
patch='30003',
description="Obtain 375 skill points in fishing.",
},[[
step
Reach 375 Fishing Skill |achieve 129
|tip
Click Here to Load the "Fishing 1-600" Guide |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing (1-600)"
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Grand Master Fisherman",{
expansion="mists",
mopready=true,
achieveid={130},
patch='30001',
description="Obtain 450 skill points in fishing.",
},[[
step
Obtain 450 Fishing Skill |achieve 130
|tip
Click Here to Load the "Fishing 1-600" Guide |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing (1-600)"
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Illustrious Grand Master Fisherman",{
expansion="mists",
mopready=true,
achieveid={4917},
patch='30003',
description="Obtain 525 skill points in Fishing.",
},[[
step
Obtain 525 Fishing Skill |achieve 4917
|tip
Click Here to Load the "Fishing 1-600" Guide |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing (1-600)"
]])
QuestCore:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Zen Master Fisherman",{
expansion="mists",
mopready=true,
achieveid={6839},
patch='30001',
description="Obtain 600 skill points in Fishing.",
},[[
step
Obtain 600 Fishing Skill |achieve 6839
|tip
Click Here to Load the "Fishing 1-600" Guide |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing (1-600)"
]])
