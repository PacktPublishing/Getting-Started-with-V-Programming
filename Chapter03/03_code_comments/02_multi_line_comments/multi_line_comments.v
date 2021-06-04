module main

/*
multiply is a function that accepts two integer arguments
namely x and y.
It then performs multiplication of input arguments and returns the product which is again a type of integer as specified in the function signature.
x is an input argument accepts values of type of int
y is an input argument accepts values of type of int
multiply function returns the result of type int which is a multiplication of input arguments x and y
*/
fn multiply(x int, y int) int {
	return x * y
}

fn main() {
	println(multiply(4, 5))
}
