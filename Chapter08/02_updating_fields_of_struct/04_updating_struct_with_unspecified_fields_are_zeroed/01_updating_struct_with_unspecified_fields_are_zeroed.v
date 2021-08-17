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
	n = Note{
		id: 1
		message: 'updating struct fields demo'
	}
	println(n)

	// unspecified fields zeroed by default
	// id being type of int, will become 0 here
	println('unspecified id zeroed during short struct type initialization')
	n = Note{
		message: 'updating struct fields demo 2'
	}
	println(n)
}
