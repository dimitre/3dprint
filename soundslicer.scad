/*

cd /Users/d/Desktop/3dprint/ImplicitCad/
~/.cabal/bin/extopenscad soundslicer.scad

*/

$res=0.3;

module pot() {
	cylinder(r=3.65, h=5, center = true);
	translate([-8, 0, 0.2])
	cube(size = [1.35, 3.05, 2], center = true);
}

module push() {
	translate([0, -2.5, 0])
	cube(size = [1, 1, 8], center = true);
	translate([0, 2.5, 0])
	cube(size = [1, 1, 8], center = true);
}

alturaPot = -14;
alturaPush = 16;
w = 36*3;
h = 55;
margem = 2.5;

module holes() {
mw = w*0.5 - margem;
mh = h*0.5 - margem;
        translate([-mw, -mh, 0])
    cylinder(r=1, h=5, center = true);
    translate([mw, -mh, 0])
    cylinder(r=1, h=5, center = true);
    translate([mw, mh, 0])
    cylinder(r=1, h=5, center = true);
    translate([-mw, mh, 0])
    cylinder(r=1, h=5, center = true);
}



difference(){
//	cube(size = [w, h, 2], center = true, r=[1,0,0]);
	cube(size = [w, h, 2], center = true, r=1);
    
    holes();

    
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