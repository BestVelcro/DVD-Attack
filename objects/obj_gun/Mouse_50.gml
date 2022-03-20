if(!cooldown and !global.during_super){


var shoot_sound = choose(shoot_1,shoot_2,shoot_3,shoot_4,shoot_5);

  audio_play_sound(shoot_sound, 1, false);


cooldown = true;
if(global.speed_level > 0) image_speed = 1.5; else image_speed = 1;
var bullet_x = lengthdir_x(sprite_width/2,image_angle);
var bullet_y = lengthdir_y(sprite_height/2,image_angle);
var bullet = instance_create_layer(x+bullet_x,y+bullet_y,"Player",obj_bullet);
bullet.direction = image_angle+random_range(-2,2);
bullet.image_angle = image_angle;
alarm[0] = room_speed/fire_rate;
global.shoot_hint = true;
}