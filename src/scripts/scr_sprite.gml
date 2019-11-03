pd2=instance_create(x, y+(30*image_xscale)*gravdir, obj_par2)
pd2.hspeed=random_range(0,1)*image_xscale
pd2.vspeed=random_range(-3,3)*image_xscale
pd2.image_xscale=random_range(0.2, 1)*image_xscale
pd2.image_yscale=pd2.image_xscale
pd2.image_blend=col2