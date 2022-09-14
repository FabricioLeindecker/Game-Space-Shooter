/// @description Insert description here

// Inherit the parent event
event_inherited();

//Checa se o Boss existe e faz o tiro ir em direção à ele
if (instance_exists(obj_boss)) {
	direction	= point_direction(x, y, obj_boss.x, obj_boss.y,);
	image_angle	= direction + 90;
}