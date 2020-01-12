var response = "";
if ds_map_find_value(async_load, "id") == requiem
{
	if ds_map_find_value(async_load, "status") == 0
	{
		response = ds_map_find_value(async_load, "result")
		if response == 1 {
			global.loggedin = true
			global.loggedname = global.logingname
			global.loggedpass = global.logingpass
			show_message_async("Sign in successfully")
		} else if response == -91
		{
			show_message_async("Wrong password")
		} else if response == -90
		{
			show_message_async("This username doesn't exists")
		} else if response == -404
		{
			show_message_async("There's an error with the Database")
		} else if response == -3
		{
			show_message_async("Passed the incorrect arguments number")
		} else if response == 0
		{
			show_message_async("Wrong secret")
		} else if response == -2
		{
			show_message_async("No secret was passed")
		} else if response == -92
		{
			show_message_async("The username can't be empty")
		} else if response == -93
		{
			show_message_async("The password can't be empty")
		}
	}
	//show_message("Right obj")
}