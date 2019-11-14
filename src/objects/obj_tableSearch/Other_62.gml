var response = "";
if ds_map_find_value(async_load, "id") == req
{
	if ds_map_find_value(async_load, "status") == 0
	{
		response = ds_map_find_value(async_load, "result")
		
		var tosave = file_text_open_write("dlevels");
		file_text_write_string(tosave, response)
		file_text_close(tosave)
		var file = file_text_open_read("dlevels");
		var yy = 368;
		while(!file_text_eof(file))
		{
			
			tt = instance_create_layer(944, yy, "Instances", obj_lvlfound)
			
			tt.lvlname = file_text_read_string(file)
			file_text_readln(file)
			tt.lvlid = file_text_read_real(file)
			file_text_readln(file)
			tt.rate = file_text_read_real(file)
			file_text_readln(file)
			tt.stars = file_text_read_real(file)
			file_text_readln(file)
			tt.downloads = file_text_read_real(file)
			file_text_readln(file)
			tt.likes = file_text_read_real(file)
			file_text_readln(file)
			tt.dislikes = file_text_read_real(file)
			file_text_readln(file)
			tt.isepic = file_text_read_real(file)
			file_text_readln(file)
			tt.isfeatured = file_text_read_real(file)
			file_text_readln(file)
			tt.isdemon = file_text_read_real(file)
			file_text_readln(file)
			tt.uploadern = file_text_read_string(file)
			file_text_readln(file)
			tt.yy = yy
			
			yy += 224
		}
		file_text_close(file)
	}
}