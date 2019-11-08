draw_self()
draw_set_color(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_set_font(font_0)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, y+64, string_hash_to_newline(string(title)))
