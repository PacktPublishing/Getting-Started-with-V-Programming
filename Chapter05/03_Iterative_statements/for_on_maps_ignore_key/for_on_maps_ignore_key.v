module main

fn main() {
	basket := map{
		'apples':  10
		'bananas': 12
	}

	mut total := 0
	for _, v in basket {
		total += v
	}
	println('Total number of fruits: $total')
}
