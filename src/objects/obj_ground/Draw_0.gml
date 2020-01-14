jx = 0

repeat image_xscale

{

	//draw_sprite2(sprite_index, 0, global.gcolor, x+jx, y)
	draw_sprite_ext(sprite_index, global.ground, x+jx, y, 1, 1, 0, global.gcolor, image_alpha)

	jx+=iniw

}
