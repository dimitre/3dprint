// cd /Users/d/Desktop/3dprint/ImplicitCad/
// ~/.cabal/bin/extopenscad dente.escad

$res=0.15;

difference (r=1) {
	union(){
		cube(size = [20, 10, 5], center = true);
		translate([-2.5, -2.5, 0])
		cube(size = [4.8, 15, 5], center = true);
		translate([7.5, -2.5, 0])
		cube(size = [4.8, 15, 5], center = true);
	}
	translate([0, -7.3, 0])
	rotate(a=90, v = [1.0,0.0,0.0])
	rotate(a=90, v = [0.0,1.0,0.0])
	cylinder(r=1.4, h=25, center = true);

}