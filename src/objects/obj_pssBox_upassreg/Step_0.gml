if writing {
	text = keyboard_string
	if keyboard_check_pressed(vk_anykey)
	{
		if keyboard_check_pressed(vk_backspace)
		{ 
			toshows = string_copy(toshows, 1, string_length(toshows) - 1)
		} else {
			toshows += "*"
		}
	}
} else {
	text = text
}

global.regupass = text