var xx = argument0;
var yy = argument1;
var s = argument2;
var c1 = argument3;
var c2 = argument4;

draw_set_color(c2);
draw_text(xx+1, yy+1, s);
draw_text(xx-1, yy+1, s);
draw_text(xx+1, yy-1, s);
draw_text(xx-1, yy-1, s);

draw_set_color(c1);
draw_text(xx, yy, s);