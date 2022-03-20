iframe = false;
if(global.speed_level > 50){
	max_move_speed = 4;
}else if(global.speed_level > 0){
	max_move_speed = 3;
}else{
	max_move_speed = 2;
}
move_speed = max_move_speed;
dash_cooldown = false;
image_speed = 0;
image_index = global.form;

slowmotion = 0.10;

circle_size = 0;