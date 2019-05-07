$fn=45;

difference() {
    cube([10,10,6], center=true);
    cylinder(r=3, h=3);
    translate([0,0,-3])
    cylinder(r=1.6, h=10);
}