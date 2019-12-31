if global.selected_obj != 0 and global.selected_obj != noone
and global.selected_obj != undefined && 
global.selected_obj.object_index == obj_ring1 or
global.selected_obj.object_index == obj_ring2 or
global.selected_obj.object_index == obj_ring3 or
global.selected_obj.object_index == obj_ring4 or
global.selected_obj.object_index == obj_path1 or
global.selected_obj.object_index == obj_path2 or
global.selected_obj.object_index == obj_path3 or
global.selected_obj.object_index == obj_path4
{
	image_index = global.selected_obj.reverse
}