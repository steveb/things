

union() {
	union() {
		difference() {
			difference() {
				cylinder(h = 30, r = 8.7500000000);
				cylinder(h = 22.5000000000, r = 3.7500000000);
			}
			translate(v = [0, 0, 22.5000000000]) {
				sphere(r = 3.7500000000);
			}
		}
		translate(v = [0, 0, 30]) {
			cylinder(h = 2, r1 = 8.7500000000, r2 = 10.7500000000);
		}
	}
	translate(v = [0, 0, 32]) {
		union() {
			union() {
				union() {
					cylinder(h = 5, r1 = 10.7500000000, r2 = 5.7500000000);
					translate(v = [0, 0, 5]) {
						cylinder(h = 5, r = 5.7500000000);
					}
				}
				translate(v = [0, 0, 10]) {
					cylinder(h = 5, r1 = 5.7500000000, r2 = 10.7500000000);
				}
			}
			translate(v = [0, 0, 15]) {
				cylinder(h = 5, r = 10.7500000000);
			}
		}
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 

import solid as s
import solid.utils as u

insert_rad = 8.75
insert_hole_rad = 3.75
insert_height = 30
insert_hole_down = insert_hole_rad * 2
insert_hole_height = insert_height - insert_hole_down
lip_rad = insert_rad + 2
lip_height = 2
top_height_step = 5
top_notch_rad = lip_rad - 5

insert = (
    s.cylinder(r=insert_rad, h=insert_height) -
    s.cylinder(r=insert_hole_rad, h=insert_hole_height) - 
    u.up(insert_hole_height)(s.sphere(r=insert_hole_rad))
)

flange = u.up(insert_height)(
    s.cylinder(r1=insert_rad, r2=lip_rad, h=lip_height)
)

top = u.up(insert_height + lip_height)(
    s.cylinder(r1=lip_rad, r2=top_notch_rad, h=top_height_step) +
    u.up(top_height_step)(
        s.cylinder(r=top_notch_rad, h=top_height_step)
    ) +
    u.up(top_height_step * 2)(
        s.cylinder(r1=top_notch_rad, r2=lip_rad, h=top_height_step)
    ) +
    u.up(top_height_step * 3)(
        s.cylinder(r=lip_rad, h=top_height_step)
    )
)

final = insert + flange + top
s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
 
 
************************************************/
