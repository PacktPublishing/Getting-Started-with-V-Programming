module main

struct Student {
	id    int
	name  string
	class int
}

fn main() {
	// Declare an empty array
	mut students := []Student{}

	// Create students
	st1 := Student{
		id: 1
		name: 'Ram'
		class: 9
	}
	st2 := Student{
		id: 2
		name: 'Katy'
		class: 3
	}
	st3 := Student{
		id: 3
		name: 'Tom'
		class: 6
	}

	// Append all the students to the array
	students << [st1, st2, st3]
	println(students)

	// Reverse Sort students by id
	students.sort(a.id > b.id)

	println('Students sorted in reverse order of id:')
	println(students)

	// Sort students by class in ascending order
	students.sort(a.class < b.class)

	println('Students sorted in ascending order of class:')
	println(students)

	// Sort students by name in reverse order
	students.sort(a.name > b.name)

	println('Students sorted in reverse order of name:')
	println(students)
}
