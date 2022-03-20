choosen_color = make_color_rgb(193,77,0);
if(global.speed_level > 0){
	choosen_color = make_color_rgb(79,181,142);
}
if(global.damage > 0){
	choosen_color = make_color_rgb(219,44,0);
}

var angle = 0;
	var number_of_circles = 10;
	size = 5;
	obj_game.shake_magnitude = obj_game.shake_max_magnitude/2;
repeat(360*number_of_circles){
	var dir_x = lengthdir_x(size,angle);
	var dir_y = lengthdir_y(size,angle);
	var particle = instance_create_layer(x+dir_x,y+dir_y,layer,obj_circle_particle);
	particle.direction = angle;
	particle.choosen_color = choosen_color;
	angle += 2;
	if(angle > 360){
		angle = 0;
		size += 5;
	}
}
with(obj_player){circle_size = other.size;}
size_circle = size/2;
up_size = 5;