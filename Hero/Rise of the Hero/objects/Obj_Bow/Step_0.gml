/// @description Insert description here
// You can write your code in this editor
/*if rateFire <= fireMin
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
			x_mod = -xy_mod;
			lPressed = true;
		}
	}

if !uPressed & !dPressed
	{
		y_mod = 0;
	}
if !rPressed & !lPressed
	{
		x_mod = 0;
	}
if uPressed or dPressed or lPressed or rPressed
	{
		if rateFire < fireMax
			{
				rateFire += 1.5;
			}
	}
	
if rateFire >= fireMax
	{
		uPressed = false
		dPressed = false
		lPressed = false
		rPressed = false
		fistTimer = 0
	}
*/
image_xscale = 2
image_yscale = 2
y = obj_Hero.y + y_mod // has the location of the hero and addes it to the sword y cord
x = obj_Hero.x + x_mod // has the location of the hero and addes it to the sword x cord

if collision_circle(x,y,20,Obj_enemy,false,true)
{
	audio_play_sound(bowandarrow, 0, false)
	giveDamge = giveDamge - init_health();
	if (init_health() <= 0)
	{
		instance_destroy(Obj_enemy);
	}

}
	/*rateFire = 0;
	instance_create_depth(x,y,0,Obj_Arrow); */