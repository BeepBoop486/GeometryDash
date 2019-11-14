instance_create(-60,4590, obj_player)
global.playing = true
audio_play_sound(global.music, 1, 1)
obj_camera.tofol = obj_player
instance_destroy()