/// @description Initialize NPC
// You can write your code in this editor

// Set the speeds
W_spd = 1;
R_spd = 6;
spd   = W_spd;

// Sprite frames
x_frame = 1;
y_frame = 10;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

// Sprite Character Options
spr_shadow = spr_character_shadow;
spr_base   = -1;
spr_hair   = -1;
spr_shirt  = -1;
spr_legs   = -1;
spr_feet   = -1;

// Movement
moveX = 0;
moveY = 0;

// Dialogue
dialogue = "I have not defined dialogue yet."
myTextbox = noone;

alarm[1] = 1;