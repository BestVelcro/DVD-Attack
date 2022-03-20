if(current_value == global.damage){
	tick_speed = 0;
	disable_buttons = false;
}
if(current_value < global.damage){
	current_value = clamp(current_value+tick_speed,0,global.damage);
	tick_speed++;
}
if(current_value > global.damage){
	current_value = clamp(current_value-tick_speed,global.damage,global.max_damage);
	tick_speed++;
}