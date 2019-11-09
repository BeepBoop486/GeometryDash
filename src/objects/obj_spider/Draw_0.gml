if place_meeting(x,y+gravdir,obj_wall)
{
    animation=0
}
else
{
    animation=1
}
if animation=0
{
    hmangle+=hmspd
    hy=y+(-6+sin(hmangle)*hmlength)*gravdir*image_xscale
    
    l1x=x+(-3+cos(hmangle)*hmlength*2)*image_xscale
    l1y=y+(4+sin(hmangle)*hmlength*1.5)*gravdir*image_xscale
    l1angle+=(0-l1angle)/delay
    
    l2x=x+(24+cos(hmangle-22)*hmlength*2)*image_xscale
    l2y=y+(4+sin(hmangle-22)*hmlength*1.5)*gravdir*image_xscale
    l2angle+=(0-l2angle)/delay
    
    l3x=x+(6+cos(hmangle-11)*hmlength*3)*image_xscale
    l3y=y+(4+sin(hmangle-11)*hmlength*1.5)*gravdir*image_xscale
    
    l4x=x+(-8+cos(hmangle+22)*hmlength*2)*image_xscale
    l4y=y+(sin(hmangle+22)*hmlength*2)*gravdir*image_xscale
    l4angle+=(0-l4angle)/delay
}
else
{
    hy=y-(6*gravdir)*image_xscale
    
    l1x=x
    l1y=y+(6*gravdir)*image_xscale
    l1angle+=((l1toangle*gravdir-l1angle)/delay)
    
    l2x=x+30*image_xscale
    l2y=y+(4*gravdir)*image_xscale
    l2angle+=((l2toangle*gravdir-l2angle)/delay)
    
    l3x=x+6*image_xscale
    l3y=y+(4*gravdir)*image_xscale
    
    l4x=x-6*image_xscale
    l4y=y-2*gravdir*image_xscale
    l4angle+=((56*gravdir-l4angle)/delay)
}

if !fireboost
{
    draw_sprite_ext(spr_spider_leg1,0,l3x,l3y,image_xscale*-1,image_yscale*gravdir,l3angle,merge_color(col1,c_black,0.5),image_alpha)
    
    draw_sprite_ext(spr_spider_leg1,0,l2x,l2y,image_xscale*-1,image_yscale*gravdir,l2angle,merge_color(col1,c_black,0.5),image_alpha)
    
    draw_sprite_ext(spr_spider_leg2,0,l4x,l4y,image_xscale,image_yscale*gravdir,l4angle,col1,image_alpha)
    
    draw_sprite_ext(sprite_index,0,x,hy,image_xscale,image_yscale*gravdir,angle,col1,image_alpha)
    draw_sprite_ext(sprite_index+1,0,x,hy,image_xscale,image_yscale*gravdir,angle,col2,image_alpha)
    
    draw_sprite_ext(spr_spider_leg1,0,l1x,l1y,image_xscale,image_yscale*gravdir,l1angle,col1,image_alpha)
}
else
{
    draw_sprite_ext(spr_spider_fb_b,image_index,x,y,image_xscale,image_yscale,angleplus,col2,image_alpha)
    draw_sprite_ext(spr_spider_fb_a,image_index,x,y,image_xscale,image_yscale,angleplus,col1,image_alpha)
}

