/// @description view movement
if global.playing && tofol != noone && instance_exists(tofol)
{
    __view_set( e__VW.XView, 0, tofol.x-__view_get( e__VW.WView, 0 )/3 )
    if global.yscroll
    {
        if tofol.y<__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/3)
        {__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((tofol.y-(__view_get( e__VW.HView, 0 )/3)) - __view_get( e__VW.YView, 0 )) * 0.2) )}
        if tofol.y>__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/3)*2
        {__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((tofol.y-(__view_get( e__VW.HView, 0 )/3)*2) - __view_get( e__VW.YView, 0 )) * 0.2) )}
    }
    else
    {
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((global.ylimit-(__view_get( e__VW.HView, 0 )/2)) - __view_get( e__VW.YView, 0 )) * 0.1) )
    }
    if __view_get( e__VW.XView, 0 )<0
    {__view_set( e__VW.XView, 0, 0 )}
    if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>room_height
    {__view_set( e__VW.YView, 0, room_height-__view_get( e__VW.HView, 0 ) )}
}

