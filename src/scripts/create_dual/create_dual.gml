var vehtc = argument0;

if vehtc == 0 && instance_number(obj_player) < 2{
	//If the current vehicle is the cube
	tt = instance_create(x, y, obj_player)
	tt.gravdir = obj_player.gravdir*-1
	tt.player=1
	tt.vsp = obj_player.vsp
	tt.separated = obj_dual_portal.separated
}