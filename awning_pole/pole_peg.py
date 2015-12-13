
import solid as s
import solid.utils as u

insert_rad = 8.75
insert_hole_rad = 3.75
insert_height = 30
insert_hole_down = insert_hole_rad * 2
insert_hole_height = insert_height - insert_hole_down
lip_rad = insert_rad + 2
lip_height = 2
peg_height = 50
peg_fin_width = 5
peg_fin_length = lip_rad * 2.0

insert = (
    s.cylinder(r=insert_rad, h=insert_height) -
    s.cylinder(r=insert_hole_rad, h=insert_hole_height) - 
    u.up(insert_hole_height)(s.sphere(r=insert_hole_rad))
)

flange = u.up(insert_height)(
    s.cylinder(r1=insert_rad, r2=lip_rad, h=lip_height)
)

peg = u.up(insert_height + lip_height)(
    (s.cube(
        size=(peg_fin_width, peg_fin_length, peg_height * 2), center=True)
    + s.cube(
        size=(peg_fin_length, peg_fin_width, peg_height * 2), center=True)) *
    s.cylinder(r1=lip_rad, r2=peg_fin_width / 2.0, h=peg_height)
)

final = insert + flange + peg
s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
