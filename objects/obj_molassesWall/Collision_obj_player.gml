if (obj_player.wallspeed > 0)
{
	obj_player.wallspeed -= obj_player.wallspeed / 24
	instance_create(obj_player.x, obj_player.y, obj_molassesparticle)
}
if (obj_player.vsp != 0)
	instance_create(obj_player.x, obj_player.y, obj_molassesparticle)