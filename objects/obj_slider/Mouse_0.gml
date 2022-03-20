ball_x = clamp(mouse_x,x+(ball_width/2),x+sprite_width-(ball_width/2));

volume = clamp(ball_x - (x+(ball_width/2)), 0, sprite_width);

global.sound_effect_volume = volume/max_volume;

audio_group_set_gain(SoundEffect, global.sound_effect_volume, 0);

if(!audio_is_playing(alert_1)){
audio_play_sound(alert_1,1,false);
}