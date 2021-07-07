module m1

import m2

pub const greet_from_m1 = 'Greetings from m1'

pub fn hello() {
	println(m2.greet_from_m2)
}
