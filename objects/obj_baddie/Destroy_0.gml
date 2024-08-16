if ((ds_list_find_index(global.baddieroom, id) == -1 && ds_list_find_index(global.escaperoom, id) == -1) || important)
{
	obj_tv.image_index = irandom_range(0, 4);
	repeat (3)
	{
		instance_create(x, y, obj_slapstar);
		instance_create(x, y, obj_baddiegibs);
	}
	instance_create(x, y + 30, obj_bangeffect);
	camera_shake(3, 3);
	with (instance_create(x, y, obj_sausageman_dead))
		sprite_index = other.deadspr;
	if (object_index != obj_googlyjuice)
	{
		switch (global.combo)
		{
			case 0:
			case 1:
				scr_sound(sound_combo1);
				break;
			case 2:
				scr_sound(sound_combo2);
				break;
			case 3:
				scr_sound(sound_combo3);
				break;
			default:
				scr_sound(sound_combo4);
				break;
		}
	}
	if (!important)
	{
		global.combo++;
		 create_small_number(x, y, string((10 + floor((global.combo * 0.5)))))
        global.collect += (10 + floor((global.combo * 0.5)))
		global.combotime = 60;
		global.style += 4;
		global.combofreeze = 30;
	}
	if panicEscape
		ds_list_add(global.escaperoom, id);
	else
		ds_list_add(global.baddieroom, id);
}