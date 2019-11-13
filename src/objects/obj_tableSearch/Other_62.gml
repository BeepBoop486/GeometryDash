var response = "";
if ds_map_find_value(async_load, "id") == req
{
	if ds_map_find_value(async_load, "status") == 0
	{
		response = ds_map_find_value(async_load, "result")
		show_message(response)
		var file = file_text_open_from_string(response)
		var yy = 288;
		/*while(!file_text_eof(file))
		{
			tt = instance_create(320, yy, obj_lvlfound)
			tt.image_xscale = 19;
			tt.image_yscale = 3.5;
			
			yy += 224
		}*/
		file_text_close(file)
	}
}