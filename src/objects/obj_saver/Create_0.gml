global.deflogged = false
if global.loggedin = true && global.deflogged == false {
	instance_create(0,0,obj_logger)
}

if os_type == os_windows
{
	display_set_gui_size(global.displaywidth, global.displayheight)
	window_set_size(global.displaywidth, global.displayheight)
	surface_resize(application_surface, global.displaywidth, global.displayheight)
}