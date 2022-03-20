// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlaySound(SoundType){
switch(SoundType){
	case "ButtomPress":
	var ButtomSound = choose(buttom_press_1, buttom_press_2, buttom_press_3, buttom_press_4, buttom_press_5);
	audio_play_sound(ButtomSound,1,false);
	break;
	case "StartPress":
	var StartSound = choose(start_press_1, start_press_2, start_press_3);
	audio_play_sound(StartSound,1,false);
	break;
	case "SummonEnemy":
	var SummonSound = choose(enemy_summon_1,enemy_summon_2,enemy_summon_3,enemy_summon_4,enemy_summon_5);
	audio_play_sound(SummonSound,1,false);
	break;
	case "EnemyDeath":
	var DeathSound = choose(enemy_death_1,enemy_death_2,enemy_death_3,enemy_death_4,enemy_death_5,enemy_death_6,enemy_death_7,enemy_death_8);
	audio_play_sound(DeathSound,2,false);
	break;
}
}