/// @description Insert description here
// You can write your code in this editor

//// Check for Space pressed
//if (keyboard_check_pressed(vk_space)) {
//	page += 1;
//}

// If we've reached the end of the data, end and destroy text box
if page >= array_length_1d(data) {
	instance_destroy(self);
	game.pause = false;
	return;
}

say = true;

if (string_pos("NAME:", data[page]) == 1) {
	say = false;
	// Reserved for setting the NPC name in the text box
	page += 1;
}
if (string_pos("PORTRAIT:", data[page]) == 1) {
	say = false;
	// Reserved for setting the NPC portrait
	page += 1;
}
if (string_pos("DECISION:", data[page]) == 1) {
	say = false;
	// Reserved for triggering decisions in the dialog box
	page += 1;
}

if (say) {
	text = data[page];
}

