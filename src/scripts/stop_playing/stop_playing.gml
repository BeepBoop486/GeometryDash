if !instance_exists(BoxOpts) {
	global.playing = !global.playing
}
global.ylimit = 4076
if instance_exists(obj_player) && !global.playing {
			instance_destroy(obj_player)
			instance_create(0,0,obj_restart)
}

if global.playing{
	audio_play_sound(global.music, 1, true)
	
	if global.levelveh == 1 {
		with(obj_player) {
			scr_transform(obj_ship)
		}
	} else if global.levelveh == 2 {
		with(obj_player) {
			scr_transform(obj_ball)
		}
	} else if global.levelveh == 3 {
		with(obj_player) {
			scr_transform(obj_ufo)
		}
	} else if global.levelveh == 4 {
		with(obj_player) {
			scr_transform(obj_wave)
		}
	} else if global.levelveh == 5 {
		with(obj_player) {
			scr_transform(obj_robot)
		}
	} else if global.levelveh == 6 {
		with(obj_player) {
			scr_transform(obj_spider)
		}
	}
} else {
	scr_reset_vars()
	audio_stop_all()
}

hide_ui()