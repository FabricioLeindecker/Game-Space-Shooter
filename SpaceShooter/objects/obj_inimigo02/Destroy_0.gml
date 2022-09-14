/// @description Insert description here

// Inherit the parent event
event_inherited();

//Ganha pontos ao explodir o inimigo
if (object_exists(obj_controller)){
	obj_controller.ganha_pontos(pontos);	
}
