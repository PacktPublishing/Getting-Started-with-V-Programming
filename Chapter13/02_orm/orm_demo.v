module main

import sqlite

[table: 'Notes']
struct Note {
	id      int    [primary; sql: serial]
	message string [sql: 'detail'; unique]
	status  bool   [nonull]
}

fn main() {
	// Establishing a connection to the database

	db := sqlite.connect('NotesDB.db') or { panic(err) }
	db.exec('drop table if exists Notes')

	// Creating a table
	sql db {
		create table Note
	}

	// Inserting record(s)
	n1 := Note{
		message: 'Get some milk'
		status: false
	}

	n2 := Note{
		message: 'Get groceries'
		status: false
	}
	sql db {
		insert n1 into Note
		insert n2 into Note
	}

	println(db.last_id() as int)

	// Select records
	all_notes := sql db {
		select from Note
	}

	println(all_notes)
	println('Type of all_notes is : ${typeof(all_notes).name}')

	// Select using order by clause
	notes_sorted := sql db {
		select from Note order by id desc
	}
	println(notes_sorted)

	// Select using the limit clause
	notes_limited := sql db {
		select from Note order by id desc limit 1
	}

	println(notes_limited)
	println('Type returned by select when limit is 1:  ${typeof(notes_limited).name}')

	// Select using where clause
	notes_latest := sql db {
		select from Note where id > 1
	}

	println(notes_latest)

	// Update record(s)
	sql db {
		update Note set status = true where id == 2
	}

	notes_updated := sql db {
		select from Note where id == 2
	}
	println(notes_updated)

	// Delete record(s)
	sql db {
		delete from Note where id == 2
	}

	notes_leftover := sql db {
		select from Note
	}
	println(notes_leftover)

	sql db {
		drop table Note
	}
	println('Dropped the Note table from database!')
}
