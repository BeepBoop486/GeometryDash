global.deflogged = true
requiem = http_post_string(global.serverUrl+"users/GDDLoginUser.php", "secret="+global.serverSecret+"&uname="+global.loggedname+"&upass="+global.loggedpass)