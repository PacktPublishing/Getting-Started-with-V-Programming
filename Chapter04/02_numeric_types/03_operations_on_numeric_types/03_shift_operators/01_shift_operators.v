module main

fn main() {
	// declare 8 bit integer with value 3
	a := i8(3)

	// 8 bits equals to 1 byte
	println('a is ${sizeof(a)} byte(s)') // a is 1 byte(s)

	// declare 8-bit unsigned integer to shift by 1 position
	pos := byte(1)

	// Shift left the value 3 by 1 position
	a_left_shift := a << pos
	println('$a << $pos = $a_left_shift')
}
