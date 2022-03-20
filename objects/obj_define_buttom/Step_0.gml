if(waiting_key) and (keyboard_key != 0){
	waiting_key = false;
	variable_global_set(my_global, keyboard_key);
	global.key_change = true;
}