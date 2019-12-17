writing = false

if variable_global_exists("editingName") {
	text = global.editingName
	global.toputname = global.editingName
} else {
	text = "Unnamed"
	global.toputname = ""
}