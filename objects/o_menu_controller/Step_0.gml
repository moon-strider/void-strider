if (keyboard_check_pressed(vk_enter)) {
	switch cur_pos {
		case positions[0]:
			room_goto_next()
			break
		case positions[1]:
			game_end()
			break
	}
}

manipulate_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
manipulate_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
				
cur_pos_index += manipulate_down - manipulate_up

cur_pos_index = cur_pos_index > array_length(positions)-1 ? 0 : cur_pos_index
cur_pos_index = cur_pos_index < 0 ? array_length(positions)-1 : cur_pos_index
				
cur_pos =  positions[cur_pos_index]