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
if(input_left)		{ moveX = -spd };
if(input_right)		{ moveX = +spd };
if(input_up)		{ moveY = -spd };
if(input_down)		{ moveY = +spd };

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
x += moveX;
y += moveY;