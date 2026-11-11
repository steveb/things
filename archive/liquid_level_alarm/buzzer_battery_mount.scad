

difference() {
	union() {
		difference() {
			difference() {
				cylinder($fn = 64, d = 20.5000000000, h = 57.5000000000);
				cylinder($fn = 64, d = 15.5000000000, h = 55);
			}
			translate(v = [0, 0, 55]) {
				cylinder($fn = 64, d1 = 15.5000000000, d2 = 11.5000000000, h = 2.5000000000);
			}
		}
		translate(v = [0, -15.5000000000, 0]) {
			translate(v = [7.7500000000, 0, 0]) {
				cube(size = [23.0000000000, 31.0000000000, 57.5000000000]);
			}
		}
	}
	translate(v = [0, 0, 2.5000000000]) {
		translate(v = [0, -13, 0]) {
			translate(v = [10.2500000000, 0, 0]) {
				cube(size = [18, 26, 55]);
			}
		}
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 
import solid as s
import solid.utils as u

wall = 2.5
wall2 = wall + wall
pipe_dia = 15.5
bat_width = 18
bat_length = 26
bat_height = 55
seg=64


m = s.cylinder(d=pipe_dia + wall2, h=bat_height + wall, segments=seg)
m -= s.cylinder(d=pipe_dia, h=bat_height, segments=seg)
m -= u.up(bat_height)(
    s.cylinder(d1=pipe_dia, d2=pipe_dia - 4, h=wall, segments=seg)
)
m += u.back((bat_length + wall2) / 2)(u.right(pipe_dia / 2.0)(
    s.cube(size=(bat_width + wall2, bat_length + wall2, bat_height + wall))
))
m -= u.up(wall)(u.back(bat_length / 2)(u.right(wall + (pipe_dia / 2.0))(
    s.cube(size=(bat_width, bat_length, bat_height))
)))
final = m

s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
 
 
************************************************/
