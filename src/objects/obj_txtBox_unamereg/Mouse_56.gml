if os_type == os_windows {
	if !position_meeting(mouse_x, mouse_y, self) 
	{
		writing = false
	} else {
		text = ""
		keyboard_string = ""
		writing = true
	}
} else {
	text = get_string_async("Your name", "")
}