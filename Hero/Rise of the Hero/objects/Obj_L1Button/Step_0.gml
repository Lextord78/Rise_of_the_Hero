/// @description Insert description here
// You can write your code in this editor
if collision_circle(x,y,12,Obj_Sword, false, true)
{
	instance_destroy(Obj_L1Button)
}
if collision_circle(x,y,12,Obj_Arrow, false, true)
{
	instance_destroy(Obj_L1Button)
}