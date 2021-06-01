module main

import os

fn main() {
	improper_input_age:
	println('Invalid input. Please provide value greater than 0.')

	next_person:
	inp := os.input('Enter your age:')

	if inp != 'stop' {
		age := inp.int()

		if age >= 13 {
			println('You are allowed to watch this movie')
		} else if age > 0 && age < 13 {
			println('Parental Guidance is required to watch this movie')
		} else if age <= 0 {
			unsafe {
				goto improper_input_age
			}
		}
		unsafe {
			goto next_person
		}
	}
}
