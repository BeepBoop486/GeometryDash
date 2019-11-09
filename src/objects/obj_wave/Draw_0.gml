toangle=(22.5+(22.5/image_xscale))*sign(-vsp)
angle+=(toangle-angle)*0.3
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, angle*gravdir+angleplus, col1, image_alpha)
draw_sprite_ext(sprite_index+1, 1, x, y, image_xscale, image_yscale, angle*gravdir+angleplus, col2, image_alpha)