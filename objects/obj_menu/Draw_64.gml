draw_set_font(Default_Font);
var i = 0;
repeat(global.max_points){
	draw_sprite(spr_points_icon,1,30+i,30);
	i += sprite_get_width(spr_points_icon);
}
var i = 0;
repeat(global.points){
	draw_sprite(spr_points_icon,0,30+i,30);
	i += sprite_get_width(spr_points_icon);
}