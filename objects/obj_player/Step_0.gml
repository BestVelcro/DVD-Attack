right_key = keyboard_check(global.right_buttom);
left_key = keyboard_check(global.left_buttom);
up_key = keyboard_check(global.up_buttom);
down_key = keyboard_check(global.down_buttom);
dash = keyboard_check_pressed(global.dash_buttom);

var h_move = right_key-left_key;
var v_move = down_key-up_key;

if(global.speed_level > 0) and (dash) and (!dash_cooldown) and (!global.during_super) and (abs(h_move)+abs(v_move) > 0){
	audio_play_sound(dash_1,2,false);
	move_speed = move_speed*4;
	alarm[1] = room_speed;
	dash_cooldown = true;
}
move_speed = clamp(move_speed-0.5,max_move_speed*global.slowmotion,(max_move_speed*4)*global.slowmotion);
if(move_speed > max_move_speed) instance_create_layer(x,y,"Particles",obj_dashparticle);

if(h_move != 0 or v_move != 0){
dir = point_direction(0,0,h_move,v_move);
x_move = lengthdir_x(move_speed,dir);
y_move = lengthdir_y(move_speed,dir); 
if(x+x_move+(sprite_width/2*sign(x_move)) > room_width) or (x+x_move+(sprite_width/2*sign(x_move)) < 0){
	x_move = 0;
}
if(y+y_move+(sprite_height/2*sign(y_move)) > room_height) or (y+y_move+(sprite_height/2*sign(y_move)) < 0){
	y_move = 0;
}


x += x_move;
y += y_move;

image_angle = dir;
}

if(global.health <= 0){
	var particle_speed = 4;
	var particle_angle = 0;
	var particle_alpha = 0.2;
	
	repeat(5){
	var quantity = 16;
	var angle = particle_angle;
	repeat(quantity){
		var particle = instance_create_layer(x,y,"Player",obj_deathparticle);
		particle.direction = angle;
		particle.speed = particle_speed;
		particle.alpha_speed = particle_alpha;
		angle += (360/quantity);
	}
	
	var quantity = 16;
	var angle = particle_angle+33;
	repeat(quantity){
		var particle = instance_create_layer(x,y,"Player",obj_deathparticle);
		particle.direction = angle;
		particle.speed = particle_speed-1;
		particle.image_speed = 0.8;
		particle.image_xscale = 2;
		particle.image_yscale = 2;
		particle.alpha_speed = particle_alpha-0.01;
		angle += (360/quantity);
	}
		particle_speed -= 0.5;
		particle_angle += 33;
		particle_alpha -= 0.02;
	}
	
	global.game_stop = true;
	instance_create_layer(room_width/2,room_height/2,"Instances",obj_end_game);
	if(instance_exists(obj_game)){
		obj_game.alarm[1] = room_speed*2;
	}
	instance_destroy();
}

// SUPERS

// When the Super Start
if(global.start_super){
if(global.speed_level > 50){
	global.start_super = false;
	global.during_super = true;
	alarm[2] = room_speed*3;
}
if(global.health_level > 50){
	audio_play_sound(health_special_1,2,false);
	global.start_super = false;
	global.during_super = true;
	instance_create_layer(x,y,"Particles",obj_shockwave_particle);
	iframe = true;
	alarm[0] = room_speed*2;
}
}

// When the Super is Happening
if(global.during_super){
if(global.speed_level > 50){
	global.slowmotion = slowmotion;
}

if(global.health_level > 50){
	with(obj_bouncy_object){
		if(point_distance(other.x,other.y,x,y) < other.circle_size){
			health_special = true;
			audio_play_sound(health_special_1,2,false);
			direction = point_direction(other.x,other.y,x,y);
			plus_speed = max_speed*6;
			if(global.damage > 0){
				enemy_health -= enemy_max_health/2;
			}
		}
	}
	global.during_super = false;
}
}