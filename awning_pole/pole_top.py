
import solid as s
import solid.utils as u

insert_rad = 8.75
insert_hole_rad = 3.75
insert_height = 30
insert_hole_down = insert_hole_rad * 2
insert_hole_height = insert_height - insert_hole_down
lip_rad = insert_rad + 2
lip_height = 2
top_height_step = 5
top_notch_rad = lip_rad - 5

insert = (
    s.cylinder(r=insert_rad, h=insert_height) -
    s.cylinder(r=insert_hole_rad, h=insert_hole_height) - 
    u.up(insert_hole_height)(s.sphere(r=insert_hole_rad))
)

flange = u.up(insert_height)(
    s.cylinder(r1=insert_rad, r2=lip_rad, h=lip_height)
)

top = u.up(insert_height + lip_height)(
    s.cylinder(r1=lip_rad, r2=top_notch_rad, h=top_height_step) +
    u.up(top_height_step)(
        s.cylinder(r=top_notch_rad, h=top_height_step)
    ) +
    u.up(top_height_step * 2)(
        s.cylinder(r1=top_notch_rad, r2=lip_rad, h=top_height_step)
    ) +
    u.up(top_height_step * 3)(
        s.cylinder(r=lip_rad, h=top_height_step)
    )
)

final = insert + flange + top
s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
