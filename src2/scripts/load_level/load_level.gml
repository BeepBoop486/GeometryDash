/// @description load_level(filename)
/// @param filename
var filename = argument0;
var file = file_text_open_read(filename)

var version = file_text_read_real(filename)
file_text_readln(filename)

if version == 0 {
	
}