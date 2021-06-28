module main

struct Note {
	id int
mut:
	message string
}

fn main() {
	mut n := Note{1, 'a simple struct demo'}
	println('before update')
	println(n)

	n.message = 'a simple struct updated'
	println('after update')
	println(n)
}
