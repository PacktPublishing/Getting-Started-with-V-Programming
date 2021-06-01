module main

import os

fn main() {
	input := os.input('Enter the number of multiplication tables to print:')
	limit := input.int()
	if limit <= 0 {
		return
	}
	first_loop: for i := 1; i <= 10; i++ {
		println('Printing multiplication table for $i')
		for j := 1; j <= 10; j++ {
			mul := i * j
			println('$i * $j = $mul')
			if mul >= limit * 10 {
				break first_loop
			}
		}
		println('*********')
	}
}
