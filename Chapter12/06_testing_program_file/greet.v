module main

fn greet(name string) string {
	return 'Hello $name!'
}

fn main() {
	msg := greet('Bob')
	println(msg)
}
