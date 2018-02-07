/// @description Debug Mode
// You can write your code in this editor

if(!debug) { exit; }

with(objCollision){
	draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true)
}
with(objPlayer){
	draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true)
}