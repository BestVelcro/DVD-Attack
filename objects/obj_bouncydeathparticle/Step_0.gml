upframe++;
if(upframe >= irandom_range(2,5)){
	frame++
	upframe = 0;
	alpha -= 0.1;
}
if(sprite_get_number(spr_bouncydeathparticle)-1 <= frame){
	instance_destroy();
}
speed -= 0.2;