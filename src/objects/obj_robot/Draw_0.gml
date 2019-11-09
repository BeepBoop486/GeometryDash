image_yscale=image_xscale*gravdir
if place_meeting(x,y+gravdir,obj_wall)
{
    animation=0
    fuegosize-=0.10
    if fuegosize<0
    {
        fuegosize=0
    }
}
else
{
    if vsp <=0
    {
        animation=1
        fuegosize+=0.10
        if fuegosize>1
        {
            fuegosize=0.8
        }
    }
    if vsp > 0
    {
        animation=2
        fuegosize-=0.10
        if fuegosize<0
        {
            fuegosize=0
        }
    }
}

if animation=0
{
    //head
    hmangle+=hmspd
    hy=sin(hmangle)*hmlength
    hangle=hy
    //leg1
    l1mangle+=l1mspd
    l1angle=cos(l1mangle)*l1mlength
    //pie
    piemangle+=piemspd
    piemy=sin(piemangle)*piemlength/5
    piemx=cos(piemangle)*piemlength/1.2
    pieangle=cos(piemangle)*piemlength*2
    //pie2
    pie2mangle+=pie2mspd
    pie2my=sin(pie2mangle)*pie2mlength/5
    pie2mx=cos(pie2mangle)*pie2mlength/1.2
    pie2angle=cos(pie2mangle)*pie2mlength*2
}
if animation=1
{
    //head
    hangle+=(hjangle-hangle)/hjdelay
    //leg1
    l1angle+=(l1jangle-l1angle)/l1jdelay
    //pie
    piemx+=(piejmtox-piemx)/piejdelay
    piemy+=(piejmtoy-piemy)/piejdelay
    pieangle+=(piejangle-pieangle)/piejdelay
    //pie2
    pie2mx+=(pie2jmtox-pie2mx)/pie2jdelay
    pie2my+=(pie2jmtoy-pie2my)/pie2jdelay
    pie2angle+=(pie2jangle-pie2angle)/pie2jdelay
}
if animation=2
{
    //head
    hangle+=((hjangle*-1)-hangle)/hjdelay
    //leg1
    l1angle+=(l1jangle-l1angle)/l1jdelay
    //pie
    piemx+=(piejmtox-piemx)/piejdelay
    piemy+=(piejmtoy-piemy)/piejdelay
    pieangle+=(piejangle-pieangle+90)/piejdelay
    //pie2
    pie2mx+=(pie2jmtox-pie2mx)/pie2jdelay
    pie2my+=(pie2jmtoy-pie2my)/pie2jdelay
    pie2angle+=(pie2jangle-pie2angle-90)/pie2jdelay
}

if !fireboost
{
    draw_sprite_ext(spr_robot_leg1,image_index,x+12*image_xscale,y+((hy*image_xscale+18*image_xscale)-animoffset*image_xscale)*-image_yscale,image_xscale,image_yscale,l1angle*-gravdir,merge_color(col1,c_black,0.5),image_alpha)
    
    draw_sprite_ext(spr_robot_fuego,image_index,x+6+pie2mx*-image_xscale,y+(((-pie2my+30)*image_xscale)-animoffset*image_xscale)*gravdir,fuegosize*image_xscale,fuegosize*image_yscale,(-pie2angle-22)*gravdir,merge_color(col1,c_black,0.5),image_alpha)
    
    draw_sprite_ext(spr_robot_pie,image_index,x+6+pie2mx*-image_xscale,y+(((-pie2my+30)*image_xscale)-animoffset*image_xscale)*gravdir,image_xscale,image_yscale,(-pie2angle-22)*gravdir,merge_color(col2,c_black,0.5),image_alpha)
    draw_sprite_ext(sprite_index,image_index,x,y+((hy*-image_yscale)-(animoffset*image_yscale)),image_xscale,image_yscale,hangle*gravdir,col1,image_alpha)
    draw_sprite_ext(sprite_index+1,image_index,x,y+((hy*-image_yscale)-(animoffset*image_yscale)),image_xscale,image_yscale,hangle*gravdir,col2,image_alpha)
    draw_sprite_ext(spr_robot_leg1,image_index,x+6*image_xscale,y+((hy*image_xscale+18*image_xscale)-animoffset*image_xscale)*-image_yscale,image_xscale,image_yscale,l1angle*gravdir,col1,image_alpha)
    
    draw_sprite_ext(spr_robot_fuego,image_index,x+piemx*image_xscale,y+(((piemy+30)*image_xscale)-animoffset*image_xscale)*gravdir,fuegosize*image_xscale,fuegosize*image_yscale,(pieangle-22)*gravdir,col1,image_alpha)
    
    draw_sprite_ext(spr_robot_pie,image_index,x+piemx*image_xscale,y+(((piemy+30)*image_xscale)-animoffset*image_xscale)*gravdir,image_xscale,image_yscale,(pieangle-22)*gravdir,col2,image_alpha)
}
else
{
    draw_sprite_ext(spr_robot_fb_b,image_index,x,y,image_xscale,image_yscale,angleplus,col2,image_alpha)
    draw_sprite_ext(spr_robot_fb_a,image_index,x,y,image_xscale,image_yscale,angleplus,col1,image_alpha)
}

