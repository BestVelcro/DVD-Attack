if(buttom_function == "fullscreen"){
if(window_get_fullscreen()){
	marked = false;
	image_index = marked;
	window_set_fullscreen(marked);
}else{
	marked = true;
	image_index = marked;
	window_set_fullscreen(marked);
}
}

if(buttom_function == "hints"){
	if(!global.shoot_hint) or (!global.super_hint) or (!global.super_dash_hint){
		global.shoot_hint = true;
		global.super_hint = true;
		global.super_dash_hint = true;
		marked = true;
		image_index = marked;
	}else{
		global.shoot_hint = false;
		global.super_hint = false;
		global.super_dash_hint = false;
		marked = false;
		image_index = marked;
	}
}