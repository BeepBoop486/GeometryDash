if !global.playing {
	for(i = 0; i < room_width; i+=argument0)
	{
		draw_line(i,0,i,room_height)
	}
	for(i = 0; i < room_height; i += argument0)
	{
		draw_line(0, i, room_width, i)
	}
}
