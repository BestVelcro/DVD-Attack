	var _saveData = array_create(0);

	var _saveScore = {
		shoot_hint: global.shoot_hint,
		super_hint: global.super_hint,
		super_dash_hint: global.super_dash_hint
	} 
	array_push(_saveData, _saveScore);

	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "hints.save");
	buffer_delete(_buffer);
	

