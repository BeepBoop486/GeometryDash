if ds_map_find_value(async_load, "id") == req {
	var result = ds_map_find_value(async_load, "result")
	
	if result == 1 {
		scr_bwind("Cloud saving","Saving successful")
	} else {
		scr_bwind("Cloud saving","There's been an error trying to save in the cloud")
	}
}

if ds_map_find_value(async_load, "id") == amimodcheck
{
	global.amimod = ds_map_find_value(async_load, "result")
}