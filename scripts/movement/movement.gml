// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement(b_up, b_left, b_down, b_right, spd){
	var x_modifier = keyboard_check_direct(b_left) ? -spd : (keyboard_check_direct(b_right) ? spd : 0)
	var y_modifier = keyboard_check_direct(b_up) ? -spd : (keyboard_check_direct(b_down) ? spd : 0)
	
	physics_apply_force(x, y, x_modifier, y_modifier)
}

function face_mouse() {
	phy_rotation = -point_direction(x, y, mouse_x, mouse_y)
}