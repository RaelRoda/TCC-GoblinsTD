draw_self();

if(mouse_over(x, y, sprite_width, sprite_height)) draw_circle(x, y, range, true);

if(fire_rate <= 0){
	var inimigos_no_range = ds_list_create();
	with(obj_enemy_base){
	    // Calcula a distância entre a tropa atual e a tropa inimiga
	    var dist = point_distance(x, y, other.x, other.y);
	    if (dist <= other.range) {
	        // Se a tropa inimiga estiver dentro do range, adiciona-a à lista
	        ds_list_add(inimigos_no_range, id);

	    }
	}
	// Cria um raio ou projétil para cada tropa inimiga encontrada
	if (ds_list_size(inimigos_no_range) > 0) {
	    for (var i = 0; i < ds_list_size(inimigos_no_range); i++) {
	        var inimigo = ds_list_find_value(inimigos_no_range, i);
	        // Desenha uma linha do centro da tropa para cada raio/projétil (linha de disparo)
	        var raio = instance_create_layer(other.x+11, other.y-6, "inst_projectiles", obj_raio);
			raio.target = inimigo;
			raio.damage = other.damage;
	    };
		
		fire_rate = fire_rate_base / global.game_speed;
		
	}
	ds_list_destroy(inimigos_no_range); // Libera a memória usada pela lista
	
}else {
	fire_rate--;
	
};
