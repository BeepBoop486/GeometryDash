var response = "";
if ds_map_find_value(async_load, "id") == requiem
{
	if ds_map_find_value(async_load, "status") == 0
	{
		response = ds_map_find_value(async_load, "result")
		if response == 1 {
			show_message("Sign in successfully")
		} else if response == -91
		{
			show_message("Wrong password")
		} else if response == -90
		{
			show_message("This username doesn't exists")
		} else if response == -404
		{
			show_message("There's an error with the Database")
		} else if response == -3
		{
			show_message("Passed the incorrect arguments number")
		} else if response == 0
		{
			show_message("Wrong secret")
		} else if response == -2
		{
			show_message("No secret was passed")
		}
	}
	show_message("Right obj")
}