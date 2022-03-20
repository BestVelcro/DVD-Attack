if(current_value == global.speed_level){
	tick_speed = 0;
	disable_buttons = false;
}
if(current_value < global.speed_level){
	current_value = clamp(current_value+tick_speed,0,global.speed_level);
	tick_speed++;
}
if(current_value > global.speed_level){
	current_value = clamp(current_value-tick_speed,global.speed_level,global.speed_max_level);
	tick_speed++;
}