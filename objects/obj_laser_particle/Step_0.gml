speed -= 0.1;
if(speed <= 0){
	instance_destroy();
}
if(image_xscale == 1){
image_alpha -= 0.05;
}else{
	image_alpha -= 0.01;
}