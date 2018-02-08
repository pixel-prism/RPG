/// @description Insert description here
// You can write your code in this editor

// Aliases for keyboard inputs
input_left		= keyboard_check(vk_left);
input_right		= keyboard_check(vk_right);
input_up		= keyboard_check(vk_up);
input_down		= keyboard_check(vk_down);
input_run		= keyboard_check(vk_lshift);

// Reset move variables
moveX = 0;
moveY = 0;

// Alter movement speed
if(input_run){ spd = R_spd; } else { spd = W_spd; };

// Intended Movement
if(input_left) {
	moveX = -spd;
	facing = 180;
}
if(input_right) {
	moveX = +spd; 
	facing = 0;
}
if(input_up) {
	moveY = -spd; 
	facing = 270;
}
if(input_down) {
	moveY = +spd; 
	facing = 90;
}

// Dialogue
horMiddle = view_xport[0] + (view_wport[0]/2);
verMiddle = view_yport[0] + (view_hport[0]/2);

// Run into an NPC and press space to initiate dialogue

if (keyboard_check_pressed(vk_space)) {
	if (instance_exists(myTextbox)) {
		instance_destroy(myTextbox);
		game.pause = false;
	} else {
		coll_x = x;
		coll_y = y;
		coll_x_dist = 21;
		coll_y_dist = 6;
		if (facing == 0) {  // Right
			coll_x += coll_x_dist;
		} else if (facing == 90) {  // Down
			coll_y += coll_y_dist;
		} else if (facing == 180) {  // Left
			coll_x -= coll_x_dist;
		} else if (facing == 270) {  // Up
			coll_y -= coll_y_dist;
		}
		coll_obj = instance_place(coll_x, coll_y, objCollision);
		if (coll_obj != noone && coll_obj.dialogue != "") {
			// Arrest NPC's movement
			coll_obj.moveX = 0;
			coll_obj.moveY = 0;
 
			// Create text box
			if (!instance_exists(myTextbox)) {
				game.pause = true;
				myTextbox = instance_create_layer(x, y, "Text", obj_textbox);
				myTextbox.dialogue = coll_obj.dialogue;
			}
		}
	}
}

//if(keyboard_check_pressed(vk_space)) {
//	if (distance_to_object(objParentNPC) <= 1) {
//		// Arrest NPC's movement
//		objParentNPC.moveX = 0;
//		objParentNPC.moveY = 0;
 
//		// Create text box
//		if (!instance_exists(myTextbox)) {
//			pause = true;
//			objParentNPC.pause = true;
//			myTextbox = instance_create_layer(x,y,"Text",obj_textbox);
//			myTextbox.dialogue = objParentNPC.dialogue;
//			show_debug_message("Bonk");
//		} else { 
//			instance_destroy(myTextbox);
//			pause = false;
//			objParentNPC.pause = false;
//		}
//	} 
//}

// Horizontal Collision
if(moveX != 0){
	if(place_meeting(x+moveX, y, objCollision)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, objCollision)){ x += sign(moveX); }
			else { break; }
		}
		moveX = 0;
	}
}

// Vertical Collision
if(moveY != 0){
	if(place_meeting(x, y+moveY, objCollision)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), objCollision)){ y += sign(moveY); }
			else { break; }
		}
		moveY = 0;
	}
}

// Apply movement
if (!game.pause){
	x += moveX;
	y += moveY;
}