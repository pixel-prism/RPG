// Checks the state of the game, gets the correct dialogue data, and creates a textbox

if (!instance_exists(myTextbox)) {
	player = argument0;
	npc = argument1;
	myTextbox = instance_create_layer(0, 0, "Text", obj_textbox);
	myTextbox.data = npc.dialogue;
}