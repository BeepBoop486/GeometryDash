if global.playing {
	edit_buildBtn.visible  = false
	edit_editBtn.visible   = false
	edit_deleteBtn.visible = false
	obj_pagination.visible = false
	obj_ed_obj.visible = false
} else {
	edit_buildBtn.visible  = true
	edit_editBtn.visible   = true
	edit_deleteBtn.visible = true
	obj_pagination.visible = true
	obj_ed_obj.visible = true
}