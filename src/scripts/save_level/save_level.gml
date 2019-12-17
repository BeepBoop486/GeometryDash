/// @description save_level(version, filename)
/// @param version
/// @param  filename
//The very first version of the level saver
if argument0 != "" {
	var file; //First, we init some vars
	file = file_text_open_write(argument1) //The extension of the level file (Geometry Dash level)
	version = argument0 //This'll be to avoid bugs and problems saving and loading in future versions ugu

	//This'll be to avoid mistakes in the future
	if version == 0 {
		file_text_write_string(file, global.toputname);
		file_text_writeln(file)
		file_text_write_real(file, version) //This'll be used for loading
		file_text_writeln(file)
		file_text_write_real(file, global.music)
		file_text_writeln(file)
		file_text_write_real(file, global.levelspeed)
		file_text_writeln(file)
		file_text_write_real(file, room_width)
		file_text_writeln(file)
		
		for(var i = 0; i < global.colors; i+=1)
		{
			file_text_write_real(file, global.color[i])
			file_text_writeln(file)
		}
		
		for(var i = 0; i < instance_count; i++) //We'll iterate for every instance in the room
		{
			var obj_name; //The name of the object
			//Why do i'll write the name of the object in place of the id
			//cuz if as by example the first object of the root (obj_ed_obj)
			//is changed to the second one, its object_index won't be 1 (or zero dunno)
			//It'll be or 1 or two
			var angle, xscale, yscale, blend, groupo, xpos, ypos; //The first version of this editor
			//Just will save these variables
			/*with(instance_id_get( i ))
			{
				obj_name = object_get_name(object_index)
				angle = image_angle;
				xscale = image_xscale;
				yscale = image_yscale;
				blend = image_blend
				if group != undefined {
					groupo = group
				} else {
					groupo = 0
				}
			}*/
			var obj = instance_id_get(i);
			objid = obj.object_index
			if objid != obj_ed_obj && objid != edit_buildBtn && objid != edit_buildBtn && objid != edit_deleteBtn
			&& objid != obj_save && objid != obj_editorTab && objid != obj_editObj && objid != obj_editGroupID 
			&& objid != obj_load && objid != obj_pagination && objid != obj_optionsBTN && objid != core
			&& objid != obj_camera && objid != obj_player && objid != obj_ground  && objid != edit_editBtn
			&& objid != obj_player_deadbox && objid != obj_gaw_pagination && objid != edit_editBtn && objid!=obj_restart
			&& objid != obj_upload && objid != obj_saver && objid != obj_winWall && objid != obj_winWall1 && objid != obj_ground2
			&& objid != obj_ground && objid != obj_playEditorBtn && objid != BoxOpts{
				obj_name = object_get_name(objid);
				angle = obj.image_angle
				xscale = obj.image_xscale
				yscale = obj.image_yscale
				blend = obj.image_blend
				if variable_instance_exists(obj, "group") {
					groupo = obj.group
				} else {
					groupo = 0
				}
				xpos = obj.x
				ypos = obj.y
		
				if xpos > 0 {
					file_text_write_string(file, obj_name)
					file_text_writeln(file)
					file_text_write_real(file, angle)
					file_text_writeln(file)
					file_text_write_real(file, xscale)
					file_text_writeln(file)
					file_text_write_real(file, yscale)
					file_text_writeln(file)
					file_text_write_real(file, groupo)
					file_text_writeln(file)
					file_text_write_real(file, xpos)
					file_text_writeln(file)
					file_text_write_real(file, ypos)
					file_text_writeln(file)
					
					if objid == obj_ring1 or objid == obj_ring2 or objid == obj_ring3
					or objid == obj_ring4
					{
						file_text_write_real(file, obj.reverse)
						file_text_writeln(file)
					}
					
				}
			}
		}
	}
	file_text_close(file)
}

//This script will do aaaaaaaaall this (Bullshit) for every object
