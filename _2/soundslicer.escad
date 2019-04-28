/*

cd /Users/d/Desktop/3dprint/ImplicitCad/
~/.cabal/bin/extopenscad soundslicer.escad

*/

$res=0.5;


module pot() {
	cylinder(r=3.6, h=5, center = true);
	translate([-8, 0, 0.75])
	cube(size = [2, 3.5, 1.5], center = true);
}

module push() {
	translate([0, -2.5, 0])
	cube(size = [1, 1, 8], center = true);
	translate([0, 2.5, 0])
	cube(size = [1, 1, 8], center = true);
}

alturaPot = -10
alturaPush = 10

difference(){
	cube(size = [36*3, 50, 2], center = true, r=1);
	translate([-36, alturaPot, 0])
	pot();
	translate([-36, alturaPush, 0])
	push();

	translate([0, alturaPot, 0])
	pot();
	translate([0, alturaPush, 0])
	push();

	translate([36, alturaPot, 0])
	pot();
	translate([36, alturaPush, 0])
	push();
}