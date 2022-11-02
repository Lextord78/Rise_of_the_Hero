//image_blend = color
if Obj_Sword.fistTimer <= 0
{
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

init_health(10);