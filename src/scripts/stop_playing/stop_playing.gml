if !instance_exists(BoxOpts) {
		global.playing = !global.playing
	}

		with(obj_player) {
			if player == 1 {
				instance_destroy()
			}
		}

	if global.playing{

		audio_play_sound(global.music, 1, true)

	} else {
		scr_reset_vars()
		audio_stop_all()

	}

	hide_ui()