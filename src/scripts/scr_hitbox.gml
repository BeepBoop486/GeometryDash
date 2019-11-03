ddb.x = argument0
ddb.y = argument1
ddb.image_xscale = image_xscale
ddb.image_yscale = image_yscale
with ddb {
	if place_meeting(x, y, obj_wall) or place_meeting(x,y, obj_spike1) 
	{
		with obj_player {
			scr_die()
		}
	}
}