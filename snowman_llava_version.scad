// Define the dimensions of the yellow ball
diameter = 20;

// Define the dimensions of the yellow block
length = 20;
width = 20;
height = 20;

// Create the yellow ball
cylinder(d=diameter, h=diameter, $fn=20, center=true);

// Create the yellow block
cube(size=[length, width, height], center=true);

// Position the yellow ball on top of the yellow block
translate([(length - diameter), (width - diameter) / 2, (height - diameter) / 2])
cylinder(d=diameter, h=diameter, $fn=20, center=true);
