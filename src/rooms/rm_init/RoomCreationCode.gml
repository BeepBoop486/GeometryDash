room_goto_next()



global.spdboost = 1


global.music = 0
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

global.accstars = 0
global.demons = 0
global.coins = 0
global.userCoins = 0
global.ship = 0
global.ball = 0
global.ufo = 0
global.wave = 0
global.robot = 0
global.spider = 0
global.cps = 0
global.diamonds = 0
global.orbs = 0
global.completedLevels = 0
global.amimod = 0
global.displaywidth=1280
global.displayheight=720

//Servers
global.serverUrl = "https://gddarkness.000webhostapp.com/"
global.serverSecret = "4fd5b65e052e7bdfa0c7bc58e1744a74a2ecc5d7cd2936013fe8a15585c1f1c4"

if file_exists("player.dat") {
	load_game()
} else {
	save_game()
}

global.colors = 999
global.color[global.colors] = c_white
global.showads = 1