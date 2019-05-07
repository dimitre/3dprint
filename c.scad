/*
cd /Users/d/Desktop/3dprint/ImplicitCad/
~/.cabal/bin/extopenscad c.scad
*/
$res = 1;
union() {
    cube(size=[10,20,5]);
    rotate(30)
    translate([0,30,0]) 
    {
        cube(size=[10,20,5]);
        rotate(30)
        translate([0,30,0]) 
        {
            cube(size=[10,20,5]);
        }
    }
}