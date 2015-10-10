// Part   : Component 9 - Rear Mast
// Author : Rafi Khan
// Team   : Innovator

cylinder(h=25.4, d=1.905, center=false, $fn=70);
translate([0, 0, 25.4]) {
	cylinder(h=3.175, d1=1.905, d2=0.635, center=false, $fn=70);
}