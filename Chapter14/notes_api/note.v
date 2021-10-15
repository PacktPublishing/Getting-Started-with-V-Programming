module main

import json
import vweb

[table: 'Notes']
struct Note {
	id      int    [primary; sql: serial]
	message string [sql: 'detail'; unique]
	status  bool   [nonull]
}

fn (n Note) to_json() string {
	return json.encode(n)
}

['/notes'; post]
fn (mut app App) create() vweb.Result {
	// malformed json
	n := json.decode(Note, app.req.data) or {
		app.set_status(400, 'Bad Request')
		er := CustomResponse{400, invalid_json}
		return app.json(er.to_json())
	}

	// before we save, we must ensure the note's message is unique
	notes_found := sql app.db {
		select from Note where message == n.message
	}
	if notes_found.len > 0 {
		app.set_status(400, 'Bad Request')
		er := CustomResponse{400, unique_message}
		return app.json(er.to_json())
	}

	// save to db
	sql app.db {
		insert n into Note
	}

	// retrieve the last id from the db to build full Note object
	new_id := app.db.last_id() as int

	// build new note object including the new_id and send it as JSON response
	note_created := Note{new_id, n.message, n.status}
	app.set_status(201, 'created')
	app.add_header('Content-Location', '/notes/$new_id')
	return app.json(note_created.to_json())
}

['/notes/:id'; get]
fn (mut app App) read(id int) vweb.Result {
	n := sql app.db {
		select from Note where id == id
	}

	// check if note exists
	if n.id != id {
		app.set_status(404, 'Not Found')
		er := CustomResponse{400, note_not_found}
		return app.json(er.to_json())
	}

	// found note, return it
	ret := json.encode(n)
	app.set_status(200, 'OK')
	return app.json(ret)
}

['/notes/'; get]
fn (mut app App) read_all() vweb.Result {
	n := sql app.db {
		select from Note
	}

	ret := json.encode(n)
	app.set_status(200, 'OK')
	return app.json(ret)
}

['/notes/:id'; put]
fn (mut app App) update(id int) vweb.Result {
	// malformed json
	n := json.decode(Note, app.req.data) or {
		app.set_status(400, 'Bad Request')
		er := CustomResponse{400, invalid_json}
		return app.json(er.to_json())
	}

	// check if note to be updated exists
	note_to_update := sql app.db {
		select from Note where id == id
	}

	if note_to_update.id != id {
		app.set_status(404, 'Not Found')
		er := CustomResponse{404, note_not_found}
		return app.json(er.to_json())
	}

	// before update, we must ensure the note's message is unique
	// id != id for idempotency
	// message == n.message for unique check
	res := sql app.db {
		select from Note where message == n.message && id != id
	}

	if res.len > 0 {
		app.set_status(400, 'Bad Request')
		er := CustomResponse{400, unique_message}
		return app.json(er.to_json())
	}

	// update the note
	sql app.db {
		update Note set message = n.message, status = n.status where id == id
	}

	// build the updated note using the :id and request body
	// instead of making one more db call
	updated_note := Note{id, n.message, n.status}

	ret := json.encode(updated_note)
	app.set_status(200, 'OK')
	return app.json(ret)
}

['/notes/:id'; delete]
fn (mut app App) delete(id int) vweb.Result {
	sql app.db {
		delete from Note where id == id
	}
	app.set_status(204, 'No Content')
	return app.ok('')
}
