
if(instance_exists(obj_player)){
	if(obj_player.gold >= cost){
		instance_create_layer(mouse_x, mouse_y, "inst_drag", obj_d_goblin_ice);
	};
};