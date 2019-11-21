global.logingname = get_string("Enter your username","")
global.logingpass = get_string("Enter your password","")

requiem = http_post_string(global.serverUrl+"users/GDDLoginUser.php", "secret="+string(global.serverSecret)+"&uname="+string(global.logingname)+"&upass="+string(global.logingpass))