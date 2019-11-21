/// @description Ufo logic
scr_mini_set()
hsp=10.6*global.spdboost
sb=1
if !mini
{
	sb=1
	grav=0.6
} else {
	sb=1.5
	grav=0.8
}
jumpspd=10*((image_xscale+0.2)*sb)
if global.playing
{
	physics()
	if keyboard_check_pressed(vk_up) or mouse_check_button_pressed(mb_left)
	{
		if separated and instance_number(obj_ufo) > 1 && player == 0 {
			vsp=-jumpspd
		} else if !separated {
			vsp=-jumpspd
		}
	} else if mouse_check_button_pressed(mb_left) && player == 1 && separated {
		vsp=-jumpspd
	}
	if distance_to_object(instance_nearest(x, y, obj_ring_parent))<61
	{
		scr_ring_set()
	}
} else {
	instance_create(0,0,obj_player)
	instance_destroy()
}
scr_interactive()

scr_trail(0,20)
if place_meeting(x, y+gravdir, obj_wall)
{
	repeat 2
	{
		scr_sprite()
	}
}
scr_hitbox(x, y)