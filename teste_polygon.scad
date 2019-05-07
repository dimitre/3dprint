
for (i=[3:1:8]) {

rotate ([0,0,i*50])
    translate ([10,0,0])
    linear_extrude(2)
    difference (){
    circle(5 , $fn=i);
    circle(4 , $fn=i);
    }
}