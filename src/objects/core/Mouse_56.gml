if downx == mouse_x and downy == mouse_y and timedown < 1.5
{
	//Build
	if !position_meeting(mouse_x, mouse_y, obj_ed_obj)
	&& !position_meeting(mouse_x, mouse_y, undel)
	&& !position_meeting(mouse_x, mouse_y, obj_ground)
	&& !position_meeting(mouse_x, mouse_y, obj_ground2)//You can't put an object upon "undel" child objects
	&& global.toput != noone /*& mouse_y < 4592*/
	&& global.toput != obj_ed_obj //If the selected object isn't a GUI element (This'll be a lot of
	&& !global.playing
	&& !instance_exists(BoxOpts)
	&& mouse_x > 0
	&& global.selected_mode = 0 // If we're in build mode
	{
		boj = instance_create_depth(mouse_x, mouse_y, 0, global.toput) //Bugs fixed
		with(boj) move_snap(30.5,30.5)
		if boj.x > global.wallx {
			global.wallx = boj.x
		}
	}
	
	//Edit
	if global.selected_mode == 1 //If we're in edit mode
	&& !position_meeting(mouse_x, mouse_y, undel)
	&& !position_meeting(mouse_x, mouse_y, obj_ground)
	&& !position_meeting(mouse_x, mouse_y, BoxOpts)
	&& !position_meeting(mouse_x, mouse_y, obj_ground2)
	&& !global.playing
	&& mouse_x > 0
	{

		global.selected_obj = 0

		with(all)
		{
			image_blend = c_white
		}

		global.selected_obj = instance_position(mouse_x, mouse_y, all)

		with(global.selected_obj)
		{
			image_blend = c_aqua
		}

	}
}
//show_message(timedown)
timedown=0
if dragging {
	dragging = false
}