
from solid import *
from solid.utils import *

foot_rad = 13
foot_height = 30
hole_rad = 9.7 / 2.0
hole_depth = 27

foot = cylinder(r=foot_rad, h=foot_height, segments=64)

hole = up(foot_height - hole_depth)(
    cylinder(r=hole_rad, h=hole_depth, segments=64)
)
final = foot - hole

scad_render_to_file(final, __file__.replace('.py', '.scad'))
