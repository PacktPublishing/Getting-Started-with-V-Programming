module main

fn demo() {
	h1 := 0x64 // hexadecimal starts with 0x
	b1 := 0b1100100 // binary starts with 0b
	o1 := 0o144 // Octal starts with 0o
	println('Value of var h1 with hexadecimal value : $h1')
	println('Data type of var h1 with hexadecimal value : ${typeof(h1).name}')
	println('Value of var b1 with binary value : $b1')
	println('Data type of var b1 with binary value : ${typeof(b1).name}')
	println('Value of var o1 with octal value : $o1')
	println('Data type of var o1 with octal value : ${typeof(o1).name}')
}

fn main() {
	demo()
}
