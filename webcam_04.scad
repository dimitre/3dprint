piso = 3;
altura = 20;
alturaTotal = altura + piso;

module cam() {
    difference () {
        cube ([24,5.1,alturaTotal]);
        translate ([2,1,piso])
        cube ([20,2.1,altura]);
        translate ([9.5,3,piso])
        cube ([7,2.2,altura]);
        translate ([13,0,piso])
        cube ([9,2.2,altura]);
//        translate ([13-7,0,piso])
//        cube ([9,1,altura]);   
    }
}


union() {
    cube([36*4 - 12, 5.1, piso]);
    for (a =[0:3]) {
        translate([36*a,0,0])
        cam();
    }
    for (a =[0:2]) {
        translate([a*36 + 24, 0, 0])
        cube([36-24, 5.1, alturaTotal]);
    }
}

