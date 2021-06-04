module main

fn scope_demo() {
	x := 10
	println(x)
	if true {
		x := 20 // throws error as shadowing is not allowed
		println(x)
	}
	println(x)
}

fn main() {
	scope_demo()
}
