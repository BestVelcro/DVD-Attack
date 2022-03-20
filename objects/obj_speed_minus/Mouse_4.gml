if(global.points < global.max_points) and (global.speed_level > 0) and (!obj_speed_bar.disable_buttons){
	global.speed_level -= 50;
	global.points++;
	global.speed_form -= 2;
	obj_speed_bar.disable_buttons = true;
	PlaySound("ButtomPress");
}