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
        translate([unoDimensions[0]/2-7, unoDimensions[1]+5, unoDimensions[2]+7]) {
            rotate([90, 0, 0]) {
                cylinder(h=10, r=2);
            }
        }
        
        //hole for cables to LEDs
        translate([unoDimensions[0]/2+4,0,unoDimensions[2]*2]) {
            rotate([90, 0, 0]) {
                cylinder(h=10, r=2);
            }
        }
        
        translate([unoDimensions[0]/2+2, -7, unoDimensions[2]*2]) {
            cube(size=[4, 5, 10]);
        }

    }

}



    

    

translate([unoDimensions[0] + 5 , 0, 3]) {
    rotate([0,180,0]) {

            enclosureLid();
    }
}
