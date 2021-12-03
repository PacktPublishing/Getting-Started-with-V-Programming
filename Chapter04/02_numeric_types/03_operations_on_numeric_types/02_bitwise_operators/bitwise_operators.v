module main

fn main() {
	a := 0b00000110 // 6
	b := 0b00000010 // 2

	// bitwise AND operation of two binary nums using & operator
	b_and := a & b

	// bitwise OR operation of two binary nums using | operator
	b_or := a | b

	// bitwise XOR operation of two binary nums using ^ operator
	b_xor := a ^ b

	// bitwise NOT operation of an binary nums using ~ operator
	not_a := ~a // Not operation yields value which is equal to -(a+1) in its integer form
	println('Bitwise AND: ${a:08b} & ${b:08b} = ${b_and:08b}')
	println('Bitwise OR: ${a:08b} | ${b:08b} = ${b_or:08b}')
	println('Bitwise XOR: ${a:08b} ^ ${b:08b} = ${b_xor:08b}')
	println('Bitwise NOT: ~${a:b} = ${not_a:b}')
}
