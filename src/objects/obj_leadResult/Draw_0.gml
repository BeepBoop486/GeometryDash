draw_sprite_ext(spr_player_02, icon, x-400, y, 2, 2, 0, col2, 100)
draw_sprite_ext(spr_cube_01, icon, x-400, y, 2, 2, 0, col1, 100)
draw_set_font(largePusab)
draw_text_outline(x-200, y, name, c_white, c_black)
draw_text_outline(x-550, y, top, c_yellow, c_black)

draw_sprite_ext(spr_starsIcon, 0, x+450, y-60, 0.5, 0.5, 0, c_white, image_alpha)
draw_sprite_ext(spr_hammerIcon, 0, x+450, y, 0.5, 0.5, 0, c_white, image_alpha)
draw_set_font(InfoFnt)
draw_text_outline(x+500, y-60, stars, c_white, c_black)
draw_text_outline(x+500, y, cps, c_white, c_black)

//draw_self()