/// @description Pagination



if global.intab == 0 

{

	//If we're in solids tab

	global.solidspage += toadd

	if global.solidspage >= global.maxsolidspage {

		global.solidspage = 0

	}

} else if global.intab == 1 {

	//If we're in spikes tab

	global.spikepage += toadd

	if global.spikepage >= global.maxspikepage {

		global.spikepage = 0

	}

} else if global.intab == 2 {
	//If we're in orbs tab
	global.orbspage += toadd
	if global.orbspage >= global.maxorbspage {
		global.orbspage = 0
	}
} else if global.intab == 3 {
	//If we're in platforms' tab
	global.platformspage += toadd
	if global.platformspage >= global.maxplatformspage {
		global.platformspage = 0
	}
} else if global.intab == 4 {
	//IF we're in the outlines' tab
	global.outlinespage += toadd
	if global.outlinespage >= global.maxoutlinespage {
		global.outlinespage = 0
	}
} else if global.intab == 5 {
	//If we're in the slopes' tab
	global.slopespage += toadd
	if global.slopespage >= global.maxslopespage {
		global.maxslopespage = 0
	}
}
