/// @description load_level(filename)
/// @param filename
var filename = argument0;
var file = file_text_open_read(filename)

var version = file_text_read_real(file)
file_text_readln(file)

if version == 0 {
	global.music = file_text_read_real(file)
	file_text_readln(file)
	while(!file_text_eof(file)) {
		var objid = file_text_read_string(file)
		file_text_readln(file)
		objid = asset_get_index(objid)
		
		
	}
}