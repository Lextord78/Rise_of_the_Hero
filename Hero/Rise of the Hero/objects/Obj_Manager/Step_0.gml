 if object_exists(Obj_enemy)
{
	amountEnemy = instance_number(Obj_enemy)
	amountEnemy = instance_number(Obj_EvilLaguna)
	
}

if object_exists(Obj_button)
{
	amountButton = instance_number(Obj_button)
}

if keyboard_check_pressed(ord("L")){
	room_goto_next()
}
if keyboard_check_pressed(ord("K")){
	room_goto_previous()
}