

difference() {
	difference() {
		difference() {
			difference() {
				difference() {
					cube(size = [90, 13, 45]);
					translate(v = [0, 0, 3]) {
						cube(size = [90, 10, 2]);
					}
				}
				translate(v = [0, -1, 0]) {
					translate(v = [0, 0, 2]) {
						rotate(a = 45, v = [1, 0, 0]) {
							cube(size = [90, 4, 4]);
						}
					}
				}
			}
			translate(v = [22.5000000000, 0, 0]) {
				translate(v = [0, 5, 0]) {
					union() {
						cylinder($fn = 32, h = 35, r = 4);
						translate(v = [0, 0, 35]) {
							cylinder($fn = 32, h = 10, r = 2);
						}
					}
				}
			}
		}
		translate(v = [67.5000000000, 0, 0]) {
			translate(v = [0, 5, 0]) {
				union() {
					cylinder($fn = 32, h = 35, r = 4);
					translate(v = [0, 0, 35]) {
						cylinder($fn = 32, h = 10, r = 2);
					}
				}
			}
		}
	}
	translate(v = [0, 0, 20]) {
		cube(size = [90, 4, 9]);
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 

import solid as s
import solid.utils as u

spacer_width = 13
spacer_height = 45
spacer_depth = 90
screw_offset = 22.5
screw_head_radius = 4
screw_rad = 2
screw_length = 10
head_hole_height = spacer_height - screw_length

body = s.cube(size=[spacer_depth, spacer_width, spacer_height])

slot = u.up(3)(s.cube(size=[spacer_depth, 10, 2]))
slot_round = u.back(1)(u.up(2)(
    s.rotate(a=spacer_height, v=[1, 0, 0])(
        s.cube(size=[spacer_depth, 4, 4])
    )
))

screw_hole = u.forward(5)(
    s.cylinder(r=screw_head_radius, h=head_hole_height, segments=32) +
    u.up(head_hole_height)(
        s.cylinder(r=screw_rad, h=screw_length, segments=32)
    )
)

screw_hole_1 = u.right(screw_offset)(screw_hole)
screw_hole_2 = u.right(spacer_depth - screw_offset)(screw_hole)

wire_run = u.up(20)(s.cube(size=[spacer_depth, 4, 9]))

final = body - slot - slot_round - screw_hole_1 - screw_hole_2 - wire_run

s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
 
 
************************************************/
