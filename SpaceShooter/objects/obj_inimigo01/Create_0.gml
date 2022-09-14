/// @description Insert description here

//Faz o inimigo se mover para baixo
vspeed = 3; 

//Alarme para o inimigo atirar
alarm [0] = random_range(1, 3) * room_speed;

//Chance de dropar o item
chance = 35;

//Variável para ganhar pontos
pontos = 10;

//Checa se ja existe outro inimigo no lugar, se sim ele o destroi
if (place_meeting(x, y, obj_inimigo01)){
	instance_destroy(id, false);	
}

//Cria o método para o tiro do inimigo
atirando = function() {
	if (y >= 0) {
		instance_create_layer(x-3, y + sprite_height/3, "Tiros", obj_tiro_inimigo01);
		audio_play_sound(sfx_laser1, 1, false);
	}
}

//Cria a função para o inimigo dropar os powerups
///@method dropa_item(chance)
dropa_item = function (_chance) {
	var valor = random(100);
	if (valor < _chance && y > 96) {
		instance_create_layer(x, y, "tiros", obj_powerup);	
	}
}