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
}