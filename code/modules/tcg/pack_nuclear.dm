/datum/tcg_card/pack_nuclear
	pack = 'icons/obj/tcg/pack_nuclear.dmi'

/datum/tcg_card/pack_nuclear/cayenne
	name = "Cayenne"
	desc = "A failed Syndicate experiment in weaponized space carp technology, it now serves as a lovable mascot."
	rules = "Only playable when there are other Syndicate units on the field."
	icon_state = "cayenne"

	mana_cost = 4
	attack = 4
	health = 3

	faction = "Syndicate"
	rarity = "Rare"
	card_type = "Unit"

/datum/tcg_card/pack_nuclear/esword
	name = "Energy Sword"
	desc = "Hard-light sword that doesn't leave burns. Don't ask questions."
	rules = ""
	icon_state = "esword"

	mana_cost = 3
	attack = 2
	health = 0

	faction = "Syndicate"
	rarity = "Common"
	card_type = "Equipment"

/datum/tcg_card/pack_nuclear/stechkin
	name = "Stechkin Pistol"
	desc = "A small, easily concealable 10mm handgun. Has a threaded barrel for suppressors."
	rules = "When equipping this card, flip it so opponent won't see it. Flip the card after the first attack."
	icon_state = "stechkin"

	mana_cost = 2
	attack = 2
	health = 0

	faction = "Syndicate"
	rarity = "Common"
	card_type = "Equipment"

/datum/tcg_card/pack_nuclear/c20r
	name = "C-20R SMG"
	desc = "A bullpup two-round burst .45 SMG, designated 'C-20r'. Has a 'Scarborough Arms - Per falcis, per pravitas' buttstamp."
	rules = "After attack, flip a coin. If heads, leave the weapon. If tails, unequip this card."
	icon_state = "c20r"

	mana_cost = 4
	attack = 4
	health = 0

	faction = "Syndicate"
	rarity = "Rare"
	card_type = "Equipment"

/datum/tcg_card/pack_nuclear/l6saw
	name = "L6 Saw LMG"
	desc = "A heavily modified 1.95x129mm light machine gun, designated 'L6 SAW'. Has 'Aussec Armoury - 2531' engraved on the receiver below the designation."
	rules = "After equipped unit dies, this card goes to the bottom of draw deck"
	icon_state = "l6saw"

	mana_cost = 8
	attack = 6
	health = 0

	faction = "Syndicate"
	rarity = "Equipment"
	card_type = "Unit"

/datum/tcg_card/pack_nuclear/bulldog
	name = "Bulldog Shotgun"
	desc = "A semi-auto, mag-fed shotgun for combat in narrow corridors, nicknamed 'Bulldog' by boarding parties. Compatible only with specialized 8-round drum magazines."
	rules = "After attack, deal 1 damage to enemy units next to the attacked one."
	icon_state = "bulldog"

	mana_cost = 3
	attack = 3
	health = 0

	faction = "Syndicate"
	rarity = "Rare"
	card_type = "Equipment"

/datum/tcg_card/pack_nuclear/nuke_op_leader
	name = "Nuclear Team Commander"
	desc = "All commanders of elite nuclear teams are equipped with high-tier gear and weaponery. And, sometimes, gaming cards."
	rules = "Squad Tactics. Give all Syndicate units on your side +1/0."
	icon_state = "nuke_op_leader"

	mana_cost = 5
	attack = 3
	health = 4

	faction = "Syndicate"
	rarity = "Epic"
	card_type = "Unit"

/datum/tcg_card/pack_nuclear/nuke_op
	name = "Nuclear Team Commander"
	desc = "An unequipped nuclear operative, ready to buy some gear and go full ham!"
	rules = "Squad Tactics. On summon: Search your deck for Syndicate equipment. Equip it on this unit. Shuffle it afterwards."
	icon_state = "nuke_op"

	mana_cost = 3
	attack = 2
	health = 3

	faction = "Syndicate"
	rarity = "Common"
	card_type = "Unit"

/datum/tcg_card/pack_nuclear/dark_gygax
	name = "Dark Gygax"
	desc = "A lightweight exosuit, painted in a dark scheme. This model appears to have some modifications."
	rules = "Squad Tactics."
	icon_state = "dark_gygax"

	mana_cost = 6
	attack = 8
	health = 4

	faction = "Syndicate"
	rarity = "Epic"
	card_type = "Unit"

/datum/tcg_card/pack_nuclear/mauler
	name = "Mauler"
	desc = "Heavy-duty, combat exosuit, developed off of the existing Marauder model. A perfect killing machine equipped with best weaponery in the world."
	rules = "Squad Tactics. Deadeye."
	icon_state = "mauler"

	mana_cost = 8
	attack = 8
	health = 8

	faction = "Syndicate"
	rarity = "Legendary"
	card_type = "Unit"

/datum/tcg_card/pack_nuclear/saboteur
	name = "Syndicate Saboteur Cyborg"
	desc = "A streamlined engineering cyborg, equipped with covert modules. Allows to sabotage all the systems you want without being suspicious."
	rules = "Block the first spell your opponent plays against your hero."
	icon_state = "saboteur"

	mana_cost = 3
	attack = 1
	health = 3

	faction = "Syndicate"
	rarity = "Rare"
	card_type = "Unit"

/datum/tcg_card/pack_nuclear/medic
	name = "Syndicate Medical Cyborg"
	desc = "A combat medical cyborg. Has limited offensive potential, but makes more than up for it with its support capabilities."
	rules = "Each turn you can give one of your units 0/+1."
	icon_state = "medic"

	mana_cost = 4
	attack = 1
	health = 2

	faction = "Syndicate"
	rarity = "Rare"
	card_type = "Unit"

/datum/tcg_card/pack_nuclear/combat
	name = "Syndicate Assault Cyborg"
	desc = "A cyborg designed and programmed for systematic extermination of non-Syndicate personnel."
	rules = "Squad Tactics. Fury."
	icon_state = "combat"

	mana_cost = 5
	attack = 4
	health = 4

	faction = "Syndicate"
	rarity = "Rare"
	card_type = "Unit"

/datum/tcg_card/pack_nuclear/emag
	name = "Cryptographic Sequencer"
	desc = "It's a card with a magnetic strip attached to some circuitry."
	rules = "Convert an enemy silicon unit to your side."
	icon_state = "emag"

	mana_cost = 4

	faction = "Syndicate"
	rarity = "Common"
	card_type = "Spell"

/datum/tcg_card/pack_nuclear/bomb
	name = "Syndicate Bomb"
	desc = "A large and menacing device. Can be bolted down with a wrench."
	rules = "Deal 6 damage to all units on the field after 2 turns."
	icon_state = "bomb"

	mana_cost = 6

	faction = "Syndicate"
	rarity = "Rare"
	card_type = "Spell"

/datum/tcg_card/pack_nuclear/assault_pod
	name = "Assault Pod"
	desc = "Raining Steel. Nothing personnel, just disky."
	rules = "Summon up to 3 units from your hand with 4 mana discount each."
	icon_state = "assault_pod"

	mana_cost = 8

	faction = "Syndicate"
	rarity = "Epic"
	card_type = "Spell"

/datum/tcg_card/pack_nuclear/c4
	name = "C4"
	desc = "A bunch of plastic explosives wired together."
	rules = "Deal 2 damage to an enemy unit."
	icon_state = "c4"

	mana_cost = 1

	faction = "Syndicate"
	rarity = "Common"
	card_type = "Spell"
