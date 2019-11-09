hsp=10.6*global.spdboost
if mini
{
	jumpspd=10
} else {
	jumpspd=12
}
scr_mini_set()
if global.playing
{
	physics()
	if keyboard_check_pressed(vk_up)
	{
		if place_meeting(x,y+gravdir,obj_wall)
	    {
	        parx=x+30*global.spdboost
	        tlppar0=instance_create(x+30*global.spdboost,y,obj_par1)
	        tlppar0.spd2=0.03
	        with obj_par2
	        {
	            instance_destroy()
	        }
	        while !place_meeting(x,y-1*gravdir,obj_wall)
	        {
	            tlppar1=instance_create(parx,y,obj_par2)
	            y-=gravdir
	            tlppar1.image_xscale=0.3
	            tlppar1.image_yscale=0.3
	            parx+=random_range(-4,4)
	        }
	        tlppar2=instance_create(x+30*global.spdboost,y,obj_par1)
	        tlppar2.spd2=0.03
	        gravdir*=-1
	    }
	}
} else {
	instance_create(0,0,obj_player)
	instance_destroy()
}
scr_ring_set()

scr_interactive()

if trail
{
	scr_trail(0,0)
}
if place_meeting(x, y+gravdir, obj_wall)
{
	repeat 2 {
		scr_sprite()
	}
}

scr_hitbox(x,y)