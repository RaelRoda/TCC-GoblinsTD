event_inherited();

range = 700;

shooting = false;
objectToShoot = noone;

cost = 150;
payment = 50;

damage = 0;

if(instance_exists(obj_player)) obj_player.increase_magos_ouro(1);