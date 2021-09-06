module main

fn main() {
	ch := chan int{cap: 1}
	defer {
		ch.close()
	}
	ch <- 3
	x := <-ch
	println(x)
	println('End main')
}
