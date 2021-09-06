module main

fn main() {
	ch := chan int{}
	defer {
		ch.close()
	}
	ch <- 3
	x := <-ch
	println(x)
	println('End main')
}
