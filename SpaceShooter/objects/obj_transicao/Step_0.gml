/// @description Insert description here

//Faz o efeito de transição de tela, escurece e clareia
if (troquei_room == false) {
	alpha += 0.02;
}
else {
	alpha -= 0.02;	
}

//Destroi quando a animação chega ao fim
if (alpha <= 0) {
	instance_destroy();	
}

//Muda de room quando o alpha volta para 1
if (alpha >= 1 && troquei_room == false) {
	room_goto(destino);
}

