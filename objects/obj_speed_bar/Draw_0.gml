draw_sprite(spr_bg_empty_bar,0,x,y);
draw_sprite_stretched(spr_speed_bar_progress,0,x,y,(current_value/global.speed_max_level)*speedbar_width,speedbar_height);
draw_self();

var x_offset = sprite_get_xoffset(sprite_index);
var y_offset = sprite_get_yoffset(sprite_index);


draw_sprite(spr_lightning_icon,0,x+sprite_width/2-x_offset,y+sprite_height/2-y_offset);