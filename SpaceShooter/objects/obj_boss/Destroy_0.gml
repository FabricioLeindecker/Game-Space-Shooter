/// @description Insert description here

//cria a animação de morte do boss
layer_sequence_create("boss_morte", x, room_height / 2 + 32, sq_boss_morte);

//aumenta a contagem de inimigos mortos
global.total_inimigos++;

//ganho de pontos
ganhando_pontos(200);
