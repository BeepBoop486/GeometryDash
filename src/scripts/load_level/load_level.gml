/// @description load_level(filename)
/// @param filename
var filename = argument0;
if filename != "" {
	var file = file_text_open_read(filename)

	file_text_readln(file)

	var version = file_text_read_real(file)
	file_text_readln(file)

	if version == 0 {
		global.music = file_text_read_real(file)
		file_text_readln(file)
		global.levelspeed = file_text_read_real(file)
		file_text_readln(file)
		global.levelveh = file_text_read_real(file)
		file_text_readln(file)
		room_width = file_text_read_real(file)
		file_text_readln(file)
		for(var i = 0; i < global.colors; i+=1)
		{
			global.color[i] = file_text_read_real(file)
			file_text_readln(file)
		}
		global.background = file_text_read_real(file)
		file_text_readln(file)
		global.ground = file_text_read_real(file)
		file_text_readln(file)
	
		//if instance_exists(obj_player) instance_destroy(obj_player)
	
		while(!file_text_eof(file)) {
			var objid = file_text_read_string(file)
			file_text_readln(file)
			objid = asset_get_index(objid)
		
			var angle, xscale, yscale, groupo, xpos, ypos;
		
			angle = file_text_read_real(file)
			file_text_readln(file)
			xscale = file_text_read_real(file)
			file_text_readln(file)
			yscale = file_text_read_real(file)
			file_text_readln(file)
			//blend = file_text_read_real(file)
			//file_text_readln(file)
			groupo = file_text_read_real(file)
			file_text_readln(file)
			xpos = file_text_read_real(file)
			file_text_readln(file)
			ypos = file_text_read_real(file)
			file_text_readln(file)
		
			if objid != obj_upload && objid != obj_playEditorBtn {
				
				obj = instance_create_depth(xpos, ypos, 0, objid)
				obj.image_angle = angle
				obj.image_xscale = xscale
				obj.image_yscale = yscale
				obj.image_blend = c_white
				obj.group = groupo
			
				if objid == obj_ring1 or objid == obj_ring2 or objid == obj_ring3
				or objid == obj_ring4 or objid == obj_path1 or objid == obj_path2
				or objid == obj_path3 or objid == obj_path4 or objid == obj_portal1
				or objid == obj_portal2
				{
					var reverse;
					reverse = file_text_read_real(file)
					file_text_readln(file)
					obj.reverse = reverse
				}
			
			}
		}
	} else {
		show_message_async("Version not zero")
	}
	file_text_close(file)
} else {
	show_message_async("The file you entered can't be empty")
}