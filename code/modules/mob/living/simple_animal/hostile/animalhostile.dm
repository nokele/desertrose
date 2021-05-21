/*Common East Coast hostile critters
- Radroach			/mob/living/simple_animal/hostile/radroachnew
- Ghoul Rotter		/mob/living/simple_animal/hostile/ghoulrotter
- Bloatfly			/mob/living/simple_animal/hostile/bloatflynew
- Molerat			/mob/living/simple_animal/hostile/molerat
- Mirelurk			/mob/living/simple_animal/hostile/mirelurk
- Mirelurk baby		/mob/living/simple_animal/hostile/mirelurk/baby
- Skull Wolf		/mob/living/simple_animal/hostile/skolf

Uncommon critters
- Radscorpion		/mob/living/simple_animal/hostile/radscorpionnew
- Giant Ant			/mob/living/simple_animal/hostile/giantantnew
- Yao Guai 			/mob/living/simple_animal/hostile/yaoguai
- Aradnid			/mob/living/simple_animal/hostile/aradnid
- Centaur			/mob/living/simple_animal/hostile/centaur

Stuff not supposed to be in East coast (to differentiate, give flavour. Less is more. Don't listen to Bethesda.)
- Cazador
- Fireants
- Feral dog (Coyotes)
- Geckos
- Nightstalkers
*/

/mob/living/simple_animal/hostile
	icon = 'icons/mob/critters/animalhostile.dmi'

/mob/living/simple_animal/hostile/radroachnew
	name = "Radroach"
	desc = "A large insect that finds its way everywhere."
	icon_state = "radroach"
	icon_living = "radroach"
	icon_dead = "radroach_dead"
	icon_gib = "gib"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/radroach_meat = 2, /obj/item/stack/sheet/sinew = 1)
	butcher_results = list(/obj/item/stack/sheet/animalhide/chitin = 1)
	butcher_difficulty = 1.5
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "hits"
	speed = 1.5
	maxHealth = 40
	health = 40
	harm_intent_damage = 8
	obj_damage = 20
	melee_damage_lower = 10
	melee_damage_upper = 10
	attack_verb_simple = "nips"
	attack_sound = 'sound/creatures/radroach_attack.ogg'
	speak_emote = list("skitters")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("gecko")
	a_intent = INTENT_HARM
	gold_core_spawnable = HOSTILE_SPAWN

	aggrosound = list('sound/creatures/radroach_chitter.ogg',)
	idlesound = list('sound/f13npc/roach/idle1.ogg', 'sound/f13npc/roach/idle2.ogg', 'sound/f13npc/roach/idle3.ogg',)
	death_sound = 'sound/f13npc/roach/roach_death.ogg'

/mob/living/simple_animal/hostile/ghoulrotter
	name = "rotting ghoul"
	desc = "A ghoul that has lost its mind and become aggressive."
	icon_state = "ghoulrotter"
	icon_living = "ghoulrotter"
	icon_dead = "ghoulrotter_dead"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	robust_searching = 1
	turns_per_move = 5
	speak_emote = list("growls")
	emote_see = list("screeches")
	a_intent = INTENT_HARM
	maxHealth = 80
	health = 80
	speed = 2.5
	harm_intent_damage = 8
	melee_damage_lower = 15
	melee_damage_upper = 20
	attack_verb_simple = "claw"
	attack_sound = 'sound/hallucinations/growl1.ogg'
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 20
	gold_core_spawnable = HOSTILE_SPAWN
	faction = list("ghoul")
	decompose = TRUE
	sharpness = SHARP_EDGED //They need to cut their finger nails
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/human/ghoul = 2,
							/obj/item/stack/sheet/animalhide/human = 1,
							/obj/item/stack/sheet/bone = 1)
	emote_taunt_sound = list('sound/f13npc/ghoul/taunt.ogg')
	emote_taunt = list("gurgles", "stares")
	taunt_chance = 30
	aggrosound = list('sound/f13npc/ghoul/aggro1.ogg', 'sound/f13npc/ghoul/aggro2.ogg')
	idlesound = list('sound/f13npc/ghoul/idle.ogg')
	death_sound = 'sound/f13npc/ghoul/ghoul_death.ogg'

