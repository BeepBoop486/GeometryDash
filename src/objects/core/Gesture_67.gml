var _x = global.drag_room_x - event_data[? "rawposX"];
var _y = global.drag_room_y - event_data[? "rawposY"];

camera_set_view_pos(global.camera, _x, _y)