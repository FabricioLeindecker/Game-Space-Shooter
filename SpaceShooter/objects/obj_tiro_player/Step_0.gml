/// @description Insert description here

//Destroi o tiro ao sair da tela
if (y <= -200) instance_destroy(); 

//Diminui o tamanho do brilho do tiro
image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_xscale, 1, 0.5);