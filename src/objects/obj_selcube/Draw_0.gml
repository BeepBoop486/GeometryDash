if global.inveh == 0 {
	sprite_index = spr_cubesel
	if global.cubepage == 0 {
		visible = true
		image_index = toput
		draw_sprite_ext(sprite_index, toput, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	} else if global.cubepage == 1{
		image_index = toput1
		draw_sprite_ext(sprite_index, toput1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	}
} else if global.inveh == 1 {
	sprite_index = spr_shipsel
	if global.shippage == 0 {
		visible = true
		image_index = toput
		draw_sprite_ext(sprite_index, toput, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	}
} else if global.inveh == 2 {
	if global.ballpage == 0 {
	}
} else if global.inveh == 3 {
	if global.ufopage == 0 {
	}
} else if global.inveh == 4 {
	if global.wavepage == 0 {
	}
} else if global.inveh == 5 {
	if global.robotpage == 0{
	}
} else if global.inveh == 6 {
	if global.spiderpage == 0 {
	}
} else if global.inveh == 7 {
	if global.swingpage == 0 {
	}
}