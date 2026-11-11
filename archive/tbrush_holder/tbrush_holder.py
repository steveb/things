import solid as s
import solid.utils as u

handle_h = 140
handle_w_bot = 25
handle_w_top = 32.5
holder_w = 50
holder_h = 25
holder_offset = 25
segments = 256
next_holder = 50
holders = 4
screw_block_w = 15 
screw_dia = 4
screw_len = 15
screw_head_dia = 8

handle_hole = s.cylinder(d1=handle_w_bot, d2=handle_w_top, h=handle_h,
                         segments=segments)

holder = u.up(holder_offset)(
    s.cylinder(d=holder_w, h=holder_h, segments=segments) +
    u.back(holder_w / 2)(
        s.cube(size=[holder_w / 2, holder_w, holder_h])
    )
)

block_pos = holder_w / 2 + screw_block_w / 2
screw_block = u.up(holder_offset)(
    u.back(block_pos)(u.left(screw_block_w)(
        s.cube(size=[screw_block_w, screw_block_w, holder_h])
    ))
)

screw_hole = u.left(holder_w / 2)(u.up(holder_offset + holder_h / 2)(u.back(holder_w / 2)(
    s.rotate(a=[0,90,0])(
        s.cylinder(h=holder_w, d=screw_dia) +
        u.down(screw_len)(s.cylinder(h=holder_w, d=screw_head_dia))
    )
)))


final_handle = holder - handle_hole
final = final_handle

for a in range(1, holders):
    final += u.forward(a * next_holder)(final_handle + screw_block)
for a in range(1, holders):
    final -= u.forward(a * next_holder)(screw_hole)

s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
