/// @description Insert description here

//Define os parâmetros do efeito de transição de tela
draw_set_alpha(alpha);
draw_set_color(c_black);
var x2 = display_get_gui_width();
var y2 = display_get_gui_height();
draw_rectangle(0, 0, x2, y2, false);
//Reseta os parâmetros
draw_set_alpha(1);
draw_set_color(c_white);

