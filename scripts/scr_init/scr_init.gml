// macros
#macro IS_DEBUG (os_get_config() == "Debug")
// create a seed
randomize();
global.PAUSEfadeoff = 0;
global.minesProgress = false;
global.GMLIVE_roomstart = false;
global.GMLIVE_realroom = -4;
global.cutsceneManager = -4;
global.secretpanic = false;
global.combomode = false;
global.font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.0123456789:", 1, 0);
global.smallfont = font_add_sprite_ext(spr_smallfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-", 1, 0);
global.timerfont = font_add_sprite_ext(spr_timerfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-:", 1, 0)
global.creditsfont = font_add_sprite_ext(spr_creditsfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 1, 0);
global.combofont = font_add_sprite_ext(spr_fontcombo, "1234567890", 1, 0);
global.collectfont = font_add_sprite_ext(spr_fontcollect, "0123456789", 1, 0);
global.resultsfont = font_add_sprite_ext(spr_resultsfont, "0123456789", 1, 0);
global.combofontresults = font_add_sprite_ext(spr_combofontresults, "0123456789", 1, -20);
global.numbers = font_add_sprite_ext(spr_numbers, "0123456789.:", 1, 0)
global.lapfont = font_add_sprite_ext(spr_fontlappingnumbers, "1234567890", 1, 0);
global.tutorialfont = font_add_sprite_ext(spr_tutorialfont, "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz!¡,.:0123456789'?¿-áäãàâæéèêëíîïóöõôúùûüÿŸÁÄÃÀÂÉÈÊËÍÎÏÓÖÕÔÚÙÛÜÇç", true, 2);
global.tvfont = font_add_sprite_ext(spr_tvfont, "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz.:!0123456789?'\"ÁÄÃÀÂÉÈÊËÍÎÏÓÖÕÔÚÙÛÜáäãàâéèêëíîïóöõôúùûüÇç_-[]▼()&#风雨廊桥전태양*яиБжидГзвбнль", true, 2);
global.shellactivate = false;
global.showcollisions = false;
global.debugmode = false;
global.fartcounter = 0;
global.parallaxbg_surface = -4;
global.ParallaxMap = ds_map_create();
scr_default_parallax(true);
global.FollowerList = ds_list_create();
global.mallowfollow = false;
global.crackfollow = false;
global.chocofollow = false;
global.wormfollow = false;
global.candyfollow = false;
global.janitor = false;
global.lapjanitor = false;
global.lapcutscenedone = false;
global.playtimermiliseconds = 0
global.playtimerseconds = 0
global.playtimerminutes = 0
global.playtimerhour = 0
global.switchblock = true;
global.levelname = "placeholder";
global.combodropped = false;
ini_open("optionData.ini");
global.fullscreen = ini_read_real("Settings", "fullscrn", 0);
global.selectedResolution = ini_read_real("Settings", "resolution", 1);
global.smoothcam = ini_read_real("Settings", "smthcam", 1);
global.hitstunEnabled = ini_read_real("Settings", "hitstun", 1);
global.screentilt = ini_read_real("Settings", "scrntilt", 1);
global.playerrotate = ini_read_real("Settings", "playrot", 1);
global.musicVolume = ini_read_real("Settings", "musicvol", 1);
global.soundVolume = ini_read_real("Settings", "soundvol", 1);
global.masterVolume = ini_read_real("Settings", "mastervol", 1);
global.invtv = ini_read_real("Settings", "invtv", 0);
global.inflap = ini_read_real("Settings", "inflap", 0);
global.heatmeter = ini_read_real("Settings", "heatmeter", 0);
ini_close();
audio_master_gain(global.masterVolume);
global.targetCamX = 0;
global.targetCamY = 0;
global.laps = 0
global.secretsfound = 0;
global.lap = 0
global.treasurefound = 0
switch (global.selectedResolution)
{
	case 0:
		window_set_size(480, 260);
		break;
	case 1:
		window_set_size(960, 540);
		break;
	case 2:
		window_set_size(1280, 720);
		break;
}
window_set_fullscreen(global.fullscreen);
