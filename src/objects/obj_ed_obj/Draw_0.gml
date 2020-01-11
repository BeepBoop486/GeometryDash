

	if global.selected_mode == 0 {

		draw_sprite(spr_obj, 0, x, y)

		

		if global.intab == 0 {

			if global.solidspage == 0 {

				obj_spr = object_get_sprite(obj_solid)

				obj_spr_w = sprite_get_width(obj_spr)

				obj_spr_h = sprite_get_height(obj_spr)

				scale = 1

				

				if obj_spr_w == 61 && obj_spr_h == 61 {

					scale = .5

				}

			} else if global.solidspage == 1 {

				obj_spr = object_get_sprite(obj_solid1)

				obj_spr_w = sprite_get_width(obj_spr)

				obj_spr_h = sprite_get_height(obj_spr)

				scale = 1

				

				if obj_spr_w == 61 && obj_spr_h == 61 {

					scale = .5

				}

			} else if global.solidspage == 2 {

				obj_spr = object_get_sprite(obj_solid2)

				obj_spr_w = sprite_get_width(obj_spr)

				obj_spr_h = sprite_get_height(obj_spr)

				scale = 1

				

				if obj_spr_w == 61 && obj_spr_h == 61 {

					scale = .5

				}
			} else if global.solidspage == 3 {

				obj_spr = object_get_sprite(obj_solid3)

				obj_spr_w = sprite_get_width(obj_spr)

				obj_spr_h = sprite_get_height(obj_spr)

				scale = 1

				

				if obj_spr_w == 61 && obj_spr_h == 61 {

					scale = .5

				}
			}

		} if global.intab == 1 {

			if global.spikepage == 0 {

				obj_spr = object_get_sprite(obj_spike)

				obj_spr_w = sprite_get_width(obj_spr)

				obj_spr_h = sprite_get_height(obj_spr)

				scale = 1

				

				if obj_spr_w == 61 && obj_spr_h == 61 {

					scale = .5

				}

			} else if global.spikepage == 1 {

				obj_spr = object_get_sprite(obj_spikes1)

				obj_spr_w = sprite_get_width(obj_spr)

				obj_spr_h = sprite_get_height(obj_spr)

				scale = 1

				

				if obj_spr_w == 61 && obj_spr_h == 61 {

					scale = .5

				}

			}

		} if global.intab == 2 {

			if global.orbspage == 0 {

				obj_spr = object_get_sprite(obj_orbs)

				obj_spr_w = sprite_get_width(obj_spr)

				obj_spr_h = sprite_get_height(obj_spr)

				scale = 1

				

				if obj_spr_w == 61 && obj_spr_h == 61 {

					scale = .5

				} else {
					scale = .3
				}

			} else if global.orbspage == 1 {

				obj_spr = object_get_sprite(obj_orbs1)

				obj_spr_w = sprite_get_width(obj_spr)

				obj_spr_h = sprite_get_height(obj_spr)

				scale = 1

				

				if obj_spr_w == 61 && obj_spr_h == 61 {

					scale = .5

				} else {
					scale = .3
				}

			}

		} if global.intab == 3 {
			if global.platformspage == 0 {
				obj_spr = object_get_sprite(obj_platform)
				obj_spr_w = sprite_get_width(obj_spr)
				obj_spr_h = sprite_get_height(obj_spr)
				scale = 1
				if obj_spr_w == 61 {
					scale = .5
				}
			}
		} if global.intab == 4 {
			if global.outlinespage == 0 {
				obj_spr = object_get_sprite(obj_outline)
				obj_spr_w = sprite_get_width(obj_spr)
				obj_spr_h = sprite_get_height(obj_spr)
				scale = 1
				if obj_spr_w == 61 {
					scale = .5
				}
			}
		} if global.intab == 5 {
			if global.slopespage == 0 {
				obj_spr = object_get_sprite(obj_slope)
				obj_spr_w = sprite_get_width(obj_spr)
				obj_spr_h = sprite_get_height(obj_spr)
				scale = 1
				if obj_spr_w == 61 {
					scale = .5
				}
			}
		}

		

		draw_sprite_ext(obj_spr, 0, x, y, scale, scale, 0, c_white, 100)

	} else if global.selected_mode == 1 //if we're in edit mode

	{

		draw_sprite(spr_editbtn, 0, x, y)

		

		if pos == 1 {
			draw_sprite_ext(edit_leftBtn2_001, 0, x, y, .7, .7, 0, c_white, 100)
		} else if pos == 2 {
			draw_sprite_ext(edit_rightBtn2_001, 0, x, y, .7, .7, 0, c_white, 100)
		} else if pos == 3 {
			draw_sprite_ext(edit_upBtn2_001, 0, x, y, .7, .7, 0, c_white, 100)
		} else if pos == 4 {
			draw_sprite_ext(edit_downBtn2_001, 0, x, y, .7, .7, 0, c_white, 100)
		}
		
		else if pos == 5 {
			draw_sprite_ext(edit_leftBtn_001, 0, x, y, .7, .7, 0, c_white, 100)
		} else if pos == 6 {
			draw_sprite_ext(edit_rightBtn_001, 0, x, y, .7, .7, 0, c_white, 100)
		} else if pos == 7 {
			draw_sprite_ext(edit_upBtn_001, 0, x, y, .7, .7, 0, c_white, 100)
		} else if pos == 8 {
			draw_sprite_ext(edit_downBtn_001, 0, x, y, .7, .7, 0, c_white, 100)
		}
		
		else if pos == 9 {
			draw_sprite_ext(edit_flipXBtn_001, 0, x, y, .7, .7, 0, c_white, 100)
		} else if pos == 10 {
			draw_sprite_ext(edit_flipYBtn_001, 0, x, y, .7, .7, 0, c_white, 100)
		}

	}
