/// @description Animacion

if paso = 0 { if image_xscale > 0.65{
image_xscale -= .02}}

if paso = 1 { if image_xscale < 0.83{
image_xscale += .02} else {paso = 2} }

if paso = 2 { if image_xscale > .76{
image_xscale -= .02} else {paso = 3} }

if paso = 3 { if image_xscale < 0.8{
image_xscale += .02} }

if paso = 4  { if image_xscale < 0.83{
image_xscale += .02} else {paso = 0} }


image_yscale = image_xscale;


if global.levelveh == 5 {
	image_index = 1
} else {
	image_index = 0
}