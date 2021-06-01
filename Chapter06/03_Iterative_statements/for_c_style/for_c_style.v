module main

fn main() {
	sample := [3, 4, 23, 12, 4, 1, 45, 12, 42, 17, 92, 38]
	for i := 0; i < sample.len; i += 3 {
		println(sample[i])
	}
}
