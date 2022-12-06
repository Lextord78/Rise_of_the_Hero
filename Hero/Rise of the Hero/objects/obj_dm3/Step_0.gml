/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_enter){
    currentDialogue += 1
}

if currentDialogue >= array_length(dialogue){
	currentDialogue = array_length(dialogue) -1
}

