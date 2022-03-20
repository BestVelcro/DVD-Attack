fx_set_parameter(shake_fx, "g_Magnitude", shake_magnitude);
fx_set_parameter(shake_fx, "g_ShakeSpeed", shake_speed);
if (shake_magnitude > 0)
{
	shake_magnitude -= 0.2;
}
if(instance_exists(obj_player)) and (global.during_super) and (global.speed_level > 50){
	global.score += 0.02;
}else if(instance_exists(obj_player)){
	global.score++;
}

if(keyboard_check_pressed(global.menu_buttom)) room_goto(StarterRoom);
if(keyboard_check_pressed(global.restart_buttom)) room_restart();

