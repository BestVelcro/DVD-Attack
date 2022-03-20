draw_self();

var string_value = "RESET";

var string_buttom_width = string_width(string_value);
var string_buttom_height = string_height(string_value);

draw_text(x+(sprite_width/2)-(string_buttom_width/2),y+(sprite_height/2)-(string_buttom_height/2), string_value);