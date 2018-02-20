include <OpenSCAD-Arduino-Mounting-Library/arduino.scad>


unoDimensions = boardDimensions( UNO );

//arduino(UNO);




//enclosure with modifications
translate([-unoDimensions[0]*1.5,0,0]) {





    difference() {
        //enclosure
        enclosure(boardType=UNO, mountType=PIN);

//    //reset text
//
//            translate([unoDimensions[0]/2, unoDimensions[1]-0.5, unoDimensions[2]/2+5]) {
//                rotate([90, 0, 180]) {
//                    linear_extrude(height=1) {
//                        resize([15, 0, 0], auto=true) {
//                        text("Reset");
//                    }
//                }
//            }     
//        }
//        
        
        //hole for reset button
        translate([unoDimensions[0]/2, unoDimensions[1]+5, unoDimensions[2]+7]) {
            rotate([90, 0, 0]) {
                cylinder(h=10, d=6, $fn=36);
            }
        }
        

        //hole for cables to LEDs
        union() {
            translate([5, unoDimensions[1]-3 , unoDimensions[2]*2+3]) {
                cube(size=[6,10,10], center=true);
            }

            translate([5,unoDimensions[1]-3,unoDimensions[2]*2-2]) {
                rotate([0,90,90]) {
                    cylinder(d=6,h=10, center=true, $fn=36);
                }
            }
        }


    }

}



    

    

translate([unoDimensions[0] + 5 , 0, 3]) {
    rotate([0,180,0]) {

            enclosureLid();
    }
}
