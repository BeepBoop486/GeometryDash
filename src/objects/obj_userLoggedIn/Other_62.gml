if ds_map_find_value(async_load, "id") == req {
	var result = ds_map_find_value(async_load, "result")
	
	if result == 1 {
		scr_bwind("Cloud saving","Saving successful")
	} else {
		scr_bwind("Cloud saving",result)
	}
}

if ds_map_find_value(async_load, "id") == amimodcheck
{
	global.amimod = ds_map_find_value(async_load, "result")
}