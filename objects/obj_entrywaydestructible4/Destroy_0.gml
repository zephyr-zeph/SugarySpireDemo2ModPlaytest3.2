if (ds_list_find_index(global.baddieroom, id) == -1)
{
	collectchance = random_range(1,5)
	bigcollectchance = random_range(1,15)
	instance_create(x, y + 30, obj_bangeffect);
	if sprite_index == spr_entryway_obstacle_2 or sprite_index == spr_entryway_obstacle_1 or sprite_index == spr_entryway_obstacle_6 or sprite_index == spr_entryway_obstacle_8
		scr_sound(sound_obstaclemetal)
	else
		scr_sound(sound_obstaclenormal)
	if collectchance == 1
	{
		instance_create(x,y,obj_collect)
	}
	if bigcollectchance == 1
	{
		instance_create(x,y,obj_bigcollect)
	}
	with (instance_create(x, y, obj_sausageman_dead))
		sprite_index = other.sprite_index;
	
	ds_list_add(global.baddieroom, id)
}