module main

struct Space3D {
mut:
	x int
	y int
	z int
}

const origin = Space3D{
	x: 0
	y: 0
	z: 0
}

fn main() {
	println(origin)
}
