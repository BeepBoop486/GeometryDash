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
		file_text_close(file2)
	}
}