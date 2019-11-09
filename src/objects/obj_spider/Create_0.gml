/// @description Spider logic
ini_physics(3)
global.yscroll=0
fis=0.8
image_xscale=0.8
ddb=instance_create(x, y, obj_player_deadbox)
col1=global.col1
col2=global.col2
jumpspd=10
hsp=10.6*global.spdboost
canring=0
angle=0
trail=0
scr_other_var()
parx=x

///anim set
animation=0
delay=7
//head
hmangle=0
hmspd=0.4
hmlength=3
hy=y
//leg1
l1x=x
l1y=y
l1angle=0
l1toangle=45
//leg2
l2x=x
l2y=y
l2angle=0
l2toangle=-45
//leg3
l3x=x
l3y=y
l3angle=0
//leg4
l4x=x
l4y=y
l4angle=0