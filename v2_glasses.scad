

union() {
	translate(v = [-30.0000000000, 0, 0]) {
		scale(v = [0.6000000000, 0.4500000000, 1]) {
			cylinder(h = 5, r = 50);
		}
	}
	translate(v = [30.0000000000, 0, 0]) {
		scale(v = [0.6000000000, 0.4500000000, 1]) {
			cylinder(h = 5, r = 50);
		}
	}
	translate(v = [0, 9.0000000000, 0]) {
		difference() {
			cylinder(h = 5, r = 10.0000000000);
			translate(v = [0, -20, 0]) {
				cylinder(h = 5, r = 20);
			}
		}
	}
	translate(v = [-35.0000000000, 25.0000000000, 0]) {
		rotate(a = [0, 100, 0]) {
			scale(v = [0.1000000000, 1, 1]) {
				cylinder(h = 5, r = 50.0000000000);
			}
		}
	}
	translate(v = [35.0000000000, 25.0000000000, 0]) {
		rotate(a = [0, -100, 0]) {
			scale(v = [0.1000000000, 1, 1]) {
				cylinder(h = 5, r = 50.0000000000);
			}
		}
	}
}