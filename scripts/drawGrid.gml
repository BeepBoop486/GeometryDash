/*for (i=view_xview[0]; i<view_xview[0]+view_wview[0]; i+=argument0)
{ draw_line(i,0,i,room_height); }
for (i=0; i<room_height; i+=argument0)
{ draw_line(view_xview[0],i,view_xview[0]+view_wview[0],i); }*/

for(i = 0; i < room_width; i+=argument0)
{
	draw_line(i,0,i,room_height)
}
for(i = 0; i < room_height; i += argument0)
{
	draw_line(0, i, room_width, i)
}