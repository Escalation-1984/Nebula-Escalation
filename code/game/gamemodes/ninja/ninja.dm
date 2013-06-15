/datum/game_mode
	var/list/datum/mind/ninjas = list()

/datum/game_mode/ninja
	name = "ninja"
	config_tag = "ninja"
	required_players = 2
	required_players_secret = 10
	required_enemies = 1
	recommended_enemies = 1

/datum/game_mode/ninja/announce()
	world << "<B>The current game mode is Ninja!</B>"

/datum/game_mode/ninja/can_start()
	if(!..())
		return 0
	var/list/datum/mind/possible_ninjas = get_players_for_role(BE_NINJA)
	if(possible_ninjas.len==0)
		return 0
	var/datum/mind/ninja = pick(possible_ninjas)
	ninjas += ninja
	modePlayer += ninja
	ninja.assigned_role = "MODE" //So they aren't chosen for other jobs.
	ninja.special_role = "Ninja"
	ninja.original = ninja.current
	if(ninjastart.len == 0)
		ninja.current << "<B>\red A proper starting location for you could not be found, please report this bug!</B>"
		ninja.current << "<B>\red Attempting to place at a carpspawn.</B>"
		for(var/obj/effect/landmark/L in landmarks_list)
			if(L.name == "carpspawn")
				ninjastart.Add(L)
	if(ninjastart.len == 0)
		ninja.current << "<B>\red Still no spawneable locations could be found. Aborting.</B>"
		return 0
	return 1

/datum/game_mode/ninja/pre_setup()
	ninja.current.loc = pick(ninjastart)
	ninja.current = create_space_ninja(pick(ninjastart))
	return 1