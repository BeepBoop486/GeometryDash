var result;
if ds_map_find_value(async_load, "id") == req
{
	if ds_map_find_value(async_load, "status") == 0
	{
		result = ds_map_find_value(async_load, "result")
		var file = file_text_open_write("leads")
		file_text_write_string(file, result)
		file_text_close(file)
		show_message("Top 100 downloaded")
		var file2 = file_text_open_read("leads")
		var yy = 389;
		while(!file_text_eof(file2))
		{
			var name, stars, diamonds, coins, userCoins, demons, cps, icon, col1, col2;
			name = file_text_read_string(file2)
			file_text_readln(file2)
			stars = file_text_read_real(file2)
			file_text_readln(file2)
			diamonds = file_text_read_real(file2)
			file_text_readln(file2)
			coins = file_text_read_real(file2)
			file_text_readln(file2)
			userCoins = file_text_read_real(file2)
			file_text_readln(file2)
			demons = file_text_read_real(file2)
			file_text_readln(file2)
			cps=file_text_read_real(file2)
			file_text_readln(file2)
			icon=file_text_read_real(file2)
			file_text_readln(file2)
			col1=file_text_read_real(file2)
			file_text_readln(file2)
			col2=file_text_read_real(file2)
			
			tt = instance_create_layer(944, yy, "Instances_2",obj_leadResult)
			tt.stars = stars
			tt.diamonds = diamonds
			tt.coins = coins
			tt.userCoins = userCoins
			tt.demons = demons
			tt.cps = cps
			tt.icon = icon
			tt.col1 = col1
			tt.col2 = col2
			tt.yy = yy
			
			yy += 224
		}
		file_text_close(file2)
	}
}