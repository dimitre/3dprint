linear_extrude(height = 40, center = true, convexity = 10, twist = 0) 
{
    intersection() {
        polygon(points=[[0,-100],[100,0],[0,100],[-100,0]]);
        square(size=160, center=true);
    }
}