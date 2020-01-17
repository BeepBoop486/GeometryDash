if global.inveh == 0 {
	//If we're in cube
	if global.cubepage == 0 {
		global.cube = toput
	} else if global.cubepage == 1 {
		global.cube = toput1
	}
} else if global.inveh == 1 {
	//If we're in ship
	if global.shippage == 0 {
		global.ship = toput
	}
}