mouse_xx = floor(mouse_x/30)

mouse_yy = floor(mouse_y/30)



if global.selected_mode == 1 //If we're in edit mode

&& !position_meeting(mouse_x, mouse_y, undel)

&& !position_meeting(mouse_x, mouse_y, obj_ground)

&& !global.playing

&& mouse_check_button_released(mb_left)

{

	/* aaaaaaall this bullshit MUST be deleted later */

	global.selected_obj = 0 //Forgot to set selected object to practically null xd

	//Just to avoid bugs xd

	with(all)

	{

		image_blend = c_white

	}

	global.selected_obj = instance_position(mouse_x, mouse_y, all)

	with(global.selected_obj)

	{

		image_blend = c_lime

	}

}



if global.selected_mode == 2 /*&& mouse_y < 4592*/ && !position_meeting(mouse_x, mouse_y, undel)

&& !global.playing

//Undeleteable elements

&& mouse_x > 0

&& !position_meeting(mouse_x, mouse_y, obj_ground) {

	position_destroy(mouse_x, mouse_y)

}



if keyboard_check_released(vk_enter)

{

	global.playing = !global.playing

	if global.playing{

		audio_play_sound(global.music, 1, true)

	} else {
		scr_reset_vars()
		audio_stop_all()

	}

	hide_ui()

}



if global.dragging && !global.playing

{

	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + drag_x - mouse_x )

	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + drag_y - mouse_y )

}



if !global.playing

{

	global.spdboost = 0

	global.gravdir = 0

	with(obj_player) {trail = 0}

} else {

	global.spdboost = 1

}
/* */
///Keyboard shortcuts with a selected object



if global.selected_obj != 0 //If we've selected an object

{

	

	///MOVE

	

	if(keyboard_check(vk_shift))

	{

		///Mini movements

		if keyboard_check_released(ord("W")) {

			//If we press the 'W' key

			with(global.selected_obj) {y -= 2}

		} if keyboard_check_released(ord("S")) {

			//If we press the 'S' key

			with(global.selected_obj) {y += 2}

		} if keyboard_check_released(ord("A")) {

			//If we press the 'A' key

			with(global.selected_obj) {x -= 2}

		} if keyboard_check_released(ord("D")) {

			//If we press the 'D' key

			with(global.selected_obj) {x += 2}

		}

	} else {

		if(!keyboard_check(vk_control)) {

			if keyboard_check_released(ord("W")) {

				//If we press the 'W' key

				with(global.selected_obj) {y -= 61}

			} if keyboard_check_released(ord("S")) {

				//If we press the 'S' key

				with(global.selected_obj) {y += 61}

			} if keyboard_check_released(ord("A")) {

				//If we press the 'A' key

				with(global.selected_obj) {x -= 61}

			} if keyboard_check_released(ord("D")) {

				//If we press the 'D' key

				with(global.selected_obj) {x += 61}

			}

		}

	}

	

	///ROTATE

	if keyboard_check_released(ord("Q")) {

		with(global.selected_obj) {image_angle += 90}

	}  if keyboard_check_released(ord("E")) {

		with(global.selected_obj) {image_angle -= 90}

	}

	

	

	///Commands with CTRL

	if(keyboard_check(vk_control))

	{

		if(keyboard_check_released(ord("D"))) {

			tt = instance_create(global.selected_obj.x, global.selected_obj.y, global.selected_obj.object_index)

			tt.image_angle = global.selected_obj.image_angle //Set the cloned obj the rotation of the object to clone

			tt.image_xscale = global.selected_obj.image_xscale //Sets the image_xscale too

			tt.image_yscale = global.selected_obj.image_yscale //Sets the image_yscale too

			global.selected_obj = tt

		}

	}

}
/* */
/*  */
