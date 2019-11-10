if global.playing {

	if !place_meeting(x, y+gravdir*2, obj_wall)

	{

		angle -= 6

	} if angle < -450 {

		angle = -90

	}

	

	if place_meeting(x, y+gravdir*2, obj_wall)

	{

		if angle > -450 and angle < -270

		{

			reset_angle(-360)

		} else if angle > -360 and angle < -180

		{

			reset_angle(-270)

		} else if angle > -270 and angle < -90

		{

			reset_angle(-180)

		} else if angle > -180 and angle < 0

		{

			reset_angle(-90)

		}

	}

	

	if angle <= -360 

	{

		angle = 0

	}



	draw_sprite_ext(sprite_index+1, global.cube, x, y, image_xscale, image_yscale, (angle*gravdir)+angleplus, col2, image_alpha)

	draw_sprite_ext(sprite_index, global.cube, x, y, image_xscale, image_yscale, (angle*gravdir)+angleplus, col1, image_alpha)

} else {

	draw_sprite(sprite_index, 0, x, y)

}
