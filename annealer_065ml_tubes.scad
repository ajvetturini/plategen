
    base_length = 127.76;
    base_width = 85.48;
    base_height = 5;

    module sbs_plate() {
        // Main cube
        cube([base_length, base_width, base_height], center=false);
    }

    module rectangular_holder() {
        holder_length = 45.0;
        holder_width = 27.0;
        holder_height = 15;
        tube_diameter = 3;

        // Begin removing the hole cutouts:
        difference() {
            translate([base_length/2 - holder_length/2, base_width/2 - holder_width/2, base_height]) {
                // First create the holder rectangle & translate to center:
                cube([holder_length, holder_width, holder_height], center=false);
            }

            // Cutouts:
            
            translate([46.38, 34.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([55.38, 34.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([64.38, 34.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([73.38, 34.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([82.38, 34.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([46.38, 43.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([55.38, 43.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([64.38, 43.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([73.38, 43.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([82.38, 43.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([46.38, 52.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([55.38, 52.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([64.38, 52.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([73.38, 52.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            translate([82.38, 52.24, 5]) {
                cylinder(h=15.5, d=3, center=false, $fn=10);
            }
        
            }
        }
        
    sbs_plate();
    rectangular_holder();
    