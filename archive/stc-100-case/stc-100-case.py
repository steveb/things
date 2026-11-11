import solid as s
import solid.utils as u

hole_width = 71.0
hole_height = 28.5
hole_depth = 107.0

thickness = 3.0
width = hole_width + thickness + thickness
height = hole_height + thickness + thickness
depth = hole_depth + thickness

slot_width = 75.0
slot_height = 34.0
slot_depth = 3.5
slot_back = 1.5
wire_hole_dia = 17
screw_dia = 4

body = s.cube(size=[width, height, depth])
hole = u.right(thickness)(
    s.cube(size=[hole_width, hole_height, hole_depth])
)
slot = u.right((width - slot_width) / 2)(u.up(slot_back)(
    s.cube(size=[slot_width, slot_height, slot_depth])
))
base_hole = u.right(thickness)(u.up(slot_back + slot_depth)(u.forward(hole_height)(
    s.cube(size=[hole_width, thickness, hole_depth - slot_back - slot_depth])
)))

wire_hole = u.right(width / 2)(u.up(hole_depth)(
    s.cylinder(d=wire_hole_dia, h=thickness)
))

screw_housing = u.forward(height)(u.up(depth / 2.0)(s.rotate(a=[90, 0, 0])(
    s.cylinder(d=screw_dia + thickness * 2, h=height) - 
    s.cylinder(d=screw_dia, h=height)
)))

sh1 = u.left(screw_dia / 2)(screw_housing)
sh2 = u.right(width + screw_dia / 2)(screw_housing)

final = body + sh1 + sh2 - hole - slot - wire_hole - base_hole

s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
