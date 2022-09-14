/// @description Insert description here

//Inherit the parent event
event_inherited();

//Faz os tiros se inverterem
if (x > xstart + 50 || x < xstart - 50){
	hspeed *= -1;
}
