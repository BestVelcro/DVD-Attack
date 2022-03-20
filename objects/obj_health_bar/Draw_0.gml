draw_sprite(spr_bg_empty_bar,0,x,y);
draw_sprite_stretched(spr_health_bar_progress,0,x,y,(current_value/global.health_max_level)*healthbar_width,healthbar_height);
draw_self();

/*
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var string_value = "HEALTH";
*/

var x_offset = sprite_get_xoffset(sprite_index);
var y_offset = sprite_get_yoffset(sprite_index);


draw_sprite(spr_heart_icon,0,x+sprite_width/2-x_offset,y+sprite_height/2-y_offset);
//draw_text_transformed(x+(sprite_width/2),y+(sprite_height/2), string_value,2,2,0);