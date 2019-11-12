var response = "";
if ds_map_find_value(async_load, "id") == req
{
	if ds_map_find_value(async_load, "status") == 0
	{
		response = ds_map_find_value(async_load, "result")
		if response == 1 {
			show_message("Register successfully, now you can sign in")
		} else if response == -1 {
			show_message("Unusuccessfull sign up")
		} else if response == 0 {
			show_message("The server's secret ain't right, maybe you're using an old version of this distro")
		} else if response == -2 {
			show_message("The request wasn't made properly, there's the secret left")
		} else if response == -3 {
			show_message("The request wasn't made properly")
		} else if response == -180 {
			show_message("The passwords doesn't match")
		} else if response == -181 {
			show_message("This username already exists")
		}
	}
}