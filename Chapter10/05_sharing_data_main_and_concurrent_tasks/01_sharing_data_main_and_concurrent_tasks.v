module main

import rand

struct Fund {
	name   string
	target f32
mut:
	total      f32
	num_donors int
}

fn (shared f Fund) collect(amt f32) {
	lock f { // read - write lock
		if f.total < f.target {
			f.num_donors += 1
			f.total += amt
			println('$f.num_donors \t before: ${f.total - amt} \t funds received: $amt \t total: $f.total')
		}
	}
}

fn donation() f32 {
	return rand.f32_in_range(100.00, 250.00)
}

fn main() {
	shared fund := Fund{
		name: 'A noble cause'
		target: 1000.00
	}

	for {
		rlock fund {
			if fund.total >= fund.target {
				break
			}
		}
		h := go donation()
		go fund.collect(h.wait())
	}

	rlock fund { // acquire read lock
		println('$fund.num_donors donors donated for $fund.name')
		println('$fund.name raised total fund amount: \$ $fund.total')
	}
}
