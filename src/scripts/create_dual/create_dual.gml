var vehtc = argument0;

if vehtc == 0 && instance_number(obj_player) < 2{
	//If the current vehicle is the cube
	tt = instance_create(x, y, obj_player)
	tt.gravdir = obj_player.gravdir*-1
	tt.player=1
	tt.vsp = obj_player.vsp
	tt.separated = obj_dual_portal.separated
} if vehtc == 1 && instance_number(obj_ship) < 2
{
	//We're playing with the ship
	tt = instance_create(x, y, obj_ship)
	tt.gravdir = obj_ship.gravdir * -1
	tt.player = 1
	tt.vsp = obj_ship.vsp
	tt1 = instance_nearest(x, y, obj_dual_portal)
	tt.separated = tt1.separated
} if vehtc == 2 && instance_number(obj_ball) < 2
{
	//We're playing with the ball
	tt = instance_create(x, y, obj_ball)
	tt.gravdir = obj_ball.gravdir * -1
	tt.player = 1
	tt.vsp = obj_ball.vsp
	tt1 = instance_nearest(x, y, obj_dual_portal)
	tt.separated = tt1.separated
} if vehtc == 3 && instance_number(obj_ufo) < 2
{
	//We're playing with the ball
	tt = instance_create(x, y, obj_ufo)
	tt.gravdir = obj_ufo.gravdir * -1
	tt.player = 1
	tt.vsp = obj_ufo.vsp
	tt1 = instance_nearest(x, y, obj_dual_portal)
	tt.separated = tt1.separated
} if vehtc == 4 && instance_number(obj_wave) < 2
{
	//We're playing with the ball
	tt = instance_create(x, y, obj_wave)
	tt.gravdir = obj_wave.gravdir * -1
	tt.player = 1
	tt1 = instance_nearest(x, y, obj_dual_portal)
	tt.separated = tt1.separated
}