
if fistTimer < fistMin
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

y = obj_Hero.y + y_mod
x = obj_Hero.x + x_mod

image_blend = c_gray