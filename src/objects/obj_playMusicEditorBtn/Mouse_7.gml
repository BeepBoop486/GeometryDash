global.playingm = !global.playingm


if global.playingm {
	var _secs;
	_secs = (__view_get(e__VW.XView, 0) / 60)
	audio_sound_set_track_position(global.music, _secs)
	audio_play_sound(global.music, 1, 0)
} else {
	audio_stop_all()
}