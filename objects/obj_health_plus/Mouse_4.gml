if(global.points > 0) and (global.health_level < global.health_max_level) and (!obj_health_bar.disable_buttons){
	global.health_level += 50;
	global.points--;
	global.health_form += 2;
	obj_health_bar.disable_buttons = true;
	PlaySound("ButtomPress");
}