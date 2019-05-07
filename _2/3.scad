//~/.cabal/bin/extopenscad 2.escad

$res=2;
difference(r=0.2) {
	cube(size=120, center=true, r = 0.2);
	translate([0,0,60])  
	difference(r=2){
		cube(size = [80,80,80], center = true, r = 2);
		translate([0,0,20])  
		cube(size = [60,60,60], center = true, r = 10.0);
		translate([-32.5,-32.5,0])  
		cylinder(r=3, h=200, center=true);
		translate([32.5,-32.5,0])  
		cylinder(r=3, h=200, center=true);
		translate([32.5,32.5,0])  
		cylinder(r=3, h=200, center=true);
		translate([-32.5,32.5,0])  
		cylinder(r=3, h=200, center=true);
	}

}