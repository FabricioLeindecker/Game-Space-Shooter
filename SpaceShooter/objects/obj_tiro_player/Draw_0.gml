/// @description Insert description here

//Se desenha
draw_self();

//Desenha o brilho do tiro
//Muda a forma que a placa de video mistura as cores
gpu_set_blendmode(bm_add); 
draw_sprite_ext(brilho, image_index, x, y, image_xscale*.7, image_yscale*.7, image_angle, cores, 0.5);

//Volta a placa de video para o normal
gpu_set_blendmode(bm_normal);

