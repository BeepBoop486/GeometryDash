/// @description Ship logic

hsp = 10.6*global.spdboost
scr_mini_set()
sb = 1
if !mini
{
	sb=1
	grav=0.6
} else {
	sb = 1.5
	grav = 0.7
}
jumpspd=12*((image_xscale+0.2)*sb)
fspd=(grav*2.2)
if global.playing {
	physics()
	if keyboard_check(vk_up) and vsp > -maxfvsp
	{
		vsp-=fspd
	} if vsp > maxfvsp {
		vsp=maxfvsp
	}
} else {
	instance_create(0,0,obj_player)
	instance_destroy()
}
if distance_to_object(instance_nearest(x, y,obj_ring_parent)) <61
{
	scr_ring_set()
}

scr_interactive()

scr_trail(0,6)
if place_meeting(x, y+gravdir, obj_wall)
{
	repeat 2
	{
		scr_sprite()
	}
}

scr_hitbox(x, y-(8*gravdir)*image_xscale)