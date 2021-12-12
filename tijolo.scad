$fn = 100;
dist = 2.2;
fatorY = 2;

mr = [
[-dist, 0,    0],
[dist,  0,    0],
[-dist, -dist*fatorY, 0],
[dist,  -dist*fatorY, 0],
[-dist, dist*fatorY,  0],
[dist,  dist*fatorY,  0]
];


mr2 = [
[0, -7,    0],
[0,  7,    0],
[-4.5, -dist*.5*fatorY, 0],
[4.5,  -dist*.5*fatorY, 0],
[-4.5,  dist*.5*fatorY, 0],
[4.5,   dist*.5*fatorY, 0],
[0,   -dist*.5*fatorY, 0],
[0,   dist*.5*fatorY, 0],
];


difference() {
    cube(size=[9,14,19], center=true);
    for(pos = mr) {
        translate(pos)
        cylinder(r=1.5, h=22, center=true);
    }
    for(pos = mr2) {
        translate(pos)
        cylinder(r=.4, h=22, center=true);
    }
}