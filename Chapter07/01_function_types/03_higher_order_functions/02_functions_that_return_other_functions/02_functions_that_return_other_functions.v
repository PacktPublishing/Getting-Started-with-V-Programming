module main

enum Operation {
	add
	sub
	mul
}

fn adder(i int, j int) int {
	return i + j
}

fn subtractor(i int, j int) int {
	return i - j
}

fn multiplier(i int, j int) int {
	return i * j
}

fn fetch(op Operation) fn (int, int) int {
	return match op {
		.add {
			adder
		}
		.sub {
			subtractor
		}
		.mul {
			multiplier
		}
	}
}

fn main() {
	i, j := 2, 5
	mut f := fetch(.add) // return adder function
	mut res := f(i, j) // calls adder(2, 5)
	println('sum of $i and $j: $res')

	f = fetch(.sub) // returns subtractor function
	res = f(i, j) // calls subtractor(2, 5)
	println('difference of $i and $j: $res')

	f = fetch(.mul) // returns multipler function
	res = f(i, j) // calls multiplier(2, 5)
	println('product of $i and $j: $res')
}
