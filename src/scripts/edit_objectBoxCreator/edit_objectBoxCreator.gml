if global.selected_obj != 0 and global.selected_obj != noone
and global.selected_obj != undefined{
	if global.selected_obj.object_index == obj_ring1
	or global.selected_obj.object_index == obj_ring2
	or global.selected_obj.object_index == obj_ring3
	or global.selected_obj.object_index == obj_ring4{
		ed_edRings()
	}
}