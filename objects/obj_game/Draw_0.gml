i = 0;
repeat(global.health){
	draw_sprite(spr_heart,0,30+i,30);
	i += sprite_get_width(spr_heart);
}

if(!game_over){
draw_text(30,50,"SCORE: "+string(round(global.score)));
}else {
	var text_x = string_width("FINAL SCORE: "+string(round(global.score)))
	var text_y = string_height("HIGHEST SCORE: ");
	draw_text(room_width/2-(text_x/2),room_height/2-text_y/2,"FINAL SCORE: "+string(round(global.score)));
	draw_text(room_width/2-(text_x/2),room_height/2+text_y/2,"BEST SCORE: "+string(global.highest_score));
}
