enhanced_kwi = Creature:new {
	objectName = "@mob/creature_names:geonosian_enhanced_kwi",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 255,
	chanceHit = 27.5,
	damageMin = 690,
	damageMax = 990,
	baseXp = 10081,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 2,
	resists = {40,40,5,40,35,25,35,45,-1},
	meatType = "meat_herbivore",
	meatAmount = 50,
	hideType = "hide_leathery",
	hideAmount = 50,
	boneType = "bone_mammal",
	boneAmount = 50,
	milk = 0,
	tamingChance = 0,
	ferocity = 16,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/kwi.iff"},
	scale = 1.4,
	lootGroups = {
	 	{
	        groups =
			{

				{group = "geonosian_relic", chance = 3500000},
				{group = "geonosian_common", chance = 5000000},
				{group = "mastery_geocave_jewelry", chance = 1500000},
			},
			lootChance = 1000000,
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","intimidationChance=50"},
		{"stunattack","stunChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(enhanced_kwi, "enhanced_kwi")
