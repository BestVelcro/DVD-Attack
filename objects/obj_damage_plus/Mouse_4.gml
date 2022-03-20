if(global.points > 0) and (global.damage < global.max_damage) and (!obj_damage_bar.disable_buttons){
	global.damage += 50;
	global.points--;
	global.damage_form += 2;
	obj_damage_bar.disable_buttons = true;
	PlaySound("ButtomPress");
}