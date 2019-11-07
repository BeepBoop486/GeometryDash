draw_self()

draw_set_font(font0)
draw_set_color(c_white)

draw_set_valign(fa_center)
draw_set_halign(fa_center)

var name = audio_get_name(global.music)
draw_text(__view_get( e__VW.XView, 0 )+640, __view_get( e__VW.YView, 0 ) + (4592-4076), name)