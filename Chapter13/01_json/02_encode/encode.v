import json

struct Note {
	id      int
	message string
	status  bool
}

fn main() {
	m := Note{
		id: 2
		message: 'Get groceries'
		status: false
	}

	j := json.encode(m)
	println(j)
}
