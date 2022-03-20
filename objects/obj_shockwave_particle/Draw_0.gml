draw_set_color(choosen_color);
draw_circle(x,y,size_circle,true);
size_circle += up_size;
up_size += 2;
if(up_size > room_width*2){
	instance_destroy();
}
draw_set_color(c_white);