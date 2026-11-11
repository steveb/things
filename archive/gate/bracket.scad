

difference() {
	difference() {
		difference() {
			union() {
				difference() {
					difference() {
						union() {
							translate(v = [-40.0000000000, 0, 0]) {
								cube(size = [80.0000000000, 5.0000000000, 40.0000000000]);
							}
							translate(v = [-23.0000000000, 0, 0]) {
								cube(size = [46.0000000000, 14.0000000000, 40.0000000000]);
							}
						}
						translate(v = [-23.0000000000, 0, 0]) {
							translate(v = [0, 14.0000000000, 0]) {
								cylinder(h = 40.0000000000, r = 9.0000000000);
							}
						}
					}
					translate(v = [23.0000000000, 0, 0]) {
						translate(v = [0, 14.0000000000, 0]) {
							cylinder(h = 40.0000000000, r = 9.0000000000);
						}
					}
				}
				translate(v = [0, 14.0000000000, 0]) {
					cylinder(h = 40.0000000000, r = 14.0000000000);
				}
			}
			translate(v = [0, 14.0000000000, 0]) {
				cylinder(h = 40.0000000000, r = 9.0000000000);
			}
		}
		translate(v = [-28.0000000000, 0, 0]) {
			translate(v = [0, 0, 20.0000000000]) {
				translate(v = [0, 7.0000000000, 0]) {
					rotate(a = [90, 0, 0]) {
						cylinder($fn = 16, h = 9.0000000000, r = 1.5000000000);
					}
				}
			}
		}
	}
	translate(v = [28.0000000000, 0, 0]) {
		translate(v = [0, 0, 20.0000000000]) {
			translate(v = [0, 7.0000000000, 0]) {
				rotate(a = [90, 0, 0]) {
					cylinder($fn = 16, h = 9.0000000000, r = 1.5000000000);
				}
			}
		}
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 

from solid import *
from solid.utils import *

height = 40.0
length = 80.0
wall_width = 5.0
inner_diameter = 18.0
outer_diameter = inner_diameter + wall_width * 2 # 28
outer_radius = outer_diameter / 2.0 # 14
inner_radius = inner_diameter / 2.0 # 9
filler_end = (outer_diameter + inner_diameter) / 2.0
screw_diameter = 3.0

backing = left(length / 2.0)(
    cube(size=[length,wall_width,height])
)

filler = left(filler_end)(
    cube(size=[outer_diameter + inner_diameter,
               outer_radius, height])
)

filler_curve = forward(inner_radius + wall_width)(
    cylinder(h=height, r=inner_radius)
)

filler_curve1 = left(filler_end)(filler_curve)
filler_curve2 = right(filler_end)(filler_curve)

housing = forward(outer_radius)(
    cylinder(h=height, r=outer_radius)
)

hole = forward(outer_radius)(
    cylinder(h=height, r=inner_radius)
)

screw = up(height / 2.0)(
    forward(wall_width + 2)(
        rotate(a=[90,0,0])(
            cylinder(h=wall_width + 4, r=screw_diameter / 2.0, segments=16)
        )
    )
)
screw1 = left(length * 0.35)(screw)
screw2 = right(length * 0.35)(screw)

final = backing + \
        filler - filler_curve1 - filler_curve2 + \
        housing - hole - screw1 - screw2

scad_render_to_file(final, __file__.replace('.py', '.scad'))
 
 
************************************************/
