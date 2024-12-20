function scr_player_freefall()
{
	hsp = 0;
	landAnim = true;
	move = key_left + key_right;
	vsp += 0.6
	if !audio_is_playing(sfx_groundpoundloop)
		scr_sound(sfx_groundpoundloop)
	if (!grounded)
	{
		hsp = move * movespeed;
		if (movespeed == 0)
			momemtum = false;
		if ((move == 0 && !momemtum) || scr_solid(x + hsp, y))
		{
			movespeed = 0;
			mach2 = 0;
		}
		if (move != 0 && movespeed < 7)
			movespeed += 0.25;
		if (movespeed > 7)
			movespeed -= 0.05;
		if ((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1))
			movespeed = 0;
		if (dir != xscale)
		{
			mach2 = 0;
			dir = xscale;
			movespeed = 0;
		}
		if (move == -xscale)
		{
			mach2 = 0;
			movespeed = 0;
			momemtum = false;
		}
		if (move != 0)
			xscale = move;
	}
	if (!global.cane)
		sprite_index = spr_player_bodyslamfall;
	if (global.cane)
		sprite_index = spr_caneslam;
	if (grounded && vsp > 0 && (freefallsmash < 10 || !place_meeting(x, y + vsp, obj_metalblock)) && !place_meeting(x, y + 1, obj_destructibles) && !place_meeting(x, y + vsp, obj_destructibles) && !place_meeting(x, y + vsp + 6, obj_destructibles))
	{
		if scr_slope()
		{
			with (instance_place(x, y + 1, obj_slope))
			{
				other.xscale = -sign(image_xscale);
				audio_stop_sound(sfx_groundpoundloop)
				other.state = states.machroll;
				other.sprite_index = other.spr_crouchslip;
				if other.freefallsmash > 20
					other.movespeed = 12;
				else
					other.movespeed = 8;
				with (instance_create(other.x, other.y, obj_jumpdust))
					image_xscale = -sign(other.image_xscale);
			}
		}
		else
		{
			scr_sound(sound_maximumspeedland);
			image_index = 0;
			state = states.freefallland;
			jumpAnim = true;
			jumpstop = false;
			with (obj_baddie)
			{
				if (point_in_camera(x, y, view_camera[0]) && grounded)
				{
					vsp = -7;
					hsp = 0;
				}
			}
			with (obj_camera)
			{
				shake_mag = 10;
				shake_mag_acc = 30 / room_speed;
			}
			combo = 0;
			bounce = false;
			instance_create(x, y, obj_landcloud);
			freefallstart = 0;
			sprite_index = spr_player_bodyslamland;
		}
	}
	if (place_meeting(x, y + 1, obj_destructibles))
		vsp = 20;
	image_speed = 0.35;
	freefallsmash++;
	if (freefallsmash > 10 && !instance_exists(obj_groundpoundeffect))
		instance_create_depth(x, y, -6, obj_groundpoundeffect);
	if (key_attack2 || key_slap2 && !grounded && vsp > 10 && instance_exists(obj_groundpoundeffect))
	{
		audio_stop_sound(sfx_groundpoundloop)
		if (move != 0)
			xscale = move;
		movespeed = 10;
		machhitAnim = false;
		state = states.mach2;
		flash = true;
		vsp = -7;
		sprite_index = spr_mach2jump;
		with (instance_create(x, y, obj_jumpdust))
			image_xscale = other.xscale;
		freefallsmash = false;
	}
}
