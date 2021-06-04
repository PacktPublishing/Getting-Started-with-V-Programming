module main

fn method1() {
	if true {
		mut b := 10
		b++
	}
	println(b)
}

fn main() {
	method1()
}
