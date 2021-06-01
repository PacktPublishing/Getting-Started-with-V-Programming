module main

fn main() {
	subjects := ['zoology', 'chemistry', 'physics', 'algebra']

	for i := subjects.len - 1; i >= 0; i-- {
		println(subjects[i])
	}
}
