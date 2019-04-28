/*

cd /Users/d/Desktop/3dprint/ImplicitCad/
~/.cabal/bin/extopenscad pot2.scad

*/

$res=0.15;


module pot() {
	cylinder(r=3.6, h=5, center = true);
	translate([-8, 0, 0.75])
	cube(size = [1.5, 3.2, 1.5], center = true);
}

difference(){
	cube(size = [23, 20, 2], center = true, r=1);
	pot();
}
