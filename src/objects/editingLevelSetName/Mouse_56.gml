	if !position_meeting(mouse_x, mouse_y, self) 
	{
		//If we click outside this textbox
		writing = false //We stop writing
		scr_local_levelUpdateName() //Then, we call this script to make this textbox useful tho
	} else {
		keyboard_virtual_show(kbv_type_ascii, kbv_returnkey_go, kbv_autocapitalize_none, false)
		keyboard_string = ""
		writing = true
	}