if !instance_exists(BoxOpts)

{

	instance_create_depth(__view_get( e__VW.XView, 0 )+(904), __view_get( e__VW.YView, 0 )+(4592-4076),-800, ClickableMusicPlus1)
	instance_create_depth(__view_get( e__VW.XView, 0 )+(368), __view_get( e__VW.YView, 0 )+(4592-4076),-800, ClickableMusicLess1)

	tt = instance_create(0, 0, BoxOpts)

	tt.plusx = 640

	tt.plusy = 364

}
