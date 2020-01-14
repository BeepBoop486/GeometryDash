/// @description Background

jx = 0

toj = sprite_get_width(global.background)

repeat room_width/toj

{

	draw_sprite2(global.background, 0, global.bgcolor, (__view_get( e__VW.XView, 0 )/1.1)+jx, (__view_get( e__VW.YView, 0 )/1.1)+180)

	jx += toj

}
