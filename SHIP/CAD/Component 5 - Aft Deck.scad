// MIT LICENSE
// Aft Deck Component


difference(){
cube([10.16, 19.05, 3.81]);

translate([1.27, 1.27, 1.30]){
	cylinder(h=2.54, d=2.2223, center=false, $fn=50);
}

translate([2.54, 9.525, 0]){
	cylinder(h=4, d=2.2223, center=false, $fn=50);
}
}