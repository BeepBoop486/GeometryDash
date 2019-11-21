if global.inveh == 0 {
	if global.cubepage == 0 {
		
		visible = true
		
		image_index = toput
		draw_sprite_ext(sprite_index, toput, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	} else if global.cubepage == 1{
		
		image_index = toput1
		draw_sprite_ext(sprite_index, toput1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	}
}