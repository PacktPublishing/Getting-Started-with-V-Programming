module main

struct Note {
	id int
mut:
	message string
}

fn main() {
	// declare
	mut n := Note{}

	// populate note. Notice the Note is not mentioned here.
	n = {
		id: 1
		message: 'short struct literal demo'
	}

	println(n)
}
