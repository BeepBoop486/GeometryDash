global.spdboost = global.levelspeed
global.gravdir = 1
global.pause = 0
global.pulse = 0
global.g2y = 0
//global.ylimit = 0

if instance_exists(obj_player) {
	with(obj_player) {
		gravdir = 1
		mini=0
		
		if player == 1 {
			gravdir = -1
		}
	}
} else if instance_exists(obj_ship) {
	with(obj_ship) {
		gravdir = 1
		mini = 0
		
		if player == 1 {
			gravdir = -1
		}
	}
} else if instance_exists(obj_ball) {
	with(obj_ball) {
		gravdir = 1
		mini = 0
		
		if player == 1 {
			gravdir = -1
		}
	}
} else if instance_exists(obj_ufo) {
	with(obj_ufo) {
		gravdir = 1
		mini = 0
		
		if player == 1 {
			gravdir = - 1
		}
	}
} else if instance_exists(obj_wave) {
	with(obj_wave) {
		gravdir = 1
		mini = 0
		
		if player == 1 {
			gravdir = -1
		}
	}
} else if instance_exists(obj_spider) {
	with(obj_spider) {
		gravdir = 1
		mini = 0
		
		if player == 1 {
			gravdir = -1
		}
	}
}