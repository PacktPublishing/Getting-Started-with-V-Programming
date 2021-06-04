module main

fn method1() {
	msg := 'Hello from Method1'
	println(msg)
}

fn main() {
	method1()
	println(msg) // Will throw error as msg declared and accessible only in method1
}
