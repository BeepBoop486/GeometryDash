if !global.playing {
	name = get_open_filename("GDE levels|*.gdl", "unnamed")

	//req = http_post_string(global.serverUrl + "levels/GDDUploadLevel.php","secret="+global.serverSecret)
	show_message(get_level_cnt(name))
}
