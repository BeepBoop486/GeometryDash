/// @description Animacion
if global.negrito == 0{
paso = 4;
ahora = 1;}

///Alarma 0

if global.negrito == 0 && image_index == 0{
	reqManager.req7 = http_post_string(global.serverUrl+"levels/GDDPostDislike.php", "lvlid="+string(global.lvlid))
}

