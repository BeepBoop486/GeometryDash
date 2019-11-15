var file = file_text_open_write("player.dat")
//To save - cube, col1 and col2
file_text_write_real(file, global.cube)
file_text_writeln(file)
file_text_write_real(file, global.col1)
file_text_writeln(file)
file_text_write_real(file, global.col2)
file_text_writeln(file)

//Utils, loggedin, loggedname and loggedpass
file_text_write_real(file, global.loggedin)
file_text_writeln(file)
file_text_write_string(file, global.loggedname)
file_text_writeln(file)
file_text_write_string(file, global.loggedpass)
file_text_writeln(file)

//Later stars, coins, orbs, diamonds and all that bullshit
file_text_close(file)