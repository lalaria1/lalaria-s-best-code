//challenge class, spawns with no limbs
/datum/advclass/torso
	name = "Torso"
	tutorial = "Some horrible accident took away all of your limbs!\nSurvival will be a true TRIUMPH."
	allowed_sexes = list("male", "female")
	allowed_races = list("Humen",
	"Elf",
	"Dark Elf",
	"Half-Elf",
	"Tiefling",
	"Dwarf",
	"Dwarf",
	"Aasimar"
	)
	outfit = /datum/outfit/job/roguetown/adventurer/torso
	isvillager = FALSE
	ispilgrim = TRUE

/datum/outfit/job/roguetown/adventurer/torso/pre_equip(mob/living/carbon/human/H)
	..()
	//insane stats, not like they benefit you until you get limbs
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 4 ,TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 6, TRUE)
	H.change_stat("strength", 5)
	H.change_stat("endurance", 3)
	H.change_stat("constitution", 6)
	H.change_stat("perception", 4)
	H.change_stat("speed", 5)
	pants = /obj/item/clothing/under/roguetown/tights/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/random
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	backl = /obj/item/storage/backpack/rogue/satchel
	beltl = /obj/item/rogueweapon/huntingknife

	ADD_TRAIT(H, RTRAIT_HEAVYARMOR, TRAIT_GENERIC)
