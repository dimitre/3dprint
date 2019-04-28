/*

cd /Users/d/Desktop/3dprint/ImplicitCad/
~/.cabal/bin/extopenscad dente3.scad

*/

// programando com a gabi depois do bueno. primeiro dia de impressora 3d.

$res=0.15;

intersection() {
	difference (r=1) {
		union(){
			cube(size = [20, 10, 5], center = true);
			translate([-2.5, -2.5, 0])
			cube(size = [4.9, 15, 5], center = true);
			translate([7.5, -2.5, 0])
			cube(size = [4.9, 15, 5], center = true);
		}
		translate([0, -7.3, 0])
		rotate(a=90, v = [1.0,0.0,0.0])
		rotate(a=90, v = [0.0,1.0,0.0])
		cylinder(r=1.4, h=25, center = true);

	}

	union() {
		cube(size = [20, 15, 5], center = true);
		translate([0, -7.3, 0])
		rotate(a=90, v = [1.0,0.0,0.0])
		rotate(a=90, v = [0.0,1.0,0.0])
		cylinder(r=2.5, h=25, center = true);
	}

}