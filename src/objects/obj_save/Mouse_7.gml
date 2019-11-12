if !global.playing {
	name = get_save_filename("GDE levels|*.gdl", "unnamed")

	if name && name != "" save_level(0, name)
}
