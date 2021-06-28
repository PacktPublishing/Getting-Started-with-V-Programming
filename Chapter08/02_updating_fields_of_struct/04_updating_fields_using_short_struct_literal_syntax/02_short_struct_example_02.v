module main

struct Note {
	id int
mut:
	message string
}

fn main() {
	// declare
	mut n := Note{}

	// populate
	n = {
		id: 1
		message: 'short struct literal demo'
	}
	println(n)

	// unspecified fields zeroed by default
	// id being type of int, will become 0 here
	println('unspecified id zeroed during short struct type initialization')
	n = {
		message: 'short struct literal demo 2'
	}
	println(n)
}
