//powerbank

module roundedcube_simple(size = [1, 1, 1], center = false, radius = 0.5) {
	// If single value, convert to [x, y, z] vector
	size = (size[0] == undef) ? [size, size, size] : size;

	translate = (center == false) ?
		[radius, radius, radius] :
		[
			radius - (size[0] / 2),
			radius - (size[1] / 2),
			radius - (size[2] / 2)
	];

	translate(v = translate)
	minkowski() {
		cube(size = [
			size[0] - (radius * 2),
			size[1] - (radius * 2),
			size[2] - (radius * 2)
		]);
		sphere(r = radius);
	}
}




parede = 2.3;
module luva() {
    difference() {
        
        //roundedcube_simple([15, 80 + parede * 2, 12.1 + parede * 2], true, 5 + parede);
        cube(size=[80 + parede * 2, 15, 12.1 + parede * 2], center=true);
        //roundedcube_simple([156,80,12.1], true, 5);
        cube(size=[80, 156, 12.1], center=true);
        translate([0,0,-5])
        cube(size=[60, 156, 12.1], center=true);
    }
}

module parafusavel() {
    difference() {
    cube(size=[8, 12, 8], center=true);
        $fn = 30;
        rotate([-90,0,0])
        
        cylinder(h=40, r = 1.5, center=true);
    }
}


//porca quadrada
// 5.4, 5.4, 1.8

difference() {
    parafusavel();
    translate([0,0,2])
    cube (size=[5.7, 2.3, 5.7 + 4], center=true);
}