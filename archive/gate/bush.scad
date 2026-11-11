

difference() {
	cylinder($fn = 64, h = 60, r = 8);
	cylinder(h = 60, r = 5);
}
/***********************************************
******      SolidPython code:      *************
************************************************
 

from solid import *
from solid.utils import *
from solid import screw_thread

bush_length = 60
outer_rad = 8
inner_rad = 5

c = cylinder(r=outer_rad, h=bush_length, segments=64)
internal_c = cylinder(r=inner_rad, h=bush_length)

final = c - internal_c

scad_render_to_file(final, __file__.replace('.py', '.scad'))



 
 
***********************************************/
                            
