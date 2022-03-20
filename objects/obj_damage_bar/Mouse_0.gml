/*
if(mouse_x < x+sprite_width/2) and (global.points < 2) and (image_index != 0){
	global.damage = false;
	image_index = 0;
	global.points++;
	global.form -= 2;
}
if(mouse_x > x+sprite_width/2) and (global.points > 0) and (image_index != 1){
	global.damage = true;
	image_index = 1;
	global.points--;
	global.form += 2;
}
*/