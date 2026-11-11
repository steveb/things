''' Mounting spacers for lvpin LP-2020a+ stereo

Spacers which allow an lvpin LP-2020a+ stereo to be mounted under a bench,
table or cabinet. There is a slot to allow for wires to pass through to the
front (I am using them for the power and audio of my music source).

Customised parameters allow different sized screws to be used for mounting.

This work is licensed under a Creative Commons Attribution-ShareAlike 4.0
International License.
http://creativecommons.org/licenses/by-sa/4.0/
'''
import solid as s
import solid.utils as u

spacer_width = 13
spacer_depth = 90
screw_offset = 22.5
screw_offset_2 = spacer_depth - screw_offset

v = s.variables()

v.spacer_height = s.var(45,
                        comment='Height of the spacer, default is flush '
                                'with the mounting surface.',
                        end_comment='[45:90]')
v.screw_head_radius = s.var(4,
                            comment='Radius of hole to fix screw length.',
                            end_comment='[2:4.5]')
v.screw_radius = s.var(2,
                       comment='Radius of screw thread.',
                       end_comment='[1:4.5]')
v.screw_length = s.var(10,
                       comment='Length of thread to be inside spacer.',
                       end_comment='[3:45]')
v.head_hole_height = s.var('spacer_height - screw_length')

body = s.cube(size=[spacer_depth, spacer_width, v.spacer_height])

slot = u.up(3)(s.cube(size=[spacer_depth, 10, 2]))
slot_round = u.back(1)(u.up(2)(
    s.rotate(a=v.spacer_height, v=[1, 0, 0])(
        s.cube(size=[spacer_depth, 4, 4])
    )
))


screw_hole = u.forward(5)(
    s.cylinder(r=v.screw_head_radius, h=v.head_hole_height, segments=32) +
    u.up(v.head_hole_height)(
        s.cylinder(r=v.screw_radius, h=v.screw_length, segments=32)
    )
)

screw_hole_1 = u.right(screw_offset)(screw_hole)
screw_hole_2 = u.right(screw_offset_2)(screw_hole)

wire_run = u.up(20)(s.cube(size=[spacer_depth, 4, 9]))

final = body - slot - slot_round - screw_hole_1 - screw_hole_2 - wire_run

s.scad_render_to_file(final, __file__.replace('.py', '.scad'), variables=v)
