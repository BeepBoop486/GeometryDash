global.spdboost = global.levelspeed
global.gravdir = 1
global.pause = 0
global.pulse = 0

if instance_exists(obj_player) {
	with(obj_player) {
		gravdir = 1
		mini=0
	}
}