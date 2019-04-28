/*

cd /Users/d/Desktop/3dprint/ImplicitCad/
~/.cabal/bin/extopenscad pot5.scad

*/

$res=0.1;

module pot() {
	cylinder(r=3.65, h=5, center = true);
	translate([-8, 0, 0.2])
	cube(size = [1.35, 3.05, 2], center = true);
}

difference(){
    translate([-2.5,0,0])
	cube(size = [14, 10, 2], center = true);
	pot();
}
