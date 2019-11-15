room_goto_next()



global.spdboost = 1



global.music = AirborneRobots

global.pause = 0

global.pulse = 0



global.bgcolor = c_red

global.yscroll = 1



global.g1y = 0

global.g2y = 0



global.gcolor = merge_color(c_red, c_black, 0.3)

global.ylimit = 4076



global.negrito = 0

///Character vars
//Cube
global.cube = 0

//colors
global.col1 = c_yellow
global.col2 = c_aqua

//Accounts
global.loggedin = false
global.loggedname = ""
global.loggedpass = ""

//Servers
global.serverUrl = "https://gddarkness.000webhostapp.com/"
global.serverSecret = "4fd5b65e052e7bdfa0c7bc58e1744a74a2ecc5d7cd2936013fe8a15585c1f1c4"

if file_exists("player.dat") {
	load_game()
} else {
	save_game()
}