after_score = global.score - pre_score;
if(loading >= ready_value){
image_speed = 1;
}else if(after_score > 0 and !global.during_super and !health_special_objects){
	loading += after_score;
}
