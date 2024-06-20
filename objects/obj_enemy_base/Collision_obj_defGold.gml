/// @description Insert description here
// You can write your code in this editor

instance_destroy(self, false);

if(instance_exists(obj_player)){
	obj_player.lose_life(steal_gold);
};