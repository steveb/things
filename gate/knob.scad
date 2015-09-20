

difference() {
	difference() {
		union() {
			union() {
				translate(v = [0, 0, 20]) {
					cylinder($fn = 64, h = 10, r = 23);
				}
				translate(v = [0, 0, 10]) {
					minkowski() {
						cylinder($fn = 64, h = 1, r = 25);
						sphere(r = 10);
					}
				}
			}
			translate(v = [0, 0, 20]) {
				cylinder($fn = 64, h = 40, r = 13);
			}
		}
		translate(v = [0, 0, 40]) {
			cylinder($fn = 64, h = 20, r = 4.8500000000);
		}
	}
	translate(v = [0, 0, 31]) {
		rotate_extrude(convexity = 10) {
			translate(v = [23, 0, 0]) {
				circle(r = 10);
			}
		}
	}
}
/***********************************************
******      SolidPython code:      *************
************************************************
 

from solid import *
from solid.utils import *

knob_rad = 25
knob_edge_rad = 10
knob_height = knob_edge_rad * 2
flange_rad = 13
flange_height = 40
hole_rad = 9.7 / 2.0
hole_depth = 20

knob = up(knob_edge_rad)(minkowski()(
    cylinder(r=knob_rad, h=1, segments=64),
    sphere(r=knob_edge_rad)
))

fillet_toroid = up(knob_edge_rad * 3 + 1)(rotate_extrude(convexity=10)(
    translate(v=[flange_rad + knob_edge_rad,0,0])(
        circle(r=knob_edge_rad)
    )
))

fillet_cylinder = up(knob_edge_rad * 2)(
    cylinder(r=flange_rad + knob_edge_rad, h=knob_edge_rad, segments=64)
)

flange = up(knob_height)(
    cylinder(r=flange_rad, h=flange_height, segments=64)
)

hole = up(knob_height + flange_height - hole_depth)(
    cylinder(r=hole_rad, h=hole_depth, segments=64)
)
final = fillet_cylinder + knob + flange - hole - fillet_toroid 

scad_render_to_file(final, __file__.replace('.py', '.scad'))
 
 
***********************************************/
                            
