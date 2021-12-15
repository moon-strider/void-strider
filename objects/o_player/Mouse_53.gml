proj = instance_create_depth(x+32*dcos(phy_rotation), y+32*dsin(phy_rotation), depth, o_projectile)
var angle = phy_rotation
with (proj) {
	physics_apply_force(x, y, 8000*dcos(angle), 8000*dsin(angle))
}