module main

struct Note {
	id int
mut:
	message string
}

fn main() {
	mut n := Note{1, 'a simple struct demo'}
	n.id = 2 // throws error
}
