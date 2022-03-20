if(instance_exists(obj_gun)){
obj_gun.laser = instance_create_layer(x,y,"Player",obj_player_laser);
}
instance_destroy();