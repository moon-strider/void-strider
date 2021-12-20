// movement setup

movement(key_up, key_left, key_down, key_right, spd)
face_mouse()

if (hp <= 0) {
	game_end()
}

if !bbox_right || !bbox_bottom || bbox_left>=room_width || bbox_top>=room_height {
	var middle_x = room_width/2
	var middle_y = room_height/2
	var m_x = x - middle_x
	var m_y = y - middle_y
	var at = arctan2(m_y, m_x) + pi
	physics_apply_force(x, y, 1600*cos(at), 1600*sin(at))
}