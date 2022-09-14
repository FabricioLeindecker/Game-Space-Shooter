/// @description Insert description here

//Variáveis para exibição na tela
var multiplicador	= 0;
var espaco			= 40;

//Desenha a quantidade de naves representando o número de vidas na interface
repeat(vida) {
	draw_sprite_ext(spr_player, 0, 40 + espaco * multiplicador, 60, 0.3, 0.3, 0, c_white, .4);
	multiplicador++;
}

//Reseta o multiplicador
multiplicador = 0;

//Desenha os escudos
repeat(escudos) {
	draw_sprite_ext(spr_escudo, 2, 40 + espaco * multiplicador, 110, 0.3, 0.3, 0, c_white, .4);
	multiplicador++;
}


