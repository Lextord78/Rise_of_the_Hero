if object_exists(Obj_enemy){
	amountEnemy = instance_number(Obj_enemy)
}

if keyboard_check_pressed(ord("L")){
	room_goto_next()
}
if keyboard_check_pressed(ord("K")){
	room_goto_previous()
}