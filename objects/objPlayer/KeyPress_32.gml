// Run into an NPC and press space to initiate dialogue
if (!game.pause) {
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
		script_execute(scr_textbox, self, coll_obj);
	}
}