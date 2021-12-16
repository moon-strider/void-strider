if (follow != noone) {
	tar_x = follow.x
	tar_y = follow.y
}

x += (tar_x - x)/17
y += (tar_y - y)/17

x = clamp(x, follow.x-640, follow.x+640)
y = clamp(y, follow.y-360, follow.y+360)

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0)
camera_set_view_mat(camera, vm)