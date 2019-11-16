toangle=vsp*0.5
angle+=(toangle-angle)*0.3
image_yscale=image_xscale*gravdir
cscale=image_xscale*0.7
sprite_set_offset(spr_cube_01, 30, 50)
sprite_set_offset(spr_player_02, 30, 50)
draw_sprite_ext(spr_cube_01, global.cube, x, y, cscale, cscale*gravdir, angle*gravdir+angleplus,col1, image_alpha)
draw_sprite_ext(spr_player_02, global.cube, x, y, cscale, cscale*gravdir, angle*gravdir+angleplus, col2, image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,angle*gravdir+angleplus,col1,image_alpha)
draw_sprite_ext(sprite_index+1,0,x,y,image_xscale,image_yscale,angle*gravdir+angleplus,col2,image_alpha)