

difference() {
	difference() {
		difference() {
			union() {
				union() {
					hull() {
						union() {
							cylinder($fn = 64, d = 21, h = 0.1000000000);
							translate(v = [0, 0, 32]) {
								cylinder($fn = 64, d = 21, h = 0.1000000000);
							}
						}
					}
					hull() {
						union() {
							translate(v = [0, 0, 32]) {
								cylinder($fn = 64, d = 21, h = 0.1000000000);
							}
							translate(v = [2.6000000000, 0, 0]) {
								translate(v = [0, 0, 36.4000000000]) {
									rotate(a = [0, 45, 0]) {
										cylinder($fn = 64, d = 19.5000000000, h = 0.2000000000);
									}
								}
							}
						}
					}
				}
				translate(v = [2.6000000000, 0, 0]) {
					translate(v = [0, 0, 36.4000000000]) {
						rotate(a = [0, 45, 0]) {
							cylinder($fn = 64, d = 19.5000000000, h = 20);
						}
					}
				}
			}
			hull() {
				union() {
					cylinder($fn = 64, d = 15, h = 0.1000000000);
					translate(v = [0, 0, 32]) {
						cylinder($fn = 64, d = 15, h = 0.1000000000);
					}
				}
			}
		}
		hull() {
			union() {
				translate(v = [0, 0, 32]) {
					cylinder($fn = 64, d = 15, h = 0.1000000000);
				}
				translate(v = [2.6000000000, 0, 0]) {
					translate(v = [0, 0, 36.4000000000]) {
						rotate(a = [0, 45, 0]) {
							cylinder($fn = 64, d = 13.5000000000, h = 0.2000000000);
						}
					}
				}
			}
		}
	}
	translate(v = [2.6000000000, 0, 0]) {
		translate(v = [0, 0, 36.4000000000]) {
			rotate(a = [0, 45, 0]) {
				cylinder($fn = 64, d = 13.5000000000, h = 21);
			}
		}
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 
import solid as s
import solid.utils as u

wall = 3
pipe_internal_dia = 11.5
pipe_dia = 13.5
pipe_length = 20
pipe_outer = pipe_dia + wall * 2
switch_dia = 15
switch_length = 32
switch_outer = switch_dia + wall * 2
angle = 45
seg = 64

c1 = s.cylinder(d=switch_dia, h=0.1, segments=seg)
c2 = u.up(switch_length)(s.cylinder(d=switch_dia, h=0.1, segments=seg))

c3 = u.right(2.6)(u.up(switch_length + 4.4)(u.rotate(a=[0, 45, 0])(
     s.cylinder(d=pipe_dia, h=0.2, segments=seg)
)))
c4 = u.right(2.6)(u.up(switch_length + 4.4)(u.rotate(a=[0, 45, 0])(
     s.cylinder(d=pipe_dia, h=pipe_length + 1, segments=seg)
)))
co1 = s.cylinder(d=switch_outer, h=0.1, segments=seg)
co2 = u.up(switch_length)(s.cylinder(d=switch_outer, h=0.1, segments=seg))

co3 = u.right(2.6)(u.up(switch_length + 4.4)(u.rotate(a=[0, 45, 0])(
     s.cylinder(d=pipe_outer, h=0.2, segments=seg)
)))
co4 = u.right(2.6)(u.up(switch_length + 4.4)(u.rotate(a=[0, 45, 0])(
     s.cylinder(d=pipe_outer, h=pipe_length, segments=seg)
)))
m = s.hull()(co1 + co2)
m += s.hull()(co2 + co3)
m += co4
m -= s.hull()(c1 + c2)
m -= s.hull()(c2 + c3)
m -= c4

final = m

s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
 
 
************************************************/
