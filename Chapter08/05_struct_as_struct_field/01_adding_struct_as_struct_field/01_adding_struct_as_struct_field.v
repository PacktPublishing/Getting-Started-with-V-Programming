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
	NoteTimeInfo // Struct as another struct field
pub:
	id int
pub mut:
	message string [required]
	status  bool
}

fn main() {
	n := Note{
		id: 1
		message: 'adding struct as struct field demo'
	}
	println('Due date: $n.due')
	println(n)
}
