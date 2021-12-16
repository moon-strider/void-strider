// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_sparkles() {
	for (i = 0; i < 12; i++) {
		instance_create_depth(x, y, depth, o_sparkle)
	}
	instance_destroy()
}