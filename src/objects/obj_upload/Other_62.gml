var response = "";

	if ds_map_find_value(async_load, "id") == req
	{
		if ds_map_find_value(async_load, "status") == 0
		{
			response = ds_map_find_value(async_load, "result")
			if response == 1 {
				scr_bwind("Success","Level upload successfull")
			} else if response == -3 
			{
				scr_bwind("Error","Passed the wrong arguments number")
			} else if response == 0
			{
				scr_bwind("Error", "Wrong secret")
			} else if response == -2
			{
				scr_bwind("Error","No secret was passed")
			} else {
				scr_bwind("Level upload",response)
			}
			
		}
	}