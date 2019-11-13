var response = "";
if ds_map_find_value(async_load, "id") == req
{
	if ds_map_find_value(async_load, "status") == 0
	{
		response = ds_map_find_value(async_load, "result")
		var file = file_text_open_from_string(response)
		while(!file_text_eof(file))
		{
		}
	}
}