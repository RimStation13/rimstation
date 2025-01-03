/obj/machinery/plantgenes
	name = "plant DNA manipulator"
	desc = "An advanced device designed to manipulate plant genetic makeup."
	icon = 'icons/obj/service/hydroponics/equipment.dmi'
	icon_state = "dnamod"
	density = TRUE
	circuit = /obj/item/circuitboard/machine/plantgenes
	pass_flags = PASSTABLE

	var/obj/item/seeds/seed
	var/obj/item/disk/plantgene/disk

	var/list/core_genes = list()
	var/list/reagent_genes = list()
	var/list/trait_genes = list()

	var/datum/plant_gene/target
	var/operation = ""
	var/max_potency = 50 // See RefreshParts() for how these work
	var/max_yield = 2
	var/min_production = 12
	var/max_endurance = 10 // IMPT: ALSO AFFECTS LIFESPAN
	var/max_lifespan = 100 // Define max_lifespan
	var/min_wchance = 67
	var/min_wrate = 10

/obj/machinery/plantgenes/RefreshParts() // Comments represent the max you can set per tier, respectively. seeds.dm [219] clamps these for us but we don't want to mislead the viewer.
	..()
	for(var/obj/item/stock_parts/servo/S in component_parts)
		if(S.rating > 3)
			max_potency = 95
		else
			max_potency = initial(max_potency) + (S.rating**3) // 53,59,77,95 	 Clamps at 100

		max_yield = initial(max_yield) + (S.rating*2) // 4,6,8,10 	Clamps at 10

	for(var/obj/item/stock_parts/scanning_module/SM in component_parts)
		if(SM.rating > 3) //If you create t5 parts I'm a step ahead mwahahaha!
			min_production = 1
		else
			min_production = 12 - (SM.rating * 3) //9,6,3,1. Requires if to avoid going below clamp [1]

		max_endurance = initial(max_endurance) + (SM.rating * 25) // 35,60,85,100	Clamps at 10min 100max

	for(var/obj/item/stock_parts/micro_laser/ML in component_parts)
		var/wratemod = ML.rating * 2.5
		min_wrate = FLOOR(10-wratemod,1) // 7,5,2,0	Clamps at 0 and 10	You want this low
		min_wchance = 67-(ML.rating*16) // 48,35,19,3 	Clamps at 0 and 67	You want this low

/obj/machinery/plantgenes/update_icon_state()
	..()
	if((machine_stat & (BROKEN|NOPOWER)))
		icon_state = "dnamod-off"
	else
		icon_state = "dnamod"

/obj/machinery/plantgenes/update_overlays()
	. = ..()
	if(seed)
		. += "dnamod-dna"
	if(panel_open)
		. += "dnamod-open"

/obj/machinery/plantgenes/attackby(obj/item/I, mob/user, params)
	if(default_deconstruction_screwdriver(user, "dnamod", "dnamod", I))
		update_icon()
		return
	if(default_deconstruction_crowbar(I))
		return
	if(iscyborg(user))
		return

	if(istype(I, /obj/item/seeds))
		if (operation)
			to_chat(user, "<span class='notice'>Please complete current operation.</span>")
			return
		if(!user.transferItemToLoc(I, src))
			return
		to_chat(user, "<span class='notice'>You add [I] to the machine.</span>")
		interact(user)
	else if(istype(I, /obj/item/disk/plantgene))
		if (operation)
			to_chat(user, "<span class='notice'>Please complete current operation.</span>")
			return
		if(!user.transferItemToLoc(I, src))
			return
		disk = I
		to_chat(user, "<span class='notice'>You add [I] to the machine.</span>")
		interact(user)

/obj/machinery/biogenerator/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "Autolathe")
		ui.open()

/*
 *  Plant DNA disk
 */

/obj/item/disk/plantgene
	name = "plant data disk"
	desc = "A disk for storing plant genetic data."
	icon_state = "datadisk_hydro"
	custom_materials = list(/datum/material/iron=30, /datum/material/glass=10)
	var/obj/item/seeds/seed
	var/datum/plant_gene/gene
	var/read_only = 0 //Well, it's still a floppy disk
	var/potency = 0
	var/lifespan = 0
	var/endurance = 0
	var/yield = 0
	obj_flags = UNIQUE_RENAME

/obj/item/disk/plantgene/Initialize()
	. = ..()
	add_overlay("datadisk_gene")
	src.pixel_x = rand(-5, 5)
	src.pixel_y = rand(-5, 5)

///
// /obj/item/disk/plantgene/proc/update_name()
//	if(gene)
//		name = "[gene.get_name()] (plant data disk)"
//	else
//		name = "plant data disk"



/obj/item/disk/plantgene/attack_self(mob/user)
	read_only = !read_only
	to_chat(user, "<span class='notice'>You flip the write-protect tab to [src.read_only ? "protected" : "unprotected"].</span>")

/obj/item/disk/plantgene/examine(mob/user)
	. = ..()
