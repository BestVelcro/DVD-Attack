if(instance_exists(obj_player)){
x = obj_player.x;
y = obj_player.y;
direction = obj_gun.image_angle;
laserdir_x = lengthdir_x(beacon_size+player_size,direction);
laserdir_y = lengthdir_y(beacon_size+player_size,direction);
beacondir_x = lengthdir_x(player_size,direction);
beacondir_y = lengthdir_y(player_size,direction);

var max_length = room_width*2;

for(i = 0; i < max_length; i++){
	final_x = x + lengthdir_x(i, direction);
	final_y = y + lengthdir_y(i, direction);

	length_laser = i;
	
	if(position_meeting(final_x,final_y, obj_collision_wall)){
repeat(5){
var particle = instance_create_layer(final_x,final_y,"TopParticles", obj_laser_particle);
size++
particle.image_xscale = size;
particle.image_yscale = size;
if(size >= 3){
	size = 0;
}
particle.direction = irandom(360);
}
		break;
	}
}
}

repeat(5){
var random_laser_length = irandom_range(player_size+beacon_size,length_laser);
var random_x_cord = lengthdir_x(random_laser_length, direction);
var random_y_cord = lengthdir_y(random_laser_length, direction);
var particle = instance_create_layer(x+random_x_cord,y+random_y_cord,"Particles", obj_laser_particle);
particle.direction = irandom(360);
}
// Frame manager
frame_plus++
if(frame_plus >= 20){
frame++
frame_plus = 0;
}
if(frame >= 4){
frame = 0;
}

if(!instance_exists(obj_sensor)) instance_create_layer(0,0,"Instances", obj_sensor);

obj_sensor.x = x+beacondir_x;
obj_sensor.y = y+beacondir_y;
obj_sensor.image_angle = direction;
obj_sensor.image_xscale = length_laser;
obj_sensor.image_yscale = sprite_height/sprite_get_height(spr_sensor);

//Collision Detection
with(obj_bouncy_object){
	if(place_meeting(x,y,obj_sensor)){
		enemy_health--;
		shake = true;
		alarm[0] = room_speed/16;
	}
}

