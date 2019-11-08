__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (random_range(-spd, spd)) )
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (random_range(-spd, spd)) )
spd -= 0.1
if spd <= 0
{
	instance_destroy()
}
