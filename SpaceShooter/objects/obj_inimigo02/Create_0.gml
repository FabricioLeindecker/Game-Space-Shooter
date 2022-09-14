/// @description Insert description here

// Inherit the parent event
event_inherited();

//Variável para ganhar pontos
pontos = 25;

//Chance de dropar powerups
chance = 40;

//Criando a variável de controle para saber se o inimigo pode se mover
posso_me_mover = true;

//Cria o método para o tiro do inimigo
atirando = function(){
	if (y >= 0) {
		instance_create_layer(x, y + sprite_height/3, "Tiros", obj_tiro_inimigo02);
		audio_play_sound(sfx_laser1, 1, false);
	}
}

