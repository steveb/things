

rotate(a = [180, 0, 0]) {
	translate(v = [0, 0, -60.0000000000]) {
		difference() {
			union() {
				translate(v = [0, 0, 57.4500000000]) {
					cube(size = [160.0000000000, 120.0000000000, 3.0000000000]);
				}
				translate(v = [0, 3.4500000000, 0]) {
					translate(v = [3.4500000000, 0, 0]) {
						translate(v = [0, 0, 45.4500000000]) {
							cube(size = [153.1000000000, 113.1000000000, 12.0000000000]);
						}
					}
				}
			}
			translate(v = [0, 6.4500000000, 0]) {
				translate(v = [6.4500000000, 0, 0]) {
					translate(v = [0, 0, 45.4500000000]) {
						cube(size = [147.1000000000, 107.1000000000, 12.0000000000]);
					}
				}
			}
			translate(v = [0, 60, 0]) {
				translate(v = [49.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cube(size = [60.0000000000, 50.0000000000, 3.0000000000]);
					}
				}
			}
			translate(v = [0, 57.0000000000, 0]) {
				translate(v = [39.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 2.7000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 105.0000000000, 0]) {
				translate(v = [39.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 2.7000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 105.0000000000, 0]) {
				translate(v = [116.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 2.7000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 70.0000000000, 0]) {
				translate(v = [25.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 7.0000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 70.0000000000, 0]) {
				translate(v = [135.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 7.0000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 100.0000000000, 0]) {
				translate(v = [25.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 7.0000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 100.0000000000, 0]) {
				translate(v = [135.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 7.0000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 30.0000000000, 0]) {
				translate(v = [25.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 10.0000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 30.0000000000, 0]) {
				translate(v = [80.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 7.0000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 30.0000000000, 0]) {
				translate(v = [135.0000000000, 0, 0]) {
					translate(v = [0, 0, 57.4500000000]) {
						cylinder(d = 10.0000000000, h = 3.0000000000);
					}
				}
			}
			translate(v = [0, 10.0000000000, 0]) {
				translate(v = [0, 0, 52.0000000000]) {
					rotate(a = [0, 90, 0]) {
						cylinder($fn = 64, d = 2.7000000000, h = 160.0000000000);
					}
				}
			}
			translate(v = [0, 60.0000000000, 0]) {
				translate(v = [0, 0, 52.0000000000]) {
					rotate(a = [0, 90, 0]) {
						cylinder($fn = 64, d = 2.7000000000, h = 160.0000000000);
					}
				}
			}
			translate(v = [0, 110.0000000000, 0]) {
				translate(v = [0, 0, 52.0000000000]) {
					rotate(a = [0, 90, 0]) {
						cylinder($fn = 64, d = 2.7000000000, h = 160.0000000000);
					}
				}
			}
			translate(v = [0, 120.0000000000, 0]) {
				translate(v = [30.0000000000, 0, 0]) {
					translate(v = [0, 0, 52.0000000000]) {
						rotate(a = [90, 0, 0]) {
							cylinder($fn = 64, d = 2.7000000000, h = 120.0000000000);
						}
					}
				}
			}
			translate(v = [0, 120.0000000000, 0]) {
				translate(v = [80.0000000000, 0, 0]) {
					translate(v = [0, 0, 52.0000000000]) {
						rotate(a = [90, 0, 0]) {
							cylinder($fn = 64, d = 2.7000000000, h = 120.0000000000);
						}
					}
				}
			}
			translate(v = [0, 120.0000000000, 0]) {
				translate(v = [130.0000000000, 0, 0]) {
					translate(v = [0, 0, 52.0000000000]) {
						rotate(a = [90, 0, 0]) {
							cylinder($fn = 64, d = 2.7000000000, h = 120.0000000000);
						}
					}
				}
			}
		}
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 
import solid as s
import solid.utils as u

width = 160.0
depth = 120.0
height = 57.0
wall_width = 3.0
wall_width2 = wall_width * 2.0 
jack_height = 16.0

jack_dia = 9.5
jack_y = 60.0
power_x = 13.0
power_dia = 8.5
midi_x = 35.0
midi_dia = 15.5
midi_screw_x = 11.0
midi_screw_dia = 2.0
ret_x = 122.0
send_x = 146.0

usb_z = 9.0
usb_height = 17.0
usb_width = 52.0
usb_x = 54.0

grill_slot = 3.0
grill_spacing = 3.1
grill_x = 54.0
grill_width = 52.0
grill_back_z = 29.0
grill_back_height = 20.0
grill_base_y = 50.0
grill_base_depth = 50.0

flash_width = 20.0
flash_depth = 20.0
flash_x = 70.0
flash_y = 12.0

screw_dia = 2.7
screw_side = 3
screw_front = 3
screw_spacing = 50.0
screw_height = 52.0
screw_side_y = 10.0
screw_front_x = 30.0

nt = 0.45  # nestle tolerance, so body and lid fit together
nt2 = nt * 2

lid_lip_height = 12.0
lid_lip_x = wall_width + nt
lid_lip_y = wall_width + nt
lid_lip_width = width - lid_lip_x - lid_lip_x
lid_lip_depth = depth - lid_lip_y - lid_lip_y
screen_x = 49.0
screen_width = 60.0
screen_y = 60
screen_depth = 50.0
screen_screw_1_x = 39.0
screen_screw_1_y = 57.0
screen_screw_2_x = 39.0
screen_screw_2_y = 105.0
screen_screw_3_x = 116.0
screen_screw_3_y = 105.0
encoder_dia = 7.0
volume_dia = 7.0
switch_dia = 10.0

enc1_x = 25.0
enc1_y = 70.0
enc4_x = 135.0
enc4_y = 100.0
bottom_buttons_y = 30.0
onoff_x = 25.0
volume_x = 80.0
bypass_x = 135.0

pi_width = 56.0 + nt
pi_depth = 87.0 + nt
pi_height = 1.8
pi_x = 52.0
pi_y = 32.0 - nt
pi_z = 7.0
pi_slot_length = 20.0
pi_slot_height = 19.0
pi_slot_width = 1.0
cont_screw_1_z = wall_width + 5.0
cont_screw_1_y = depth - 52.0
cont_screw_2_z = wall_width + 16.0
cont_screw_2_y = depth - 12.0

###########
# Base
###########
base = s.cube(size=[width, depth, height])
base -= u.right(wall_width)(u.forward(wall_width)(u.up(wall_width)(
    s.cube(size=[width - wall_width2, depth - wall_width2, height - wall_width])
)))
# jack holes
base -= u.forward(jack_y)(u.up(jack_height)(s.rotate(a=[0, 90, 0])(
    s.cylinder(d=jack_dia, h=width, segments=64)
)))

# send return holes
base -= u.right(ret_x)(u.up(jack_height)(u.forward(depth)(s.rotate(a=[90, 0, 0])(
    s.cylinder(d=jack_dia, h=wall_width, segments=64)
))))
base -= u.right(send_x)(u.up(jack_height)(u.forward(depth)(s.rotate(a=[90, 0, 0])(
    s.cylinder(d=jack_dia, h=wall_width, segments=64)
))))

# legacy midi
base -= u.right(midi_x)(u.up(jack_height)(u.forward(depth)(s.rotate(a=[90, 0, 0])(
    s.cylinder(d=midi_dia, h=wall_width, segments=64)
))))
base -= u.right(midi_x + midi_screw_x)(u.up(jack_height)(u.forward(depth)(s.rotate(a=[90, 0, 0])(
    s.cylinder(d=midi_screw_dia, h=wall_width, segments=64)
))))
base -= u.right(midi_x - midi_screw_x)(u.up(jack_height)(u.forward(depth)(s.rotate(a=[90, 0, 0])(
    s.cylinder(d=midi_screw_dia, h=wall_width, segments=64)
))))

# power
base -= u.right(power_x)(u.up(jack_height)(u.forward(depth)(s.rotate(a=[90, 0, 0])(
    s.cylinder(d=power_dia, h=wall_width, segments=64)
))))

# pi usb/ethernet
base -= u.right(usb_x)(u.up(usb_z)(u.forward(depth - wall_width)(s.rotate(a=[0, 0, 0])(
    s.cube(size=[usb_width, wall_width, usb_height])
))))

# grills
gx = grill_x
while True:
    # back grill
    base -= u.right(gx)(u.up(grill_back_z)(u.forward(depth - wall_width)(s.rotate(a=[0, 0, 0])(
        s.cube(size=[grill_slot, wall_width, grill_back_height])
    ))))

    # base grill
    base -= u.right(gx)(u.forward(grill_base_y)(
        s.cube(size=[grill_slot, grill_base_depth, wall_width])
    ))

    gx += grill_slot + grill_spacing
    if gx > grill_x + grill_width:
        break

# flash card access hole
flash_hole = u.right(flash_x)(u.forward(flash_y)(
    s.cube(size=[flash_width, flash_depth, height])
))
base -= flash_hole

###########
# Lid
###########
lid = u.up(height + nt)(
    s.cube(size=[width, depth, wall_width])
)

# lid lip
lid += u.forward(lid_lip_y)(u.right(lid_lip_x)(u.up(height + nt - lid_lip_height)(
    s.cube(size=[lid_lip_width, lid_lip_depth, lid_lip_height])
)))
lid -= u.forward(lid_lip_y + wall_width)(u.right(lid_lip_x + wall_width)(u.up(height + nt - lid_lip_height)(
    s.cube(size=[lid_lip_width - wall_width2, lid_lip_depth - wall_width2, lid_lip_height])
)))

# screen hole
lid -= u.forward(screen_y)(u.right(screen_x)(u.up(height + nt)(
    s.cube(size=[screen_width, screen_depth, wall_width])
)))
# screen screws
lid -= u.forward(screen_screw_1_y)(u.right(screen_screw_1_x)(u.up(height + nt)(
    s.cylinder(d=screw_dia, h=wall_width)
)))
lid -= u.forward(screen_screw_2_y)(u.right(screen_screw_2_x)(u.up(height + nt)(
    s.cylinder(d=screw_dia, h=wall_width)
)))
lid -= u.forward(screen_screw_3_y)(u.right(screen_screw_3_x)(u.up(height + nt)(
    s.cylinder(d=screw_dia, h=wall_width)
)))

# encoder holes
lid -= u.forward(enc1_y)(u.right(enc1_x)(u.up(height + nt)(
    s.cylinder(d=encoder_dia, h=wall_width)
)))
lid -= u.forward(enc1_y)(u.right(enc4_x)(u.up(height + nt)(
    s.cylinder(d=encoder_dia, h=wall_width)
)))
lid -= u.forward(enc4_y)(u.right(enc1_x)(u.up(height + nt)(
    s.cylinder(d=encoder_dia, h=wall_width)
)))
lid -= u.forward(enc4_y)(u.right(enc4_x)(u.up(height + nt)(
    s.cylinder(d=encoder_dia, h=wall_width)
)))

# bottom button holes
lid -= u.forward(bottom_buttons_y)(u.right(onoff_x)(u.up(height + nt)(
    s.cylinder(d=switch_dia, h=wall_width)
)))
lid -= u.forward(bottom_buttons_y)(u.right(volume_x)(u.up(height + nt)(
    s.cylinder(d=volume_dia, h=wall_width)
)))
lid -= u.forward(bottom_buttons_y)(u.right(bypass_x)(u.up(height + nt)(
    s.cylinder(d=switch_dia, h=wall_width)
)))

#############
# insert
#############

# block to subtract pi insert from
insert = u.forward(wall_width + nt)(u.right(pi_x - wall_width)(u.up(wall_width + nt)(
    s.cube(size=[
        wall_width2 + pi_width,
        depth - wall_width2 - nt2,
        height - wall_width - nt - lid_lip_height - nt
    ])
)))

# pi side walls
insert -= u.forward(wall_width2 + nt2)(u.right(pi_x - wall_width)(u.up(wall_width + pi_z + pi_height)(
    s.cube(size=[
        wall_width2 + pi_width,
        depth - wall_width2 - pi_slot_length,
        height
    ])
)))

# base rails for the pi pc board to sit on
insert -= u.forward(wall_width + nt)(u.right(pi_x + pi_slot_width - nt)(u.up(wall_width + nt)(
    s.cube(size=[
        pi_width + nt2 - pi_slot_width - pi_slot_width,
        depth - wall_width2,
        height
    ])
)))

# pi board slot
insert -= u.forward(depth - pi_depth - nt2 - wall_width)(u.right(pi_x - nt)(u.up(wall_width + pi_z)(
    s.cube(size=[
        pi_width + nt2,
        pi_depth + nt,
        pi_height
    ])
)))

# pi board back stop
insert += u.forward(depth - pi_depth - nt2 - wall_width)(u.right(pi_x)(u.up(wall_width + nt)(
    s.cube(size=[
        pi_width + nt2,
        wall_width,
        pi_z + pi_height
    ])
)))
# pi board back stop support
insert += u.forward(depth - pi_depth - nt2)(u.right(pi_x)(u.up(wall_width + nt)(
    s.cube(size=[
        pi_width + nt2,
        wall_width,
        wall_width
    ])
)))
insert -= flash_hole

# insert screw wall
insert += u.forward(wall_width2 + nt2)(u.right(pi_x - wall_width)(u.up(wall_width + nt)(
    s.cube(size=[
        wall_width2 + pi_width,
        wall_width,
        height - wall_width - nt2
    ])
)))

# pi board usb support
insert += u.forward(depth - nt - wall_width2)(u.right(pi_x)(u.up(wall_width + nt)(
    s.cube(size=[
        pi_width + nt2,
        wall_width,
        pi_z - nt
    ])
)))

#############
# screw holes
#############
for i in range(screw_side):
    screw = u.forward(screw_side_y + i*screw_spacing)(u.up(screw_height)(s.rotate(a=[0, 90, 0])(
        s.cylinder(d=screw_dia, h=width, segments=64)
    )))
    base -= screw
    lid -= screw

for i in range(screw_front):
    screw = u.forward(depth)(u.right(screw_front_x + i*screw_spacing)(u.up(screw_height)(s.rotate(a=[90, 0, 0])(
        s.cylinder(d=screw_dia, h=depth, segments=64)
    ))))
    base -= screw
    lid -= screw
    insert -= screw

# controller board screw holes
insert -= u.forward(cont_screw_1_y)(u.up(cont_screw_1_z)(s.rotate(a=[0, 90, 0])(
    s.cylinder(d=screw_dia, h=width / 2.0, segments=64)
)))
insert -= u.forward(cont_screw_2_y)(u.up(cont_screw_2_z)(s.rotate(a=[0, 90, 0])(
    s.cylinder(d=screw_dia, h=width / 2.0, segments=64)
)))


def render(suffix, final):
    suffix += '.scad'
    s.scad_render_to_file(final, __file__.replace('.py', suffix))

blue_lid = s.color(u.Blue)(lid)
red_insert = s.color(u.Red)(insert)
render(
    '',
    base + red_insert # + blue_lid
)

render(
    '-exploded',
    base + u.up(120)(blue_lid) + u.up(60)(red_insert)
)

render(
    '-print-base',
    base
)
render(
    '-print-insert',
    insert
)
render(
    '-print-lid',
    s.rotate(a=[180, 0, 0])(u.down(height + wall_width)(lid))
)
 
 
************************************************/
