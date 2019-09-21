import solid as s
import solid.utils as u
import math

depth = 4.0
depth_end = 3.0
height = 8.5
width = 6.0
cuts = [0, 1, 2, 3.2]

s.
# depth = 40
# interior_height = 73
# wall = 3
# dwall = wall * 2
# rein_wall = 1.5
# drein_wall = rein_wall * 2
# shelf_height = 5
# shelf_depth = 10
# height = interior_height + wall + shelf_height
# rein_height = math.sqrt(math.pow(depth, 2) + math.pow(height, 2)) 
# rein_angle = math.atan2(height, depth - wall) * (180 / math.pi)
# width = 30
# slot_width = 1.5
# slot_cover_height = 13
# screw_head = 9
# screw_hole = 3.5

# b = s.cube(size=(width, depth, height))
# b -= u.up(wall)(u.forward(wall)(
#     s.cube(size=(width, depth - dwall, height - dwall))
# ))

# b += u.forward(wall)(s.rotate(a=(rein_angle, 0, 0))(
#     s.cube(size=(width, rein_height - wall, rein_wall))
# ))

# b += u.up(height - wall)(u.forward(wall / 2)(s.rotate(a=(-rein_angle, 0, 0))(
#     s.cube(size=(width, rein_height - dwall, rein_wall))
# )))

# b += u.up(height - wall)(u.forward(depth)(
#     s.cube(size=(width, wall + slot_width, wall))
# ))

# b += u.up(height - slot_cover_height)(u.forward(depth + 1.5)(
#     s.cube(size=(width, wall, slot_cover_height))
# ))

# b += u.forward(depth)(
#     s.cube(size=(width, shelf_depth, shelf_height))
# )

# b -= u.right(width / 2)(u.up(height / 4)(u.forward(depth + 1)(s.rotate(a=(90, 0, 0))(
#     s.cylinder(d=screw_head, h=depth - wall) + \
#     s.cylinder(d=screw_hole, h=depth)
# ))))

# b -= u.right(width / 2)(u.up(height - height / 4)(u.forward(depth + 1)(s.rotate(a=(90, 0, 0))(
#     s.cylinder(d=screw_head, h=depth - wall) + \
#     s.cylinder(d=screw_hole, h=depth)
# ))))

final = b

s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
