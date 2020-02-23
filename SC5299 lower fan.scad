d1 = [112,96];
r1 = 6;
fm = 82.5/2;
fr = 92/2;
$fn = 36;

difference()
{
    hull() for(i=[0,1], j = [0,1]) mirror([i,0]) mirror([0,j]) translate(d1/2) circle(r1);
    for(i=[0,1], j = [0,1]) mirror([i,0]) mirror([0,j]) translate(d1/2) circle(1.7);
    translate([-5,0])
    {
        for(i=[0,1], j = [0,1]) mirror([i,0]) mirror([0,j]) translate([fm,fm]) circle(2.3);
        circle(fr);
        %square(fr*2,center=true);
    }
    translate([50, 23]) //for beeper
    {
        scale([1,0.8]) circle(6); 
        translate([5.7,0]) square([1,20],center=true);
        translate([-5.7,0]) square([1,20],center=true);
        square([12,7],center=true);
        %circle(6);
    }
}