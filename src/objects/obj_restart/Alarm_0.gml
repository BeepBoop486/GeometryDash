//instance_create(-182, obj_ground.y-30, obj_player)

	if instance_exists(obj_player) {
		instance_destroy(obj_player)
		instance_create(-182, obj_ground.y-30, obj_player)
	} else {
		instance_create(-182, obj_ground.y-30, obj_player)
	}

obj_camera.tofol = obj_player

if global.playing && !audio_is_playing(global.music) {

	audio_play_sound(global.music, 1, true)

}
