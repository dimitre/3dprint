//$res=2;
$fs=0.2;

color([1,0,0])
cube([3,2,1]);

translate([-5,3,5]){
  color([1,0,0])
cylinder(r=3, h=2);
    color([0.5,1,1])
    translate([-1.5,-1.5,0])
cube ([3,3,5]);
}


difference() {
    cube(30, center=true);
    sphere(20);
}
translate([0, 0, 30]) {
    cylinder(h=40, r=10);
}