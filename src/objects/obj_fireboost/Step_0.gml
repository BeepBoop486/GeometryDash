angle += hsp
image_alpha+=spd/4
image_xscale = (1+(abs(cos(angle))+1)*length)*scale
image_yscale = image_xscale
if image_alpha > 0.75
{
	image_alpha = 0.75
}