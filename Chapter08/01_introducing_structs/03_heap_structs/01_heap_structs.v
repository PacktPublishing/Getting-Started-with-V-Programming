struct Note {
	id      int
	message string
}

fn main() {
	n1 := &Note{1, 'this note will be allocated on heap'}
	println(typeof(n1).name) // &Note
}
