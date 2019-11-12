global.logingname = get_string("Enter your username","")
global.logingpass = get_string("Enter your password","")

requiem = http_post_string(global.serverUrl+"users/GDDLoginUser.php", "secret="+global.serverSecret+"&uname="+global.logingname+"&upass="+global.logingpass)