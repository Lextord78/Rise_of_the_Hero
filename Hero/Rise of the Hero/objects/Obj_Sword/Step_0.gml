
image_xscale = 2
image_yscale = 2

if fistTimer <= fistMin // cheack if fistTimer is less then or equeal to fistMIn
	{
		if keyboard_check_pressed(vk_up)
		{
			y_mod = -xy_mod 
			uPressed = true
			audio_play_sound(slash,0,false)
			
		}
		if keyboard_check_pressed(vk_down)
		{
			y_mod = xy_mod
			dPressed = true
			audio_play_sound(slash,0,false)
		}
		if keyboard_check_pressed(vk_right)
		{
			x_mod = xy_mod
			rPressed = true
			audio_play_sound(slash,0,false)
		}
		if keyboard_check_pressed(vk_left)
		{
			x_mod = -xy_mod
			lPressed = true
			audio_play_sound(slash,0,false)
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

if  uPressed or dPressed or lPressed or rPressed {
	if !hasHit 
	{
		if collision_circle(x,y,20,Obj_enemy, false, true)
		{
		hasHit = true
		hitEnemy = instance_nearest(x,y,Obj_enemy)
		//hitEnemy.currentHp -= 3;
		hitEnemy.knockBackX = hitEnemy.x + (x_mod*2)
		hitEnemy.knockBackY = hitEnemy.y + (y_mod*2)
		hitEnemy.mode = 2
		hitEnemy.currentHp -= 3
		if hitEnemy.currentHp <= 0
		{
			instance_destroy(hitEnemy)
		}
		}
	}
}

if !collision_circle(x,y,20,Obj_enemy, false, true)
{
	hasHit = false
}