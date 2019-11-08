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
}
