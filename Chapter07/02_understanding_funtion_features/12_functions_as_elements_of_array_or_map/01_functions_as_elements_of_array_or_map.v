module main

fn adder(i int, j int) int {
	return i + j
}

fn subtractor(i int, j int) int {
	return i - j
}

fn multiplier(i int, j int) int {
	return i * j
}

fn main() {
	i, j := 2, 5
	println('Functions as elements of an Array')
	funcs := [adder, subtractor, multiplier]

	for f in funcs {
		res := f(i, j)
		println(res)
	}
	println('Functions as elements of Map')
	d := {
		'sum':        adder
		'difference': subtractor
		'product':    multiplier
	}

	for key, val in d {
		res := val(i, j)
		println('$key of $i and $j: $res')
	}
}
