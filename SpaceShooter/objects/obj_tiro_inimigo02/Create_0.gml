/// @description Insert description here

// Inherit the parent event
event_inherited();

//Velocidade do tiro
speed = 6; 

//Faz o tiro ir em direção ao player, se o player existir
if (instance_exists(obj_player)){
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}

//Muda o angulo da imagem do tiro
image_angle = direction + 90;