//Would love to have bloatfly inject disease or radiation. Last choice toxins. Erase this comment when fixed.
/mob/living/simple_animal/hostile/bloatflynew
	name = "bloatfly"
	desc = "A common pest resembling an oversized blow-fly. Carry diseases."
	icon_state = "bloatfly"
	icon_living = "bloatfly"
	icon_dead = "bloatfly_dead"
	icon_gib = null
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/bloatfly_meat = 2, /obj/item/stack/sheet/sinew = 1)
	butcher_results = list(/obj/item/stack/sheet/animalhide/chitin = 1)
	butcher_difficulty = 1.5
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "bites"
	emote_taunt = list("growls")
	taunt_chance = 30
	speed = -1
	maxHealth = 40
	health = 40
	harm_intent_damage = 8
	obj_damage = 15
	melee_damage_lower = 5
	melee_damage_upper = 8
	attack_verb_simple = "bites"
	attack_sound = 'sound/creatures/bloatfly_attack.ogg'
	speak_emote = list("chitters")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("gecko")
	gold_core_spawnable = HOSTILE_SPAWN
	a_intent = INTENT_HARM
	blood_volume = 0

/mob/living/simple_animal/hostile/bloatflynew/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		return
	if(prob(50))
		return ..()
	else
		visible_message("<span class='danger'>[src] dodges [Proj]!</span>")
		return 0

/mob/living/simple_animal/hostile/bloatflynew/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.reagents.add_reagent(/datum/reagent/toxin/cazador_venom, 2)

/datum/reagent/toxin/cazador_venom/on_mob_life(mob/living/M)
	if(volume >= 16)
		M.adjustToxLoss(5, 0)
	..()

/mob/living/simple_animal/hostile/molerat
	name = "molerat"
	desc = "A large mutated rat-mole hybrid that finds its way everywhere. Common in caves and underground areas."
	icon_state = "mole_rat"
	icon_living = "mole_rat"
	icon_dead = "mole_rat_dead"
	icon_gib = null
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/molerat = 2, /obj/item/stack/sheet/sinew = 1,/obj/item/stack/sheet/animalhide/molerat = 1, /obj/item/stack/sheet/bone = 1)
	butcher_results = list(/obj/item/stack/sheet/bone = 1)
	butcher_difficulty = 1.5
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "hits"
	taunt_chance = 30
	speed = -1
	maxHealth = 25
	health = 25
	harm_intent_damage = 8
	obj_damage = 15
	melee_damage_lower = 10
	melee_damage_upper = 10
	attack_verb_simple = "bites"
	attack_sound = 'sound/creatures/molerat_attack.ogg'
	speak_emote = list("chitters")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("gecko")
	gold_core_spawnable = HOSTILE_SPAWN
	a_intent = INTENT_HARM
	emote_taunt_sound = list('sound/f13npc/molerat/taunt.ogg')
	emote_taunt = list("hisses")
	taunt_chance = 30
	aggrosound = list('sound/f13npc/molerat/aggro1.ogg', 'sound/f13npc/molerat/aggro2.ogg',)
	idlesound = list('sound/f13npc/molerat/idle.ogg')
	death_sound = 'sound/f13npc/molerat/death.ogg'

/mob/living/simple_animal/hostile/mirelurk
	name = "mirelurk"
	desc = "A giant mutated crustacean with a rock-hard exo-skeleton and a endless hunger."
	icon_state = "mirelurk"
	icon_living = "mirelurk"
	icon_dead = "mirelurk_d"
	speed = 1
	icon_gib = "gib"
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/mirelurk = 2, /obj/item/stack/sheet/sinew = 1)
	maxHealth = 200
	health = 200
	melee_damage_lower = 15
	melee_damage_upper = 35
	gold_core_spawnable = HOSTILE_SPAWN
	blood_volume = 0

/mob/living/simple_animal/hostile/mirelurk/baby
	name = "mirelurk baby"
	desc = "A neophyte mirelurk baby, mostly harmless."
	icon_state = "mirelurkbaby"
	icon_living = "mirelurkbaby"
	icon_dead = "mirelurkbaby_d"
	icon_gib = "gib"
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/mirelurk = 1)
	speed = 1
	maxHealth = 50
	health = 50
	melee_damage_lower = 5
	melee_damage_upper = 10
	gold_core_spawnable = HOSTILE_SPAWN

/mob/living/simple_animal/hostile/mirelurk/baby/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/mirelurk/baby/Aggro()
	..()
	summon_backup(10)

/obj/structure/mirelurkegg
	name = "mirelurk eggs"
	desc = "A fresh clutch of mirelurk eggs."
	icon = 'icons/mob/wastemobsdrops.dmi'
	icon_state = "mirelurkeggs"
	density = 1
	anchored = 0

