/// @description Insert description here
// You can write your code in this editor

timer += 1

if enemyAmount > 0{
	if  timer >= timeMax{
		instance_create_depth(x,y,0,Obj_enemy)
		timer = 0
		enemyAmount -= 1
		
	}
}else{
	instance_destroy(self)
}
