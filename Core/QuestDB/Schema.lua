-- QuestCore: quest database key indices for bundled spawn tables.

local addonName, QC = ...

local Schema = {}
QC.QuestDBSchema = Schema

Schema.questKeys = {
	name = 1,
	startedBy = 2,
	finishedBy = 3,
	requiredLevel = 4,
	questLevel = 5,
	requiredRaces = 6,
	requiredClasses = 7,
	objectivesText = 8,
	triggerEnd = 9,
	objectives = 10,
	sourceItemId = 11,
}

Schema.objectiveKeys = {
	creatureObjective = 1,
	objectObjective = 2,
	itemObjective = 3,
	reputationObjective = 4,
	killCreditObjective = 5,
	spellObjective = 6,
}

Schema.startedByKeys = {
	creatureStart = 1,
	objectStart = 2,
	itemStart = 3,
}

Schema.finishedByKeys = {
	creatureEnd = 1,
	objectEnd = 2,
}

Schema.npcKeys = {
	name = 1,
	minLevelHealth = 2,
	maxLevelHealth = 3,
	minLevel = 4,
	maxLevel = 5,
	rank = 6,
	spawns = 7,
	waypoints = 8,
	zoneID = 9,
	questStarts = 10,
	questEnds = 11,
}

Schema.objectKeys = {
	name = 1,
	questStarts = 2,
	questEnds = 3,
	spawns = 4,
	zoneID = 5,
	waypoints = 7,
}

Schema.itemKeys = {
	name = 1,
	npcDrops = 2,
	objectDrops = 3,
	itemDrops = 4,
}
