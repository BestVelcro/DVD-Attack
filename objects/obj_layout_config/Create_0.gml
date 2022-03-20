old_buttom = variable_global_get(buttom_type);
owner = instance_create_layer(x+sprite_width+15,y,"Buttoms",obj_define_buttom);
buttom = "Error";
switch(buttom_type){
	case "up_buttom":
	buttom = "MOVE UP";
	owner.my_global = buttom_type;
	break;
	case "down_buttom":
	buttom = "MOVE DOWN";
	owner.my_global = buttom_type;
	break;
	case "left_buttom":
	buttom = "MOVE LEFT";
	owner.my_global = buttom_type;
	break;
	case "right_buttom":
	buttom = "MOVE RIGHT";
	owner.my_global = buttom_type;
	break;
	case "dash_buttom":
	buttom = "DASH";
	owner.my_global = buttom_type;
	break;
	case "menu_buttom":
	buttom = "MENU";
	owner.my_global = buttom_type;
	break;
	case "restart_buttom":
	buttom = "RESTART";
	owner.my_global = buttom_type;
	break;
}