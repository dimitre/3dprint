module piramide(altura = 10, base = 5) {
polyhedron(
  points=[ [base,base,0],[base,-base,0],[-base,-base,0],[-base,base,0], // the four points at base
           [0,0,altura]  ],                                 // the apex point 
  faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],              // each triangle side
              [1,0,3],[2,1,3] ]                         // two triangles for square base
 );
}

module cascarudo() {
    union() {
        for (gabi=[0:20]) {
            translate([gabi * 5 + sin(gabi*20) * 10, gabi*5 , 0])
            piramide(20, 3+gabi*3);
        }
    }
}

difference() {
     cascarudo();
    
    translate([0,0,-4])
     cascarudo();
}