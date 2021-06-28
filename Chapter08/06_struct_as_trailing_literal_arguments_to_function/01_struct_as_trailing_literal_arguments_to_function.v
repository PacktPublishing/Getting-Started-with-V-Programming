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

fn new_grocery_note(n Note) &Note {
	return &Note{
		id: n.id
		message: 'Buy Groceries: ' + n.message
	}
}

fn extend_due_by_a_day(n Note) &Note {
	return &Note{
		NoteTimeInfo: NoteTimeInfo{
			due: n.due.add_days(1)
		}
		id: n.id
		message: n.message
	}
}

fn main() {
	g := new_grocery_note(Note{ id: 1, message: 'Milk' })
	println('$g.message is due by $g.due')
	n := extend_due_by_a_day(g)
	println('After extending due date by a day')
	println('$n.message is due by $n.due')
}
