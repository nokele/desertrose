/datum/sprite_accessory/ears
	icon = 'icons/mob/mutant_bodyparts.dmi'
	mutant_part_string = "ears"
	relevant_layers = list(BODY_BEHIND_LAYER, BODY_ADJ_LAYER, BODY_FRONT_LAYER)

/datum/sprite_accessory/ears/is_not_visible(mob/living/carbon/human/H, tauric)
	var/obj/item/bodypart/head/HD = H.get_bodypart(BODY_ZONE_HEAD)
	return (!H.dna.features["ears"] || H.dna.features["ears"] == "None" || H.head && (H.head.flags_inv & HIDEEARS) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEEARS)) || !HD || (HD.status == BODYPART_ROBOTIC && !HD.render_like_organic))

/datum/sprite_accessory/ears/none
	name = "None"
	icon_state = "none"
	relevant_layers = null

/******************************************
*************** Human Ears ****************
*******************************************/

/datum/sprite_accessory/ears/human/axolotl
	name = "Axolotl"
	icon_state = "axolotl"

/datum/sprite_accessory/ears/human/bear
	name = "Bear"
	icon_state = "bear"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/bigwolf
	name = "Big Wolf"
	icon_state = "bigwolf"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/bigwolfinner
	name = "Big Wolf (ALT)"
	icon_state = "bigwolfinner"
	color_src = MATRIXED
	extra = TRUE
	extra_color_src = NONE

/datum/sprite_accessory/ears/human/bigwolfdark //ignore alphabetical sort here for ease-of-use
	name = "Dark Big Wolf"
	icon_state = "bigwolfdark"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/bigwolfinnerdark
	name = "Dark Big Wolf (ALT)"
	icon_state = "bigwolfinnerdark"
	color_src = MATRIXED
	extra = TRUE
	extra_color_src = NONE

/datum/sprite_accessory/ears/bunny
	name = "Bunny"
	icon_state = "bunny"
	color_src = MATRIXED

/datum/sprite_accessory/ears/cat
	name = "Cat"
	icon_state = "cat"
	color_src = HAIR
	extra = TRUE
	extra_color_src = NONE

/datum/sprite_accessory/ears/human/cow
	name = "Cow"
	icon_state = "cow"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/curled
	name = "Curled Horn"
	icon_state = "horn1"
	color_src = MUTCOLORS3

/datum/sprite_accessory/ears/lab
	name = "Dog, Floppy"
	icon_state = "lab"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/eevee
	name = "Eevee"
	icon_state = "eevee"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/elephant
	name = "Elephant"
	icon_state = "elephant"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/elf
	name = "Elf"
	icon_state = "elf"
	color_src = SKINTONE

/datum/sprite_accessory/ears/fennec
	name = "Fennec"
	icon_state = "fennec"
	color_src = MATRIXED

/datum/sprite_accessory/ears/fish
	name = "Fish"
	icon_state = "fish"
	color_src = MATRIXED

/datum/sprite_accessory/ears/fox
	name = "Fox"
	icon_state = "fox"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/jellyfish
	name = "Jellyfish"
	icon_state = "jellyfish"
	color_src = HAIR

/datum/sprite_accessory/ears/murid
	name = "Murid"
	icon_state = "murid"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/otie
	name = "Otusian"
	icon_state = "otie"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/rabbit
	name = "Rabbit"
	icon_state = "rabbit"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/pede
	name = "Scolipede"
	icon_state = "pede"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/sergal
	name = "Sergal"
	icon_state = "sergal"
	color_src = MATRIXED

/datum/sprite_accessory/ears/human/skunk
	name = "skunk"
	icon_state = "skunk"
	color_src = MATRIXED

/datum/sprite_accessory/ears/squirrel
	name = "Squirrel"
	icon_state = "squirrel"
	color_src = MATRIXED

/datum/sprite_accessory/ears/wolf
	name = "Wolf"
	icon_state = "wolf"
	color_src = MATRIXED

/******************************************
*************** Furry Ears ****************
*******************************************/

/datum/sprite_accessory/ears/mam_ears
	color_src = MATRIXED
	mutant_part_string = "ears"
	relevant_layers = list(BODY_BEHIND_LAYER, BODY_ADJ_LAYER, BODY_FRONT_LAYER)

/datum/sprite_accessory/ears/mam_ears/is_not_visible(mob/living/carbon/human/H, tauric)
	var/obj/item/bodypart/head/HD = H.get_bodypart(BODY_ZONE_HEAD)
	return (!H.dna.features["mam_ears"] || H.dna.features["mam_ears"] == "None" || H.head && (H.head.flags_inv & HIDEEARS) || (H.wear_mask && (H.wear_mask.flags_inv & HIDEEARS)) || !HD || (HD.status == BODYPART_ROBOTIC && !HD.render_like_organic))

