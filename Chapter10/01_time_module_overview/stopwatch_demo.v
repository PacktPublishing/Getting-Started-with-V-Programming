module main

import time

fn main() {
	sw := time.new_stopwatch()

	for i in 1 .. 5 {
		println('$i')
	}
	println('Total time took to finish: $sw.elapsed().seconds() seconds')
}
