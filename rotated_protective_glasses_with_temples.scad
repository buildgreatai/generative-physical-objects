

union() {
	hull() {
		translate(v = [-35.0000000000, 0, 0]) {
			cube(size = [70.0000000000, 3, 40]);
		}
		translate(v = [35.0000000000, 0, 0]) {
			cube(size = [70.0000000000, 3, 40]);
		}
	}
	translate(v = [0, -3, 12.5000000000]) {
		cube(size = [20, 6, 15]);
	}
}