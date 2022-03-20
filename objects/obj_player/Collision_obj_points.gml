with(other){
	if(instance_exists(owner)){
	global.score += 500;
	instance_destroy(owner);
	}
	instance_destroy();
}