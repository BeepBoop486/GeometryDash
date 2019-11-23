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
		var lvlid, lvlname;
		lvlid = file_text_read_real(file)
		file_text_readln(file)
		lvlname = file_text_read_string(file)
		file_text_readln(file)
		
		tt = instance_create(945, yy, obj_editorIniLvl)
		tt.lvlid = lvlid
		tt.lvlname = lvlname
		tt.yy = yy
		
		yy += 224
	}
	file_text_close(file)
}