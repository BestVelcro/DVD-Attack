if(global.points < global.max_points) and (global.damage > 0) and (!obj_damage_bar.disable_buttons){
	global.damage -= 50;
	global.points++;
	global.damage_form -= 2;
	obj_damage_bar.disable_buttons = true;
	PlaySound("ButtomPress");
}