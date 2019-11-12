if !global.playing {
	name = get_open_filename("GDE levels|*.gdl", "unnamed")
	global.lvlname = get_string("Enter the level name","")

	req = http_post_string(global.serverUrl + "levels/GDDUploadLevel.php","secret="+global.serverSecret+"&lvlname="+global.lvlname+"&lvlcnt=")
	//show_message(get_level_cnt(name))
}
