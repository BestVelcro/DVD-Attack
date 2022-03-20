if(instance_exists(obj_player)){
	x = obj_player.x;
	y = obj_player.y;
	if(global.start_super){
		global.start_super = false;
		global.during_super = true;
		alarm[1] = room_speed*3;
		laser = instance_create_layer(x,y,"Player",obj_laser_start);
	}
	
	if(global.during_super){
	var angle_diff = AngleDiff(point_direction(x,y,mouse_x,mouse_y), image_angle);
	var pre_angle_diff = sign(angle_diff);
	image_angle = image_angle+(sign(angle_diff)/4);
	var after_angle_diff = sign(AngleDiff(point_direction(x,y,mouse_x,mouse_y), image_angle));
	if(pre_angle_diff != after_angle_diff){
		image_angle = point_direction(x,y,mouse_x,mouse_y);
	}
	}else if(!global.during_super){
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	}
	
}else{
	instance_destroy();
}