
translate ([20,0,0]) {
    
difference () {
cylinder (r1=10 , r2=0 , h=13);
cylinder (r1=9 , r2=0 , h=12);
}

difference (){
        translate ([10,-1,-0.25])
        cube ([3,2,0.5]);
        translate ([10.5,-.5,-0.25])
        cube ([2,1,1]);
    }
}

circle(2, $fn=3);
