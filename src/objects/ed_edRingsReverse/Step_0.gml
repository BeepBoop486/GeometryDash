if global.selected_obj != 0 and global.selected_obj != noone
and global.selected_obj != undefined {
	
	var __obj = global.selected_obj.object_index

	if __obj == obj_ring1
	or __obj == obj_ring2
	or __obj == obj_ring3
	or __obj == obj_ring4
	or __obj == obj_path1
	or __obj == obj_path2
	or __obj == obj_path3
	or __obj == obj_path4
	
	or __obj == obj_portal1
	or __obj == obj_portal2{
		image_index = global.selected_obj.reverse
	}
}