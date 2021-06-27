module main

fn is_teen(age int) ?string {
	if age < 0 {
		return error('invalid age provided')
	} else if age >= 13 && age <= 19 {
		return 'teenager'
	} else {
		return 'not teenager'
	}
}

fn main() {
	x := is_teen(-3) or { err }
	println(x)
}
