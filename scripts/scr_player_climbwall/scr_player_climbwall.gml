function scr_player_climbwall()
{
	if (windingAnim < 200)
		windingAnim++;
	suplexmove = false;
	vsp = -wallspeed;
	if (wallspeed > 0)
		wallspeed += 0.05;
	crouchslideAnim = true;
	sprite_index = spr_climbwall;
	if wallrunBuffer >= 0
		wallrunBuffer -= 0.1
	if (wallspeed <= 0 || !key_attack && wallrunBuffer == 0)
	{
		state = states.jump;
		sprite_index = spr_fall;
	}
	if (!scr_solid(x + xscale, y, true))
	{
		instance_create(x, y, obj_jumpdust);
		vsp = 0;
		if (mach2 < 100)
			state = states.mach2;
		else if (mach2 >= 100)
		{
			state = states.mach3;
			sprite_index = spr_player_mach3;
		}
		else
		{
			state = states.jump;
			vsp = -wallspeed;
		}
	}
	if (scr_solid(x, y - 1) && !place_meeting(x, y - 1, obj_destructibles) && !scr_slope_ext(x + sign(hsp), y) && !scr_slope_ext(x - sign(hsp), y))
	{
		sprite_index = spr_player_ceilingcrash;
		scr_sound(sound_maximumspeedland);
		image_index = 0;
		state = states.Sjumpland;
		machhitAnim = false;
		with (obj_camera)
		{
			shake_mag = 10;
			shake_mag_acc = 30 / room_speed;
		}
	}
	if (key_jump && key_attack)
	{
			instance_create(x, y, obj_jumpdust);
			vsp = -9;
			sprite_index = spr_player_mach3;
			state = states.mach3;
			xscale *= -1;
	}
	image_speed = 0.6;
	if (!instance_exists(obj_cloudeffect))
		instance_create(x, y + 43, obj_cloudeffect);
}
