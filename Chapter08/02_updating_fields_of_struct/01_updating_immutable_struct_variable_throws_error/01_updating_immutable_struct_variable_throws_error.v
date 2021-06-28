module main

struct Note {
	id int
mut:
	message string
}

fn main() {
	n := Note{1, 'a simple struct demo'}
	println(n)

	n.message = 'a simple struct updated' // throws error
}
