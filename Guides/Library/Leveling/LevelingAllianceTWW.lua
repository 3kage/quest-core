-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Housing Tutorial",{
author="QuestCore",
description="This guide will assist you in completing the housing tutorial quests.",
patch='110207',
},[[
step
accept A House For You##93057 |goto Dornogal/0 46.04,34.51
|tip You will automatically accept this quest.
step
Access a Housing Neighborhood from Your Capital City |q 93057/1 |goto Founder's Point/0 57.28,27.48
step
Click the Complete Quest Box
turnin A House For You##93057 |goto Founder's Point/0 57.28,27.48
accept My First Home##91863 |goto Founder's Point/0 57.28,27.48
|tip You will automatically accept this quest.
step
talk Lyssabel Dawnpetal##233063
Greet the Steward |q 91863/1 |goto Founder's Point/0 53.12,40.05
step
talk Lyssabel Dawnpetal##233063
Select _"I'd like to have a look around."_ |gossip 135761
Select _"Let's go!"_ |gossip 135770
Ask the Steward to Join You |q 91863/2 |goto Founder's Point/0 53.12,40.05
step
_Next to you:_
talk Lyssabel Dawnpetal##249850
Select _"I want to see other neighborhood options."_ |gossip 135760
Select _"<Open House Finder.>"_ |gossip 135774
|tip Select a neighborhood, then select a plot.
|tip Click the {o}Visit{} button to reserve the plot and visit it.
|tip Click the Cornerstone at the plot and click the {o}Buy{} button.
Acquire a House |q 91863/4
step
_Next to you:_
talk Lyssabel Dawnpetal##249850
turnin My First Home##91863
step
accept Welcome Home##91968
|tip Enter your house and start the tutorial.
step
Remove #4# Decor |q 91968/1
|tip Click the {o}Edit House{} button at the top of the screen.
|tip Click objects around your house and use the {o}R{} key to remove 4 of them.
step
Click the Complete Quest Box
turnin Welcome Home##91968
accept Time to Decorate##91969
|tip You will automatically accept this quest.
step
Place #4# Decor |q 91969/1
|tip Click the {o}Edit House{} button at the top of the screen.
|tip Click objects from the storage window and place them around your home as you like.
Click the Complete Quest Box
turnin Time to Decorate##91969
step
talk Lyssabel Dawnpetal##233063
accept Feathering the Nest##94210 |goto Founder's Point/0 53.12,40.05
step
Visit Merchants Selling Flora Decor |q 94210/2 |goto Founder's Point/0 53.47,40.92
step
Visit Merchants Selling Elven Decor |q 94210/3 |goto Founder's Point/0 52.23,37.78
step
Visit Merchants Selling Local Decor |q 94210/1 |goto Founder's Point/0 51.96,38.37
step
talk The Last Architect##248854
Select _"Where else can I find decor?"_ |gossip 137162
Ask the Last Architect About Other Decor Sources |q 94210/4 |goto Founder's Point/0 52.72,37.49
step
talk Lestia Goldenstrike##255519
accept Lumber For You##93647 |goto Founder's Point/0 51.89,38.70
step
Visit the Smugglers |q 94210/5 |goto Founder's Point/0 62.37,80.15
step
talk "High Tides" Ren##255222
Select _"Okay, let's see what you've got."_ |gossip 137315
buy Sethraliss Priest's Pillow##244778 |q 94210/6 |goto Founder's Point/0 62.37,80.15
step
use the Sethraliss Priest's Pillow##244778
Add Sethraliss Priest's Pillow to House Chest |q 94210/7 |goto Founder's Point/0 62.37,80.15
step
talk Lyssabel Dawnpetal##233063
turnin Feathering the Nest##94210 |goto Founder's Point/0 53.12,40.05
accept This Old Hearth##94379 |goto Founder's Point/0 53.12,40.05
step
talk Jorvan Longmoor##255104
Visit the General Contractor |q 94379/1 |goto Founder's Point/0 54.02,39.60
step
talk Jorvan Longmoor##255104
Select _"I'd like to upgrade my house."_ |gossip 137141
Select _"Let's do this!"_ |gossip 137139
Level Up Your House |q 94379/2 |goto Founder's Point/0 54.02,39.60
step
talk Lyssabel Dawnpetal##233063
turnin This Old Hearth##94379 |goto Founder's Point/0 53.12,40.05
]])
