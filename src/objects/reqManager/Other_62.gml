var response = "", response2 = "";
if ds_map_find_value(async_load, "id") == req
{
	if ds_map_find_value(async_load, "status") == 0
	{
		response = ds_map_find_value(async_load, "result")
	}
} if ds_map_find_value(async_load, "id") == req2
{
	if ds_map_find_value(async_load, "status") == 0
	{
		response2 = ds_map_find_value(async_load, "result")
		global.downloads = response2
	}
} if ds_map_find_value(async_load, "id") == req3
{
	if ds_map_find_value(async_load, "status") == 0 {
		if !file_exists( string(global.lvlid) + ".gdl")
		{
			/*file = file_text_open_write(string(global.lvlid) + ".gde")
			file_text_write_string(file, ds_map_find_value(async_load, "result"))
			file_text_close(file)*/
			show_message(ds_map_find_value(async_load, "status"))
		}
	}
}