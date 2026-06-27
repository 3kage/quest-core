-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\World Event Mounts\\Ballistic Bronco",{
patch='110207',
source='World Event',
author="QuestCore",
description="This guide will teach you how to acquire the Ballistic Bronco mount.",
keywords={"World Event","Flying"},
mounts={1264643},
mounttype="Flying",
startlevel=80,
},[[
step
Unlock the Brawler's Guild and Reach Rank 6 with Bizmo's Brawlpub in the Deeprun Tram |complete factionrenown(2767) >= 6 |or
|tip Use the {b}Midnight Brawler's Guild Event Guide{} to achieve this.
'|complete hasmount1264643) |or
step
talk Quackenbush##68363
buy Ballistic Bronco##259238 |goto Deeprun Tram/2 54.25,25.48 |or
'|complete hasmount(1264643) |or
step
use Ballistic Bronco##259238
learnmount Ballistic Bronco##1264643
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\World Event Mounts\\Brawlin' Bruno",{
patch='110207',
source='World Event',
author="QuestCore",
description="This guide will teach you how to acquire the Brawlin' Bruno mount.",
keywords={"World Event","Ground"},
mounts={1264621},
mounttype="Ground",
startlevel=80,
},[[
step
Unlock the Brawler's Guild and Reach Rank 6 with Bizmo's Brawlpub in the Deeprun Tram |complete factionrenown(2767) >= 6 |or
|tip Use the {b}Midnight Brawler's Guild Event Guide{} to achieve this.
'|complete hasmount(1264621) |or
step
talk Quackenbush##68363
buy Brawlin' Bruno##259227 |goto Deeprun Tram/2 54.25,25.48 |or
'|complete hasmount(1264621) |or
step
use Brawlin' Bruno##259227
learnmount Brawlin' Bruno##1264621
]])
