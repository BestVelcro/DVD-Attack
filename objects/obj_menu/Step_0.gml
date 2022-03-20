global.form = 0;

var stop = false;

if(!stop) and (global.damage_form > 0) and (global.health_form <= 2) and (global.speed_form <= 2){
	global.form = 1+(global.damage_form/2);
	global.form += global.health_form;
	global.form += global.speed_form*2;
	
	stop = true;
}

if(!stop) and (global.health_form > 0) and (global.damage_form <= 2) and (global.speed_form <= 2){
	global.form = 7+(global.health_form/2);
	global.form += global.damage_form;
	global.form += global.speed_form*2;
	
	stop = true;
}

if(!stop) and (global.speed_form > 0) and (global.health_form <= 2) and (global.damage_form <= 2){
	global.form = 13+(global.speed_form/2);
	global.form += global.damage_form;
	global.form += global.health_form*2;
	
	stop = true;
}

if(global.damage_form == 2) and (global.health_form == 2) and (global.speed_form == 2){
	global.form = 1;
}

if(global.damage >= global.max_damage) or (global.health_level >= global.health_max_level) or (global.speed_level >= global.speed_max_level){
	global.super = true;
}else{
	global.super = false;
}