module base()
{
	translate ([-15.5, -15.5, -2]){
		cube([31,31,6]);
	}

	translate ([0, 0, 4]){
		cylinder(r1 = 29/2, r2 = 20/2, h = 30);
	}
	translate ([-9.25, 0, 4]){
		cube([18.5,15.5,30]);
	}
}



module fusor()
{
	translate([0, 0, 35.5])
	rotate ([90, 0, 0]){
		cylinder(r=16.5/2, h=40, $f=100, center = true);
	}
}

union(){

//Guias para el soporte
	translate ([-7, 13, 4]){
		cube([2.5,2.5,23]);
	}

	translate ([4.5, 13, 4]){
		cube([2.5,2.5,23]);
	}

difference(){

	base();
	fusor();

//Huecos para los tornillos que sujetan el ventilador
	translate ([-12, -12, 0]){
		cylinder(r=6.1/2, h=5, $f=6);
	translate([0,0,-3])
		cylinder(r=3.2/2, h=3, $f=100);
	}

	translate ([-12, 12, 0]){
		cylinder(r=6.1/2, h=5, $f=6);
	translate([0,0,-3])
		cylinder(r=3.2/2, h=3, $f=100);
	}


	translate ([12, 12, 0]){
		cylinder(r=6.1/2, h=5, $f=6);
	translate([0,0,-3])
		cylinder(r=3.2/2, h=3, $f=100);
	}

	translate ([12, -12, 0]){
		cylinder(r=6.1/2, h=5, $f=6);
	translate([0,0,-3])
		cylinder(r=3.2/2, h=3, $f=100);
	}

//Canal para la ventilación
	translate ([0, 0, -2]){
		cylinder(r1 = 28/2, r2 = 14/2, h = 36);
	}

	translate ([-7, 4.5, 4]){
		cube([14,13,50]);
	}

}
}

	

