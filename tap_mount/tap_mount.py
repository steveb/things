import solid as s
import solid.utils as u

seg = 64

t = s.cylinder(d=60, h=4, segments=seg)
t += u.up(4)(s.cylinder(d1=60, d2=44, h=4, segments=seg))
t += u.up(8)(s.cylinder(d1=44, d2=38, h=6, segments=seg))
t += u.up(14)(s.cylinder(d1=38, d2=38, h=15, segments=seg))
t += u.up(29)(s.cylinder(d1=38, d2=30, h=16, segments=seg))

t -= s.cylinder(d=21, h=50, segments=seg)
t -= s.cylinder(d=30, h=30, segments=6)

def screw_hole(t, forward, right):
    t -= u.up(4)(u.forward(forward)(u.right(right)(
        s.cylinder(d=9, h=10)
    )))
    t -= u.forward(forward)(u.right(right)(
        s.cylinder(d=3.5, h=4)
    ))
    return t

t = screw_hole(t, 24, 0) 
t = screw_hole(t, -24, 0) 
t = screw_hole(t, 0, 24) 
t = screw_hole(t, 0, -24) 

final = t
s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
