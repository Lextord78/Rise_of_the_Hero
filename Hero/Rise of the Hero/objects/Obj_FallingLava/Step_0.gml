/// @description Insert description here
// You can write your code in this editor
if !hasHit 
{	
	hasHit = true
	//obj_Hero.currentHp -= 3
	
	instance_exists(obj_Hero)
		if collision_circle(x,y,32,obj_Hero, false, true)
		{
			obj_Hero.currentHp -= 1
			//hasHit = true
		// = instance_nearest(x,y,Obj_enemy)
		//hitEnemy.currentHp -= 3;
			if obj_Hero.x > x{
				knockBackX = x - knockBackAmount
			}else{
				knockBackX = x + knockBackAmount
			}
		
			if obj_Hero.y > y
			{
				knockBackY = y - knockBackAmount
			}else{
				knockBackY = y + knockBackAmount
			}
		
			mode = 0
		

		}else{
			//hasHit = false
		}
}
if !collision_circle(x,y,32,obj_Hero, false, true){
	hasHit = false
}


if mode = 0
{
	if kBStart = false
	{
		kBStartX = x
		kBStartY = y
		kBStart = true
		
	}else{
		
		x = lerp(kBStartX, knockBackX, lerpPos);
		y = lerp(kBStartY, knockBackY, lerpPos);
	}
	if lerpPos >= 1
	{
		kBStart = false
		kBStartX = 0
		kBStartY = 0
		knockBackX = 0
		knockBackY = 0
		lerpPos = 0
		currentX = x
		currentY = y
		mode = 0
	}
}