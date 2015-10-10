// Part   : Aft Deck Component - 5
// Author : Rafi Khan
// Team   : Innovator

difference(){
cube([10.16, 19.05, 3.81]);

// Center Through Hole
translate([2.54, 9.525, -1]){
	cylinder(h=5, d=2.2223, center=false, $fn=70);
}

// Right Front Peg Hole
translate([0.8, 0.8, 4.3]){
    curve(1.75, 3.175, 1.27);
}

// Left Front Peg Hole
translate([0.8, 18.25, 4.3]){
    curve(1.75, 3.175, 1.27);
}

// Center Back Peg Hole
translate([9.36, 9.525, 4.3]){
    curve(1.75, 3.175, 1.27);
}

// Right Center Peg Insert
translate([6.985, 4.445, 0.348]) {
    cylinder(h=3.492, d=1.27, center = false, $fn=70);   
}

// Left Center Peg Insert
translate([6.985, 14.605, 0.348]) {
    cylinder(h=3.492, d=1.27, center = false, $fn=70);   
}

}

module curve (a, b, c) {
    union(){
        difference() {
            sphere(d = a, center = false, $fn = 70);
            translate([0, 0, 0.3]){
                cube(size = [a, a, 1.4], center = true);
            }
        }  
        translate([0, 0, -2.25]){
            cylinder(b, d = c, center = true, $fn = 70);
        }       
    }
}