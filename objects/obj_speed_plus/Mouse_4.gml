if(global.points > 0) and (global.speed_level < global.speed_max_level) and (!obj_speed_bar.disable_buttons){
	global.speed_level += 50;
	global.points--;
	global.speed_form += 2;
	obj_speed_bar.disable_buttons = true;
	PlaySound("ButtomPress");
}
