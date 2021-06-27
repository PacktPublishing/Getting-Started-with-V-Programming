// file: mod1/mod1.v
module mod1

fn greet1() string {
	return 'Hello from greet1'
}

pub fn greet2() string {
	return 'Hello from greet2'
}

pub fn greet_and_wish() string {
	wish := 'Have a nice day!'
	return greet1() + ', ' + wish
}
