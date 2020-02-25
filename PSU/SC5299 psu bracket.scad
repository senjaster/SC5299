module brk(pts)
{
    r = 2;
    difference()
    {
        offset(-r) offset(2*r) offset(-r) 
        union()
        {
            //square([9,86],center=true);
            //translate([3,0]) square([9,86],center=true);
            translate([1.5,0]) square([12,72],center=true);
            for(p=pts) translate([0,p[1]-6]) square([p[0]+6,12]);
            translate([-8.5,-37]) square([8.5,18]);
            mirror([0,1]) translate([-8.5,-36]) square([8.5,18]);
            
            //translate([-10,36.5]) square(10);
        }


        for(p=pts) translate(p) hull()
        {
            translate([1,0]) circle(1.7);
            translate([-1,0]) circle(1.7);
        }
        hull()
        {
            translate([-5,32.5]) circle(1.7);
            translate([-5,30.5]) circle(1.7);
            
            
        }
        mirror([0,1]) hull()
        {
            translate([-5,33.5]) circle(1.7);
            translate([-5,31.5]) circle(1.7);
        }
        
    }
}

//brk([[30,6-43],[6,43-6]]);

$fn = 36;


mirror([0,1])
{
    translate([-10,0]) rotate(180) brk([[6,6-43],[6,70-43]]);
    translate([10,0]) brk([[30,6-43],[6,43-6]]);
}