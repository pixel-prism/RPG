/// @description Insert description here
// You can write your code in this editor

// Draw Border
draw_set_color(border_color);
draw_rectangle(border_x, border_y, border_x + border_width, border_y + border_height, false);

// Draw Textbox
draw_set_color(textbox_color);
draw_rectangle(x, y, x + width, y + height, false);

// Draw Text
draw_set_color(font_color);
draw_set_font(fnt_dialogue);
draw_text_ext(text_x, text_y, text, leading, text_width);