module main

fn main() {
	age := 18
	res := match age {
		0...18 { 'Person with age $age classified as a Child' }
		19...120 { 'Person with age $age classified as an Adult' }
		else { '$age is must be in the range 0 to 120' }
	}
	println(res)
}
