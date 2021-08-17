module main

import time

pub struct Note {
pub:
	id      int
	created time.Time = time.now()
pub mut:
	message string    [required]
	status  bool
	due     time.Time = time.now().add_days(1)
}

// is_empty_message is a method that belongs to Note
pub fn (n Note) is_empty_message() bool {
	return n.message.len < 1
}

fn main() {
	mut n := Note{
		id: 1
		message: ''
	}

	if n.is_empty_message() {
		println('message is empty')
	} else {
		println('message not empty')
	}
}
