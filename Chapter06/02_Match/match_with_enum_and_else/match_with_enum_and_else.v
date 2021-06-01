module main

enum Day {
	sunday
	monday
	tuesday
	wednesday
	thursday
	friday
	saturday
}

fn weekend_breakfast_menu(day Day) string {
	return match day {
		.sunday {
			'Cereals, Bread, Jam, Half boiled Egg'
		}
		.saturday {
			'Milk, Bread, Fruit Bowl'
		}
		else {
			'Sorry, we are closed on weekdays!'
		}
	}
}

fn main() {
	sunday_menu := weekend_breakfast_menu(Day.sunday)
	println(sunday_menu)

	tuesday_menu := weekend_breakfast_menu(Day.tuesday)
	println(tuesday_menu)
}
