//!OpenSCAD

difference() {
  union(){
    for (D1 = [0 : abs(-8) : -4 + -8 * (Modules - 1)]) {
      translate([D1, -4, 0]){
        // Enganche inferior
        union(){
          translate([0, 4, -10]){
            cylinder(r1=1, r2=1, h=10, center=false);
          }
          translate([0, -4, -10]){
            cylinder(r1=1, r2=1, h=10, center=false);
          }
          translate([4, 0, -10]){
            cylinder(r1=1, r2=1, h=10, center=false);
          }
          translate([-4, 0, -10]){
            cylinder(r1=1, r2=1, h=10, center=false);
          }
          difference() {
            union(){
              translate([0, -3, -9]){
                cube([0.5, 6, 9], center=false);
              }
              translate([-5, 0, -9]){
                cube([10, 0.5, 9], center=false);
              }
            }

            translate([0, 0, -10]){
              sphere(r=3.2);
            }
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

    translate([(-4 - 8 * Modules), -12, -10]){
      difference() {
        cube([(8 + 8 * Modules), 16, 10], center=false);

        translate([1, 1, -1]){
          cube([(6 + 8 * Modules), 14, 10], center=false);
        }
      }
    }
    translate([-4, 4, -5]){
      rotate([90, 0, 0]){
        cylinder(r1=3.5, r2=3.5, h=16, center=false);
      }
    }
  }

  translate([-4, 4, -5]){
    rotate([90, 0, 0]){
      cylinder(r1=2.5, r2=2.5, h=16, center=false);
    }
  }
  translate([-4, 3, -5]){
    rotate([90, 0, 0]){
      cylinder(r1=3, r2=3, h=16, center=false);
    }
  }
}
D1 = 0;
Modules = 1;
