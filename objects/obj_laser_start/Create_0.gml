player_size = sprite_get_width(spr_gun);
audio_play_sound(laser_special_charge,2,false);

if(instance_exists(obj_gun)){
direction = obj_gun.image_angle;
image_angle = direction;
beacondir_x = lengthdir_x(player_size,direction);
beacondir_y = lengthdir_y(player_size,direction);
x = obj_gun.x+beacondir_x;
y = obj_gun.y+beacondir_y;
}