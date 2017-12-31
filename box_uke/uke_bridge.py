import solid as s
import solid.utils as u

string_spacing = 13.0
string_hspacing = string_spacing / 2.0
string_hole_dia = 2.0
string_hole_countersink = 3.0
string_head_dia = 5.0

rail_width = 11.5
rail_hwidth = rail_width / 2.0
rail_spacer_width = string_spacing - rail_width
rail_spacer_hwidth = rail_spacer_width / 2.0
width = 68.0
hwidth = width / 2.0
length = 46.0
stop_length = 6.0
height = 10.0
height_angle = 6.5
base_height = 2.0

# intonation screw
int_screw_dia = 3.0
int_screw_head_dia = 5.5
int_screw_height = 7.0
int_screw_counter_sink = 4.0

mnt_screw_width = 59.0
mnt_screw_hwidth = mnt_screw_width / 2.0
mnt_screw_length = 27.0
mnt_screw_length_offset = 13.0
mnt_screw_dia = 3.0
mnt_screw_head_dia = 6.0
mnt_screw_countersink_straight = 5.0
mnt_screw_countersink = 2.0

# base shape
b = s.cube(size=[width, length, height])

# mount holes
mnt_hole = s.cylinder(d=mnt_screw_dia, h=height, segments=128)

# mount screw straight countersink
mnt_hole += u.up(height - mnt_screw_countersink_straight)(
    s.cylinder(h=height, d=mnt_screw_head_dia, segments=128)
)
# mount screw flush countersink
mnt_hole += u.up(height - mnt_screw_countersink_straight
                 - mnt_screw_countersink)(
    s.cylinder(h=mnt_screw_countersink, d1=mnt_screw_dia,
               d2=mnt_screw_head_dia, segments=128)
)

b -= u.right(hwidth - mnt_screw_hwidth)(
    u.forward(mnt_screw_length_offset)(mnt_hole)
)
b -= u.right(hwidth + mnt_screw_hwidth)(
    u.forward(mnt_screw_length_offset)(mnt_hole)
)
b -= u.right(hwidth - mnt_screw_hwidth)(
    u.forward(mnt_screw_length_offset + mnt_screw_length)(mnt_hole)
)
b -= u.right(hwidth + mnt_screw_hwidth)(
    u.forward(mnt_screw_length_offset + mnt_screw_length)(mnt_hole)
)

# rail slots
string = u.forward(stop_length)(
    u.up(base_height)(
        s.cube(size=[rail_width, length, height])
    )
)
# intonation screw hole
string += u.up(int_screw_height)(
    u.right(rail_hwidth)(u.back(1.0)(
        u.rotate(a=[-90, 0, 0])(
            s.cylinder(d=int_screw_dia, h=stop_length + 2.0, segments=128) +
            s.cylinder(d=int_screw_head_dia, h=int_screw_counter_sink + 1.0,
                       segments=128)
        )
    ))
)
# string hole
string += u.up(base_height + string_hole_dia / 2.0)(
    u.right(rail_hwidth)(u.back(1.0)(
        u.rotate(a=[-90, 0, 0])(
            s.cylinder(d=string_hole_dia, h=stop_length + 2.0, segments=128) +
            s.cylinder(d=string_head_dia, h=string_hole_countersink + 1.0,
                       segments=128)
        )
    ))
)

# all four strings
for h in (0, string_spacing, -string_spacing, -string_spacing*2):
    b -= u.right(hwidth + rail_spacer_hwidth + h)(string)

# base slope
b -= u.up(height)(
    u.forward(stop_length)(
        u.rotate(a=[-height_angle, 0, 0])(
            s.cube(size=[width, length, height])
        )
    )
)

final = b
s.scad_render_to_file(final, __file__.replace('.py', '.scad'))
