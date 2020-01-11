var sel_group;
if global.selected_obj != 0 and global.selected_obj != noone
and global.selected_obj != undefined
{
	sel_group = global.selected_obj.group

	toset =get_string("Enter the group for the current selected object: ", string(sel_group))

	global.selected_obj.group = toset
}