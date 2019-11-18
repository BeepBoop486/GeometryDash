if !instance_exists(BoxOpts) {
		global.playing = !global.playing
	}

		if instance_exists(obj_player) && !global.playing {
			instance_destroy(obj_player)
			instance_create(0,0,obj_restart)
		}

	if global.playing{

		audio_play_sound(global.music, 1, true)

	} else {
		scr_reset_vars()
		audio_stop_all()

	}

	hide_ui()