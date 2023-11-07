// Dimensions
box_width = 10; // in mm
box_height = 10; // in mm
box_depth = 8; // in mm
handle_length = 100; // in mm
handle_width = 5; // in mm

// Box
cube([box_width, box_height, box_depth]);

// Handle
translate([box_width/2, 0, 0])
   cube([handle_length, handle_width, box_depth]);
