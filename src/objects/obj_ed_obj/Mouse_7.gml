/*

	if global.selected_mode == 0 {

		if global.intab == 0 {

			global.toput = obj_solid

		} if global.intab == 1 {

			global.toput = obj_spike

		}

	} if global.selected_mode == 1 && global.selected_obj != 0 {

		if pos == 1 {

			with(global.selected_obj) {

				x -= 61

			}

		} if pos == 2 {

			with(global.selected_obj)

			{

				x += 61

			}

		}

	}

*/



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
		
	}
}
/* */
/*  */
