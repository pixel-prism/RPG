/// @description Insert description here
// You can write your code in this editor

var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

// Change directions
if(moveX < 0)		{ y_frame = 9;  }
else if (moveX > 0)	{ y_frame = 11; }
else if (moveY < 0)	{ y_frame = 8;  }
else if (moveY > 0)	{ y_frame = 10; }
else				{ x_frame = 0;  }

// Offset for Collision
var xx = x-x_offset;
var yy = y-y_offset;

// Draw Shadow
draw_sprite(spr_character_shadow, 0, x,y);

// Increment frame for animation
if(x_frame + (anim_speed/60) < anim_length)	{ x_frame += anim_speed/60; }
else									    { x_frame = 1;  }

// Draw Character Base
draw_sprite_part(spr_base,0,floor(x_frame)*frame_size,y_frame*frame_size,frame_size,frame_size,xx,yy);

// Draw Feet
draw_sprite_part(spr_feet,0,floor(x_frame)*frame_size,y_frame*frame_size,frame_size,frame_size,xx,yy);

// Draw Legs
draw_sprite_part(spr_legs,0,floor(x_frame)*frame_size,y_frame*frame_size,frame_size,frame_size,xx,yy);

// Draw Shirt
draw_sprite_part(spr_shirt,0,floor(x_frame)*frame_size,y_frame*frame_size,frame_size,frame_size,xx,yy);

// Draw Hair
draw_sprite_part(spr_hair,0,floor(x_frame)*frame_size,y_frame*frame_size,frame_size,frame_size,xx,yy);