tt = instance_create_layer(1456, y, "Instances", obj_downloadFoundlvl)
tt.lvlname = lvlname
tt.lvlid = lvlid
tt.rate = rate
tt.stars = stars
tt.downloads = downloads
tt.likes = likes
tt.dislikes = dislikes
tt.isepic = isepic
tt.isfeatured = isfeatured
tt.isdemon = isdemon
tt.yy = yy

if tt.yy == 0 {
	tt.yy = 0
}