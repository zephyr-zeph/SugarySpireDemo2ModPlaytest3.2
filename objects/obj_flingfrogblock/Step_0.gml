with instance_nearest(x, y, obj_player) {
	if ((place_meeting(x + hsp, y, other.id) && hsp < 0) || place_meeting(x, y - 1, other.id)) && state == states.fling {
		with other.id
			event_user(0);
	}
	if ((place_meeting(x, y + vsp, other.id) && vsp < 0) || place_meeting(x, y - 1, other.id)) && state == states.fling {
		with other.id
			event_user(0);
	}
}
