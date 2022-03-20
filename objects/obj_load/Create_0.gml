audio_group_load(SoundEffect);

global.max_points = 3;
global.points = global.max_points;

global.damage = 0;
global.max_damage = 100;

global.health_level = 0;
global.health_max_level = 100;
global.max_health = 1;

global.speed_level = 0;
global.speed_max_level = 100;

global.form = 0;
global.super = false;
global.highest_score = 0;

global.damage_form = 0;
global.health_form = 0;
global.speed_form = 0;

global.key_change = false;

global.sound_effect_volume = 1;

if(file_exists("hints.save")){
	var _buffer = buffer_load("hints.save");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	var _loadKeys = array_get(_loadData, 0);
	global.shoot_hint = _loadKeys.shoot_hint;
	global.super_hint = _loadKeys.super_hint;
	global.super_dash_hint = _loadKeys.super_dash_hint;
}else{
global.shoot_hint = false;
global.super_hint = false;
global.super_dash_hint = false;
}

if(file_exists("highscore.save")){
	var _buffer = buffer_load("highscore.save");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	var _loadScore = array_get(_loadData, 0);
	global.highest_score = _loadScore.highest_score
}else{
	global.highest_score = 0;
}

if(file_exists("configs.save")){
	var _buffer = buffer_load("configs.save");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	var _loadKeys = array_get(_loadData, 0);
	global.up_buttom = _loadKeys.up_key;
	global.down_buttom = _loadKeys.down_key;
	global.left_buttom = _loadKeys.left_key;
	global.right_buttom = _loadKeys.right_key;
	global.dash_buttom = _loadKeys.dash_key;
	global.menu_buttom = _loadKeys.menu_key;
	global.restart_buttom = _loadKeys.restart_key;
	global.sound_effect_volume = _loadKeys.effect_sound_volume;
}else{
global.up_buttom = ord("W");
global.down_buttom = ord("S");
global.left_buttom = ord("A");
global.right_buttom = ord("D");
global.dash_buttom = vk_shift;
global.menu_buttom = vk_escape;
global.restart_buttom = ord("R");
global.sound_effect_volume = 1;
}

audio_group_set_gain(SoundEffect, global.sound_effect_volume, 0);

///////////////
/*
window_set_size(window_get_width(),window_get_height());
*/

room_goto_next();

