module lego_brick(lbumps = 6, wbumps = 2, thin = true) {
    pitch = 8.0;
    clearance = 0.1;
    bumpDiam = 4.8;
    bumpHeight = 1.8;
    height = thin ? 3.2 : 9.6;
    t = (pitch - 2 * clearance - bumpDiam) / 2.0;
    postDiam = pitch - t;
    total_length = lbumps * pitch - 2.0 * clearance;
    total_width = wbumps * pitch - 2.0 * clearance;
    
    // Base block
    difference(){
        cube([total_length, total_width, height]);
        
        // Hollow out the base
        translate([t, t, 0])
        cube([total_length - 2 * t, total_width - 2 * t, height]);
    }
    
    // Add bumps
    for(x=[0:lbumps-1], y=[0:wbumps-1]){
        translate([x*pitch, y*pitch, height])
        cylinder(r=bumpDiam/2, h=bumpHeight);
    }
    
    // Add posts
    if(lbumps > 1 && wbumps > 1){
        for(x=[1:lbumps-2], y=[1:wbumps-2]){
            translate([(x + 0.5) * pitch, (y + 0.5) * pitch, 0])
            cylinder(r1=postDiam/2, r2=bumpDiam/2, h=height - t);
        }
    } else if(lbumps > 1) {
        for(x=[1:lbumps-2]){
            translate([(x + 0.5) * pitch, pitch / 2, 0])
            cylinder(r=t, h=height - t);
        }
    } else if(wbumps > 1) {
        for(y=[1:wbumps-2]){
            translate([pitch / 2, (y + 0.5) * pitch, 0])
            cylinder(r=t, h=height - t);
        }
    }
}

// Render the Lego brick
lego_brick();
