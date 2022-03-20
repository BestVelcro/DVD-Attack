if(shake){
	var x_shake = random_range(-3,3);
	var y_shake = random_range(-3,3);
}else{
	var x_shake = 0;
	var y_shake = 0;
}
draw_sprite_ext(spr_bouncyobject,0,x+x_shake,y+y_shake,1,1,image_angle,dvd_color,1);