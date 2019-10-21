if global.playing {
	//This is a very shitty way, this'll be deleted soon
	with(obj_ed_obj)
	{
		visible = false
	}
	edit_buildBtn.visible  = false
	edit_editBtn.visible   = false
	edit_deleteBtn.visible = false
} else {
	//This'll be bugged very very soon, this'll be deleted too xd
	//I did this 'coz i didn't want to do it in the shitty way
	with(all)
	{
		visible = true
	}
}