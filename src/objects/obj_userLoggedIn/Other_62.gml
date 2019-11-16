if ds_map_find_value(async_load, "id") == amimodcheck
{
	//show_message(ds_map_find_value(async_load, "result"))
	global.amimod = ds_map_find_value(async_load, "result")
}