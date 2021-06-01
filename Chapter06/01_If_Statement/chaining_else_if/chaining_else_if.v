module main

fn breakfast_menu(day string) {
	if day == 'Monday' {
		println('Bread, Jam, Half boiled Egg')
	} else if day == 'Tuesday' {
		println('Bread, Jam, Juice')
	} else if day == 'Wednesday' {
		println('Milk, Bread, Fruit Bowl')
	} else if day == 'Thursday' {
		println('Bread, Jam, Juice')
	} else if day == 'Friday' {
		println('Cereals, Bread, Jam, Half boiled Egg')
	} else if day == 'Saturday' {
		println('Milk, Bread, Fruit Bowl')
	} else if day == 'Sunday' {
		println('Cereals, Bread, Jam, Half boiled Egg')
	} else {
		println('invalid input')
	}
}

fn main() {
	breakfast_menu('Saturday')
}
