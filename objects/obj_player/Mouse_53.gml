if(global.speed_level > 50) and (global.during_super){
	//Disable Hint
	global.super_dash_hint = true;
	// Check if mouse is off bounds before taking any actions
	if(mouse_x > 0+sprite_width) and (mouse_x < room_width-sprite_width) and (mouse_y > 0+sprite_height) and (mouse_y < room_height-sprite_height){
	global.slowmotion = 1;
	pre_tp_x = x;
	pre_tp_y = y;
	x = mouse_x;
	y = mouse_y;
	var tp_angle = point_direction(pre_tp_x,pre_tp_y,x,y);
	var tp_size = point_distance(pre_tp_x,pre_tp_y,x,y);
	for(i = 0; i < tp_size; i++){
		var particle_x = lengthdir_x(i,tp_angle);
		var particle_y = lengthdir_y(i,tp_angle);
		instance_create_layer(pre_tp_x+particle_x,pre_tp_y+particle_y,"Particles",obj_dashparticle);
	}
	kill_count = 1;
	with(obj_bouncy_object){
		if(collision_line(other.pre_tp_x,other.pre_tp_y,other.x,other.y,id,false,false)){
			obj_game.shake_magnitude = (obj_game.shake_max_magnitude/2)*other.kill_count;
			other.kill_count++
		repeat(150){
			var particle = instance_create_layer(x,y,"Instances",obj_bouncydeathparticle);
			particle.speed = irandom_range(1,5);
			particle.direction = irandom(360);
			particle.draw_color = dvd_color;
		}
		global.score += 250;
		instance_destroy();
		}
	}
	global.during_super = false;
	}
}