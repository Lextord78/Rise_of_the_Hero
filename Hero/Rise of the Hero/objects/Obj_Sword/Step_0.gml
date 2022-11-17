
if fistTimer <= fistMin // cheack if fistTimer is less then or equeal to fistMIn
	{
		if keyboard_check_pressed(vk_up)
		{
			y_mod = -xy_mod 
			uPressed = true
		}
		if keyboard_check_pressed(vk_down)
		{
			y_mod = xy_mod
			dPressed = true
		}
		if keyboard_check_pressed(vk_right)
		{
			x_mod = xy_mod
			rPressed = true
		}
		if keyboard_check_pressed(vk_left)
		{
			x_mod = -xy_mod
			lPressed = true
		}
	}

if !uPressed & !dPressed
	{
		y_mod = 0
	}
if !rPressed & !lPressed
	{
		x_mod = 0
	}
if uPressed or dPressed or lPressed or rPressed
	{
		if fistTimer < fistTimerMax
			{
				fistTimer += 1
			}
	}
	
if fistTimer >= fistTimerMax
	{
		uPressed = false
		dPressed = false
		lPressed = false
		rPressed = false
		fistTimer = 0
	}

y = obj_Hero.y + y_mod // has the location of the hero and addes it to the sword y cord
x = obj_Hero.x + x_mod // has the location of the hero and addes it to the sword x cord

if !hasHit 
{
	if collision_circle(x,y,20,Obj_enemy, false, true)
	{
	hasHit = true
	hitEnemy = instance_nearest(x,y,Obj_enemy)
	hitEnemy.currentHp -= 1;
	if hitEnemy.currentHp <= 0
	{
		instance_destroy(hitEnemy)
	}
	}
}

if !collision_circle(x,y,20,Obj_enemy, false, true)
{
	hasHit = false
}