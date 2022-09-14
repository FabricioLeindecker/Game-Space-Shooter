/// @description Insert description here

//Desenha o tiro na tela
draw_self();

//Desenha o brilho do tiro do inimigo
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_inimigo, image_index, x, y, image_xscale * .7, image_yscale*.7, image_angle, cores, 0.5);
gpu_set_blendmode(bm_normal);

