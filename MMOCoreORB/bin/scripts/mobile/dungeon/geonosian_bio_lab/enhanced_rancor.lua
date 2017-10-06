enhanced_rancor = Creature:new {
	objectName = "@mob/creature_names:enhanced_rancor",
	customName = "an Escaped Dangerous Project",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 230,
	chanceHit = 45.5,
	damageMin = 3000,
	damageMax = 3800,
	baseXp = 79336,
	baseHAM = 950000,
	baseHAMmax = 1000000,
	armor = 3,
	resists = {55,60,45,70,70,70,45,45,35},
	meatType = "meat_carnivore",
	meatAmount = 2322,
	hideType = "hide_leathery",
	hideAmount = 1323,
	boneType = "bone_mammal",
	boneAmount = 1322,
	milk = 0,
	tamingChance = 0,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	scale = 1.5,
	lootGroups = {
		{
	        	groups =
			{
				{group = "geonosian_common", chance = 5000000},
				{group = "mastery_geocave_jewelry", chance = 5000000},
			},
			lootChance = 5500000,
		},
		{
	        	groups =
			{
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
	        	groups =
			{
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
	        	groups =
			{
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
			groups =
			{
				{group = "geonosian_epic", chance = 10000000},
			},
			lootChance = 3500000,
		},
		{
			groups = {
				{group = "geo_rancor", chance = 4500000},
				{group = "grenades_looted", chance = 5500000},
			},
			lootChance = 7500000,
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareattack",""},
		{"stunattack","stunChance=70"},
		{"creatureareableeding",""}
	}
}

CreatureTemplates:addCreatureTemplate(enhanced_rancor, "enhanced_rancor")
