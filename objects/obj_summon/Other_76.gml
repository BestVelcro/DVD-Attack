if(event_data[? "event_type"] == "sprite event"){
    if(event_data[? "message"] == "alert"){
			if(audio_is_playing(alert_1)) volume_changer++;
            audio_sound_gain(alert_1, global.sound_effect_volume/volume_changer, 0);
			audio_play_sound(alert_1, 0, false);
    }
} 