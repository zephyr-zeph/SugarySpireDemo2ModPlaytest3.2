if (global.panic)
{
	with (obj_player)
	{
		if (grounded && key_up && (state == states.normal || state == states.mach1 || state == states.mach2 || state == states.mach3))
		{
			targetDoor = "none";
			if (global.collect >= global.srank)
				global.rank = "s";
			else if (global.collect > global.arank)
				global.rank = "a";
			else if (global.collect > global.brank)
				global.rank = "b";
			else if (global.collect > global.crank)
				global.rank = "c";
			else
				global.rank = "d";
			if (global.rank != "e")
				scr_sound(asset_get_index("mu_rank" + global.rank))
			else
				scr_sound(mu_rankd);
			audio_stop_sound(mu_escape);
			audio_stop_sound(mu_lap2);
			ini_open("saveData.ini");
			// save statistics to the INI
			if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", global.levelname, "none")))
				ini_write_string("Ranks", global.levelname, global.rank);
			if (ini_write_real("Scores", global.levelname, global.collect) < global.collect)
				ini_write_real("Scores", global.levelname, global.collect);
			if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", global.levelname, "none")))
				ini_write_string("Confecti", global.levelname, global.rank);
			for (var i = 0; i < 5; i++;)
			{
				var _followvar = variable_global_get(other.confectiArray[i] + "follow")
				if (!ini_read_real(global.levelname + "_confecti", "confecti" + other.confectiArray[i], _followvar) || !ini_key_exists(global.levelname + "_confecti", "confecti" + other.confectiArray[i]))
					ini_write_real(global.levelname + "_confecti", "confecti" + other.confectiArray[i], _followvar)
			}
			
			/*
			if (room == mines_1)
			{
				if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", "mines", "none")))
					ini_write_string("Ranks", "mines", global.rank);
			}
			if (room == molasses_1)
			{
				if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", "molasses", "none")))
					ini_write_string("Ranks", "molasses", global.rank);
			}
			if (room == steamy_1)
			{
				if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", "steamy", "none")))
					ini_write_string("Ranks", "steamy", global.rank);
			}
			if (room == entryway_1)
			{
				if (rank_checker(global.rank) > rank_checker(ini_read_string("Ranks", "entryway", "none")))
					ini_write_string("Ranks", "entryway", global.rank);
			}*/
			ini_close();
			obj_tv.tvsprite = spr_tvoff;
			if (!instance_exists(obj_endlevelfade))
			{
				instance_create(x, y, obj_endlevelfade);
				if (state != states.door)
				{
					sprite_index = spr_lookdoor;
					state = states.door;
					obj_endlevelfade.alarm[0] = 235;
					image_index = 0;
				}
			}
			global.panic = false;
		}
	}
}
