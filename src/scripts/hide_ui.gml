if global.playing {
	//This is a very shitty way, this'll be deleted soon
	with(obj_ed_obj)
	{
		visible = false
	}
	edit_buildBtn.visible  = false
	edit_editBtn.visible   = false
	edit_deleteBtn.visible = false
	with(obj_pagination) {visible = false}
} else {
	with(obj_ed_obj)
	{
		visible = true
	}
	edit_buildBtn.visible  = true
	edit_editBtn.visible   = true
	edit_deleteBtn.visible = true
	with(obj_pagination) {visible = true}
}