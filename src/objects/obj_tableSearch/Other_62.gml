var response = "";
if ds_map_find_value(async_load, "id") == req
{
	if ds_map_find_value(async_load, "status") == 0
	{
		response = ds_map_find_value(async_load, "result")
		show_message(response)
		var tosave = file_text_open_write("dlevels");
		file_text_write_string(tosave, response)
		file_text_close(tosave)
		var file = file_text_open_read("dlevels");
		var yy = 288;
		while(!file_text_eof(file))
		{
			tt = instance_create_layer(320, yy, "Instances", obj_lvlfound)
			tt.image_xscale = 19;
			tt.image_yscale = 3.5;
			
			for(var i = 0; i < 10; i++) {
				file_text_readln(file)
			}
			
			yy += 224
		}
	}
}