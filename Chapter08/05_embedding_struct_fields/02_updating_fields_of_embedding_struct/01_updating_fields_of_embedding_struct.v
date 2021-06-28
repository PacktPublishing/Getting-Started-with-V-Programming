module main

import time

// NoteTimeInfo is a struct to store time info of Note
pub struct NoteTimeInfo {
pub:
	created time.Time = time.now()
pub mut:
	due time.Time = time.now().add_days(1)
}

// Note is a struct with embedding struct NoteTimeInfo along with other fields
pub struct Note {
	NoteTimeInfo
pub:
	id int
pub mut:
	message string [required]
	status  bool
}

fn main() {
	mut n := Note{
		id: 1
		message: 'embedded struct demo'
	}

	println('Due date: $n.due')

	// approach 1: implicit access of embedded struct fields
	n.due = n.due.add_days(2)
	println('Due date after update: $n.due')

	// approach 2: explicitly specifying the embedded struct and its fields
	n.NoteTimeInfo.due = n.NoteTimeInfo.due.add_days(2)

	println('Due date updated second time: $n.due')

	println(n)
}
