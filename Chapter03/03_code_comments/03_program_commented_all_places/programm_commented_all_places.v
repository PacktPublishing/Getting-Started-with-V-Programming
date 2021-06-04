module main

// Space3D A struct indicating the 3 dimensional co-ordinate system
struct Space3D {
mut:
	x int
	// x is an integer field that represents co-ordinate
	y int
	// y is an integer field that represents co-ordinate
	z int
	// z is an integer field that represents co-ordinate
}

/*
get_point is a function that returns a struct of Type Space3D with points x,y,z passed as input arguments to it
x is an input argument accepts values of type of int
y is an input argument accepts values of type of int
z is an input argument accepts values of type of int
get_point function returns a Struct result of type Space3D with its co-ordinates set as value passed as input arguments x, y and z
*/
fn get_point(x int, y int, z int) Space3D {
	return Space3D{
		x: x
		y: y
		z: z
	}
}

const origin = get_point(0, 0, 0)

// Defining origin as a constant
fn main() {
	// origin := Space3D {x: 0, y: 0, z:0}
	println(origin)
}
