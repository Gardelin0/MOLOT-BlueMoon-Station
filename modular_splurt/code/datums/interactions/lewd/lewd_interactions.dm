//help
/datum/interaction/lewd

	var/unholy = FALSE //То же самое что и эстрим вербы, но гораздо хуже.

	var/require_user_legs
	var/require_user_num_legs

	var/require_target_legs
	var/require_target_num_legs

	var/require_user_belly
	var/require_target_belly

/datum/interaction/lewd/evaluate_user(mob/living/user, silent = TRUE, action_check = TRUE)
	if(require_user_belly)
		switch(require_user_belly)
			if(REQUIRE_EXPOSED)
				if(!user.has_belly(REQUIRE_EXPOSED))
					if(!silent)
						to_chat(user, "<span class='warning'>Твой живот должен быть обнажён.</span>")
					return FALSE
			if(REQUIRE_ANY)
				if(!user.has_belly(REQUIRE_ANY))
					if(!silent)
						to_chat(user, "<span class='warning'>Твой живот слишком плоский для этого.</span>")
					return FALSE
			if(REQUIRE_UNEXPOSED)
				if(!user.has_belly(REQUIRE_UNEXPOSED))
					if(!silent)
						to_chat(user, "<span class='warning'>Твой живот должен быть спрятан.</span>")
					return FALSE

	if(require_user_legs)
		switch(require_user_legs)
			if(REQUIRE_EXPOSED)
				if(!user.has_legs(REQUIRE_EXPOSED))
					if(!silent)
						to_chat(user, "<span class='warning'>Твои ноги должны быть обнажены.</span>")
					return FALSE
			if(REQUIRE_UNEXPOSED)
				if(!user.has_legs(REQUIRE_UNEXPOSED))
					if(!silent)
						to_chat(user, "<span class='warning'>Твои ноги должны быть спрятаны.</span>")
					return FALSE
			if(REQUIRE_ANY)
				if(!user.has_legs(REQUIRE_ANY))
					if(!silent)
						to_chat(user, "<span class='warning'>У тебя не хватает ног для этого.</span>")
					return FALSE

	if(require_user_num_legs && (user.has_legs() < require_user_num_legs))
		if(!silent)
			to_chat(user, "<span class='warning'>У тебя не хватает ног для этого.</span>")
		return FALSE


	if(unholy)
		var/client/cli = user.client
		if(cli)
			if(cli.prefs.unholypref == "No")
				if(!silent)
					to_chat(user, "<span class='warning'>Для тебя это слишком.</span>")
				return FALSE
	if(require_user_penis)
		var/obj/item/organ/genital/penis/penor = user.getorganslot(ORGAN_SLOT_PENIS)
		if(CHECK_BITFIELD(penor?.genital_flags, GENITAL_CHASTENED))
			if(!silent)
				to_chat(user, "<span class='warning>You can't do anything with your [pick(GLOB.dick_nouns)] like this!")
			return FALSE
	if(require_user_vagina)
		var/obj/item/organ/genital/vagina/puss = user.getorganslot(ORGAN_SLOT_VAGINA)
		if(CHECK_BITFIELD(puss?.genital_flags, GENITAL_CHASTENED))
			if(!silent)
				to_chat(user, "<span class='warning>You can't do anything with your vagina like this!")
			return FALSE
	if(require_user_anus)
		var/obj/item/organ/genital/anus/holi = user.getorganslot(ORGAN_SLOT_ANUS)
		if(holi)
			if(CHECK_BITFIELD(holi?.genital_flags, GENITAL_CHASTENED))
				if(!silent)
					to_chat(user, "<span class='warning>You can't do anything with your [pick(GLOB.butt_nouns)] like this!")
				return FALSE
		else
			if(HAS_TRAIT(user, TRAIT_CHASTENED_ANUS))
				if(!silent)
					to_chat(user, "<span class='warning>You can't do anything with your [pick(GLOB.butt_nouns)] like this!")
				return FALSE
	. = ..()

/datum/interaction/lewd/evaluate_target(mob/living/user, mob/living/target, silent = TRUE)
	if(require_target_belly)
		switch(require_target_belly)
			if(REQUIRE_EXPOSED)
				if(!target.has_belly(REQUIRE_EXPOSED))
					if(!silent)
						to_chat(user, "<span class='warning'>Живот партнёра должен быть обнажён.</span>")
					return FALSE
			if(REQUIRE_ANY)
				if(!target.has_belly(REQUIRE_ANY))
					if(!silent)
						to_chat(user, "<span class='warning'>Живот партнёра слишком плоский для этого.</span>")
					return FALSE
			if(REQUIRE_UNEXPOSED)
				if(!target.has_belly(REQUIRE_UNEXPOSED))
					if(!silent)
						to_chat(user, "<span class='warning'>Живот партнёра должен быть спрятан.</span>")
					return FALSE

	if(require_target_legs)
		switch(require_target_legs)
			if(REQUIRE_EXPOSED)
				if(!target.has_legs(REQUIRE_EXPOSED))
					if(!silent)
						to_chat(user, "<span class='warning'>Ноги партнёра должны быть обнажены.</span>")
					return FALSE
			if(REQUIRE_UNEXPOSED)
				if(!target.has_legs(REQUIRE_UNEXPOSED))
					if(!silent)
						to_chat(user, "<span class='warning'>Ноги партнёра должны быть спрятаны.</span>")
					return FALSE
			if(REQUIRE_ANY)
				if(!target.has_legs(REQUIRE_ANY))
					if(!silent)
						to_chat(user, "<span class='warning'>У твоего партнёра не хватает ног.</span>")
					return FALSE

	if(require_target_num_legs && (target.has_legs() < require_target_num_legs))
		if(!silent)
			to_chat(user, "<span class='warning'>Кажется, здесь не хватает ног.</span>")
		return FALSE

	if(unholy)
		var/client/cli = target.client
		if(cli)
			if(target.client.prefs.unholypref == "No")
				if(!silent)
					to_chat(user, "<span class='warning'>По какой-то причине ты передумал это делать с <b>[target]</b>.</span>")
				return FALSE
	if(require_target_penis)
		var/obj/item/organ/genital/penis/penor = target.getorganslot(ORGAN_SLOT_PENIS)
		if(CHECK_MULTIPLE_BITFIELDS(penor?.genital_flags, GENITAL_CHASTENED))
			if(!silent)
				to_chat(user, "<span class='warning>You can't do anything with their [pick(GLOB.dick_nouns)] like that!")
			return FALSE
	if(require_user_vagina)
		var/obj/item/organ/genital/vagina/puss = target.getorganslot(ORGAN_SLOT_VAGINA)
		if(CHECK_BITFIELD(puss?.genital_flags, GENITAL_CHASTENED))
			if(!silent)
				to_chat(user, "<span class='warning>You can't do anything with their vagina like this!")
			return FALSE
	if(require_user_anus)
		if(HAS_TRAIT(target, TRAIT_CHASTENED_ANUS))
			if(!silent)
				to_chat(user, "<span class='warning>You can't do anything with their [pick(GLOB.butt_nouns)] like this!")
			return FALSE
	. = ..()

/mob/living/list_interaction_attributes(mob/living/LM)
	. = ..()
	if(has_belly(REQUIRE_EXPOSED))
		. += "...обладает выпуклым животом."
