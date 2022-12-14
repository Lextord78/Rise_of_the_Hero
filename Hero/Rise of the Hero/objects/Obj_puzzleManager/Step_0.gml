/// @description Insert description here
// You can write your code in this editor
buttonAmount = instance_number(Obj_button)

//if placement >= buttonAmount{
//	for (var i = 0; i < buttonAmount; i += 1){
		
//	}
//}

if room = Level3
{
	celebration = "Next Room!"
	failure = "Look at the circles!"
	doorSpawn = Obj_L3OpenDoor
	whichSolution = solution1
	
}

if room = Level4
{
	celebration = "Next Room!"
	failure = "Try Agian!"
	doorSpawn = Obj_L4OpenDoor
	whichSolution = solution2
}

if room = Level8
{
	celebration = "Next Room!"
	failure = "Reversal"
	doorSpawn = Obj_L8OpenDoor
	whichSolution = solution3
}

if completed = false{
	if array_equals(buttons, whichSolution){
		feedback = celebration
		//instance_destroy()
		instance_create_depth(1286,384,0,doorSpawn)
		completed = true
	}
		
	//if array_equals(buttons2, solution2){
	//	celebration = "Next Room!"
	//	instance_create_depth(1284, 384, 0,Obj_L4OpenDoor)
	//	completed = true
	//}
			
	
	//	if array_equals(buttons3, solution3)
	//{
	//	celebration = "Next Room!"
	//	instance_create_depth(1284, 384, 0, Obj_L8OpenDoor)
	//	completed = true
	//}
}

if !array_equals(buttons, whichSolution){
	if placement >= buttonAmount{		
		feedback = failure
		//"Look at the circles!"
		resetTimer = resetTimerMax
	}

}

//if !array_equals(buttons, whichSolution)
//{
//	if placement >= buttonAmount
//		{
//			feedback = failure
//			resetTimer = resetTimerMax
//		}
//}

//if !array_equals(buttons, whichSolution)
//			{
//				feedback = failure
//				resetTimer = resetTimerMax
//			}

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