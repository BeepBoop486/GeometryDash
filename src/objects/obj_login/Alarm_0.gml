global.logingname = global.reguname
global.logingpass = global.regupass

requiem = http_post_string(global.serverUrl+"users/GDDLoginUser.php", "secret="+string(global.serverSecret)+"&uname="+string(global.logingname)+"&upass="+string(global.logingpass))