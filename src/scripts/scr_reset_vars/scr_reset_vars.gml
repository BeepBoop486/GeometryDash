global.spdboost = global.levelspeed
global.gravdir = 1
global.pause = 0
global.pulse = 0
global.g2y = 0
global.ylimit = 0

if instance_exists(obj_player) {
	with(obj_player) {
		gravdir = 1
		mini=0
		
		if player == 1 {
			gravdir = -1
		}
	}
}