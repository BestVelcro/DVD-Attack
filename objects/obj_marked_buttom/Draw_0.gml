draw_sprite(spr_layout_config,0,xx,yy);
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(buttom_function == "fullscreen"){
draw_text(xx+(layout_width/2),yy+(layout_height/2),"FULLSCREEN");
}

if(buttom_function == "hints"){
draw_text(xx+(layout_width/2),yy+(layout_height/2), "DISABLE HINTS");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);