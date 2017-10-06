enraged_kimogila = Creature:new {
	objectName = "@mob/creature_names:enraged_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 235,
	chanceHit = 14.75,
	damageMin = 1920,
	damageMax = 2550,
	baseXp = 12801,
	baseHAM = 150000,
	baseHAMmax = 175000,
	armor = 2,
	resists = {95,95,95,95,95,95,95,95,50},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kimogila_hue.iff"},
	scale = 1.5,
	lootGroups = {
	 {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 3700000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_kimogila, "enraged_kimogila")
