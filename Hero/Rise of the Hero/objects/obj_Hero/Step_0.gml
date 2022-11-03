//image_blend = color
if hasSword
{
	if Obj_Sword.fistTimer <= 0
	{
		canMove = true
	}else{
		canMove = false
	}
}else{
	canMove = true
}

if canMove{
		if keyboard_check(ord("D"))
		{
			x += spd
		}
		if keyboard_check(ord("A"))
		{
			x -= spd
		}
		if keyboard_check(ord("S"))
		{
			y += spd
		}
		if keyboard_check(ord("W"))
		{
			y -= spd
		}
}
if collision_circle(x,y,12,Obj_SwordPic,false,true){
	
	wSword = instance_nearest(x,y,Obj_SwordPic);
	instance_destroy(wSword);
	hasSword = true;
	instance_create_depth(x,y,0,Obj_Sword)

}

init_health(10);