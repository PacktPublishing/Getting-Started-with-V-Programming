import json

struct Note {
	id      int
	message string
	status  bool
}

fn main() {
	n := json.decode(Note, '{"id":1,"message":"Plan a holiday","status":false}') or {
		panic('invalid json data')
	}
	println(typeof(n).name) // Note
	println(n)
}
