module main

fn main() {
	for i in 0 .. 10 {
		if i % 2 == 0 { // skips printing number that is a multiple of 2
			continue
		}
		println(i)
	}
}
