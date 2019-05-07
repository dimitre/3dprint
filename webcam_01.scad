$fs=.1;

difference() {
    cube(size=[6,8,40]);
    translate([2,0,0])
    cube(size=[2,6,30]);
    translate([3,3,35])
    rotate([90,0,0])
    cylinder(r=1, h=12, center=true);
}
