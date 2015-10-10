// Part   : Component 6 - Fore Deck Railing
// Author : Rafi Khan
// Team   : Innovator

difference(){

	// Initial Block
	cube(size=[19.05, 12.795, 3.81], center=false);
	// Left Triangle Subtraction
	translate([19.05, 0, 0]){
		rotate([90, 0, 180]){
			prism(3.81, 3.81, 12.795);
		}
	}

	// Right Triangle Subtraction
	translate([0, 0, 3.81]){
		rotate([90, 180, 180]){
			prism(3.81, 3.81, 12.795);
		}
	}

	// Center Cuboid Subtraction
	translate([6.35, 2.54, 0]) {
		cube(size=[6.35, 10.255, 3.81], center=false);
	}

	// Right Center Triangle Subtraction
	translate([6.35, 12.795, 3.81]){
		rotate([90, 180, 0]){
			prism(3.81, 2.858, 10.255);
		}
	}

	// Left Center Triangle Subtraction
	translate([12.70, 12.795, 0]){
		rotate([90, 0, 0]){
			prism(3.81, 2.858, 10.255);
		}
	}

	// Right Peg Insert
	translate([2, 11.651, 0.317]) {
		cylinder(h=3.493, d=0.953, center=false, $fn=70);
	}

	// Right Peg Insert
	translate([17.05, 11.651, 0.317]) {
		cylinder(h=3.493, d=0.953, center=false, $fn=70);
	}

	// Centre Peg Insert
	translate([9.525, 1.27, 0.317]) {
		cylinder(h=3.493, d=0.953, center=false, $fn=70);
	}

}

//Draw a prism based on a 
//right angled triangle
//l - length of prism
//w - width of triangle
//h - height of triangle
// Credits: https://github.com/dannystaple/OpenSCAD-Parts-Library/blob/master/prism.scad
module prism(l, w, h) {
	translate([0, l, 0]) rotate( a= [90, 0, 0]) 
	linear_extrude(height = l) polygon(points = [
		[0, 0],
		[w, 0],
		[0, h]
	], paths=[[0,1,2,0]]);
}