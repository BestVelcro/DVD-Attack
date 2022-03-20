if(!global.key_change){
var _saveData = array_create(0);

	var _saveScore = {
		up_key: global.up_buttom,
		down_key: global.down_buttom,
		left_key: global.left_buttom,
		right_key: global.right_buttom,
		dash_key: global.dash_buttom,
		menu_key: global.menu_buttom,
		restart_key: global.restart_buttom,
		effect_sound_volume: global.sound_effect_volume
	} 
	array_push(_saveData, _saveScore);

	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "configs.save");
	buffer_delete(_buffer);
}else{
var _saveData = array_create(0);

	var _saveScore = {
		up_key: old_up_key,
		down_key: old_down_key,
		left_key: old_left_key,
		right_key: old_right_key,
		dash_key: old_dash_key,
		menu_key: old_menu_key,
		restart_key: old_restart_key,
		effect_sound_volume: global.sound_effect_volume
	} 
	array_push(_saveData, _saveScore);

	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "configs.save");
	buffer_delete(_buffer);
}