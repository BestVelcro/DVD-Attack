xx = x;
yy = y;
layout_width = sprite_get_width(spr_layout_config);
layout_height = sprite_get_height(spr_layout_config);
x += layout_width+15+(sprite_get_width(spr_define_buttom)/2)-(sprite_width/2);
image_speed = 0;

if(buttom_function == "fullscreen"){
marked = window_get_fullscreen();
image_index = marked;
}

if(buttom_function == "hints"){
	if(!global.shoot_hint) or (!global.super_hint) or (!global.super_dash_hint){
		marked = false;
		image_index = marked;
	}else{
		marked = true;
		image_index = marked;
	}
}