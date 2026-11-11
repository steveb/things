
spacing=33/10;
start_offset = -8.9;
hole_count=6;
end_offset=start_offset + spacing * hole_count;

render(convexity = 4) {
  difference() {
    union() {
      cylinder(h = 15, d=30, $fn=100);
      //for (f = [-9.5 : spacing : 8.5]) {
      //  translate([10,f,0])
      //    cube([15, 1.6, 15]);
      //}
    }
    union () {
      for (f = [start_offset : spacing : end_offset]) {
        translate([0,f,3])
          cube([30, 1, 9]);
      }
      cylinder(h = 12, d=20, $fn=100);
    }
  }
}