
	if !position_meeting(mouse_x, mouse_y, self) 
	{
		writing = false
	} else {
		keyboard_virtual_show(kbv_type_ascii, kbv_returnkey_default, kbv_autocapitalize_none, false)
		text = ""
		keyboard_string = ""
		writing = true
	}
