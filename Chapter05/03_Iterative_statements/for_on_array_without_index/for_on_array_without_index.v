module main

fn main() {
	col := [1, 2, 3, 4, 5, 6, 7]
	for val in col {
		if val % 2 == 0 {
			println('$val is Even')
		} else {
			println('$val is Odd')
		}
	}
}
