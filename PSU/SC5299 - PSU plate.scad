max_len = 19.2+24.15+126;


plate = [
    max_len-8.0, //161.2,  
    93
];
$fn = 36;

difference()
{
    offset(4) offset(-4) union()
    {
        square(plate);
        translate([26, -5.1]) square([70,10]);
        difference()
        {
            translate([-8.0, 5.0])  square([10, 74.2]);
            translate([-8.0, 5+19.3]) square([4.1,93-5-14-19.3-19.9]);
            //translate([-8.0, 35])   circle(5);        // measure!
        }
    }
    
    translate([0.5+75,0.5+43])
    {
        zzz = 4;
        offset(-zzz) offset(zzz*2) offset(-zzz) difference()
        {
            square([150-10, 86-10],center=true);
            // to make stronger:
            translate([(150-12)/2, -(86-12)/2]) square([110, 10], center=true); 
            for(a=[0,180]) rotate(a) 
                {
                    translate([(150-12)/2, (86-12)/2]) square([60, 10], center=true);
                    translate([-(150-12)/2, (86-12)/2]) square([10, 30], center=true);
                }
        }
        for(a=[0,180]) 
            rotate(a) 
            {
                translate([(150-12)/2, (86-12)/2]) circle(1.7);
                translate([-(150-12)/2, (86-12)/2]) circle(1.7);
                translate([(150-12)/2-24, (86-12)/2]) circle(1.7);
                translate([-(150-12)/2, (86-12)/2-10]) circle(1.7);
            }
    }
    translate([-8+3.5,11.2]) 
        for(i=[0,1], j=[0,1])
            translate([i*159.5, j*64]) circle(1.7);  // measure 159.5!
}