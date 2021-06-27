module main

fn greet_morning() string {
	return 'Good Morning'
}

fn greet_noon() string {
	return 'Good Afternoon'
}

fn greet_evening() string {
	return 'Good Evening'
}

fn greet(f fn () string, name string) string {
	return '$f(), $name!'
}

fn main() {
	mut res := greet(greet_morning, 'Pavan')
	println(res)

	res = greet(greet_evening, 'Sahithi')
	println(res)

	res = greet(fn () string {
		return 'New year greetings to you'
	}, 'Sahithi')
	println(res)
}
