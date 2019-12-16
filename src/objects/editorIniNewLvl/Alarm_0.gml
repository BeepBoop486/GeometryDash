if !file_exists("llevels")
{
	var file = file_text_open_write("llevels")
	global.editingLvl = 0;
	file_text_write_real(file, 0)
	file_text_writeln(file)
	file_text_write_string(file, "Unnamed 0")
	file_text_close(file)
	room_goto_next()
} else {
	var file = file_text_open_read("llevels")
	var lstId = file_text_read_real(file)
	file_text_close(file)
	var file = file_text_open_write("llevels")
	var cnt = get_level_cnt("llevels")
	global.editingLvl = lstId + 1;
	file_text_write_real(file, global.editingLvl)
	file_text_writeln(file)
	file_text_write_string(file, "Unnamed " + string(global.editingLvl))
	file_text_writeln(file)
	global.editingName = "Unnamed " + string(global.editingLvl)
	file_text_write_string(file, cnt)
	file_text_writeln(file)
	file_text_close(file)
	room_goto_next()
}