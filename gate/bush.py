
from solid import *
from solid.utils import *

bush_length = 60
outer_rad = 8
inner_rad = 5

c = cylinder(r=outer_rad, h=bush_length, segments=64)
internal_c = cylinder(r=inner_rad, h=bush_length)

final = c - internal_c

scad_render_to_file(final, __file__.replace('.py', '.scad'))
