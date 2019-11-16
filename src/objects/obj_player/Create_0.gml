/// @description Initializing variables
player = 0
separated = 0

if global.levelspeed != 0
{
	global.spdboost=global.levelspeed
} else {
	global.spdboost = 1
}
hsp = 10.6 * global.spdboost //Speed

ini_physics(5)

if player == -1
{
	gravdir = -1
}

sprite_set_offset(sprite_index, 30, 30)
sprite_set_offset(sprite_index+1, 30, 30)

image_speed = 0 //Sets the image speed to 0

global.yscroll = 1

global.g1y = room_height - 164

global.g2y = 0

fis = 1

image_xscale = 1

image_yscale = 1

ddb = instance_create(x, y, obj_player_deadbox)

avoidup = 1

col1 = global.col1

col2 = global.col2



canring = 0

angle = 0

trail = 0

scr_other_var()

fbspd = 12