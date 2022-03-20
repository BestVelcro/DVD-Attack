if(global.points < global.max_points) and (global.health_level > 0) and (!obj_health_bar.disable_buttons){
	global.health_level -= 50;
	global.points++;
	global.health_form -= 2;
	obj_health_bar.disable_buttons = true;
	PlaySound("ButtomPress");
}