/mob/living/simple_animal/hostile/skolf
	name = "skull wolf"
	desc = "Half rotted by radiation, blind, hunting by smell and sound."
	icon_state = "skolf"
	icon_living = "skolf"
	icon_dead = "skolf_dead"
	icon_gib = "gib"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	turns_per_move = 1
	response_help_simple = "pets"
	response_disarm_simple = "pushes aside"
	response_harm_simple = "kicks"
	maxHealth = 70
	health = 70
	faction = list("hostile", "wolf")
	environment_smash = 0
	guaranteed_butcher_results = list(/obj/item/stack/sheet/animalhide/wolf = 1, /obj/item/reagent_containers/food/snacks/meat/slab/wolf = 1,/obj/item/stack/sheet/bone = 1)
	melee_damage_lower = 20
	melee_damage_upper = 25
	aggro_vision_range = 15
	attack_verb_simple = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	move_to_delay = 2
	speed = 2.5
	emote_taunt_sound = list('sound/f13npc/dog/dog_charge1.ogg', 'sound/f13npc/dog/dog_charge2.ogg', 'sound/f13npc/dog/dog_charge3.ogg', 'sound/f13npc/dog/dog_charge4.ogg', 'sound/f13npc/dog/dog_charge5.ogg', 'sound/f13npc/dog/dog_charge6.ogg', 'sound/f13npc/dog/dog_charge7.ogg',)
	emote_taunt = list("growls", "barks", "snarls")
	taunt_chance = 30
	aggrosound = list('sound/f13npc/dog/dog_alert1.ogg', 'sound/f13npc/dog/dog_alert2.ogg', 'sound/f13npc/dog/dog_alert3.ogg')
	idlesound = list('sound/f13npc/dog/dog_bark1.ogg', 'sound/f13npc/dog/dog_bark2.ogg', 'sound/f13npc/dog/dog_bark3.ogg')
	death_sound = 'sound/f13npc/centaur/centaur_death.ogg'


// Uncommon beasts

/mob/living/simple_animal/hostile/radscorpionnew
	name = "Radscorpion"
	desc = "A mutated arthropod with an armored carapace and a powerful sting."
	icon_state = "radscorpion_blue"
	icon_living = "radscorpion_blue"
	icon_dead = "radscorpion_blue_dead"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	guaranteed_butcher_results  = list(/obj/item/reagent_containers/food/snacks/meat/slab/radscorpion_meat = 2)
	butcher_results = list(/obj/item/stack/sheet/animalhide/chitin = 2)
	butcher_difficulty = 1.5
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "hits"
	taunt_chance = 30
	speed = 1.25
	maxHealth = 150
	health = 150
	harm_intent_damage = 8
	obj_damage = 20
	melee_damage_lower = 35
	melee_damage_upper = 35
	a_intent = INTENT_HARM
	attack_verb_simple = "stings"
	attack_sound = 'sound/creatures/radscorpion_attack.ogg'
	speak_emote = list("hisses")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("radscorpion")
	gold_core_spawnable = HOSTILE_SPAWN
	var/scorpion_color = "radscorpion" //holder for icon set
	var/list/icon_sets = list("radscorpion", "radscorpion_blue", "radscorpion_black")
	blood_volume = 0
	emote_taunt = list("snips")
	emote_taunt_sound = list('sound/f13npc/scorpion/taunt1.ogg', 'sound/f13npc/scorpion/taunt2.ogg', 'sound/f13npc/scorpion/taunt3.ogg')

	aggrosound = list('sound/f13npc/scorpion/aggro.ogg', )
	idlesound = list('sound/creatures/radscorpion_snip.ogg', )

	death_sound = 'sound/f13npc/scorpion/death.ogg'


/mob/living/simple_animal/hostile/radscorpion/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.reagents.add_reagent(/datum/reagent/toxin, 5)

/mob/living/simple_animal/hostile/giantantnew
	name = "Giant Ant"
	desc = "A large mutated insect that finds its way everywhere."
	icon_state = "ant"
	icon_living = "ant"
	icon_dead = "ant_dead"
	icon_gib = "gib"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	guaranteed_butcher_results = list(/obj/item/stack/sheet/sinew = 1, /obj/item/reagent_containers/food/snacks/meat/slab/ant_meat = 2)
	butcher_results = list(/obj/item/stack/sheet/animalhide/chitin = 1)
	butcher_difficulty = 1.5
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "hits"
	emote_taunt = list("chitters")
	emote_taunt_sound = 'sound/creatures/radroach_chitter.ogg'
	taunt_chance = 30
	speed = 1.5
	maxHealth = 160
	health = 160
	harm_intent_damage = 8
	obj_damage = 20
	melee_damage_lower = 20
	melee_damage_upper = 25
	attack_verb_simple = "stings"
	attack_sound = 'sound/creatures/radroach_attack.ogg'
	speak_emote = list("skitters")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("ant")
	gold_core_spawnable = HOSTILE_SPAWN
	a_intent = INTENT_HARM
	decompose = TRUE
	blood_volume = 0

/mob/living/simple_animal/hostile/giantant/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/giantant/Aggro()
	..()
	summon_backup(10)


