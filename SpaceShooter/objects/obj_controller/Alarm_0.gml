/// @description Insert description here

//Usa a função para criar inimigos, repetindo ela varias vezes se não existir mais inimigos na tela
if (!instance_exists(obj_inimigo01)){
	var repetir = 10 * level;
	if (level < 10) {
		repeat (repetir) {
			cria_inimigos();
		}
	}
	else {
		if (criar_boss == true) {
			layer_sequence_create("boss_entrada", 960, 576, sq_boss_entrada)
			criar_boss = false;
			audio_stop_all();
		}
	}
}

//Reativando a alarme
alarm [0] = room_speed * 5;


