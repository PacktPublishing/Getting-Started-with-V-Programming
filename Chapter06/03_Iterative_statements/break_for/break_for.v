module main

import os

fn main() {
	mut count := 0
	input := os.input('Enter number of times to Greet:')
	limit := input.int()
	for {
		if count >= limit {
			break
		}
		println('Hi')
		count += 1
	}
	println('Greeted Hi $count times')
}
