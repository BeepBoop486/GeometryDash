var sel_group;
sel_group = global.selected_obj.group
toset =get_string("Enter the group for the current selected object: ", string(sel_group))
global.selected_obj.group = toset
