//$fa=2; $fs=1;

difference() {
    minkowski()
    {
        cube(30, center = true);
        sphere(3);
    }
        //cube(30, center = true);
    translate([0, 0, 15])
    sphere(15, center = true);
    sphere(10, center=true);
    
  
}