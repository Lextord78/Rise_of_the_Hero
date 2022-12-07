/// @description Insert description here
// You can write your code in this editor
buttonAmount = instance_number(Obj_button)

//if placement >= buttonAmount{
//	for (var i = 0; i < buttonAmount; i += 1){
		
//	}
//}

if array_equals(buttons, solution1){
	celebration = "You Win!"
}

if !array_equals(buttons, solution1){
	if placement >= buttonAmount{		
		celebration = "Look at the circles!"
		resetPuzzle = true
	}

}

//if buttons[0] != solution1[0]{
//		celebration = "You Suck at video games!"
//}

if resetPuzzle = true{
	for (var i = 0; i < buttonAmount; i += 1){
		buttons[i] = 0
	}
}