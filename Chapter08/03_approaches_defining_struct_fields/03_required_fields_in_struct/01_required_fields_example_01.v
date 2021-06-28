pub struct Note {
pub:
	id int
pub mut:
	message string [required]
	status  bool
}

_ := Note{
	id: 1
	status: false
}
// throws error
