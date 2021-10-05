module main

import json

struct CustomResponse {
	status  int
	message string
}

fn (c CustomResponse) to_json() string {
	return json.encode(c)
}

const (
	invalid_json   = 'Invalid JSON Payload'
	note_not_found = 'Note not found'
	unique_message = 'Please provide a unique message for Note'
)
