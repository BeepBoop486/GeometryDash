image_alpha-=spd
image_xscale-=spd2
image_yscale=image_xscale
if image_alpha < 0 {
	instance_destroy()
}
