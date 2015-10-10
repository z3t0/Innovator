// Part   : Component 10 - Front Mast
// Author : Rafi Khan
// Team   : Innovator

cylinder(h=32.385, d=1.905, center=false, $fn=70);
translate([0, 0, 32.385]) {
	cylinder(h=3.175, d1=1.905, d2=0.635, center=false, $fn=70);
}