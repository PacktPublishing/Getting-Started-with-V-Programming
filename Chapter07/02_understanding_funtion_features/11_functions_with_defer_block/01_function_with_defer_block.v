module main

fn void_func_defer() {
	println('Hello')
	defer {
		println('Hi from defer block')
	}
	println('How are you?')

	// the defer block will be executed when the execution control reaches here
}

fn main() {
	void_func_defer()
}
