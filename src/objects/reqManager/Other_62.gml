var response = "", response2 = "", response3 = "", response4 = "", response5 = "";

if ds_map_find_value(async_load, "id") == req {
	if ds_map_find_value(async_load, "status") == 0 {
		response = ds_map_find_value(async_load, "result");
		//show_message(response)
	}
}

if ds_map_find_value(async_load, "id") == req2
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
			show_message_async(ds_map_find_value(async_load, "status"))
		}
	}
} if ds_map_find_value(async_load, "id") == reqLikes {
	if ds_map_find_value(async_load, "status") == 0 {
		response3 = ds_map_find_value(async_load, "result")
		global.lvllikes = response3
	}
} if ds_map_find_value(async_load, "id") == req4 {
	if ds_map_find_value(async_load, "status") == 0 {
		response4 = ds_map_find_value(async_load, "result")
		if response4 == -1 {
			obj_likeBtn.image_blend = c_gray
		}
	}
} if ds_map_find_value(async_load, "id") == req5 {
	if ds_map_find_value(async_load, "status") == 0 {
		response5 = ds_map_find_value(async_load, "result")
		show_message(response5)
		if response5 == 1 {
			obj_likeBtn.image_blend = c_gray
		} else if response5 == -1 {
			obj_likeBtn.image_blend = c_gray
		}
	}
}