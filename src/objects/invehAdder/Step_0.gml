/// @description Animacion

if paso = 0 { if image_xscale > 0.85{
image_xscale -= .02}}

if paso = 1 { if image_xscale < 1.03{
image_xscale += .02} else {paso = 2} }

if paso = 2 { if image_xscale > .96{
image_xscale -= .02} else {paso = 3} }

if paso = 3 { if image_xscale < 1{
image_xscale += .02} }

if paso = 4  { if image_xscale < 1.03{
image_xscale += .02} else {paso = 0} }


image_yscale = image_xscale;


if global.inveh == 0 {
	if global.cubepage > global.maxcubepage {
		global.cubepage = 0
	}
}