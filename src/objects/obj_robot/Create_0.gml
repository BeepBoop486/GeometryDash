hsp=10.6*global.spdboost
ini_physics(6)
global.yscroll=1
global.g1y=room_height-164
global.g2y=0
cangh=0
fis=1
image_xscale=1
image_yscale=1
ddb=instance_create(x,y, obj_player_deadbox)
avoidup=1
col1=global.col1
col2=global.col2
hsp=10.6*global.spdboost
canring=0
angle=0
trail=0
scr_other_var()

///animation set
animation=0
//head
hmspd=0.4
hmlength=4
hmangle=0
//hmy=y
hangle=0

hjangle=18
hjdelay=9

//leg1
l1mspd=0.2
l1mlength=40
l1mangle=0
//l1my=y
l1angle=0

l1jangle=-22
l1jdelay=9

//pie
piemspd=0.2
piemlength=30
piemangle=0
piemy=y
piemx=x
pieangle=0

piejangle=-22
piejmtox=15
piejmtoy=8
piejdelay=9

//pie2
pie2mspd=0.2
pie2mlength=30
pie2mangle=0
pie2my=y
pie2mx=x
pie2angle=0

pie2jangle=22
pie2jmtox=-15
pie2jmtoy=-8
pie2jdelay=9

//other
animoffset=13
fuegosize=0
hy=sin(hmangle)*hmlength
