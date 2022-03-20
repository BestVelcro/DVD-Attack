repeat(150){
	var particle = instance_create_layer(other.x,other.y,"Instances",obj_bouncydeathparticle);
	particle.speed = irandom_range(1,5);
	particle.direction = irandom(360);
	particle.draw_color = other.dvd_color;
}
instance_destroy(other);