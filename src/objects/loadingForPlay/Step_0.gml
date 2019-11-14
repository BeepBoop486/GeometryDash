image_angle += 4

if file_exists(string(global.lvlid) + ".gde")
{
	instance_create(x, y, playLvlFound)
	instance_destroy()
}