global.spdboost=1
audio_stop_all()
audio_play_sound(snd_dead,1,0)
instance_create(x,y,obj_cam_shake)
effd=instance_create(x,y,obj_par1)
effd.image_blend=col1
pd=instance_create(x,y,obj_par2)
pd.sprite_index=sprite_index+2
pd.image_angle=angle
pd.image_blend=col1
pd.spd=0.2
pd.image_xscale=image_xscale
pd.image_yscale=image_yscale
pangle=0
repeat 45
{
    pd2=instance_create(x,y,obj_par2)
    pd2.direction=pangle
    pd2.speed=random_range(2,16)
    pd2.image_xscale=random_range(0.2,1)
    pd2.image_yscale=pd2.image_xscale
    pd2.image_blend=col2
    pangle+=8
}
with obj_player_deadbox {instance_destroy()}
instance_destroy()
if player != 1 {
	instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0),obj_restart)
}