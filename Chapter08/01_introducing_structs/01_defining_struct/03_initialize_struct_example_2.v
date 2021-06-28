struct Note {
	id      int
	message string
}

n := Note{
	message: 'a simple struct demo'
	id: 1
}

println(typeof(n).name)
// Note
