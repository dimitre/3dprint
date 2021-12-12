alturaApoio = 30;
alturaNozzle = 14;
difference() {
    union() {
//        cylinder(r=9.5, h=3);
        cylinder (r=9.5, h=3);
        translate([0,0,1.5]) {
        cylinder (r1=6.5, r2=4.5, h=alturaNozzle);
        translate([-5, 0, alturaApoio*.5])
        cube(size=[2, 4, alturaApoio], center=true);
        translate([5, 0, alturaApoio*.5])
        cube(size=[2, 4, alturaApoio], center=true);
        translate([0, 0, alturaApoio-6])
         
        cylinder (r1=0, r2=5, h=4);
        translate([0, 0, alturaApoio-2])
        cylinder(r=6.5, h=2);
        }

    }
    union () {
        translate([0,0,0])
        cylinder(r1=6, r2=2.5, h=alturaNozzle+1.5);
        cylinder(r=7.5, h=1.5);
        dentes = [-2, -1, 0, 1, 2];
        lados = [0, 180];
        for (b = lados) {
            for (a = dentes) {
                rotate([0,0,a*20 + b])
                translate([0, -5.5, alturaApoio])
                cube(size=[2, 3, 3], center=true);
            }
        }


    }
//    cylinder(r=5, h=2);
//    cylinder(h = height, r1 = BottomRadius, r2 = TopRadius, center = true/false);

}