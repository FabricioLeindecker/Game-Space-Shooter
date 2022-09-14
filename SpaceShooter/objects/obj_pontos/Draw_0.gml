/// @description Insert description here

//Desenhando a maior pontuação
draw_set_font(fnt_pontos);
var _pontos = round(pontos);
draw_text(120, 200, "Maior Pontuação: " + string(_pontos));
draw_text(120, 350, "Inimigos Mortos: " + string(global.total_inimigos));
draw_text(120, 500, "Total de Mortes: " + string(global.total_mortes)); 
draw_set_font(-1);

//Fazendo pontos se aproximar do valor de max pontos
if (pontos < global.max_pontos) {
	var incrementa_pontos = global.max_pontos * 0.05;
	pontos += incrementa_pontos;
}



