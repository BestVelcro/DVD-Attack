if(current_value == global.health_level){
	tick_speed = 0;
	disable_buttons = false;
}
if(current_value < global.health_level){
	current_value = clamp(current_value+tick_speed,0,global.health_level);
	tick_speed++;
}
if(current_value > global.health_level){
	current_value = clamp(current_value-tick_speed,global.health_level,global.health_max_level);
	tick_speed++;
}