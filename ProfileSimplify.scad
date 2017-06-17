param0 = 200;
param1 = 140;
param2 = 70;
param3 = param0-param2*2;
height = 400;
linear_extrude(height, center = false, convexity = 100, twist = 0, slices = 300, scale = 1.0)
union ()
{
    square(param1, center=true);
    
    
    tempA = param0/2 - param2/2;
    for (x = [-1,1])
        for (y = [-1,1])
            translate([x*tempA,y*tempA,0])
            square(param2, center=true);
}