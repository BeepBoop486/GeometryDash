///Select an object depending the pagination

if global.selected_mode == 0{

	if global.intab == 0 {

		if global.solidspage == 0 {

			global.toput = obj_solid

		} else if global.solidspage == 1 {

			global.toput = obj_solid1

		} else if global.solidspage == 2 {
		
			global.toput = obj_solid2
			
		} else if global.solidspage == 3 {
		
			global.toput = obj_solid3
			
		}

	} if global.intab == 1 {

		if global.spikepage == 0 {

			global.toput = obj_spike

		} else if global.solidspage == 2 {

			global.toput = obj_spikes1

		}

	} if global.intab == 2 {

		if global.orbspage == 0 {

			global.toput = obj_orbs

		} else if global.orbspage == 1 {

			global.toput = obj_orbs1

		}

	} if global.intab == 3 {
		if global.platformspage == 0 {
			global.toput = obj_platform
		}
	} if global.intab == 4 {
		if global.outlinespage == 0 {
			global.toput = obj_outline
		}
	} if global.intab == 5 {
		if global.slopespage == 0 {
			global.toput = obj_slope
		}
	}

} else if global.selected_mode == 1 and global.selected_obj != 0 and global.selected_obj != noone {
	if pos == 1 {
		global.selected_obj.x -= 61
	} else if pos == 2 {
		global.selected_obj.x += 61
	} else if pos == 3 {
		global.selected_obj.y -= 61
	} else if pos == 4 {
		global.selected_obj.y += 61
	}
	
	else if pos == 5 {
		global.selected_obj.x -= 2
	} else if pos == 6 {
		global.selected_obj.x += 2
	} else if pos == 7 {
		global.selected_obj.y -= 2
	} else if pos == 8 {
		global.selected_obj.y += 2
	}
	
	else if pos == 9 {
		global.selected_obj.image_xscale *= -1
	} else if pos == 10 {
		global.selected_obj.image_yscale *= -1
	}
	
	else if pos == 11 {
		global.selected_obj.image_angle += 90
	} else if pos == 12 {
		global.selected_obj.image_angle -= 90
	}
}
/* */
/*  */
