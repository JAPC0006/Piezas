

module Soporte(){
		cube([21,13.8,2.2]);
		translate([0, 2.5, 2.2])
			cube([21,8.8,2.5]);
}

difference (){

		Soporte();
		translate([3, 6.9, 0])
			cylinder(r=4.4/2, h=5, $f=100);
		translate([17, 6.9, 0])
			cylinder(r=4.4/2, h=5, $f=100);
		translate([3, 4.7, 0])
			cube([14,4.4,5]);
}
