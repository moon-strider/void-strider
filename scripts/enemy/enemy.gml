function enemy_idle() {
	
}

function enemy_follow(target) {
	if (distance_to_object(target) > 128) {
		physics_apply_force(x, y, 500*dcos(phy_rotation), 500*dsin(phy_rotation))
	}
}

function face_target(target) {
	phy_rotation = -point_direction(x, y, target.x, target.y)	
}