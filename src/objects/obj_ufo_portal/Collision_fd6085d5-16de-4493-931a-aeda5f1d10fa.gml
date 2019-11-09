ylimit=(floor(y/60)+0.2)*60
ty=ylimit
ty2=0
repeat 5
{
    if ty < room_height-170
    {
        ty+=61
    }
}
ty2=ty
repeat 10
{
    ty2-=61
}
tya2=ty2
repeat 3
{
	tya2-=61
}
global.ylimit=ty2+((ty-ty2)/2)
global.g1y=ty
global.g2y=tya2
event_inherited()

