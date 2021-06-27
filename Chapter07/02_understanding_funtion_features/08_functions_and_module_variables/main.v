// file: main.v
module main

import mymod

fn main() {
	mymod.msg := 'global variable demo'
	println(mymod.msg)
}
