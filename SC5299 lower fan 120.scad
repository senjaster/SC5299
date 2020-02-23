d1 = [112,96];
r1 = 7;
fm = 105/2;
fr = 120/2;

d2 = [fr-r1,fr-r1];

$fs = 0.5;
$fa = 2;

difference()
{
    linear_extrude(8) difference()
    {
        hull() for(i=[0,1], j = [0,1]) mirror([i,0]) mirror([0,j]) translate(d2) circle(r1);
        for(i=[0,1], j = [0,1]) mirror([i,0]) mirror([0,j]) translate(d1/2) circle(1.3);
        translate([0,0])
        {
            for(i=[0,1], j = [0,1]) mirror([i,0]) mirror([0,j]) translate([fm,fm]) circle(2);
            intersection()
            {
                circle(fr+4);
                square((fr-4)*2,center=true);
            }
            
        }

    }
    for(i=[0,1], j = [0,1]) mirror([i,0]) mirror([0,j]) translate([fm,fm,3]) cylinder(r=3.5,h=10);
}

//rs 6000 m type 35