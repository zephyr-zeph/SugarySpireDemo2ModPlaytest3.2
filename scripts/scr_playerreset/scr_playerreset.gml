function scr_playerreset()
{
	if (instance_exists(obj_endlevelfade))
		instance_destroy(obj_endlevelfade);
	if (instance_exists(obj_fadeout))
		instance_destroy(obj_fadeout);
	if (instance_exists(obj_cutsceneManager))
		instance_destroy(obj_cutsceneManager);
	global.cutsceneManager = -4;
	global.seconds = 59;
	global.treat = false;
	global.minutes = 1;
	global.combofreeze = 0;
	global.playminutes = 0;
	global.playseconds = 0;
	global.panic = false;
	global.style = 0;
	global.stylethreshold = 0;
	global.minesProgress = false;
	global.combodropped = false;
	global.laps = 0
	global.lap = 0
	obj_tv.image_index = 0;
	obj_tv.tvsprite = spr_tvturnon;
	obj_player.visible = true;
	camera_set_view_angle(view_camera[0], 0);
	ds_list_clear(global.saveroom);
	ds_list_clear(global.baddieroom);
	ds_list_clear(global.escaperoom);
	instance_destroy(obj_confectimallow);
	instance_destroy(obj_confecticrack);
	instance_destroy(obj_confectichoco);
	instance_destroy(obj_confectiworm);
	instance_destroy(obj_confecticandy);
	instance_destroy(obj_rudejanitor);
	instance_destroy(obj_lapjanitor);
	ds_list_clear(global.FollowerList);
	if room != rank_room
	{
	global.mallowfollow = false;
	global.crackfollow = false;
	global.chocofollow = false;
	global.wormfollow = false;
	global.candyfollow = false;
	global.janitor = false;
	global.lapjanitor = false;
	global.secretfound1 = false;
	global.secretfound2 = false;
	global.secretfound3 = false;
	global.treasurefound = false;
global.secretsfound = 0;
	}
	global.lapcutscenedone = false;
	global.rankreset = 0
with (obj_camera)
	{
		DrawY = 0;
		global.targetCamX = obj_player.x;
		global.targetCamY = obj_player.y;
		var target = obj_player;
		var _cam_x = target.x - (camera_get_view_width(view_camera[0]) / 2);
		var _cam_y = target.y - (camera_get_view_height(view_camera[0]) / 2);
		chargecamera = 0;
		_cam_x = clamp(_cam_x, Camera_xorigin, (Camera_xorigin + Camera_width) - camera_get_view_width(view_camera[0]));
		_cam_y = clamp(_cam_y, Camera_yorigin, (Camera_yorigin + Camera_height) - camera_get_view_height(view_camera[0]));
		_cam_x = clamp(_cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
		_cam_y = clamp(_cam_y, 0, room_height - camera_get_view_height(view_camera[0]));
		Cam_x = _cam_x;
		Cam_y = _cam_y;
		cam_langle = 0;
		cam_lzoom = 1;
		cam_angle = 0;
		cam_zoom = 1;
		Collectshake = 0;
	}
	with (obj_player)
	{
		targetDoor = "A";
		firetrailbuffer = 0;
		state = states.comingoutdoor;
		image_index = 0;
		sprite_index = spr_walkfront;
		Sjumpcan_doublejump = true;
		ResetMusic = false;
		Dashpad_buffer = 0;
		Dashpad_buffer = 0;
		vertical = false;
		verticaloffset = 0;
		supertauntbuffer = 0;
		supertaunteffect = -4;
		supertauntcharged = false;
		scr_characterspr();
		alarm[0] = -1;
		alarm[1] = -1;
		alarm[3] = -1;
		alarm[4] = -1;
		alarm[5] = -1;
		alarm[6] = -1;
		alarm[7] = -1;
		alarm[8] = -1;
		alarm[9] = -1;
		alarm[10] = -1;
		grav = 0.5;
		hsp = 0;
		vsp = 0;
		xscale = 1;
		yscale = 1;
		steppy = false;
		movespeedmax = 5;
		jumpstop = false;
		start_running = true;
		visible = true;
		turn = 0;
		jumpAnim = true;
		dashAnim = true;
		landAnim= false;
		machslideAnim = false;
		moveAnim = true;
		stopAnim = true;
		crouchslideAnim = true;
		crouchAnim = true;
		machhitAnim = false;
		stompAnim = false;
		inv_frames = 0;
		turning = false;
		hurtbounce = 0;
		hurted = false;
		mach2 = 0;
		input_buffer_jump = 8;
		targetRoom = 0;
		flash = false;
		global.key_inv = false;
		global.keyget = false;
		if instance_exists(obj_rank) // I have no idea why tf it only works with collects and not with other things
		{
		with (obj_rank)
		{
		if playerresetbuffer = 0
		global.collect = 0;
		}
		}
		else 
		global.collect = 0
		global.ammo = 0;
		global.treasure = false;
		global.combo = 0;
		if room != rank_room
		global.maxcombo = 0
		global.combotime = 0;
		global.pizzacoin = 0;
		global.roomsave = false;
		global.toppintotal = 1;
		global.hit = 0;
		in_water = false;
		key_particles = false;
		barrel = false;
		bounce = false;
		a = 0;
		idle = 0;
		attacking = false;
		slamming = false;
		superslam = 0;
		machpunchAnim = false;
		punch = false;
		machfreefall = false;
		shoot = true;
		instakillmove = false;
		windingAnim = 0;
		facestompAnim = false;
		ladderbuffer = 0;
		chainsaw = 50;
		toomuchalarm1 = 0;
		toomuchalarm2 = 0;
		throwforce = false;
		idleanim = 0;
		momemtum = false;
		cutscene = false;
		grabbing = false;
		dir = xscale;
		shotgunAnim = false;
		goingdownslope = false;
		goingupslope = false;
		fallinganimation = false;
		bombpeptimer = 100;
		slapbuffer = 0;
		slaphand = 1;
		suplexmove = false;
		suplexhavetomash = 0;
		timeuntilhpback = 300;
		anger = 0;
		angry = false;
	}
	with (obj_tv)
	{
		ComboShake = false;
		combofade = 0;
		comboendImage = 0;
		comboendSprite = spr_badcombo_boil;
		combocanFade = true;
		chooseOnecomboend = true;
		tvlength = 0;
		ds_queue_clear(global.newhudtvanim);
		alarm[1] = 1;
		staticdraw = false;
		global.hurtcounter = 0;
		global.hurtmilestone = 10;
		DrawY = 0;
		ComboY = -300;
		meter_image_index = 0;
		goo_index = 0;
		shownranka = false;
		shownrankb = false;
		shownrankc = false;
	}
	with (obj_music)
	{
		fadeoff = 0;
		audio_stop_all();
	}
	scale_xs = 1;
	scale_ys = 1;
}
