module cam() {
    var piso = 2;
    var altura = 20;
    difference () {
        cube ([24,6.1,22]);
        translate ([2,2,2])
        cube ([20,2.1,20]);
        translate ([9.5,4,2])
        cube ([7,2.2,20]);
        translate ([13,0,2])
        cube ([9,2.2,20]);
            translate ([13-7,0,2])
        cube ([9,1,20]);
        
    }
}


for (a =[0:3]) {
    translate([36*a,0,0])
    cam();
}