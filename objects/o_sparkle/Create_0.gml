phy_rotation = random_range(0, 360)
physics_apply_force(x, y, 400*dcos(phy_rotation), 400*dsin(phy_rotation))

alarm[0] = room_speed*0.35