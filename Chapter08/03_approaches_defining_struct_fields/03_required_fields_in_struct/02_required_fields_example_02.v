module main

pub struct Note {
pub:
	id int
pub mut:
	message string [required]
	status  bool
}

fn main() {
	n := Note{
		id: 1
		message: 'a simple struct demo'
		status: false
	}
	println(n)
}
