d1 = [112.5,170];
p2 = [-d1[0]/2,50];
s2 = [2,14];
p3 = [d1[0]/2-6,65];
fm = 82.5/2;
fr = 92/2;
$fn=36;

p4 = [d1[0]/2-60,d1[1]/2];
z4 = 5;

module e1()
{
    square([6,2]);
    hull()
    {
        translate([-2,4]) circle(2.5);
        translate([3.5,4]) square(5,center=true);
    }
}

rotate(90)
{
    difference()
    {
        offset(2) offset(-2) square(d1,center=true);
       
        for(i=[0,1]) mirror([0,i]) translate(p2) square(s2,center=true);
        for(i=[0,1]) mirror([0,i]) translate(p3) hull()
        {
            translate([1,0]) circle(1.7);
            translate([-1,0]) circle(1.7);
        }
        for(i=[0,1], j = [0,1]) mirror([i,0]) mirror([0,j]) translate([fm,fm]) circle(2.3);
        circle(fr,$fn=72);
        
        translate([0,-d1[1]/2]) hull()
        {
            w4 = d1[0]/2-27;
            translate([w4, 0]) circle(z4);
            translate([-w4,0]) circle(z4);
        }
    }
    translate(p4) e1();
    mirror([0,1]) translate(p4-[0,z4]) e1();
}