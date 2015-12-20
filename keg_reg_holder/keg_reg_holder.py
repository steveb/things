import solid as s
import solid.utils as u

slot_width = 30
slot_length = 50
slot_depth = 30
top_depth = 5
fin_width = 5
fin_depth = 20
keg_inner_rad = 75
keg_outer_rad = 105
lip_inner_depth = 20
lip_outer_depth = 50
lip_width = 5
segments = 120

top_outer_rad = keg_outer_rad + lip_width + slot_length
top_inner_rad = keg_inner_rad - lip_width
body_width = slot_width + fin_width * 2
body_depth = top_depth + lip_outer_depth
keg_depth = body_depth - top_depth

body = s.cylinder(r=top_outer_rad, h=body_depth, segments=segments)
body *= u.left(body_width / 2)(u.back(top_outer_rad)(
    s.cube(size=(body_width, top_outer_rad, body_depth))
))
body -= s.cylinder(r=top_inner_rad, h=body_depth, segments=segments)
body -= u.left(top_outer_rad)(
    s.cube(size=(top_outer_rad*2, top_outer_rad, body_depth))
)
body -= u.down(top_depth + lip_inner_depth)(
    s.cylinder(r=keg_inner_rad, h=body_depth, segments=segments)
)

keg_slot = s.cylinder(r=keg_outer_rad, h=keg_depth, segments=segments)
keg_slot -= s.cylinder(r=keg_inner_rad, h=keg_depth, segments=segments)
body -= keg_slot

slot = u.left(slot_width / 2)(u.back(top_outer_rad)(
    s.cube(size=(slot_width, slot_length, body_depth))
))
slot += u.left(body_width / 2)(u.back(top_outer_rad)(
    s.cube(size=(body_width, slot_length, body_depth - slot_depth))
))

body -= slot

final = body

s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
