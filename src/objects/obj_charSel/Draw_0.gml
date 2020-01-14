draw_self()

if global.inveh == toput {
	image_index = 1
} else {
	image_index = 0
}

if toput == 0 {
	sprite_index = s_charSel_sel_cube
} else if toput == 1 {
	sprite_index = s_charSel_sel_ship
} else if toput == 2 {
	sprite_index = s_charSel_sel_ball
} else if toput == 3 {
	sprite_index = s_charSel_sel_ufo
} else if toput == 4 {
	sprite_index = s_charSel_sel_wave
} else if toput == 5 {
	sprite_index = s_charSel_sel_robot
} else if toput == 6 {
	sprite_index = s_charSel_sel_spider
} else if toput == 7 {
	sprite_index = s_charSel_sel_swing
}