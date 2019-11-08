x += hsp
if fireboost
{
	angleplus-=fbspd*gravdir
	vsp=0
	if angleplus>=360
	{
		angleplus-=360
	}
	if fire == noone
	{
		fire = instance_create(x, y, obj_fireboost)
	}
	fire.x = x
	fire.y = y
	if mini
	{
		fire.scale = 0.5
	} else {
		fire.scale=1
	}
	vspeed=sin(fbvsp)*fbvsp
	fire.image_angle=fbvsp
	fire.image_blend=col1
} else {
	vspeed = 0
	angleplus+=(fbvsp)*fbvsp
	if fire != noone
	{
		with fire
		{
			par = instance_create(x, y, obj_par2)
			par.image_blend = image_blend
			par.image_xscale = image_xscale
			par.image_yscale = image_yscale
			par.image_alpha = image_alpha
			par.sprite_index = sprite_index
			par.image_angle = image_angle
			instance_destroy()
		}
	}
	fire = noone
}
if !keyboard_check(vk_up)
{
	fireboost = 0
}