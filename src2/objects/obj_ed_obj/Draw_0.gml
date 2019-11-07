
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
				}
			} else if global.orbspage == 1 {
				obj_spr = object_get_sprite(obj_orbs1)
				obj_spr_w = sprite_get_width(obj_spr)
				obj_spr_h = sprite_get_height(obj_spr)
				scale = 1
				
				if obj_spr_w == 61 && obj_spr_h == 61 {
					scale = .5
				}
			}
		}
		
		draw_sprite_ext(obj_spr, 0, x, y, scale, scale, 0, c_white, 100)
	} else if global.selected_mode == 1 //if we're in edit mode
	{
		draw_sprite(spr_editbtn, 0, x, y)
		
		if pos == 1 {
			draw_sprite_ext(edit_leftBtn2_001, 0, x, y, .5, .5, 0, c_white, 100)
		} else if pos == 2 {
			draw_sprite_ext(edit_rightBtn2_001, 0, x, y, .5, .5, 0, c_white, 100)
		}
	}
