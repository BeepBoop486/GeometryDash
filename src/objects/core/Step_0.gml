if global.solidspage >= global.maxsolidspage
{
	global.solidspage = 0
} if global.solidspage <= -1 {
	global.solidspage = global.maxsolidspage-1
}

if global.playing
{
	if instance_exists(obj_player) {
		obj_camera.tofol = obj_player
	} else if instance_exists(obj_ship)
	{
		obj_camera.tofol = obj_ship
	} else if instance_exists(obj_ball)
	{
		obj_camera.tofol = obj_ball
	} else if instance_exists(obj_ufo)
	{
		obj_camera.tofol = obj_ufo
	}
	
	instance_activate_all()
	instance_deactivate_region(__view_get(e__VW.XView, 0) - 256, __view_get(e__VW.YView, 0) - 256, __view_get(e__VW.WView, 0) + 256, __view_get(e__VW.HView, 0) + 256, false, true)
	instance_activate_object(obj_ground)
	instance_activate_object(obj_ground2)
	instance_activate_object(obj_player)
	instance_activate_object(obj_camera)
	
} else {
	instance_activate_all()
}



if global.selected_mode == 2 /*&& mouse_y < 4592*/ && !position_meeting(mouse_x, mouse_y, undel)

&& !global.playing

//Undeleteable elements
&&!position_meeting(mouse_x, mouse_y, obj_ground2)

&& mouse_x > 0

&& !position_meeting(mouse_x, mouse_y, obj_ground) {

	position_destroy(mouse_x, mouse_y)

}



if keyboard_check_released(vk_enter)

{

	stop_playing()

}

if !global.playing

{

	//global.spdboost = 0

	global.gravdir = 0

	with(obj_player) {trail = 0}

} else {

	//global.spdboost = 1

}
/* */
///Keyboard shortcuts with a selected object



if global.selected_obj != 0 && global.selected_obj != undefined && global.selected_obj != noone
//If we've selected an object

{
	
	//Utils
	if(keyboard_check_pressed(vk_delete)) {
		instance_destroy(global.selected_obj)
		global.selected_obj = noone
	}

	

	///MOVE

	

	if(keyboard_check(vk_shift))

	{

		///Mini movements

		if keyboard_check_pressed(ord("W")) {

			//If we press the 'W' key

			with(global.selected_obj) {y -= 2}

		} if keyboard_check_pressed(ord("S")) {

			//If we press the 'S' key

			with(global.selected_obj) {y += 2}

		} if keyboard_check_pressed(ord("A")) {

			//If we press the 'A' key

			with(global.selected_obj) {x -= 2}

		} if keyboard_check_pressed(ord("D")) {

			//If we press the 'D' key

			with(global.selected_obj) {x += 2}

		}

	} else {

		if(!keyboard_check(vk_control)) {

			if keyboard_check_pressed(ord("W")) {

				//If we press the 'W' key

				with(global.selected_obj) {y -= 61}

			} if keyboard_check_pressed(ord("S")) {

				//If we press the 'S' key

				with(global.selected_obj) {y += 61}

			} if keyboard_check_pressed(ord("A")) {

				//If we press the 'A' key

				with(global.selected_obj) {x -= 61}

			} if keyboard_check_pressed(ord("D")) {

				//If we press the 'D' key

				with(global.selected_obj) {x += 61}

			}

		}

	}

	

	///ROTATE

	if keyboard_check_pressed(ord("Q")) {

		with(global.selected_obj) {image_angle += 90}

	}  if keyboard_check_pressed(ord("E")) {

		with(global.selected_obj) {image_angle -= 90}

	}

	

	

	///Commands with CTRL

	if(keyboard_check(vk_control))

	{

		if(keyboard_check_pressed(ord("D")) && global.selected_obj != undefined && global.selected_obj != noone
			&& global.selected_obj != 0 && global.selected_obj.object_index != undefined) {

			tt = instance_create(global.selected_obj.x, global.selected_obj.y, global.selected_obj.object_index)

			tt.image_angle = global.selected_obj.image_angle //Set the cloned obj the rotation of the object to clone

			tt.image_xscale = global.selected_obj.image_xscale //Sets the image_xscale too

			tt.image_yscale = global.selected_obj.image_yscale //Sets the image_yscale too
			
			global.selected_obj.image_blend = c_white
			
			tt.image_blend = c_aqua
			
			if global.selected_obj.object_index == obj_ring1 or global.selected_obj.object_index == obj_ring2
			or global.selected_obj.object_index == obj_ring3 or global.selected_obj.object_index == obj_ring4{
				tt.reverse = global.selected_obj.reverse
			}

			global.selected_obj = tt

		}

	}

}

if dragging
{
	if !instance_exists(BoxOpts) && !instance_exists(ed_edRingsobj)
	&& !instance_exists(BgSelector) && !instance_exists(GSelector)
	&& !global.playing
	{
		__view_set(e__VW.XView, 0, (__view_get(e__VW.XView, 0) + drag_x - mouse_x))
		__view_set(e__VW.YView, 0, (__view_get(e__VW.YView, 0) + drag_y - mouse_y))
	}
}

if keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_backspace)
{
	if !global.playing {
		audio_stop_all()
		instance_activate_all()
		save_level(0, "l" + string(global.editingLvl) + ".gdl")
		room_goto(rm_editingSelectedLvl)
	}
}