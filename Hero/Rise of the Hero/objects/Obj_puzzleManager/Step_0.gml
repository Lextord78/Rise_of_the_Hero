/// @description Insert description here
// You can write your code in this editor
buttonAmount = instance_number(Obj_button)

//if placement >= buttonAmount{
//	for (var i = 0; i < buttonAmount; i += 1){
		
//	}
//}

if completed = false{
	if array_equals(buttons, solution1){
		celebration = "Next Room!"
		//instance_destroy()
		instance_create_depth(1286,384,0,Obj_L3OpenDoor)
		completed = true
	}
	
}

if !array_equals(buttons, solution1){
	if placement >= buttonAmount{		
		celebration = "Look at the circles!"
		resetTimer = resetTimerMax
	}

}

//if buttons[0] != solution1[0]{
//		celebration = "You Suck at video games!"
//}

//if Obj_Sword.fistTimer <=0{
	if resetTimer > 0{
		for (var i = 0; i < buttonAmount; i += 1){
			buttons[i] = 0
			placement = 0
			Obj_button.on = false
		}
		resetTimer -= 1
	}
//}

if placement = 0 {
	resetPuzzle = false
}