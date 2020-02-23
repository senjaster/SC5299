s = [30,40];
b = 10;

$fs = 0.5;

difference()
{
    hull() for(i=[0,1],j=[0,1]) mirror([i,0])
    {
        translate(s/2) 
        {
            cylinder(r=b,h=6);
            translate([0,-b,0]) cube([b,b,6]);
        }
        mirror([0,1]) translate(s/2) cylinder(r=b,h=2);
        
    }
    for(i=[0,1]) mirror([i,0]) 
    {
        hull() for(j=[0,1])  mirror([0,j]) translate(s/2) translate([0,0,-2]) cylinder(r=2,h=10);
        hull() for(j=[0,1])  mirror([0,j]) translate(s/2) translate([0,0,2]) cylinder(r=5,h=10);
    }
}