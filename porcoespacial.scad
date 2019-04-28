/*
cd /Users/d/Desktop/3dprint/ImplicitCad/
~/.cabal/bin/extopenscad porcoespacial.scad
*/

$res=0.3;
module pe() {
    difference(r=1) 
    {
        union() {
            cylinder(r=1.5, h=18);
            rotate(a=[90,0,0])
            translate([0,0,-1])
            cylinder(r=2, h=10, center=true);
        }
        translate([0,0,-2])
        cube(size=[14,14,4], center=true);
    }
}

module corpo() {
    hull() {
        largura = 4;
        translate([-largura,0,0])
        cylinder(r=3, h=9);
        translate([largura,0,0])
        cylinder(r=3, h=9);
    }
}

module cabeca(){
    hull() {
        sphere(3);
        translate([0,0,-3])
        sphere(2);
    }
}

module braco() {
    union() {
        sphere(2);
        translate([0,0,-13])
        cylinder (r=1.5, h=13);
    }
}


union(){
    translate([-4,0,0])
    pe();
    translate([4,0,0])
    pe();
    
    translate([0,0,16])
    cube(size=[9,2,2],center=true);
    
    translate([0,0,20])
    corpo();
    
    translate([0,0,24])
    cube(size=[1.5,1.5,18],center=true);
    
    translate([0,0,27])
    cube(size=[20,2,2],center=true);


    translate([0,0,36])
    cabeca();
    
    translate([-9,0,27])
    braco();
}