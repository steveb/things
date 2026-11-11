
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

scad_render_to_file(final, __file__.replace('.py', '.scad'))
