// Define the dimensions of the snowman
snowman_height = 10; // Height of the snowman in cm
snowman_radius = 5; // Radius of the snowman's base in cm

// Create the body of the snowman
difference() {
    sphere(r=snowman_radius, $fn=32); // Outer shell of the snowman
    translate([0, 0, -snowman_height]) sphere(r=snowman_radius-1, $fn=32); // Inner hollow space
}

// Add the head to the snowman
translate([0, 0, snowman_height+1]) difference() {
    sphere(r=snowman_radius*1.5, $fn=64); // Head of the snowman
    translate([0, 0, -snowman_height]) sphere(r=snowman_radius*1.5-1, $fn=64); // Hole for the neck
}

// Add the arms and legs to the snowman
for (i=[0:3]) {
    rotate([0, 90, i*90]) translate([0, 0, -snowman_height/2]) cube([snowman_radius*2, snowman_radius*2, snowman_height], center=true);
}
