draw_self();

if(global.damage > 0) and (!global.shoot_hint){
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y-40,"Hold down your Left Mouse Buttom to Shoot!");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
}

if(global.speed_level > 50) and (!global.super_dash_hint) and (global.during_super){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(x,y-40,"Click anywhere on the screen to teleport!");

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}