/mob/living/simple_animal/hostile/yaoguai
	name = "Yao Guai"
	desc = "Radiation has caused the brown bear to lose its pelt, grow large with ulcers and a rage fueled by agony. The chinese name for them has stuck."
	icon = 'icons/mob/critters/moblong.dmi'
	icon_state = "yaoguai"
	icon_living = "yaoguai"
	icon_dead = "yaoguai_dead"
	icon_gib = null
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 4, /obj/item/stack/sheet/sinew = 2, /obj/item/stack/sheet/bone = 2)
	butcher_results = list(/obj/item/clothing/head/f13/stalkerpelt = 1)
	butcher_difficulty = 3
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "bites"
	emote_taunt = list("growls")
	taunt_chance = 30
	speed = 1
	maxHealth = 350
	health = 350
	harm_intent_damage = 8
	obj_damage = 15
	melee_damage_lower = 20
	melee_damage_upper = 45
	attack_verb_simple = "bites"
	attack_sound = 'sound/creatures/nightstalker_bite.ogg'
	speak_emote = list("growls")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("gecko")
	gold_core_spawnable = HOSTILE_SPAWN
	a_intent = INTENT_HARM

//Want to make these cause like 100 rads or so per bite plus their damage, maybe a little less. Instead of toxins. Remove comment if able to solve it.
/mob/living/simple_animal/hostile/aradnid
	name = "aradnid"
	desc = "Deeply disturbing creature, they can only consume radiated meat and drag their prey to contaminated areas to tenderize them."
	icon_state = "aradnid"
	icon_living = "aradnid"
	icon_dead = "aradnid_dead"
	mob_biotypes = MOB_ORGANIC|MOB_BUG
	speak_emote = list("chitters")
	emote_hear = list("chitters")
	speak_chance = 5
	turns_per_move = 5
	see_in_dark = 10
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/spider = 2, /obj/item/reagent_containers/food/snacks/spiderleg = 8)
	response_help_continuous = "pets"
	response_help_simple = "pet"
	response_disarm_continuous = "gently pushes aside"
	response_disarm_simple = "gently push aside"
	response_harm_continuous = "kicks"
	response_harm_simple = "kick"
	maxHealth = 150
	health = 150
	obj_damage = 60
	melee_damage_lower = 15
	melee_damage_upper = 25
	faction = list("spiders")
	pass_flags = PASSTABLE
	move_to_delay = 6
	attack_verb_continuous = "bites"
	attack_verb_simple = "bite"
	attack_sound = 'sound/weapons/bite.ogg'
	unique_name = 1
	gold_core_spawnable = HOSTILE_SPAWN
	see_in_dark = 4
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE
	footstep_type = FOOTSTEP_MOB_CLAW
	has_field_of_vision = FALSE // 360° vision.

/mob/living/simple_animal/hostile/poison
	var/poison_per_bite = 5
	var/poison_type = /datum/reagent/toxin

/mob/living/simple_animal/hostile/poison/AttackingTarget()
	. = ..()
	if(. && isliving(target))
		var/mob/living/L = target
		if(L.reagents)
			L.reagents.add_reagent(poison_type, poison_per_bite)

/mob/living/simple_animal/hostile/centaur
	name = "Centaur"
	desc = "The result of infection by FEV gone horribly wrong."
	icon_state = "centaur"
	icon_living = "centaur"
	icon_dead = "centaur_d"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	robust_searching = 1
	turns_per_move = 5
	speak_emote = list("growls")
	emote_see = list("screeches")
	a_intent = INTENT_HARM
	maxHealth = 100
	health = 100
	speed = 2
	harm_intent_damage = 8
	melee_damage_lower = 15
	melee_damage_upper = 15
	ranged = 1
	retreat_distance = 5
	minimum_distance = 5
	attack_verb_simple = "whipped"
	attack_sound = 'sound/hallucinations/growl1.ogg'
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 20
	robust_searching = 0
	stat_attack = UNCONSCIOUS
	gold_core_spawnable = HOSTILE_SPAWN
	faction = list("supermutant")
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/human/centaur = 3,
							/obj/item/stack/sheet/animalhide/human = 2,
							/obj/item/stack/sheet/bone = 2)
	projectiletype = /obj/item/projectile/neurotox
	projectilesound = 'sound/f13npc/centaur/spit.ogg'

	emote_taunt_sound = list('sound/f13npc/centaur/taunt.ogg')
	emote_taunt = list("grunts")
	taunt_chance = 30
	aggrosound = list('sound/f13npc/centaur/aggro1.ogg', )
	idlesound = list('sound/f13npc/centaur/idle1.ogg', 'sound/f13npc/centaur/idle2.ogg')
	death_sound = 'sound/f13npc/centaur/centaur_death.ogg'
	attack_sound = 'sound/f13npc/centaur/lash.ogg'
	wound_bonus = 0

/obj/item/projectile/neurotox
	name = "spit"
	damage = 30
	icon_state = "toxin"