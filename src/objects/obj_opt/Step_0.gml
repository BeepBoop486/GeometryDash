if global.playing
{
	instance_activate_all()
	instance_deactivate_region(__view_get(e__VW.XView, 0) - 256, __view_get(e__VW.YView, 0) - 256, __view_get(e__VW.WView, 0) + 256, __view_get(e__VW.HView, 0) + 256, false, true)
	instance_activate_object(obj_ground)
	instance_activate_object(obj_ground2)
	instance_activate_object(obj_player)
	instance_activate_object(obj_camera)
}