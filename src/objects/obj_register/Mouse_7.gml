show_message(global.reguname)
show_message(global.regupass)

req = http_post_string(global.serverUrl+"users/GDDRegisterUser.php", "secret="+global.serverSecret+"&uname="+global.reguname+"&upass="+global.regupass+"&upass2="+global.regupass)