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
} else if global.intab == 3
{
	//Platform tab
	if toshow < global.maxplatformspage {
		visible = true
		if global.platformspage == toshow
		{
			image_blend = c_white
		} else {
			image_blend = c_gray
		}
	} else {
		visible = false
	}
} else if global.intab == 4 {
	//Outlines tab
	if toshow < global.maxoutlinespage {
		visible = true
		if global.maxoutlinespage == toshow
		{
			image_blend = c_white
		} else {
			image_blend = c_gray
		}
	}
} else if global.intab == 5 {
	//Slopes' tab
	if toshow < global.maxslopespage {
		visible = true
		if global.maxslopespage == toshow
		{
			image_blend = c_white
		} else {
			image_blend = c_gray
		}
	}
}