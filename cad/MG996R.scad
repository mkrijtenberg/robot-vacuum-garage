

difference() {
    // Outer cube
    translate([0, 0, 0])
    cube([28, 18, 58]);
    
    // Inner cube to subtract, centered
    translate([3.5, 0, 9])
    cube([21, 18, 41]);
    
    // bottom
    translate([3, 0, 52])
    cube([22, 15, 8]);    
    
    // cut out
    translate([10, 0, 50])
    cube([8, 15, 7]);   
    
    // top
    //translate([0, 0, 0])
    //cube([28, 18, 3]);
    
    translate([10, 25, 6]) // center of top face
       rotate([90, 0, 0]) // orient the cylinder vertically
            cylinder(h = 10, d = 2.2, $fn = 50); 
    
    translate([18, 25, 6]) // center of top face
       rotate([90, 0, 0]) // orient the cylinder vertically
            cylinder(h = 10, d = 2.2, $fn = 50); 

    translate([10, 25, 53]) // center of top face
       rotate([90, 0, 0]) // orient the cylinder vertically
            cylinder(h = 10, d = 2.2, $fn = 50); 

    translate([18, 25, 53]) // center of top face
       rotate([90, 0, 0]) // orient the cylinder vertically
            cylinder(h = 10, d = 2.2, $fn = 50); 
 
}

difference() {
    translate([-12, 0, 0])
    cube([12, 18, 3]);

    // Hole: M3 clearance = 3.2mm diameter
    // Positioned in center of cube: (6mm, 9mm), height = 3mm
    translate([-6, 9, -1])  // Centered in X (cube is 12mm wide)
    cylinder(h = 5, d = 3.2, $fn = 30);  // Slightly taller to ensure clean cut
}

difference() {
    translate([28, 0, 0])
    cube([12, 18, 3]);

    // Hole: M3 clearance = 3.2mm diameter
    // Positioned in center of cube: (6mm, 9mm), height = 3mm
    translate([34, 9, -1])  // Centered in X (cube is 12mm wide)
    cylinder(h = 5, d = 3.2, $fn = 30);  // Slightly taller to ensure clean cut
}