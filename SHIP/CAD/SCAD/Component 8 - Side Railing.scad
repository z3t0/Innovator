// Part   : Component 8 - Side Railing
// Author : Rafi Khan
// Team   : Innovator

difference(){
	cube(size=[2.54, 15.24, 3.81], center=false);

	// Right Peg Insert
	translate([1.27, 1.905, 0.317]){
		cylinder(h=3.493, d=0.953, center=false, $fn=70);
	}

	// Right Peg Insert
	translate([1.27, 13.335, 0.317]){
		cylinder(h=3.493, d=0.953, center=false, $fn=70);
	}
}