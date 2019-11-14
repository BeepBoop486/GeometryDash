if !global.playing {
	name = get_open_filename("GDE levels|*.gdl", "unnamed")
	if name != "" {
		global.lvlcnt = get_level_cnt(name)
		global.lvlname = get_string("Enter the level name","")
		alarm[0] = 10
	}
	
	//show_message(get_level_cnt(name))
}
