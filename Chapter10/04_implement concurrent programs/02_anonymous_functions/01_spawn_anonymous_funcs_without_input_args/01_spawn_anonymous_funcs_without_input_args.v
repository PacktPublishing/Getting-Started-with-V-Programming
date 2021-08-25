module main

fn main() {
	t := go fn () string {
		return 'hi'
	}()
	x := t.wait()
	println(typeof(x).name) // string
	println(x) // hi
}
