if(instance_number(obj_bouncy_object) < global.enemylimit){
x_location = irandom_range(room_width/4, room_width-(room_width/4));
y_location = irandom_range(room_height/4, room_height-(room_height/4));
if(!place_meeting(x_location,y_location,obj_bouncy_object)){
instance_create_layer(x_location,y_location,"Instances",obj_summon);
}
}
if(!global.game_stop){
	if(wave_counter <= wave_counter_start) and (!wave_start){
		wave_counter++	
		if(global.damage > 0){
		alarm[0] = clamp(room_speed*(4-(global.score/25000)),room_speed/2,99999);
		}else{
		alarm[0] = clamp(room_speed*(6-(global.score/40000)),room_speed/2,99999);
		}
	}
	if(wave_counter > wave_counter_start){
		wave_start = true;
	}
	if(wave_start) and (wave_counter > 0){
		alarm[0] = room_speed/4+floor(global.score/50000);
		wave_counter--;
	}
	if(wave_counter <= 0) and (wave_start){
		if(global.damage > 0){
			wave_counter_start = wave_counter_start_default+round(global.score/10000);
		}else{
			wave_counter_start = wave_counter_start_default+round(global.score/15000);
		}
		wave_start = false;
	}
	/*
if(global.damage <= 0){
	game_speed = round(global.score/2000);
	next_enemy = random_range(room_speed/4,room_speed*(5-(game_speed/20)))
	alarm[0] = clamp(next_enemy,room_speed/4,99999);
}else if(global.damage < 100){
	game_speed = round(global.score/1500);
	next_enemy = random_range(0,room_speed*(5-(game_speed/15)))
	alarm[0] = clamp(next_enemy,room_speed/8,99999);
}else{
	game_speed = round(global.score/1000);
	next_enemy = random_range(0,room_speed*(5-(game_speed/15)))
	alarm[0] = clamp(next_enemy,room_speed/2,99999);
}
*/
}