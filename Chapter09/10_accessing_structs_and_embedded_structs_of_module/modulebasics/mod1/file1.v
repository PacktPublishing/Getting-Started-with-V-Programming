module mod1

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
	NoteTimeInfo // Embedded Struct
pub:
	id int
pub mut:
	message string [required]
	status  bool
}
