// Glasses frame
difference() {
    // Frame outline
    linear_extrude(height = 2)
        polygon([
            (-10, -4),
            (10, -4),
            (10, 4),
            (-10, 4),
            (-10, -4),
        ]);
    
    // Lens cutouts
    translate([0, 0, 1])
        cylinder(h = 2, r = 4);
}

// Temple tips
cylinder(h = 6, r = 2);

// Nose pads
translate([-5, 0, 0])
    cylinder(h = 2, r = 1);
translate ([5, 0, 0])
    cylinder(h = 2, r = 1);