if image_xscale < 1 {
	image_xscale += 0.08
	paso = 1
}
if paso == 1 {
	instance_create_depth(x-5, y+92, -108, obj_blueWindOK)
	paso = 0
}

image_yscale = image_xscale