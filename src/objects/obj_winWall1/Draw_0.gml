jx = 0
repeat image_xscale
{
	draw_sprite2(sprite_index, 0, c_white, x+jx, y)
	jx+=iniw
}
jy = 0
repeat image_yscale
{
	draw_sprite2(sprite_index, 0, c_white, x, y+jy)
	jy+=inih
}