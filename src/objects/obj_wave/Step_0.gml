/// @description Wave logic
hsp = 10.6 * global.spdboost
grav=hsp/image_xscale
maxvsp=grav
scr_mini_set()
if global.playing
{
	physics()
	if keyboard_check(vk_up)
	{
		vsp=-grav*2
	}
	/*
		if vsp <- maxvsp
		{
			vsp = -maxvsp
		}
	*/
	if distance_to_object(instance_nearest(x, y, obj_ring_parent)) < 61
	{
		scr_ring_set()
	}
} else {
	instance_create(0,0,obj_player)
	instance_destroy()
}

scr_interactive()

scr_trail(6,0)
if place_meeting(x,y+gravdir, obj_wall)
{
	repeat 2
	{
		scr_sprite()
	}
}

scr_hitbox(x-6*image_xscale, y)