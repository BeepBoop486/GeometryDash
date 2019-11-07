image_xscale+=spd2
image_yscale=image_xscale
image_alpha-=spd
if image_alpha<0 {
	instance_destroy()
}
