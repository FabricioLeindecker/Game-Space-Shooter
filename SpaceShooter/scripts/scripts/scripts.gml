// Script assets have changed for v2.3.0 see

//cria a função para o screenshake (tremer a tela)
function screenshake(_shake){
	var screen = instance_create_layer(0, 0, "Escudo", obj_screenshake);
	screen.shake = _shake;
}

//Função ganhando pontos
function ganhando_pontos(_pontos) {
	if (instance_exists(obj_controller)) {
		obj_controller.ganha_pontos(_pontos);
	}
}

//Destroi a sequencia do boss
function destroi_seq() {
	var elementos = layer_get_all_elements("boss_entrada");
	layer_sequence_destroy(elementos[0]);
	instance_create_layer(960, 320, "boss", obj_boss);
}

//Cria a sequencia da animação do player ao vencer o boss
function cria_seq() {
	if (instance_exists(obj_player)) {
		layer_sequence_create("Sequences", obj_player.x, obj_player.y, sq_level_end);
		instance_destroy(obj_player, false);
		if (instance_exists(obj_controller)) {
			obj_controller.level_completo = true;	
		}
	}
}

//Cria a transicao de tela
function cria_transicao() {
	var transicao = instance_create_layer(0, 0, "player", obj_transicao);
	transicao.destino = rm_inicio;
}