if !position_meeting(mouse_x, mouse_y, undel)
&& !position_meeting(mouse_x, mouse_y, obj_ed_obj)
&& !global.playing

//Undeleteable elements
&&!position_meeting(mouse_x, mouse_y, obj_ground2)

&& mouse_x > 0

&& !position_meeting(mouse_x, mouse_y, obj_ground) {

	position_destroy(mouse_x, mouse_y)
	global.selected_obj = noone
	with(all) {
		image_blend = c_white
	}

}