module main

import mod1

fn main() {
	n := mod1.Note{
		id: 1
		message: 'Accessing structs of module demo'
	}
	println('Accessing struct field value Note id: $n.id')
	println('Accessing embedded struct field value NoteTimeInfo: $n.NoteTimeInfo')
}
