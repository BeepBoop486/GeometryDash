if !global.playing {
	name = get_open_filename("GDE levels|*.gdl", "unnamed")

	if name != "" load_level(name)
}
