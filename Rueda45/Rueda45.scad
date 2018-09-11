//!OpenSCAD

difference() {
  union(){
    difference() {
      cylinder(r1=22.5, r2=22.5, h=5, center=true);

      // torus
      rotate_extrude($fn=50) {
        translate([22.5, 0, 0]) {
          circle(r=1, $fn=16);
        }
      }
      translate([0, 0, 1.1]){
        cylinder(r1=20, r2=20, h=3, center=true);
      }
    }
    cylinder(r1=5, r2=5, h=3, center=true);
  }

  {
    $fn=6;    //set sides to 6
    cylinder(r1=2, r2=2, h=10, center=true);
  }
}