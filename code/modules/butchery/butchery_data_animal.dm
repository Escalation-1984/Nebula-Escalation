/decl/butchery_data/animal
	bone_amount       = 5
	skin_amount       = 5
	var/stomach_type

/decl/butchery_data/animal/harvest_innards(mob/donor)
	. = ..()
	if(stomach_type)
		var/product = new stomach_type(get_turf(donor), gut_material)
		LAZYADD(., product)

/decl/butchery_data/animal/corgi
	meat_type         = /obj/item/chems/food/butchery/meat/corgi
	meat_amount       = 3
	skin_material     = /decl/material/solid/organic/skin/fur/orange
	gut_type          = /obj/item/chems/food/butchery/offal/small

/decl/butchery_data/animal/corgi/puppy
	meat_amount       = 1
	skin_amount       = 3
	bone_amount       = 3
	must_use_hook     = FALSE

/decl/butchery_data/animal/space_bear
	meat_type         = /obj/item/chems/food/bearmeat
	meat_amount       = 10
	bone_amount       = 20
	skin_amount       = 20
	skin_material     = /decl/material/solid/organic/skin/fur/heavy
	stomach_type      = /obj/item/chems/food/butchery/stomach

/decl/butchery_data/animal/cat
	skin_material     = /decl/material/solid/organic/skin/fur/orange
	gut_type          = /obj/item/chems/food/butchery/offal/small

/decl/butchery_data/animal/cat/black
	skin_material     = /decl/material/solid/organic/skin/fur/black

/decl/butchery_data/animal/cat/kitten
	meat_amount       = 1
	bone_amount       = 3
	skin_amount       = 3
	must_use_hook     = FALSE

/decl/butchery_data/animal/small
	abstract_type     = /decl/butchery_data/animal/small
	meat_amount       = 1
	bone_amount       = 1
	skin_amount       = 1
	must_use_hook     = FALSE
	gut_type          = /obj/item/chems/food/butchery/offal/small

/decl/butchery_data/animal/small/furred
	skin_material     = /decl/material/solid/organic/skin/fur

/decl/butchery_data/animal/small/furred/gray
	skin_material     = /decl/material/solid/organic/skin/fur/gray

/decl/butchery_data/animal/small/furred/white
	skin_material     = /decl/material/solid/organic/skin/fur/white

/decl/butchery_data/animal/antlion
	meat_type         = /obj/item/chems/food/xenomeat
	meat_amount       = 5
	skin_material     = /decl/material/solid/organic/skin/insect
	skin_amount       = 15
	bone_material     = /decl/material/solid/organic/bone/cartilage
	bone_amount       = 10

/decl/butchery_data/animal/antlion/queen
	meat_amount       = 10
	skin_amount       = 25
	bone_amount       = 15
