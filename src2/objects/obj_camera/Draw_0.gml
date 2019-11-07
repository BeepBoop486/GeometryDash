/// @description Background
jx = 0
toj = sprite_get_width(spr_bg1)
repeat room_width/toj
{
	draw_sprite2(spr_bg1, 0, global.bgcolor, (__view_get( e__VW.XView, 0 )/1.1)+jx, (__view_get( e__VW.YView, 0 )/1.1)+180)
	jx += toj
}
