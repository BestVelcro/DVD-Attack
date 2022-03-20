var set_buttom = UnicodeString(my_buttom);

if(waiting_key){
	set_buttom = "Waiting";
}
draw_self();

var string_buttom_width = string_width(set_buttom);
var string_buttom_height = string_height(set_buttom);

draw_text(x+(sprite_width/2)-(string_buttom_width/2),y+(sprite_height/2)-(string_buttom_height/2),set_buttom);