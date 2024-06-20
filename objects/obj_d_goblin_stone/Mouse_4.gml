/// @description Insert description here
// You can write your code in this editor

if(col == c_white){
	if(instance_exists(obj_player)){
		obj_player.lose_gold(cost);
		obj_player.increase_goblin_payment(payment);
	};
	//trocar o obj para cada tipo de goblin
	instance_create_layer(mouse_x, mouse_y, "inst_goblins", obj_goblin_stone);
	
};
