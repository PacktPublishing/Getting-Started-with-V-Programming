module main

fn breakfast_menu(day string) {
	match day {
		'Monday' { println('Bread, Jam, Half boiled Egg') }
		'Tuesday' { println('Bread, Jam, Juice') }
		'Wednesday' { println('Milk, Bread, Fruit Bowl') }
		'Thursday' { println('Bread, Jam, Juice') }
		'Friday' { println('Cereals, Bread, Jam, Half boiled Egg') }
		'Saturday' { println('Milk, Bread, Fruit Bowl') }
		'Sunday' { println('Cereals, Bread, Jam, Half boiled Egg') }
		else { println('invalid input') }
	}
}

fn main() {
	breakfast_menu('Sunday')
}
