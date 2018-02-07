/// @description Insert description here
// You can write your code in this editor

// Draw Textbox
draw_sprite(spr_Textbox,0,x,y);

// Draw Text
draw_set_font(fnt_dialogue);
leading = 7;
dialogue = "It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife.";
draw_text_ext(x,y,dialogue,font_get_size(fnt_dialogue)+leading,375);