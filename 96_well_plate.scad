
    base_length = 127.76;
    base_width = 85.48;
    base_height = 5;

    module sbs_plate() {
        // Main cube
        cube([base_length, base_width, base_height], center=false);
    }

    module rectangular_holder() {
        holder_length = 108.0;
        holder_width = 72.0;
        holder_height = 15;
        tube_diameter = 4.5;

        // Begin removing the hole cutouts:
        difference() {
            translate([base_length/2 - holder_length/2, base_width/2 - holder_width/2, base_height]) {
                // First create the holder rectangle & translate to center:
                cube([holder_length, holder_width, holder_height], center=false);
            }

            // Cutouts:
            
            translate([14.880000000000003, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([23.880000000000003, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([32.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([41.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([50.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([59.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([68.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([77.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([86.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([95.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([104.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([113.88, 11.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([14.880000000000003, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([23.880000000000003, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([32.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([41.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([50.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([59.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([68.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([77.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([86.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([95.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([104.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([113.88, 20.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([14.880000000000003, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([23.880000000000003, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([32.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([41.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([50.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([59.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([68.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([77.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([86.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([95.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([104.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([113.88, 29.740000000000002, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([14.880000000000003, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([23.880000000000003, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([32.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([41.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([50.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([59.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([68.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([77.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([86.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([95.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([104.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([113.88, 38.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([14.880000000000003, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([23.880000000000003, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([32.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([41.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([50.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([59.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([68.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([77.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([86.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([95.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([104.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([113.88, 47.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([14.880000000000003, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([23.880000000000003, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([32.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([41.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([50.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([59.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([68.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([77.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([86.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([95.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([104.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([113.88, 56.74, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([14.880000000000003, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([23.880000000000003, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([32.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([41.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([50.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([59.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([68.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([77.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([86.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([95.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([104.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([113.88, 65.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([14.880000000000003, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([23.880000000000003, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([32.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([41.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([50.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([59.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([68.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([77.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([86.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([95.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([104.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            translate([113.88, 74.74000000000001, 5]) {
                cylinder(h=15.5, d=4.5, center=false, $fn=10);
            }
        
            }
        }
        
    sbs_plate();
    rectangular_holder();
    