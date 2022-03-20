if(loading >= ready_value){
global.super_hint = true;
global.start_super = true;
loading = 0;
image_index = 0;
image_speed = 0;
var angle = 0;
repeat(720){
	var particle = instance_create_layer(x,y,"Particles",obj_super_particle);
	particle.speed = 3;
	particle.direction = angle;
angle++;
}
}
