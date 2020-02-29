if keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_backspace) {
	audio_stop_all()
	room_goto_previous()
}