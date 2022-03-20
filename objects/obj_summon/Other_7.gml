if(sprite_index == spr_warning){
	sprite_index = spr_summon;
	PlaySound("SummonEnemy")
}else{
repeat(150){
	var particle = instance_create_layer(x,y,"Instances",obj_bouncyparticle);
	particle.speed = 3*global.slowmotion;
	particle.direction = irandom(360);
}
instance_create_layer(x,y,"Instances",obj_bouncy_object);
instance_destroy();
}