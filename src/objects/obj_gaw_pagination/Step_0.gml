x = __view_get(e__VW.XView, 0) + plusx
y = __view_get(e__VW.YView, 0) + plusy

if global.intab == 0
{
	//Solids tab
	if toshow < global.maxsolidspage
	{
		//If the page we're supposed to be showing in under the maximum
		visible = true
		if global.solidspage == toshow
		{
			//If we're in the page this is supposed to be showing
			image_blend = c_white
		} else {
			//If not
			image_blend = c_gray
		}
	} else {
		//If to show is greater than the maxmimum solidspage
		visible = false
	}
} else if global.intab == 1 
{
	//Spikes tab
	if toshow < global.maxspikepage {
		visible = true
		if global.spikepage == toshow {
			image_blend = c_white
		} else {
			image_blend = c_gray
		}
	} else {
		visible = false
	}
} else if global.intab == 2
{
	//Orbs tab
	if toshow < global.maxorbspage {
		visible = true
		if global.orbspage == toshow
		{
			image_blend = c_white
		} else {
			image_blend = c_gray
		}
	} else {
		visible = false
	}
}