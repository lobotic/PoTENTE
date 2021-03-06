﻿//!OpenSCAD

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
translate([-4, -4, 0]){
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
translate([-8, -8, 0]){
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
translate([-16, -8, 0]){
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
translate([-24, -8, 0]){
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
translate([-8, 0, 0]){
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
translate([-16, 0, 0]){
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
translate([-24, 0, 0]){
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
translate([-12, -4, 0]){
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
translate([-12, -4, -5]){
  difference() {
    cube([32, 16, 10], center=true);

    translate([0, 0, -1]){
      cube([30, 14, 10], center=true);
    }
  }
}
translate([-20, -4, 0]){
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