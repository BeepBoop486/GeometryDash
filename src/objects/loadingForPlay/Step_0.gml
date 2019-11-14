image_angle += 4

if file_exists(string(global.lvlid) + ".gdl")
{
	instance_create(x, y, playLvlFound)
	instance_destroy()
}