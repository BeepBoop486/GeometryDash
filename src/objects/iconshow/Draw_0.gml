if global.inveh == 0 {
	sprite_set_offset(spr_player_02, 30, 30)
	sprite_set_offset(spr_cube_01, 30, 30)
	draw_sprite_ext(sprite_index+1, global.cube, x, y, 2, 2, 0, global.col2, 100)
	draw_sprite_ext(sprite_index, global.cube, x, y, 2, 2, 0, global.col1, 100)
} else if global.inveh == 1 {
	sprite_set_offset(spr_player_02, 30, 64)
	sprite_set_offset(spr_cube_01, 30, 64)
	draw_sprite_ext(spr_player_02,global.cube,x,y,image_xscale*0.70,image_xscale*0.70,0,global.col2,image_alpha)
	draw_sprite_ext(spr_cube_01,global.cube,x,y,image_xscale*0.70,image_xscale*0.70,0,global.col1,image_alpha)
	draw_sprite_ext(spr_ship_b,global.ship,x,y,image_xscale,image_yscale,0,global.col2,image_alpha)
	draw_sprite_ext(spr_ship_a,global.ship,x,y,image_xscale,image_yscale,0,global.col1,image_alpha)
}