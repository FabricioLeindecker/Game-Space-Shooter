/// @description Insert description here

//Reinicia o jogo ao apertar Enter quando o player morre
if (gameover_seq) {
	var transicao = instance_create_layer(0, 0, "player", obj_transicao);
	transicao.destino = rm_inicio;
	if (pontos > global.max_pontos) {
		global.max_pontos = pontos;
	}
}





