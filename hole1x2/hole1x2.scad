//!OpenSCAD

difference() {
  union(){
    for (D1 = [0 : abs(-8) : -4 + -8 * (Modules - 1)]) {
      translate([D1, -8, 5]){
        translate([0, 0, -10]){
          cube([2, 8, 10], center=true);
        }
      }
    }

    for (D1 = [0 : abs(-8) : -8 * Modules]) {
      translate([D1, -8, 0]){
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

    translate([(-4 + -8 * Modules), -12, -10]){
      difference() {
        cube([(8 + 8 * Modules), 8, 10], center=false);

        translate([1, 1, -1]){
          cube([(6 + 8 * Modules), 6, 10], center=false);
        }
      }
    }
    for (D1 = [0 : abs(-8) : -4 - 8 * (Modules - 1)]) {
      translate([D1, -4, -5]){
        rotate([90, 0, 0]){
          cylinder(r1=3.5, r2=3.5, h=8, center=false);
        }
      }
    }

  }

  for (D1 = [0 : abs(-8) : -4 - 8 * (Modules - 1)]) {
    translate([D1, -4, -5]){
      rotate([90, 0, 0]){
        cylinder(r1=2.5, r2=2.5, h=8, center=false);
      }
    }
  }

}
D1 = 0;
Modules = 1;
