function scr_player_cheeseball()
{
	hsp = xscale * 12;
	if (!scr_slope() && instance_place(x + sign(hsp), y, obj_solid))
	{
		scr_sound(sound_enemystomp);
		obj_player.grav = 0.5;
		repeat (8)
			instance_create(x, y, obj_slimedebris);
		if (x != other.x)
			obj_player.hsp = sign(x - other.x) * 5;
		else
			obj_player.hsp = 5;
		vsp = -3;
		obj_player.visible = true;
		image_index = 0;
		obj_player.image_index = 0;
		obj_player.flash = true;
		state = states.bump;
	}
	sprite_index = spr_player_gumball;
	if (key_jump)
		input_buffer_jump = 0;
	if (input_buffer_jump < 8 && grounded)
	{
		instance_create(x, y, obj_highjumpcloud2);
		if !audio_is_playing(sound_jump)
			scr_sound(sound_jump);
		vsp = -5;
	}
}
