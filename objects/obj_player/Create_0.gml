scr_initinput();
scr_getinput();
grabclimbbuffer = 0
Sjumpcan_doublejump = true;
firetrailbuffer = 0;
ResetMusic = false;
Dashpad_buffer = 0;
supertauntbuffer = 0;
supertaunteffect = -4;
supertauntcharged = false;
vertical = false;
verticaloffset = 0;
stateName = "";
global.saveroom = ds_list_create();
global.timetrial = false;
grav = 0.5;
hsp = 0;
vsp = 0;
xscale = 1;
yscale = 1;
facehurt = true;
steppy = false;
stop = false;
storedhsp = 0;
depth = -7;
movespeed = 19;
jumpstop = false;
visible = true;
state = states.titlescreen;
jumpAnim = true;
landAnim = false;
machslideAnim = false;
moveAnim = true;
stopAnim = true;
crouchslideAnim = true;
crouchAnim = true;
machhitAnim = false;
stompAnim = false;
divebomb = false;
inv_frames = 0;
gumbobpropellerlength = 100;
gumbobpropellercooldown = 200;
hurted = false;
canrebound = false;
mach2 = 0;
input_buffer_jump = 8;
player_x = x;
player_y = y;
targetRoom = 0;
flash = false;
parryid = -4;
machtumblestop = 0
global.key_inv = false;
global.mallowfollow = false;
global.crackfollow = false;
global.chocofollow = false;
global.wormfollow = false;
global.candyfollow = false;
global.secretfound1 = false;
global.secretfound2 = false;
global.secretfound3 = false;
global.keyget = false;
global.collect = 0;
global.ammo = 0;
global.treasure = false;
global.combo = 0;
global.maxcombo = 0;
global.roomsave = false;
global.combotime = 0;
global.pizzacoin = 0;
global.toppintotal = 1;
global.hit = 0;
global.combofreeze = 0;
global.baddieroom = ds_list_create();
global.escaperoom = ds_list_create();
global.combodropped = false;
key_particles = false;
barrel = false;
bounce = false;
//a = 0;
idle = 0;
attacking = false;
slamming = false;
superslam = 0;
grounded = true;
grinding = false;
machpunchAnim = false;
punch = false;
machfreefall = false;
shoot = true;
instakillmove = false;
windingAnim = 0;
facestompAnim = false;
ladderbuffer = 0;
toomuchalarm1 = 0;
toomuchalarm2 = 0;
bushdetection = false;
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
suplexmove = false;
suplexhavetomash = 0;
breakdanceammo = 0;
anger = 0;
angry = false;
character = characters.pizzelle;
baddiegrabbedID = -4;
scr_characterspr();
paletteselect = 1;
global.panic = false;
colorchange = false;
treasure_x = 0;
treasure_y = 0;
treasure_room = 0;
wallspeed = 0;
tauntstoredstate = states.normal;
tauntstoredmovespeed = 6;
tauntstoredsprite = spr_swed;
taunttimer = 20;
global.golfhit = 0;
global.funmode = false;
swingdingbuffer = 0;
lastmove = 0;
hurtbounce = 0;
targetDoor = "A";
roomstartx = xstart;
roomstarty = ystart;
hallway = 0;
box = 0;
scr_pal_swap_init_system(shd_pal_swapper);
global.cane = false;
jumpspeed = 0;
freefallsmash = 0;
drill = true;
bouncespeed = 0;
bounced = false;
groundedcot = false;
inhaling = false;
freefallsmash = 0;
draw_angle = 0;
doublejumped = false;
charged = false;
substate = states.normal;
mach4mode = false
crouchslipbuffer = 0
scale_xs = 1;
scale_ys = 1;