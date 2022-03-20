image_speed = 0;
if(global.damage <= 0){
	instance_destroy();
}
cooldown = true;
alarm[0] = room_speed;

if(global.speed_level <= 0){
fire_rate = 8;
}else if(global.speed_level < 100){
fire_rate = 10;
}else{
fire_rate = 12;
}