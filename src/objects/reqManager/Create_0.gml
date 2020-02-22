req = http_post_string(global.serverUrl+"levels/GDDLevelPostDownload.php", "secret="+global.serverSecret+"&id="+string(global.lvlid))
req2 = http_get(global.serverUrl+"levels/GDDGetLevelDownloads.php?id="+string(global.lvlid))
reqLikes = http_get(global.serverUrl+"levels/GDDGetLevelLikes.php?lvlid="+string(global.lvlid))
//req3 = http_get(global.serverUrl+"levels/GDDGetLevelCnt.php?id="+string(global.lvlid))
req3 = http_get_file(global.serverUrl+"levels/saved/"+string(global.lvlid)+".gdl", working_directory+string(global.lvlid)+".gdl")
req4 = http_get(global.serverUrl+"levels/GDDHaveILiked.php?id="+string(global.lvlid))
req5 = 901290
req6 = http_get(global.serverUrl+"levels/GDDHaveIDisliked.php?id="+string(global.lvlid))
req7 = 901291
req8 = http_get(global.serverUrl+"levels/GDDGetLevelDislikes.php?lvlid="+string(global.lvlid))