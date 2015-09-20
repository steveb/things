
from solid import *
from solid.utils import *
import math

width = 60
length = 100
height = 10
hole_rad = 15
slope = math.atan2(height, length) * 180.0 / math.pi

stop = cube(size=[width, length, height])
ramp = rotate(a=[slope,0,0])(
    cube(size=[width, length, height])
)
hole = right(width / 2.0)(forward(length)(
    cylinder(r=hole_rad, h=height, segments=64)
))

final = stop - ramp - hole

scad_render_to_file(final, __file__.replace('.py', '.scad'))
