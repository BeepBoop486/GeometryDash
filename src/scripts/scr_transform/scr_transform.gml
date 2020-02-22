tt=instance_create(x,y,argument0)
if object_index != obj_wave
{
	tt.vsp = vsp
}
tt.hsp=hsp
tt.gravdir=gravdir
tt.mini=mini
tt.fireboost=fireboost
instance_destroy()
if instance_exists(obj_camera) {
	obj_camera.tofol = argument0
}

if argument0 == obj_ship {
	ylimit=(floor(y/60)+0.2)*60
	ty=ylimit
	ty2=0
	repeat 5
	{
	    if ty < room_height-170
	    {
	        ty+=61
	    }
	}
	ty2=ty
	repeat 10
	{
	    ty2-=61
	}
	tya2 = ty2
	repeat 3 {
		tya2-=61
	}
	global.ylimit=ty2+((ty-ty2)/2)
	global.g1y=ty
	global.g2y=tya2
} else if argument0 == obj_ball {
	ylimit=(floor(y/60)+0.2)*60
	ty=ylimit
	ty2=0
	repeat 4
	{
	    if ty < room_height-170
	    {
	        ty+=61
	    }
	}
	ty2=ty
	repeat 8
	{
	    ty2-=61
	}
	tya2=ty2
	repeat 3 {
		tya2-=61
	}
	global.ylimit=ty2+((ty-ty2)/2)
	global.g1y=ty
	global.g2y=tya2
} else if argument0 == obj_ufo {
	ylimit=(floor(y/60)+0.2)*60
	ty=ylimit
	ty2=0
	repeat 5
	{
	    if ty < room_height-170
	    {
	        ty+=61
	    }
	}
	ty2=ty
	repeat 10
	{
	    ty2-=61
	}
	tya2=ty2
	repeat 3
	{
		tya2-=61
	}
	global.ylimit=ty2+((ty-ty2)/2)
	global.g1y=ty
	global.g2y=tya2
} else if argument0 == obj_wave {
	ylimit=(floor(y/60)+0.2)*60
	ty=ylimit
	ty2=0
	repeat 5
	{
	    if ty < room_height-170
	    {
	        ty+=61
	    }
	}
	ty2=ty
	repeat 10
	{
	    ty2-=61
	}
	tya2 = ty2
	repeat 3
	{
		tya2 -= 61
	}
	global.ylimit=ty2+((ty-ty2)/2)
	global.g1y=ty
	global.g2y=tya2
} else if argument0 == obj_robot or argument0 == obj_player {
	global.g2y = 0
	global.g1y = room_height - 164
} else if argument0 == obj_spider {
	ylimit=(floor(y/60)+0.2)*60
	ty=ylimit
	ty2=0
	repeat 6
	{
	    if ty < room_height-170
	    {
	        ty+=61
	    }
	}
	ty2=ty
	repeat 9
	{
	    ty2-=61
	}
	tya2=ty2
	repeat 3
	{
		tya2-=61
	}
	global.ylimit=ty2+((ty-ty2)/2)
	global.g1y=ty
	global.g2y=tya2
}