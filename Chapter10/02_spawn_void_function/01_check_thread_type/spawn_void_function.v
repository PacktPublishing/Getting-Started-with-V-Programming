module main

fn greet() {
	println('Hello from other side!')
}

fn main() {
	h := go greet()
	println(typeof(h).name) // thread
}
