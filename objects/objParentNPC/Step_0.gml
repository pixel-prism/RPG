/// @description Insert description here
// You can write your code in this editor

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
if(!pause){
	x += moveX;
	y += moveY;
}