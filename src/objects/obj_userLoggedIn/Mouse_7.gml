show_message_async("Saving in the cloud")
req = http_post_string(global.serverUrl+"users/GDDSaveOnline.php", "secret="+global.serverSecret+"&loggedname="
+global.loggedname+"&stars="+string(global.accstars)+"&demons="+string(global.demons)+"&icon="+string(global.cube)
+"&color1="+string(global.col1)+"&color2="+string(global.col2)+"&coins="+string(global.coins)+
"&userCoins="+string(global.userCoins)+"&ship="+string(global.ship)+"&ball="+string(global.ball)+
"&ufo="+string(global.ufo)+"&wave="+string(global.wave)+"&robot="+string(global.robot)+"&spider="+
string(global.spider)+"&cps="+string(global.cps)+"&diamonds="+string(global.diamonds)+"&orbs="+
string(global.orbs)+"&completedLevels="+string(global.completedLevels))
amimodcheck = http_get(global.serverUrl+"users/GDDAmIMod.php")