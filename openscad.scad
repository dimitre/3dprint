$res=1;
difference(r=3){
	cube(size = [80,80,30], center = true, r = 10);
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
