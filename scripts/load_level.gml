///load_level(file_name)
file = file_text_open_read(argument0)
version = file_text_read_real(file)
file_text_readln(file)
if version == 0 
{
	//If we're in the first version of the editor
	while(!file_text_eof(file))
	{
		name = file_text_read_string(file)
		index = resource_get_id(name)
		file_text_readln(file)
		instance_create(0, 0, index)
		exit;
	}
}
