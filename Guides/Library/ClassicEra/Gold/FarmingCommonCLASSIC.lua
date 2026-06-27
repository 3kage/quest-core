-- Gold module flag omitted in QuestCore
if not QuestCore then return end
QuestCore:RegisterGuide("GOLD\\Farming\\Linen Cloth",{
expansion="classic_era",
items={{2589,30}},
meta={goldtype="route",levelreq={1,60},itemtype="cloth"},
maps={"Shadowfang Keep","Wetlands","Silverpine Forest"},
},[[
step
Follow the path |goto Orgrimmar 52.00,57.84 < 15 |only if walking
Follow the path down |goto Orgrimmar 56.07,41.08 < 10 |only if walking
Enter the Ragefire Chasm dungeon |goto Orgrimmar 52.75,48.86 < 7 |c
|tip You may need a group for this.
step
Kill Ragefire enemies throughout the dungeon
collect Linen Cloth##2589 |n
]])
