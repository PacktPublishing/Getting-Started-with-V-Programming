module main

struct Space3D {
mut:
	x int
	y int
	z int
}

fn get_point(x int, y int, z int) Space3D {
	return Space3D{
		x: x
		y: y
		z: z
	}
}

const origin = get_point(0, 0, 0)

fn main() {
	println(origin)
}
