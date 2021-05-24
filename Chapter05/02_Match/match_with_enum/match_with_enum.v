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

fn breakfast_menu(day Day) string {
	return match day {
		.monday {
			'Bread, Jam, Half boiled Egg'
		}
		.tuesday, .thursday {
			'Bread, Jam, Juice'
		}
		.wednesday {
			'Milk, Bread, Fruit Bowl'
		}
		.friday, .sunday {
			'Cereals, Bread, Jam, Half boiled Egg'
		}
		.saturday {
			'Milk, Bread, Fruit Bowl'
		}
	}
}

fn main() {
	friday_menu := breakfast_menu(Day.friday)
	println(friday_menu)

	sunday_menu := breakfast_menu(Day.sunday)
	println(sunday_menu)

	tuesday_menu := breakfast_menu(Day.tuesday)
	println(tuesday_menu)

	thursday_menu := breakfast_menu(Day.thursday)
	println(thursday_menu)
}
