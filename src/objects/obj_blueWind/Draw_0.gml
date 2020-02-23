draw_self()
if image_xscale >= 1 {
	draw_set_font(largePusab)
	draw_text_outline(x, y-90, title, c_yellow, c_black)
	draw_set_font(ArialFont)
	draw_set_color(c_white)
	draw_text(x, y-40, cont)
}