module main

struct Note {
	id int
mut:
	message string
}

fn main() {
	mut j := Note{1, 'a simple struct demo'}
	j.id = 2 // throws error
}
