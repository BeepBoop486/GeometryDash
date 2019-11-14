var file = file_text_open_read(string(global.lvlid) + ".gde");
var version = file_text_read_real(file);
file_text_readln(file)
if version == 0 {
	global.music = file_text_read_real(file);
	file_text_readln(file)
}