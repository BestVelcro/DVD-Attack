if(global.health_level > 50){
	global.max_health = 5;
}else if (global.health_level > 0){
	global.max_health = 3;
}else{
	global.max_health = 1;
}
global.health = global.max_health;
global.score = 0;
global.game_stop = false;

