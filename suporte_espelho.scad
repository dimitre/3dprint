
difference() {
    linear_extrude(height = 5, center = true, convexity = 10, scale=.5)
    translate([0, 0, 0])
    square([10,10], center=true);

    translate([0,0,4])
    cube( [2.2, 20, 10], center=true);
}
// circle(r = 1, center=true);