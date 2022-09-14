/// @description Insert description here

//Se desenha
draw_self();

//Define os parâmetros da sprite
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + .2, image_yscale + .2, image_angle, cor, image_alpha - 0.3);
gpu_set_blendmode(bm_normal);






