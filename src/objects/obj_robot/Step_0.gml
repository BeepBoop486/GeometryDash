/// @description Robot logic
hsp=10.6*global.spdboost
scr_mini_set()
jboost_set()
jumpspd=22*s_jboost()
jetspd=14*s_jboost()
if global.playing
{
	physics()
	if mouse_check_button(mb_left) or keyboard_check(vk_up)
	{
	    if cangh=1
	    {
	        vsp=-jetspd
	    }
	}
	if mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_up)
	{
	    if place_meeting(x,y+gravdir,obj_wall)
	    {
			vsp=-jetspd
			cangh=1
			alarm[0]=15
		}
	}
	scr_ring_set()
	if keyboard_check_released(vk_up)
	{
		cangh=0
	}
	global.ylimit=y
} else {
	instance_create(0,0,obj_player)
	instance_destroy()
}

scr_interactive()

if trail
{
	scr_trail(0, -15)
}
if place_meeting(x, y+gravdir, obj_wall)
{
	repeat 2
	{
		scr_sprite()
	}
}

scr_hitbox(x,y)