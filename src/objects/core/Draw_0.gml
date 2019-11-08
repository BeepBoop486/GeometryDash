draw_set_color(c_black)

drawGrid(61)



if !global.playing

{

	draw_sprite(spr_editorBG, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 )+532)

}
