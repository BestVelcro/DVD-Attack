alarm[0] = room_speed;
mask_index = spr_bouncyobject;
shake_fx = layer_get_fx("ScreenShake");
shake_max_magnitude = 10;
shake_max_speed = 4;
shake_magnitude = 0;
shake_speed = shake_max_speed;
game_over = false;
// game_speed = 0;
next_enemy = 0;
global.start_super = false;
global.during_super = false;
if(global.damage <= 0) global.enemylimit = 30; else if(global.damage > 0){
	global.enemylimit = 40;
	next_enemy = 0;
}
global.slowmotion = 1;
wave_start = false;
if(global.damage > 0) wave_counter_start_default = 3; else wave_counter_start_default = 2;
wave_counter_start = wave_counter_start_default;
wave_counter = 0;

audio_group_set_gain(SoundEffect, global.sound_effect_volume, 0);