/datum/sprite_accessory/ears/mam_ears/none
	name = "None"
	icon_state = "none"
	relevant_layers = null

/datum/sprite_accessory/ears/mam_ears/axolotl
	name = "Axolotl"
	icon_state = "axolotl"

/datum/sprite_accessory/ears/mam_ears/bat
	name = "Bat"
	icon_state = "bat"

/datum/sprite_accessory/ears/mam_ears/bear
	name = "Bear"
	icon_state = "bear"

/datum/sprite_accessory/ears/mam_ears/bigwolf
	name = "Big Wolf"
	icon_state = "bigwolf"

/datum/sprite_accessory/ears/mam_ears/bigwolfinner
	name = "Big Wolf (ALT)"
	icon_state = "bigwolfinner"
	extra = TRUE
	extra_color_src = NONE

/datum/sprite_accessory/ears/mam_ears/bigwolfdark //alphabetical sort ignored here for ease-of-use
	name = "Dark Big Wolf"
	icon_state = "bigwolfdark"

/datum/sprite_accessory/ears/mam_ears/bigwolfinnerdark
	name = "Dark Big Wolf (ALT)"
	icon_state = "bigwolfinnerdark"
	extra = TRUE
	extra_color_src = NONE

/datum/sprite_accessory/ears/mam_ears/bunny
	name = "Bunny"
	icon_state = "bunny"

/datum/sprite_accessory/ears/mam_ears/cat
	name = "Cat"
	icon_state = "cat"
	icon = 'icons/mob/mutant_bodyparts.dmi'
	color_src = HAIR
	extra = TRUE
	extra_color_src = NONE

/datum/sprite_accessory/ears/mam_ears/catbig
	name = "Cat, Big"
	icon_state = "catbig"

/datum/sprite_accessory/ears/mam_ears/cow
	name = "Cow"
	icon_state = "cow"

/datum/sprite_accessory/ears/mam_ears/curled
	name = "Curled Horn"
	icon_state = "horn1"
	color_src = MUTCOLORS3

/datum/sprite_accessory/ears/mam_ears/deer
	name = "Deer"
	icon_state = "deer"
	color_src = MUTCOLORS3

/datum/sprite_accessory/ears/mam_ears/eevee
	name = "Eevee"
	icon_state = "eevee"

/datum/sprite_accessory/ears/mam_ears/elf
	name = "Elf"
	icon_state = "elf"
	color_src = MUTCOLORS3

/datum/sprite_accessory/ears/mam_ears/elephant
	name = "Elephant"
	icon_state = "elephant"

/datum/sprite_accessory/ears/mam_ears/fennec
	name = "Fennec"
	icon_state = "fennec"

/datum/sprite_accessory/ears/mam_ears/fish
	name = "Fish"
	icon_state = "fish"

/datum/sprite_accessory/ears/mam_ears/fox
	name = "Fox"
	icon_state = "fox"

/datum/sprite_accessory/ears/mam_ears/husky
	name = "Husky"
	icon_state = "wolf"

/datum/sprite_accessory/ears/mam_ears/jellyfish
	name = "Jellyfish"
	icon_state = "jellyfish"
	color_src = HAIR

/datum/sprite_accessory/ears/mam_ears/kangaroo
	name = "kangaroo"
	icon_state = "kangaroo"

/datum/sprite_accessory/ears/mam_ears/lab
	name = "Dog, Long"
	icon_state = "lab"

/datum/sprite_accessory/ears/mam_ears/murid
	name = "Murid"
	icon_state = "murid"

/datum/sprite_accessory/ears/mam_ears/otie
	name = "Otusian"
	icon_state = "otie"

/datum/sprite_accessory/ears/mam_ears/rabbit
	name = "Rabbit"
	icon_state = "rabbit"

/datum/sprite_accessory/ears/mam_ears/pede
	name = "Scolipede"
	icon_state = "pede"

/datum/sprite_accessory/ears/mam_ears/sergal
	name = "Sergal"
	icon_state = "sergal"

/datum/sprite_accessory/ears/mam_ears/skunk
	name = "skunk"
	icon_state = "skunk"

/datum/sprite_accessory/ears/mam_ears/squirrel
	name = "Squirrel"
	icon_state = "squirrel"

/datum/sprite_accessory/ears/mam_ears/wolf
	name = "Wolf"
	icon_state = "wolf"
