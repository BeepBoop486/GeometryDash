global.playingm = !global.playingm


if global.playingm {
	var _secs, snd;
	_secs = ((__view_get(e__VW.XView, 0) / 60) / 30)
	snd = audio_play_sound(global.music, 0, false)
	audio_sound_set_track_position(snd, _secs)
} else {
	audio_stop_all()
}