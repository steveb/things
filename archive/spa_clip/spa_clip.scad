

difference() {
	difference() {
		difference() {
			union() {
				union() {
					difference() {
						difference() {
							linear_extrude(height = 8) {
								polygon(paths = [[0, 1, 2, 3, 4, 5, 6, 7]], points = [[0, 0], [1.5000000000, 15], [2.5000000000, 20], [3, 20], [5.0000000000, 14], [3.5000000000, 10.5000000000], [2.5000000000, 11], [2, 0]]);
							}
							rotate(a = [2.9000000000, 0, 0]) {
								translate(v = [0, 0, -21]) {
									cube(size = 21);
								}
							}
						}
						rotate(a = [-2.9000000000, 0, 0]) {
							translate(v = [0, 0, 8]) {
								cube(size = 21);
							}
						}
					}
					translate(v = [20, 0, 0]) {
						translate(v = [0, 0, 8]) {
							rotate(a = [0, 180, 0]) {
								difference() {
									difference() {
										linear_extrude(height = 8) {
											polygon(paths = [[0, 1, 2, 3, 4, 5, 6, 7]], points = [[0, 0], [1.5000000000, 15], [2.5000000000, 20], [3, 20], [5.0000000000, 14], [3.5000000000, 10.5000000000], [2.5000000000, 11], [2, 0]]);
										}
										rotate(a = [2.9000000000, 0, 0]) {
											translate(v = [0, 0, -21]) {
												cube(size = 21);
											}
										}
									}
									rotate(a = [-2.9000000000, 0, 0]) {
										translate(v = [0, 0, 8]) {
											cube(size = 21);
										}
									}
								}
							}
						}
					}
				}
				translate(v = [-6, 0, 0]) {
					translate(v = [0, -16, 0]) {
						cube(size = [32, 16, 10]);
					}
				}
			}
			translate(v = [-3, 0, 0]) {
				translate(v = [0, -8, 0]) {
					cube(size = [26, 5, 11]);
				}
			}
		}
		translate(v = [-3, 0, 0]) {
			translate(v = [0, -16, 0]) {
				cube(size = [26, 8, 3]);
			}
		}
	}
	translate(v = [0, 0, 7]) {
		translate(v = [-3, 0, 0]) {
			translate(v = [0, -16, 0]) {
				cube(size = [26, 8, 3]);
			}
		}
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 

from solid import *
from solid.utils import *

def hook():
    shape = polygon(points=[
      [0, 0],
      [1.5, 15],
      [2.5, 20],
      [3, 20],
      [5.0, 14],
      [3.5, 10.5],
      [2.5, 11],
      [2, 0]
    ]) 
    h = linear_extrude(height=8)(shape)
    bottom_camber = rotate(a=[2.9,0,0])(down(21)(cube(21)))
    top_camber = rotate(a=[-2.9,0,0])(up(8)(cube(21)))
    return h - bottom_camber - top_camber

left_hook = hook()

right_hook = right(20)(up(8)(
    rotate(a=[0,180,0])(hook())
))

hook_back = left(6)(back(16)(
    cube(size=[32, 16, 10])
))
back_hole = left(3)(back(8)(
    cube(size=[26, 5, 11])
))
top_back_hole = left(3)(back(16)(
    cube(size=[26, 8, 3])
))
bot_back_hole = up(7)(left(3)(back(16)(
    cube(size=[26, 8, 3])
)))

final = (left_hook + right_hook + 
         hook_back - back_hole -
         top_back_hole - bot_back_hole)

def foo(thing):
    print(thing)

@foo
def hi():
    print('hi')

scad_render_to_file(final, __file__.replace('.py', '.scad'))
 
 
************************************************/
