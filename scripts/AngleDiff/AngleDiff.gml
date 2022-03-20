// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AngleDiff(given_target,given_facing){
	var facing = given_facing;
	var target = given_target;
	var angle_diff = target-facing;
	if(abs(angle_diff) > 180){
		if(target > facing){
			angle_diff = -1 * ((360-target)+facing);
		}
		if(facing > target){
			angle_diff = (360-facing)+target
		}
	}
	return angle_diff;
}