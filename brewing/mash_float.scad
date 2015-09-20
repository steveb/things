
myfn = 100;

render(convexity = 4) {
  difference() {
    union() {
      cylinder(h = 22, r=24.5, $fn=myfn);
      cylinder(h = 4, r=35, $fn=myfn);
    }
    union () {
      translate([11,0,0])
        cylinder(h = 22, d=26, $fn=myfn);
      translate([-13,0,6])
        cylinder(h = 22, d=21, $fn=myfn);
      translate([-13,0,0])
        cylinder(h = 6, d=10, $fn=myfn);
    }
  }
}