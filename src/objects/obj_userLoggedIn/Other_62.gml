if ds_map_find_value(async_load, "id") == req {
	show_message_async(ds_map_find_value(async_load, "status"))
	show_message_async(ds_map_find_value(async_load, "result"))
}

if ds_map_find_value(async_load, "id") == amimodcheck
{
	global.amimod = ds_map_find_value(async_load, "result")
}