// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -100; // obj_ed_obj
global.__objectDepths[1] = -100; // edit_buildBtn
global.__objectDepths[2] = -100; // edit_editBtn
global.__objectDepths[3] = -100; // edit_deleteBtn
global.__objectDepths[4] = -1; // obj_editorTab
global.__objectDepths[5] = 0; // obj_save
global.__objectDepths[6] = 0; // obj_load
global.__objectDepths[7] = 0; // obj_editObj
global.__objectDepths[8] = 0; // obj_editGroupID
global.__objectDepths[9] = 0; // obj_pagination
global.__objectDepths[10] = 0; // obj_optionsBTN
global.__objectDepths[11] = -4000; // BoxOpts
global.__objectDepths[12] = 0; // undel
global.__objectDepths[13] = 1; // core
global.__objectDepths[14] = -220; // obj_editBG
global.__objectDepths[15] = 0; // obj_wall
global.__objectDepths[16] = 2; // obj_ground
global.__objectDepths[17] = 0; // obj_grid1
global.__objectDepths[18] = 0; // obj_grid2
global.__objectDepths[19] = 0; // obj_grid3
global.__objectDepths[20] = 0; // obj_grid4
global.__objectDepths[21] = 0; // obj_grid5
global.__objectDepths[22] = 0; // obj_grid6
global.__objectDepths[23] = 0; // obj_grid7
global.__objectDepths[24] = 0; // obj_grid8
global.__objectDepths[25] = 0; // obj_block001_01
global.__objectDepths[26] = 0; // obj_block001_02
global.__objectDepths[27] = 0; // obj_block001_03
global.__objectDepths[28] = 0; // obj_block001_04
global.__objectDepths[29] = 0; // obj_block001_05
global.__objectDepths[30] = 0; // obj_block001_06
global.__objectDepths[31] = 0; // obj_block001_07
global.__objectDepths[32] = 0; // obj_block001_slope
global.__objectDepths[33] = 0; // obj_spike1
global.__objectDepths[34] = 0; // obj_ring1
global.__objectDepths[35] = 0; // obj_ring2
global.__objectDepths[36] = 0; // obj_ring3
global.__objectDepths[37] = 0; // obj_ring4
global.__objectDepths[38] = 0; // obj_ring5
global.__objectDepths[39] = 0; // obj_ring6
global.__objectDepths[40] = 0; // obj_ring7
global.__objectDepths[41] = -1; // obj_player
global.__objectDepths[42] = 0; // obj_player_deadbox
global.__objectDepths[43] = 10; // obj_camera
global.__objectDepths[44] = 0; // obj_restart
global.__objectDepths[45] = 0; // obj_cam_shake
global.__objectDepths[46] = 0; // obj_ring_parent
global.__objectDepths[47] = 0; // obj_par1
global.__objectDepths[48] = 0; // obj_par2
global.__objectDepths[49] = 0; // obj_par3


global.__objectNames[0] = "obj_ed_obj";
global.__objectNames[1] = "edit_buildBtn";
global.__objectNames[2] = "edit_editBtn";
global.__objectNames[3] = "edit_deleteBtn";
global.__objectNames[4] = "obj_editorTab";
global.__objectNames[5] = "obj_save";
global.__objectNames[6] = "obj_load";
global.__objectNames[7] = "obj_editObj";
global.__objectNames[8] = "obj_editGroupID";
global.__objectNames[9] = "obj_pagination";
global.__objectNames[10] = "obj_optionsBTN";
global.__objectNames[11] = "BoxOpts";
global.__objectNames[12] = "undel";
global.__objectNames[13] = "core";
global.__objectNames[14] = "obj_editBG";
global.__objectNames[15] = "obj_wall";
global.__objectNames[16] = "obj_ground";
global.__objectNames[17] = "obj_grid1";
global.__objectNames[18] = "obj_grid2";
global.__objectNames[19] = "obj_grid3";
global.__objectNames[20] = "obj_grid4";
global.__objectNames[21] = "obj_grid5";
global.__objectNames[22] = "obj_grid6";
global.__objectNames[23] = "obj_grid7";
global.__objectNames[24] = "obj_grid8";
global.__objectNames[25] = "obj_block001_01";
global.__objectNames[26] = "obj_block001_02";
global.__objectNames[27] = "obj_block001_03";
global.__objectNames[28] = "obj_block001_04";
global.__objectNames[29] = "obj_block001_05";
global.__objectNames[30] = "obj_block001_06";
global.__objectNames[31] = "obj_block001_07";
global.__objectNames[32] = "obj_block001_slope";
global.__objectNames[33] = "obj_spike1";
global.__objectNames[34] = "obj_ring1";
global.__objectNames[35] = "obj_ring2";
global.__objectNames[36] = "obj_ring3";
global.__objectNames[37] = "obj_ring4";
global.__objectNames[38] = "obj_ring5";
global.__objectNames[39] = "obj_ring6";
global.__objectNames[40] = "obj_ring7";
global.__objectNames[41] = "obj_player";
global.__objectNames[42] = "obj_player_deadbox";
global.__objectNames[43] = "obj_camera";
global.__objectNames[44] = "obj_restart";
global.__objectNames[45] = "obj_cam_shake";
global.__objectNames[46] = "obj_ring_parent";
global.__objectNames[47] = "obj_par1";
global.__objectNames[48] = "obj_par2";
global.__objectNames[49] = "obj_par3";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for