/// copper

/obj/item/stack/sheet/mineral/copper
	name = "copper"
	icon_state = "sheet-copper"
	inhand_icon_state = "sheet-metal"
	singular_name = "copper"
	sheettype = "copper"
	obj_flags = CONDUCTS_ELECTRICITY
	mats_per_unit = list(/datum/material/copper=SHEET_MATERIAL_AMOUNT)
	grind_results = list(/datum/reagent/copper = 20)
	gulag_valid = TRUE
	merge_type = /obj/item/stack/sheet/mineral/copper
	material_type = /datum/material/copper
	walltype = /turf/closed/wall/mineral

GLOBAL_LIST_INIT(copper_recipes, list ( \
	))

/obj/item/stack/sheet/mineral/copper/get_main_recipes()
	. = ..()
	. += GLOB.gold_recipes

/// aluminium

/obj/item/stack/sheet/mineral/aluminium
	name = "aluminium"
	icon_state = "sheet-aluminium"
	inhand_icon_state = "sheet-metal"
	singular_name = "aluminium"
	sheettype = "aluminium"
	obj_flags = CONDUCTS_ELECTRICITY
	mats_per_unit = list(/datum/material/aluminium=SHEET_MATERIAL_AMOUNT)
	grind_results = list(/datum/reagent/aluminium = 20)
	gulag_valid = TRUE
	merge_type = /obj/item/stack/sheet/mineral/aluminium
	material_type = /datum/material/aluminium
	walltype = /turf/closed/wall/mineral

GLOBAL_LIST_INIT(aluminium_recipes, list ( \
	))

/obj/item/stack/sheet/mineral/aluminium/get_main_recipes()
	. = ..()
	. += GLOB.gold_recipes

/// lead

/obj/item/stack/sheet/mineral/lead
	name = "lead"
	icon_state = "sheet-lead"
	inhand_icon_state = "sheet-metal"
	singular_name = "lead"
	sheettype = "lead"
	obj_flags = CONDUCTS_ELECTRICITY
	mats_per_unit = list(/datum/material/lead=SHEET_MATERIAL_AMOUNT)
	grind_results = list(/datum/reagent/lead = 20)
	gulag_valid = TRUE
	merge_type = /obj/item/stack/sheet/mineral/lead
	material_type = /datum/material/lead
	walltype = /turf/closed/wall/mineral

GLOBAL_LIST_INIT(lead_recipes, list ( \
	))

/obj/item/stack/sheet/mineral/lead/get_main_recipes()
	. = ..()
	. += GLOB.gold_recipes

/// tungsten

/obj/item/stack/sheet/mineral/tungsten
	name = "tungsten"
	icon_state = "sheet-tungsten"
	inhand_icon_state = "sheet-metal"
	singular_name = "tungsten"
	sheettype = "tungsten"
	obj_flags = CONDUCTS_ELECTRICITY
	mats_per_unit = list(/datum/material/tungsten=SHEET_MATERIAL_AMOUNT)
	grind_results = list(/datum/reagent/tungsten = 20)
	gulag_valid = TRUE
	merge_type = /obj/item/stack/sheet/mineral/tungsten
	material_type = /datum/material/tungsten
	walltype = /turf/closed/wall/mineral

GLOBAL_LIST_INIT(tungsten_recipes, list ( \
	))

/obj/item/stack/sheet/mineral/tungsten/get_main_recipes()
	. = ..()
	. += GLOB.gold_recipes

/// platinum

/obj/item/stack/sheet/mineral/platinum
	name = "platinum"
	icon_state = "sheet-platinum"
	inhand_icon_state = "sheet-metal"
	singular_name = "platinum"
	sheettype = "platinum"
	obj_flags = CONDUCTS_ELECTRICITY
	mats_per_unit = list(/datum/material/platinum=SHEET_MATERIAL_AMOUNT)
	grind_results = list(/datum/reagent/platinum = 20)
	gulag_valid = TRUE
	merge_type = /obj/item/stack/sheet/mineral/platinum
	material_type = /datum/material/platinum
	walltype = /turf/closed/wall/mineral

GLOBAL_LIST_INIT(platinum_recipes, list ( \
	))

/obj/item/stack/sheet/mineral/platinum/get_main_recipes()
	. = ..()
	. += GLOB.gold_recipes

/// cobalt

/obj/item/stack/sheet/mineral/cobalt
	name = "cobalt"
	icon_state = "sheet-cobalt"
	inhand_icon_state = "sheet-metal"
	singular_name = "cobalt"
	sheettype = "cobalt"
	obj_flags = CONDUCTS_ELECTRICITY
	mats_per_unit = list(/datum/material/cobalt=SHEET_MATERIAL_AMOUNT)
	grind_results = list(/datum/reagent/cobalt = 20)
	gulag_valid = TRUE
	merge_type = /obj/item/stack/sheet/mineral/cobalt
	material_type = /datum/material/cobalt
	walltype = /turf/closed/wall/mineral

GLOBAL_LIST_INIT(cobalt_recipes, list ( \
	))

/obj/item/stack/sheet/mineral/cobalt/get_main_recipes()
	. = ..()
	. += GLOB.gold_recipes
