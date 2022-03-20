if(global.during_super){
	image_alpha = clamp(image_alpha+0.05,0,max_image_alpha);
}else{
	image_alpha = clamp(image_alpha-0.1,0,max_image_alpha);
}