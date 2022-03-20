PlaySound("EnemyDeath");

if(!obj_game.game_over){
global.score += 500;
}

repeat(150){
		var particle = instance_create_layer(x,y,"Instances",obj_bouncydeathparticle);
		particle.speed = irandom_range(1,5);
		particle.direction = irandom(360);
		particle.draw_color = dvd_color;
}