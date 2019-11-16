var veh = 0;

if instance_exists(obj_ship) {
	veh = 1
} if instance_exists(obj_ball) {
	veh = 2
} if instance_exists(obj_ufo) {
	veh = 3
} if instance_exists(obj_wave) {
	veh = 4
} if instance_exists(obj_robot) {
	veh = 5
} if instance_exists(obj_spider) {
	veh = 6
}

return veh;