module m2

import m1

pub const greet_from_m2 = 'Greetings from m2'

pub fn hello() {
	println(m1.greet_from_m1)
}
