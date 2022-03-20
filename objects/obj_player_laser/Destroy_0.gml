audio_stop_sound(laser_special_shooting);

audio_play_sound(laser_special_end,1,false);

repeat(50){
var random_laser_length = irandom_range(player_size+beacon_size,length_laser);
var random_x_cord = lengthdir_x(random_laser_length, direction);
var random_y_cord = lengthdir_y(random_laser_length, direction);
var particle = instance_create_layer(x+random_x_cord,y+random_y_cord,"Particles", obj_laser_particle);
particle.direction = irandom(360);
}