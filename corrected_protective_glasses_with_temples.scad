

union() {
	difference() {
		cube(center = true, size = [150, 50, 5]);
		translate(v = [0, 0, 0.5000000000]) {
			cube(center = true, size = [140, 40, 6]);
		}
	}
	translate(v = [-75.0000000000, 20.0000000000, 0]) {
		union() {
			cube(size = [120, 10, 3]);
			translate(v = [0, 0, -1.0000000000]) {
				cube(size = [20, 10, 5]);
			}
		}
	}
	mirror(v = [1, 0, 0]) {
		translate(v = [-75.0000000000, 20.0000000000, 0]) {
			union() {
				cube(size = [120, 10, 3]);
				translate(v = [0, 0, -1.0000000000]) {
					cube(size = [20, 10, 5]);
				}
			}
		}
	}
}