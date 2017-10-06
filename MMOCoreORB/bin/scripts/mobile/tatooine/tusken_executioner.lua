tusken_executioner = Creature:new {
	objectName = "@mob/creature_names:tusken_executioner",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 260, --With such a high CL bleeds and the like go crazy high. If you buff CL, reduce mob dmg!
	chanceHit = 25,
	damageMin = 1000,
	damageMax = 1900,
	baseXp = 25167,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 2,
	resists = {60,60,30,60,20,30,40,60,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tusken_common", chance = 3000000},
				{group = "wearables_scarce", chance = 2000000},
				{group = "bone_armor", chance = 1500000},
				--{group = "armor_attachments", chance = 500000}, Tuskens don't wear armor!
				{group = "clothing_attachments", chance = 1500000},
				{group = "color_crystals", chance = 1000000},
				{group = "power_crystals", chance = 1000000}
			}
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_executioner, "tusken_executioner")
