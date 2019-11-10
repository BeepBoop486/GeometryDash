var xx,yy;  
xx = argument0;  
yy = argument1;  
  
//Outline  
draw_set_color(argument2);  
draw_text(xx+1, yy+1, argument4);  
draw_text(xx-1, yy-1, argument4);  
draw_text(xx,   yy+1, argument4);  
draw_text(xx+1,   yy, argument4);  
draw_text(xx,   yy-1, argument4);  
draw_text(xx-1,   yy, argument4);  
draw_text(xx-1, yy+1, argument4);  
draw_text(xx+1, yy-1, argument4);  
  
//Text  
draw_set_color(argument3);  
draw_text(xx, yy, argument4); 