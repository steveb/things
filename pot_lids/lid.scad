

difference() {
	difference() {
		difference() {
			union() {
				translate(v = [0, 0, 7]) {
					minkowski() {
						cylinder($fn = 64, h = 1, r = 20);
						sphere(r = 7);
					}
				}
				translate(v = [0, 0, 14]) {
					cylinder($fn = 64, h = 20, r = 20);
				}
			}
			translate(v = [0, 0, 14]) {
				cylinder($fn = 64, h = 20, r = 3);
			}
		}
		cylinder($fn = 64, h = 14, r = 5.5000000000);
	}
	translate(v = [0, 0, 304]) {
		sphere(r = 280, $fn = 256);
	}
}
/***********************************************
******      SolidPython code:      *************
************************************************
 

from solid import *
from solid.utils import *

knob_rad = 20
knob_edge_rad = 7
knob_height = knob_edge_rad * 2
flange_rad = 20
flange_height = 10
hole_rad = 3
hole_depth = 10
screw_rad = 5.5
base_rad = 280

knob = up(knob_edge_rad)(minkowski()(
    cylinder(r=knob_rad, h=1, segments=64),
    sphere(r=knob_edge_rad)
))
#knob = knob_edge + knob_body

flange = up(knob_height)(
    cylinder(r=flange_rad, h=flange_height * 2, segments=64)
)

hole = up(knob_height + flange_height - hole_depth)(
    cylinder(r=hole_rad, h=hole_depth * 2, segments=64)
)
screw_hole = cylinder(
    r=screw_rad,
    h=knob_height + flange_height - hole_depth, segments=64)

curved_base = up(knob_height + flange_height + base_rad)(
    sphere(r=base_rad, segments=256)
)

final = knob + flange - hole - screw_hole - curved_base

scad_render_to_file(final, __file__.replace('.py', '.scad'))
 
 
***********************************************/
                            
