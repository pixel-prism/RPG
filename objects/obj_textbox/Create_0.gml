/// @description Insert description here
// You can write your code in this editor

game.pause = true;

// Set initial variables
page = 0;
portrait = noone;
text = "";
data = ["One", "Two", "Three", "Four"];

// Constants
window_padding = 10;
text_padding = 10;
leading = font_get_size(fnt_dialogue);
border = 2;
border_color = c_black;
textbox_color = c_white;
font_color = c_black;

// Set attributes for window border
border_x = camera_get_view_x(view_camera[0]) + window_padding;
border_y = camera_get_view_y(view_camera[0]) + window_get_height() * 0.6;
border_width = window_get_width() - 2 * window_padding;
border_height = (window_get_height() * 0.4) - window_padding;

// Set attributes for window
x = border_x + border;
y = border_y + border;
width = border_width - 2 * border;
height = border_height - 2 * border;

// Set attributes for text
text_x = x + text_padding;
text_y = y + text_padding;
text_width = width - 2 * text_padding;
