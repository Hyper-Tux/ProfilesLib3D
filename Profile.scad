
param0 = 200;
param1 = 85;
param2 = 50;
param3 = 15;
param4 = 70;
param5 = 35;
param6 = 10;
param7 = 65;
param8 = param0-2*param7;
param10 = 20;

height = 400;


{
    union()
    {
        difference ()
        {
            union ()
            {
                square(param1,center=true);
                
                rotate([0,0,45])
                square([param0*2, param10], center=true);
                
                rotate([0,0,135])
                square([param0*2, param10], center=true);
            }

            difference ()
            {
                square(param0*2, center=true);
                square(param0, center=true);
            }
            
            circle(d=param2, center=true);
            
            rotate([0,0,45])
            square([param4, param3], center=true);
            
            rotate([0,0,135])
            square([param4, param3], center=true);
        }
        /*translateX = [
            -param0/2,          param8/2,
            param0/2-param6,    param0/2-param6,
            param8/2,           -param0/2,
            -param0/2,          -param0/2];
        
        translateY = [
            param0/2-param6,    param0/2-param6,
            param8/2,           -param0/2,
            -param0/2,          -param0/2,
            -param0/2,          param8/2];
        
        sizeX = [param7,param7,param6,param6,param7,param7,param6,param6,];
        sizeY = [param6,param6,param7,param7,param6,param6,param7,param7];
        for (i = [0:7])
        {
            color("red")
            translate([translateX[i], translateY[i],0])
            square([sizeX[i], sizeY[i]], center=false);
        }*/
        
        tempA = param8/2+param7/2;
        tempB = param0/2-param6/2;
        
        for (fact = [0,1])
            for (transX = [-1,1])
                for (transY = [-1, 1])
                    color("red")
                    translate([transX*((fact)?tempA:tempB), transY*((fact)?tempB:tempA), 0])
                    square([(fact)?param7:param6, (fact)?param6:param7], center=true);
                
        tempC = param0/2 - param5/2;
                
        for (factX = [-1, 1])
            for (factY = [-1, 1])
                color("yellow")
                translate([factX*tempC, factY*tempC,0])
                square(param5, center=true);
                        
    }
}