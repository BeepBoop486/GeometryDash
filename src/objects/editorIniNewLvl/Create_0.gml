/// @description Scale
ahora = 1;
paso = 0;
image_xscale = 0.85;
image_yscale = image_xscale;

if file_exists("llevels")
{
	var file = file_text_open_read("llevels")
	var yy = 384;
	while(!file_text_eof(file)) {
		var lvlid;
		lvlid = file_text_read_real(file)
		file_text_readln(file)
		notm = file_text_read_string(file)
		file_text_readln(file)
		
		var file1 = file_text_open_read("l"+string(lvlid)+".gdl");
		var lvlname = file_text_read_string(file1)
		file_text_readln(file1)
		file_text_close(file1)
		
		tt = instance_create_layer(945, yy, "Instances", obj_editorIniLvl)
		tt.lvlid = lvlid
		tt.lvlname = lvlname
		tt.yy = yy
		
		yy += 224
	}
	file_text_close(file)
}