audio_play_sound(laser_special_shooting,3,false);

default_size = sprite_get_width(spr_player_laser);
beacon_size = sprite_get_width(spr_player_beacon);
player_size = sprite_get_width(spr_gun);
frame = 0;
frame_plus = 0;
size = 0;

if(!instance_exists(obj_gun)){
	instance_destroy();
}

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
		break;
	}
}