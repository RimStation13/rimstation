/datum/material/copper
	name = "copper"
	desc = "Copper"
	color = "#DA6F05"
	strength_modifier = 1.2
	categories = list(
		MAT_CATEGORY_SILO = TRUE,
		MAT_CATEGORY_RIGID=TRUE,
		MAT_CATEGORY_BASE_RECIPES = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL_COMPLEMENTARY = TRUE,
	)
	sheet_type = /obj/item/stack/sheet/mineral/copper
	ore_type = /obj/item/stack/ore/gold
	value_per_unit = 125 / SHEET_MATERIAL_AMOUNT
	tradable = TRUE
	tradable_base_quantity = MATERIAL_QUANTITY_RARE
	armor_modifiers = list(MELEE = 1.1, BULLET = 1.1, LASER = 1.15, ENERGY = 1.15, BOMB = 1, BIO = 1, FIRE = 0.7, ACID = 1.1)
	mineral_rarity = MATERIAL_RARITY_PRECIOUS
	points_per_unit = 18 / SHEET_MATERIAL_AMOUNT
	texture_layer_icon_state = "shine"

///

/datum/material/aluminium
	name = "aluminium"
	desc = "A lightweight, silvery metal known for its strength, corrosion resistance, and versatility."
	color = "#BFBFBF"
	categories = list(
		MAT_CATEGORY_SILO = FALSE,
		MAT_CATEGORY_RIGID=TRUE,
		MAT_CATEGORY_BASE_RECIPES = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL_COMPLEMENTARY = TRUE,
	)
	sheet_type = /obj/item/stack/sheet/iron
	ore_type = /obj/item/stack/ore/iron
	value_per_unit = 5 / SHEET_MATERIAL_AMOUNT
	mat_rust_resistance = RUST_RESISTANCE_BASIC
	mineral_rarity = MATERIAL_RARITY_COMMON
	points_per_unit = 1 / SHEET_MATERIAL_AMOUNT
	armor_modifiers = list(MELEE = 1.5, BULLET = 1.1, LASER = 0.3, ENERGY = 0.5, BOMB = 1, BIO = 1, FIRE = 1.1, ACID = 1)
	minimum_value_override = 0
	tradable = TRUE
	tradable_base_quantity = MATERIAL_QUANTITY_COMMON

///

/datum/material/lead
	name = "lead"
	desc = "A dense, heavy metal with a dull gray surface, valued for its malleability and resistance to radiation."
	color = "#80919d"
	categories = list(
		MAT_CATEGORY_SILO = FALSE,
		MAT_CATEGORY_RIGID=TRUE,
		MAT_CATEGORY_BASE_RECIPES = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL_COMPLEMENTARY = TRUE,
	)
	sheet_type = /obj/item/stack/sheet/mineral/lead
	ore_type = /obj/item/stack/ore/iron
	value_per_unit = 5 / SHEET_MATERIAL_AMOUNT
	mat_rust_resistance = RUST_RESISTANCE_BASIC
	mineral_rarity = MATERIAL_RARITY_COMMON
	points_per_unit = 1 / SHEET_MATERIAL_AMOUNT
	armor_modifiers = list(MELEE = 0.9, BULLET = 0.8, LASER = 0.1, ENERGY = 0.2, BOMB = 0.5, BIO = 100, FIRE = 0.5, ACID = 100)
	minimum_value_override = 0
	tradable = TRUE
	tradable_base_quantity = MATERIAL_QUANTITY_COMMON
	beauty_modifier = -0.4

///

/datum/material/tungsten
	name = "tungsten"
	desc = "Tungsten"
	color = "#c4e2c9"
	strength_modifier = 1.2
	categories = list(
		MAT_CATEGORY_SILO = FALSE,
		MAT_CATEGORY_RIGID=TRUE,
		MAT_CATEGORY_BASE_RECIPES = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL_COMPLEMENTARY = TRUE,
	)
	sheet_type = /obj/item/stack/sheet/mineral/tungsten
	ore_type = /obj/item/stack/ore/gold
	value_per_unit = 125 / SHEET_MATERIAL_AMOUNT
	tradable = TRUE
	tradable_base_quantity = MATERIAL_QUANTITY_RARE
	beauty_modifier = -0.2
	armor_modifiers = list(MELEE = 1.1, BULLET = 1.1, LASER = 2.5, ENERGY = 1.15, BOMB = 1, BIO = 1, FIRE = 3, ACID = 1.1)
	mineral_rarity = MATERIAL_RARITY_PRECIOUS
	points_per_unit = 18 / SHEET_MATERIAL_AMOUNT
	texture_layer_icon_state = "shine"

/datum/material/tungsten/on_main_applied(atom/source, mat_amount, multiplier)
	. = ..()
	if(!isobj(source) || !(source.material_flags & MATERIAL_AFFECT_STATISTICS))
		return
	var/obj/tungsten = source
	tungsten.resistance_flags |= FIRE_PROOF

///

/datum/material/platinum
	name = "platinum"
	desc = "Platinum"
	color = "#c4e2c9"
	strength_modifier = 2
	categories = list(
		MAT_CATEGORY_SILO = FALSE,
		MAT_CATEGORY_RIGID=TRUE,
		MAT_CATEGORY_BASE_RECIPES = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL_COMPLEMENTARY = TRUE,
	)
	sheet_type = /obj/item/stack/sheet/mineral/platinum
	ore_type = /obj/item/stack/ore/gold
	value_per_unit = 125 / SHEET_MATERIAL_AMOUNT
	tradable = TRUE
	tradable_base_quantity = MATERIAL_QUANTITY_RARE
	beauty_modifier = 3
	armor_modifiers = list(MELEE = 3, BULLET = 0.7, LASER = 0.6, ENERGY = 1.15, BOMB = 1, BIO = 1, FIRE = 0.7, ACID = 1.1)
	mineral_rarity = MATERIAL_RARITY_PRECIOUS
	points_per_unit = 18 / SHEET_MATERIAL_AMOUNT
	texture_layer_icon_state = "shine"

///

/datum/material/cobalt
	name = "cobalt"
	desc = "Cobalt"
	color = "#0b508f"
	strength_modifier = 2
	categories = list(
		MAT_CATEGORY_SILO = FALSE,
		MAT_CATEGORY_RIGID=TRUE,
		MAT_CATEGORY_BASE_RECIPES = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL = TRUE,
		MAT_CATEGORY_ITEM_MATERIAL_COMPLEMENTARY = TRUE,
	)
	sheet_type = /obj/item/stack/sheet/mineral/cobalt
	ore_type = /obj/item/stack/ore/gold
	value_per_unit = 125 / SHEET_MATERIAL_AMOUNT
	tradable = TRUE
	tradable_base_quantity = MATERIAL_QUANTITY_RARE
	beauty_modifier = 3
	armor_modifiers = list(MELEE = 3, BULLET = 1, LASER = 0.6, ENERGY = 1, BOMB = 1.5, BIO = 0, FIRE = 0.7, ACID = 1)
	mineral_rarity = MATERIAL_RARITY_PRECIOUS
	points_per_unit = 18 / SHEET_MATERIAL_AMOUNT
	texture_layer_icon_state = "shine"
