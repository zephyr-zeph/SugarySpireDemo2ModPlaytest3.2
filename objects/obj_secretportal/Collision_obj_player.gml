if (stopentersecret == 0 && exitedsecret == 0)
{
    stopentersecret = 1
    if (exitsecret == true)
        global.lastroom = room
	obj_player.state = states.actor
	obj_player.sprite_index = spr_player_stun
	obj_player.x = x
	obj_player.y = y
	obj_player.grav = 0
	entered = true
	obj_player.movespeed = 0
	sprite_index = spr_secretportal_enter
	scr_sound(sfx_secretenter)
    alarm[0] = 45
    alarm[1] = 65
}
