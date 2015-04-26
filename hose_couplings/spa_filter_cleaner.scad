
render(convexity = 4) {
  difference() {
    union() {
      cylinder(h = 15, r=30, $fn=100);
      for (f = [-9 : 3 : 9]) {
        translate([25,f,0])
          cube([20, 1.6, 15]);
      }
    }
    union () {
      for (f = [-8.7 : 3 : 9.3]) {
        translate([20,f,5])
          cube([30, 1, 5]);
      }
      intersection() {
        cylinder(h = 11, r=25, $fn=100);
        translate([-10, -9, 0])
          cube([40, 20, 11]);
      }
    }
  }
}