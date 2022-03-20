randomize();
image_speed = 0;
speed = 1;
max_speed = speed*3;
plus_speed = 1;
direction = irandom(360);
dir_x = 0;
dir_y = 0;
hits = 0;
stop = false;
dvd_color = c_white;
if(global.damage > 0){
	enemy_health = 20;
	if(global.damage > 50){
		enemy_health = 15;
	}
	enemy_max_health = enemy_health;
old_health = enemy_health;
}
shake = false;

health_special = false;

volume_changer = 1;

wall_hit = false;
