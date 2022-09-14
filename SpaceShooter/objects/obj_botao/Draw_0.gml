/// @description Insert description here

//Se desenha
draw_self();
//Define os parâmetros do botão
draw_set_color(c_black);
draw_set_font(fnt_botoes);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, texto);
//Reseta os parâmetros
draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);



