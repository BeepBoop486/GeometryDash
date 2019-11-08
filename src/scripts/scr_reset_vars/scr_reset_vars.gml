global.spdboost = global.levelspeed
global.gravdir = 1
global.pause = 0
global.pulse = 0

if instance_exists(obj_player) {
	with(obj_player) {
		gravdir = 1
	}
} else if instance_exists(obj_ship)
{
	instance_destroy(obj_ship)
	instance_create(0,0,obj_player)
}