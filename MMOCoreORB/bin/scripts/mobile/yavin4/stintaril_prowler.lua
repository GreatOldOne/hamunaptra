stintaril_prowler = Creature:new {
	objectName = "@mob/creature_names:stintaril_prowler",
	socialGroup = "stinaril",
	faction = "",
	level = 140,
	chanceHit = 10.0,
	damageMin = 1895,
	damageMax = 2400,
	baseXp = 7945,
	baseHAM = 120000,
	baseHAMmax = 150000,
	armor = 2,
	resists = {95,95,95,95,95,95,95,95,50},
	meatType = "meat_carnivore",
	meatAmount = 5000,
	hideType = "hide_bristley",
	hideAmount = 5000,
	boneType = "bone_mammal",
	boneAmount = 5000,
	milk = 0,
	tamingChance = 0,
	ferocity = 3,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/stintaril_hue.iff"},
	scale = 2.5,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(stintaril_prowler, "stintaril_prowler")
