#define CAN_ROLL_ALWAYS 1 //always can roll for antag
#define CAN_ROLL_PROTECTED 2 //can roll if config lets protected roles roll
#define CAN_ROLL_NEVER 3 //never roll antag

/**
 * A station trait which enables a temporary job
 * Generally speaking these should always all be mutually exclusive, don't have too many at once
 */
/datum/station_trait/job
	sign_up_button = TRUE
	abstract_type = /datum/station_trait/job
	/// What tooltip to show on the button
	var/button_desc = "Sign up to gain some kind of unusual job, not available in most rounds."
	/// Can this job roll antag?
	var/can_roll_antag = CAN_ROLL_ALWAYS
	/// How many positions to spawn?
	var/position_amount = 1
	/// Type of job to enable
	var/datum/job/job_to_add = /datum/job/paramedic
	/// Who signed up to this in the lobby
	var/list/lobby_candidates

/datum/station_trait/job/New()
	. = ..()
	switch(can_roll_antag)
		if(CAN_ROLL_PROTECTED)
			SSstation.antag_protected_roles += job_to_add::title
		if(CAN_ROLL_NEVER)
			SSstation.antag_restricted_roles += job_to_add::title
	blacklist += subtypesof(/datum/station_trait/job) - type // All but ourselves
	RegisterSignal(SSdcs, COMSIG_GLOB_PRE_JOBS_ASSIGNED, PROC_REF(pre_jobs_assigned))

/datum/station_trait/job/setup_lobby_button(atom/movable/screen/lobby/button/sign_up/lobby_button)
	RegisterSignal(lobby_button, COMSIG_ATOM_UPDATE_OVERLAYS, PROC_REF(on_lobby_button_update_overlays))
	lobby_button.desc = button_desc
	return ..()

/datum/station_trait/job/on_lobby_button_click(atom/movable/screen/lobby/button/sign_up/lobby_button, location, control, params, mob/dead/new_player/user)
	if (LAZYFIND(lobby_candidates, user))
		LAZYREMOVE(lobby_candidates, user)
	else
		LAZYADD(lobby_candidates, user)

/datum/station_trait/job/on_lobby_button_update_icon(atom/movable/screen/lobby/button/sign_up/lobby_button, updates)
	if (LAZYFIND(lobby_candidates, lobby_button.get_mob()))
		lobby_button.base_icon_state = "signup_on"
	else
		lobby_button.base_icon_state = "signup"

/// Add an overlay based on whether you are actively signed up for this role
/datum/station_trait/job/proc/on_lobby_button_update_overlays(atom/movable/screen/lobby/button/sign_up/lobby_button, list/overlays)
	SIGNAL_HANDLER
	overlays += LAZYFIND(lobby_candidates, lobby_button.get_mob()) ? "tick" : "cross"

/// Called before we start assigning roles, assign ours first
/datum/station_trait/job/proc/pre_jobs_assigned()
	SIGNAL_HANDLER
	sign_up_button = FALSE
	destroy_lobby_buttons()
	for (var/mob/dead/new_player/signee as anything in lobby_candidates)
		if (isnull(signee) || !signee.client || !signee.mind || signee.ready != PLAYER_READY_TO_PLAY)
			LAZYREMOVE(lobby_candidates, signee)

	var/datum/job/our_job = SSjob.GetJobType(job_to_add)
	our_job.total_positions = position_amount
	our_job.spawn_positions = position_amount
	while(length(lobby_candidates) && position_amount > 0)
		var/mob/dead/new_player/picked_player = pick_n_take(lobby_candidates)
		picked_player.mind.set_assigned_role(our_job)
		our_job.current_positions++
		position_amount--

	lobby_candidates = null

/datum/station_trait/job/can_display_lobby_button(client/player)
	var/datum/job/our_job = SSjob.GetJobType(job_to_add)
	return our_job.player_old_enough(player) && ..()

#undef CAN_ROLL_ALWAYS
#undef CAN_ROLL_PROTECTED
#undef CAN_ROLL_NEVER
