//!OpenSCAD

D1 = 0;
Modules = 7;
for (D1 = [0 : abs(-8) : -4 + -8 * (Modules - 1)]) {
  translate([D1, -4, 0]){
    // Enganche inferior
    union(){
      translate([0, 4, -2]){
        cylinder(r1=1, r2=1, h=2, center=false);
      }
      translate([0, -4, -2]){
        cylinder(r1=1, r2=1, h=2, center=false);
      }
      translate([4, 0, -2]){
        cylinder(r1=1, r2=1, h=2, center=false);
      }
      translate([-4, 0, -2]){
        cylinder(r1=1, r2=1, h=2, center=false);
      }
    }
  }
}

for (D1 = [0 : abs(-8) : -8 * Modules]) {
  translate([D1, 0, 0]){
    union(){
      // Enganche superior
      rotate([0, 0, 225]){
        difference() {
          cylinder(r1=3, r2=3, h=2, center=false);

          cylinder(r1=1, r2=1, h=2, center=false);
          translate([-3, 0, 0]){
            {
              $fn=3;    //set sides to 3
              cylinder(r1=3, r2=3, h=2, center=false);
            }
          }
        }
      }
      translate([0, -8, 0]){
        // Enganche superior
        rotate([0, 0, 225]){
          difference() {
            cylinder(r1=3, r2=3, h=2, center=false);

            cylinder(r1=1, r2=1, h=2, center=false);
            translate([-3, 0, 0]){
              {
                $fn=3;    //set sides to 3
                cylinder(r1=3, r2=3, h=2, center=false);
              }
            }
          }
        }
      }
    }
  }
}

translate([(-4 - 8 * Modules), -12, -2]){
  difference() {
    cube([(8 + 8 * Modules), 16, 2], center=false);

    translate([1, 1, -1]){
      cube([(6 + 8 * Modules), 14, 2], center=false);
    }
  }
}