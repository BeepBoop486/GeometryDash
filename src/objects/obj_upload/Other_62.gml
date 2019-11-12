var response = "";

	if ds_map_find_value(async_load, "id") == req
	{
		if ds_map_find_value(async_load, "status") == 0
		{
			response = ds_map_find_value(async_load, "result")
			if response == 1 {
				show_message("Level upload successfull")
			} else if response == -3 
			{
				show_message("Passed the wrong arguments number")
			} else if response == 0
			{
				show_message("Wrong secret")
			} else if response == -2
			{
				show_message("No secret was passed")
			}
		}
	}