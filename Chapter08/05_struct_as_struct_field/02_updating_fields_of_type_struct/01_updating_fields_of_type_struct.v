module main

import time

// NoteTimeInfo is a struct to store time info of Note
pub struct NoteTimeInfo {
pub:
	created time.Time = time.now()
pub mut:
	due time.Time = time.now().add_days(1)
}

// Note is a struct with struct NoteTimeInfo as a field, along with other fields
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
		message: 'adding struct as struct field demo'
	}

	println('Due date: $n.due')
	// approach 1: implicit access of struct fields of fields of type struct
	n.due = n.due.add_days(2)
	println('Due date after update: $n.due')

	// approach 2: explicitly specifying the field of type struct and its fields
	n.NoteTimeInfo.due = n.NoteTimeInfo.due.add_days(2)
	println('Due date updated second time: $n.due')
	println(n)
}
