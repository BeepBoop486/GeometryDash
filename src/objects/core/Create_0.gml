/// @description var init

global.toput = noone

global.selected_obj = noone //Selected object

global.selected_mode = 0 // 0 - build, 1 - edit, 2 - delete

global.playing = false //Checks if we're in test mode

//global.dragging= false //Variable that determines wether we're dragging or not

//new dragging system
global.camera = view_camera[0]
global.drag_room_x = 0
global.drag_room_y = 0

global.intab = 0 // 0 - solid, 1 - spike

global.levelspeed = 1 // This is for the speed switcher



global.wallx = 0
room_width = 5000

previousMode = 0

alarm[0] = 60

///Basic and shitty object pagination

global.solidspage = 0
global.platformspage = 0
global.spikepage = 0
global.orbspage = 0



global.maxsolidspage = 4
global.maxplatformspage=1
global.maxspikepage = 2
global.maxorbspage = 2
