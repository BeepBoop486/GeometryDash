plusx = 0
plusy = 0

depth = -12000

var xx = 192, yy = 192;

for(var i = 0; i < 7; i++) {
	var tt = instance_create_depth(__view_get( e__VW.XView, 0 )+xx, __view_get( e__VW.YView, 0 )+yy, -15000, GChoicer)
	tt.toput = i
	xx += 128
}