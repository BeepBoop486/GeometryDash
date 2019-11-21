/// @description var init

downx=0
downy=0
drag_x=0
drag_y=0
timedown=0
dragging=false

global.toput = noone

global.selected_obj = noone //Selected object

global.selected_mode = 0 // 0 - build, 1 - edit, 2 - delete

global.playing = false //Checks if we're in test mode

//global.dragging= false //Variable that determines wether we're dragging or not

global.intab = 0 // 0 - solid, 1 - spike

global.levelspeed = 1 // This is for the speed switcher



global.wallx = 0
room_width = 5000

alarm[0] = 60

///Basic and shitty object pagination

global.solidspage = 0
global.platformspage = 0
global.outlinespage = 0
global.spikepage = 0
global.orbspage = 0



global.maxsolidspage = 4
global.maxplatformspage=1
global.maxoutlinespage =1
global.maxspikepage = 2
global.maxorbspage = 2

//For the new UI

if global.notexists {
	save_level(0, "l" + string(global.editingLvl) + ".gdl")
	global.notexists = false
} else {
	load_level("l" + string(global.editingLvl) + ".gdl")
}

if room_width > 10000 {
	__view_set(e__VW.XView, 0, room_width - 1280)
}
