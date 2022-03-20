game_over = true;

audio_play_sound(text_sound_1, 1, false);

//Check if Current Score is higher then the last one
if(global.score > global.highest_score){
//make save array
global.highest_score = round(global.score);
var _saveData = array_create(0);

var _saveScore = {
	highest_score : global.highest_score
} 
array_push(_saveData, _saveScore);

var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "highscore.save");
buffer_delete(_buffer);
}