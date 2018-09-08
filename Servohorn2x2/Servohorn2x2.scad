//!OpenSCAD

D1 = 0;
Modules = 1;

difference() {
  union(){
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

    translate([(-4 - 8 * Modules), -12, -5]){
      difference() {
        cube([(8 + 8 * Modules), 16, 5], center=false);

      }
    }
  }

  translate([-4, -4, -5]){
    {
      $fn=12;    //set sides to 12
      cylinder(r1=2.3, r2=2.3, h=3, center=false);
    }
  }
  translate([-4, -4, -1]){
    cylinder(r1=2.3, r2=2.3, h=3, center=false);
  }
  translate([-4, -4, -3]){
    {
      $fn=10;    //set sides to 10
      cylinder(r1=1, r2=1, h=3, center=false);
    }
  }
}