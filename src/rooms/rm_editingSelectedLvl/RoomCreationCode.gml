global.negrito=0
if !file_exists("l" + string(global.editingLvl) + ".gdl")
{
	global.notexists = true
	var file = file_text_open_write("l" + string(global.editingLvl) + ".gdl")
	file_text_close(file)
} else {
	global.notexists = false
}