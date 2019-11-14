req = http_post_string(global.serverUrl+"levels/GDDLevelPostDownload.php", "secret="+global.serverSecret+"&id="+string(global.lvlid))
req2 = http_get(global.serverUrl+"levels/GDDGetLevelDownloads.php?id="+string(global.lvlid))
//req3 = http_get(global.serverUrl+"levels/GDDGetLevelCnt.php?id="+string(global.lvlid))
req3 = http_get_file(global.serverUrl+"levels/saved/"+string(global.lvlid)+".gdl", working_directory+string(global.lvlid)+".gdl")