
myfn = 100;

render(convexity = 6) {
  union() {
    difference() {
      union() {
        //base
        translate([-24, -15, 0])
          cube([37, 30, 2]);
        // flange body
        translate([11,0,0])
          cylinder(h = 6, d=30, $fn=myfn);
        // front wall
        translate([-24, -15, 2])
          cube([4, 30, 27]);
        // side wall 1
        translate([-20, 13, 2])
          cube([17, 2, 27]);
        // side wall 2
        translate([-20, -15, 2])
          cube([17, 2, 27]);
        // back wall
        translate([-3.5, -15, 2])
          cube([2, 30, 27]);
        // translate to printing position
        translate([-24, 0, -29])
          // lid
          translate([-21, -15, 29])
            cube([19.5, 30, 2]);
      }
      union () {
        // bottom outlet hole
        translate([11,0,0])
          cylinder(h = 2, d=27, $fn=myfn);
        // outlet transition hole
        translate([11,0,2])
          cylinder(h = 2, d1=27, d2=24.5, $fn=myfn);
        //outlet top hole
        translate([11,0,4])
          cylinder(h = 2, d=24.5, $fn=myfn);
        // float switch hole
        translate([-13,0,0])
          cylinder(h =6, d=20, $fn=myfn);
        // semi-circle outlet hole
        translate([11,-15,0])
          cube([30,30,6]);
        // power socket slot shape
        translate([-23, -10.25, 2])
          cube([2, 20.5, 27]);
        // power socket gap
        translate([-24, -8, 2])
          cube([4, 16, 27]);
      }
    }
  }
}