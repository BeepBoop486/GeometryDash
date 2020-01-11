if global.selected_obj != noone and global.selected_obj != 0
{
	if instance_exists(global.selected_obj) {
		instance_destroy(global.selected_obj)
		global.selected_obj = noone
	}
}