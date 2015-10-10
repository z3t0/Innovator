// Part   : Component 7 - Aft Deck Railing
// Author : Rafi Khan
// Team   : Innovator

difference() {
	// Initial Cuboid
	cube(size=[10.16, 19.05, 3.81], center=false);

	// Subtract centre piece
	translate([2.54, 2.54, -.5])
	cube(size=[7.64, 13.97, 4.4], center=false);

	// Rear Right Peg Insert
	translate([8.89, 1.27, 0.35]){
		cylinder(h=3.49, d=0.953, center=false, $fn=70);
	}

	// Rear Left Peg Insert
	translate([8.89, 17.78, 0.35]){
		cylinder(h=3.49, d=0.953, center=false, $fn=70);
	}

	// Front Center Peg Insert
	translate([1.27, 9.525, 0.35]){
		cylinder(h=3.49, d=0.953, center=false, $fn=70);
	}
}