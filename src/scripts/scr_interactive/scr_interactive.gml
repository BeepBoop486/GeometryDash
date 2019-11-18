/// @description I dont' want to do this in every object so...

//paths
if place_meeting(x, y, obj_path1)
{
	vsp=-jumpspd*1.5
	trail=1
}
if place_meeting(x, y, obj_path2)
{
	vsp=-jumpspd+2
	trail=1
}
if place_meeting(x, y, obj_path3)
{
	gravdir*=-1
	vsp=20
	trail=1
}
if place_meeting(x, y, obj_path4)
{
	vsp=-jumpspd-16
	trail=1
}

//rings
if place_meeting(x, y, obj_ring1) and canring
{
	vsp=-jumpspd
	canring=0
	trail=1
}
if place_meeting(x, y, obj_ring2) and canring
{
	vsp=-jumpspd+2
	canring=0
	trail=1
}
if place_meeting(x, y,obj_ring3) and canring
{
	gravdir*=-1
	canring = 0
	vsp=20
	trail=1
}
if place_meeting(x, y, obj_ring4) and canring
{
	gravdir*=-1
	canring=0
	vsp=-jumpspd
	trail=1
}
if place_meeting(x, y, obj_ring5) and canring {
	vsp=jumpspd
	canring=0
	trail=1
}
if place_meeting(x, y, obj_ring6) and canring {
	fireboost=1
	alarm[10]=60
	canring=0
	trail=1
}
if place_meeting(x, y, obj_ring7) and canring {
	fireboost=1
	alarm[10]=60
	gravdir*=-1
	canring=0
	trail=1
}
//portals
//grav 1
if place_meeting(x, y, obj_portal1)
{
	if gravdir =-1
	{
		vsp *= -0.5
	}
	gravdir = 1
	trail = 1
}
//grav up
if place_meeting(x, y, obj_portal2)
{
	if gravdir = 1
	{
		vsp *= -0.5
	}
	gravdir = -1
	trail=1
}
//cube
if place_meeting(x, y, obj_cube_portal)
{
	scr_transform(obj_player)
}
//ship
if place_meeting(x, y, obj_ship_portal)
{
	scr_transform(obj_ship)
}
//ball
if place_meeting(x, y, obj_ball_portal)
{
	scr_transform(obj_ball)
}
//normal size
if place_meeting(x, y, obj_normal_portal)
{
	mini=0
}
//Mini size
if place_meeting(x, y, obj_mini_portal)
{
	mini=1
}
//Ufo
if place_meeting(x, y, obj_ufo_portal)
{
	scr_transform(obj_ufo)
}
//Wave
if place_meeting(x, y, obj_wave_portal)
{
	scr_transform(obj_wave)
}
//Robot
if place_meeting(x, y, obj_robot_portal)
{
	scr_transform(obj_robot)
}
//Spider
if place_meeting(x, y, obj_spider_portal)
{
	scr_transform(obj_spider)
}
//Dual 0
if place_meeting(x, y, obj_dual_portal) {
	var vehtc = get_vehicle()
	create_dual(vehtc)
	//event_user(0)
}
///Speeds
//x0.5
if place_meeting(x,y,obj_speed1)
{
    global.spdboost=0.75
}
//x1
if place_meeting(x,y,obj_speed2)
{
    global.spdboost=1
}
//x2
if place_meeting(x,y,obj_speed3)
{
    global.spdboost=1.25
}
//x3
if place_meeting(x,y,obj_speed4)
{
    global.spdboost=1.5
}






if place_meeting(x, y, obj_winWall)
{
	if room = rm_playFndLvlCnt
	{
		if global.stars != 0 && global.stars < 15 {
			//global.stars < 15 - just to avoid possible star hacks
			global.accstars = global.accstars + global.stars
		}
		room_goto(rm_dlevel)
	} else if room = rm_editor
	{
		global.playing = false
	} else {
		//We assume you're in a future local level xd
		room_goto(rm_levelsel)
	}
	show_message("Alsa")
}