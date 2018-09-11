//!OpenSCAD

difference() {
  cylinder(r1=12, r2=12, h=3, center=true);

  // torus
  rotate_extrude($fn=40) {
    translate([11.5, 0, 0]) {
      circle(r=1, $fn=30);
    }
  }
  {
    $fn=6;    //set sides to 6
    cylinder(r1=2.1, r2=2.1, h=10, center=true);
  }
}