/*

cd /Users/d/Desktop/3dprint/ImplicitCad/
~/.cabal/bin/extopenscad pot3.scad

*/

$res=0.15;


module pot() {
	cylinder(r=3.6, h=5, center = true);
	translate([-8, 0, 0.75])
	cube(size = [1.5, 3.2, 2.5], center = true);
}

difference(){
    translate([-2.5,0,0])
	cube(size = [14, 10, 1], center = true);
	pot();
}
