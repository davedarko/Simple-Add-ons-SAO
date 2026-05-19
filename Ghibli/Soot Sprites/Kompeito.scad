r_s = 5;
s = 10;
ss = sqrt(12 * 8);


difference() {
	union() {
		for (i = [0:45]) {
			random_pos = rands(-r_s-r_s/3,r_s+r_s/3,3);
			random_rot = rands(-90,90,3);
			random_fn = rands(7,12,1)[0];
			
			
			translate(random_pos)
			rotate(random_rot)
			sphere(r_s, $fn=random_fn);
		}
		
		sphere(r_s);
	}
	
	translate ([0, 0, -5])
	LED($fn=50);

	
	translate([0,0,-ss-5]) 
	rotate([45,0,0])
	translate([-3/2, -s, -s]) 
	cube([3,s*2,s*2]);
}

	if ($preview)
	translate ([30, 0, -5])
	LED($fn=50);


module LED() {
	translate([0,0,5])
	sphere(2.7);
	cylinder(5,2.7,2.7);
	
	translate([0,0,-15])
	cylinder(15,3.7,3.7);
}
