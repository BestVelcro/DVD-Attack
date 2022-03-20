if(!iframe){
	iframe = true;
global.health--;
	var hit_sound = choose(player_hitted_1,player_hitted_2,player_hitted_3,player_hitted_4,player_hitted_5);
	audio_sound_gain(hit_sound,clamp(global.health,0,global.sound_effect_volume),0);
	audio_play_sound(hit_sound,4,false);
with(obj_game){
	shake_magnitude = shake_max_magnitude;
}
alarm[0] = room_speed * 2;
}