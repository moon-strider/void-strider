face_target(o_player)

switch state {
	case enemy_state.follow:
		enemy_follow(o_player)
		break
	case enemy_state.idle:
		//enemy_idle()
		break
}

if (hp <= 0) {
	instance_destroy()
}