if downx == mouse_x and downy == mouse_y and timedown < 1
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
		boj = instance_create(mouse_x, mouse_y, global.toput) //Bugs fixed
		with(boj) move_snap(30.5,30.5)
		if boj.x > global.wallx {
			global.wallx = boj.x
		}
	}
}
//show_message(timedown)
timedown=0
if dragging {
	dragging = false
}