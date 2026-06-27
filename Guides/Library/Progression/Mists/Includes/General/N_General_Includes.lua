-- QuestCore bundled guide (mists)
if not QuestCore then return end

QuestCore:RegisterInclude("misc_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		_Exalted_ with _%rep%_ |complete rep("%rep%")>=Exalted
]])

QuestCore:RegisterInclude("dailies_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		Use the _%rep%_ Dailies section of this guide to become _exalted_ with _%rep%_ |only if rep("%rep%")<Exalted
		_Exalted_ with _%rep%_ |complete rep("%rep%")>=Exalted
]])

QuestCore:RegisterInclude("main_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		#include %tabard%
		Use this _tabard_ and _complete dungeons_ with _friends_ or in the _random dungeon finder_ to get to _exalted_ |only if rep("%rep%")<Exalted
		_Exalted_ with _%rep%_ |complete rep("%rep%")>=Exalted
]])
