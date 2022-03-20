wall_hit_sound = choose(wall_hit_1,wall_hit_2,wall_hit_3,wall_hit_4,wall_hit_5);

if(!audio_is_playing(wall_hit_sound)){
	volume_changer = 1;	
}

//var random_angle = irandom_range(0,90);

if(x+sprite_width/2 > room_width) or (x-sprite_width/2 < 0){
	if(!wall_hit){
if(audio_is_playing(wall_hit_sound)) volume_changer += 2;
			
audio_sound_gain(wall_hit_sound, global.sound_effect_volume/volume_changer, 0);
audio_play_sound(wall_hit_sound, 0, false);

dvd_color = choose(c_white,c_blue,c_yellow,c_orange,c_red,c_green);

	hspeed = hspeed * -1;

plus_speed++;

wall_hit = true;
alarm[1] = 5;
	}else{
		direction = point_direction(x,y,room_width/2,room_height/2);
	}
}
if(y+sprite_height/2 > room_height) or (y-sprite_height/2 < 0){
	if(!wall_hit){
if(audio_is_playing(wall_hit_sound)) volume_changer += 2;
			
audio_sound_gain(wall_hit_sound, global.sound_effect_volume/volume_changer, 0);
audio_play_sound(wall_hit_sound, 0, false);

dvd_color = choose(c_white,c_blue,c_yellow,c_orange,c_red,c_green);

vspeed = vspeed * -1;

plus_speed++;

wall_hit = true;
alarm[1] = 5;
	}else{
		direction = point_direction(x,y,room_width/2,room_height/2);
	}
}


var move_speed = clamp((1 + round(plus_speed/2))*global.slowmotion, 0, ((max_speed)*(health_special*2+1))*global.slowmotion);

////////////////////////////////////////////////////////////////////////////
// Other DVDs collision

if(global.damage <= 0) and (!health_special) and (!wall_hit){
	
	// Move DVDs if on top of each other
	
	var enemy_collision = instance_place(x,y,obj_bouncy_object);
   
	if(enemy_collision != noone){
		if(!enemy_collision.health_special) and (!enemy_collision.wall_hit){
		var move_x = lengthdir_x(1,point_direction(enemy_collision.x,enemy_collision.y,x,y));
		var move_y = lengthdir_y(1,point_direction(enemy_collision.x,enemy_collision.y,x,y));
		x = x+move_x;
		y = y+move_y;
		}
	}
	
	
   dir_x = lengthdir_x(move_speed,direction);
   dir_y = lengthdir_y(move_speed,direction);
   var x_collision = instance_place(x+dir_x,y,obj_bouncy_object);
   var y_collision = instance_place(x,y+dir_y,obj_bouncy_object);
   
   if(x_collision != noone){
	   if(!x_collision.health_special) and (!x_collision.wall_hit){
		   x_collision.hspeed = hspeed;
	hspeed = hspeed * -1;
	hits++
	if(hits > 5) and (!stop){
		stop = true;
		var point = instance_create_layer(x+dir_x+((sprite_width/2)*sign(dir_x)),y,"BottomInstances",obj_points);
		point.owner = id;
	}
	   }
   }
   
   if(y_collision != noone){
	   if(!y_collision.health_special) and (!y_collision.wall_hit){
		   y_collision.vspeed = vspeed;
	vspeed = vspeed * -1;
	hits++
	if(hits > 5) and (!stop){
		stop = true;
		var point = instance_create_layer(x,y+dir_y+((sprite_height/2)*sign(dir_y)),"BottomInstances",obj_points);
		point.owner = id;
	}
	   }
   }
}

var wall_collision = instance_place(x,y,obj_collision_wall);
   
if(wall_collision != noone){
	var move_x = lengthdir_x(1,point_direction(wall_collision.x,wall_collision.y,x,y));
	var move_y = lengthdir_y(1,point_direction(wall_collision.x,wall_collision.y,x,y));
	x = x+move_x;
	y = y+move_y;
}


if(!global.game_stop) speed = move_speed; else speed = 0;

if(global.damage > 0){

	if(enemy_health < 0){
		instance_destroy();
	}
	
	if(enemy_health < old_health){
		old_health = enemy_health;
		var enemy_sound = choose(enemy_hurt_1,enemy_hurt_2,enemy_hurt_3,enemy_hurt_4,enemy_hurt_5);

		audio_play_sound(enemy_sound, 1, false);	
	}
}

if(health_special) and (instance_exists(obj_super_icon)){
	var shadow_trail = instance_create_layer(x,y,"Particles",obj_trail_particle);
	shadow_trail.my_color = dvd_color;
	obj_super_icon.health_special_objects = true;
}

////////////////////////////

/*
angle_mod = angle mod 45;
if(x+sprite_width/2 > room_width) and (!down_lock){
	show_debug_message("porra");
	if(y > my_ball.y){
		direction = (angle + angle_mod*2);
	}else if(y < my_ball.y){
		direction = (angle - angle_mod*2);
	}else{
		direction = 180;
	}
	my_ball.x = x;
	my_ball.y = y;
	down_lock = true;
	up_lock = false; left_lock = false; right_lock = false;
}
if(x-sprite_width/2 < 0) and (!up_lock){
	show_debug_message("porra");
	if(y > my_ball.y){
		direction = (angle - angle_mod*2);
	}else if(y < my_ball.y){
		direction = (angle + angle_mod*2);
	}else{
		direction = 0;
	}
	my_ball.x = x;
	my_ball.y = y;
	up_lock = true;
	down_lock = false; left_lock = false; right_lock = false;
}
if(y+sprite_height/2 > room_height) and (!right_lock){
	show_debug_message("porra");
	if(x > my_ball.x){
		direction = (angle - angle_mod*2);
	}else if(x < my_ball.x){
		direction = (angle + angle_mod*2);
	}else{
		direction = 90;
	}
	my_ball.x = x;
	my_ball.y = y;
	right_lock = true;
	up_lock = false; down_lock = false; left_lock = false;
}
if(y-sprite_height/2 < 0) and (!left_lock){
	show_debug_message("porra");
	if(x > my_ball.x){
		direction = (angle + angle_mod*2);
	}else if(x < my_ball.x){
		direction = (angle - angle_mod*2);
	}else{
		direction = 270;
	}
	my_ball.x = x;
	my_ball.y = y;
	left_lock = true;
	up_lock = false; down_lock = false; right_lock = false;
}
	show_debug_message("angle + angle mod: "+string(angle)+" "+string(angle_mod));
	show_debug_message("current direction: "+string(direction));
*/