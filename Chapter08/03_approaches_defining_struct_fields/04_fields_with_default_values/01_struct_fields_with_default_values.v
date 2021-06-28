import time

pub struct Note {
pub:
	id      int
	created time.Time = time.now()
pub mut:
	message string    [required]
	status  bool
	due     time.Time = time.now().add_days(1)
}

fn main() {
	n := Note{
		id: 1
		message: 'order groceries'
	}
	println(n)
}
